package com.alwansan.cinemana.composelab

import android.content.*
import android.os.*
import androidx.compose.runtime.*
import com.shabakaty.cinemana.htmlbridge.model.BoundedDownloadRead
import com.shabakaty.cinemana.htmlbridge.model.DownloadModel
import com.shabakaty.cinemana.htmlbridge.model.OwnerClientEpoch
import java.util.concurrent.atomic.AtomicBoolean

/** One inbox per binding. Timeout/disconnect/invalid reply poisons the session;
 * no automatic cursor replay. A new screen client must explicitly bind anew.
 * All IPC and validations on worker; Compose receives one bounded snapshot.
 */
internal data class OwnerRow(val index: Int, val progress: Long, val total: Long, val transport: String, val observation: String)
internal data class OwnerScreen(val state: String = "connecting", val pid: Int = 0, val page: Int = 0,
    val rows: List<OwnerRow> = emptyList(), val more: Boolean = false, val busy: Boolean = true,
    val responseSerial: Int = 0)
internal class LabOwnerClient(context: Context, private val timeoutMs: Long = 12000L) {
    private val app = context.applicationContext
    private val ui = Handler(Looper.getMainLooper())
    private val thread = HandlerThread("cp-ui-ipc", android.os.Process.THREAD_PRIORITY_BACKGROUND).apply { start() }
    private val worker = Handler(thread.looper)
    private val gate = OwnerClientEpoch(android.os.Process.myPid(),timeoutMs)
    // Each instance has its own Messenger/Binder; epoch never reused within the inbox.
    private val epoch=1L
    private var remote: Messenger? = null
    private var transportGeneration = 0L
    private var pending: OwnerClientEpoch.Request? = null
    private var snapshot = OwnerScreen()
    private val queued = AtomicBoolean()
    @Volatile private var closed = false
    private var bound = false
    var screen by mutableStateOf(OwnerScreen())
        private set
    private val inbox = Messenger(Handler(thread.looper) { m -> receive(m); true })
    private val deadline = Runnable {
        if (!closed && gate.expire(SystemClock.elapsedRealtime())) terminal("timeout")
    }
    private val connection = object : ServiceConnection {
        override fun onServiceConnected(name: ComponentName, binder: IBinder) {
            worker.post {
                if (!closed && gate.phase()==OwnerClientEpoch.Phase.CONNECTING && remote==null) {
                    remote=Messenger(binder)
                    if (!send(LabOwnerService.ATTACH,0,0)) terminal("unavailable")
                }
            }
        }
        override fun onServiceDisconnected(name: ComponentName) { worker.post { if (!closed) terminal("disconnected") } }
        override fun onBindingDied(name: ComponentName) { onServiceDisconnected(name) }
        override fun onNullBinding(name: ComponentName) { onServiceDisconnected(name) }
    }
    init {
        worker.post {
            if (!closed) {
                gate.open(epoch,SystemClock.elapsedRealtime())
                armDeadline()
                try {
                    bound=app.bindService(Intent(app,LabOwnerService::class.java),connection,Context.BIND_AUTO_CREATE)
                    if (!bound) terminal("unavailable")
                } catch (_: Exception) { terminal("unavailable") }
            }
        }
    }
    private fun armDeadline() { worker.removeCallbacks(deadline); worker.postDelayed(deadline,timeoutMs) }
    private fun publish(next: OwnerScreen) {
        snapshot=next
        ui.post { if (!closed) screen=next }
    }
    private fun send(what: Int,s: Int,nav: Int,fixtureDelayMs: Int=0): Boolean {
        val target=remote ?: return false
        val m=Message.obtain(null,what,s,nav)
        m.replyTo=inbox
        m.data=Bundle().apply { putLong("generation",transportGeneration); if(fixtureDelayMs!=0)putInt("fixtureDelayMs",fixtureDelayMs) }
        return try { target.send(m); true } catch (_: Exception) { false }
    }
    private fun releaseTransport() {
        worker.removeCallbacks(deadline)
        if (transportGeneration>0) send(LabOwnerService.DETACH,0,0)
        transportGeneration=0L; pending=null; remote=null
        if (bound) { try { app.unbindService(connection) } catch (_: IllegalArgumentException) {} }
        bound=false
    }
    private fun terminal(reason: String) {
        if (gate.phase()==OwnerClientEpoch.Phase.CLOSED) return
        // Preserve original terminal cause against stale ServiceConnection callbacks.
        if (snapshot.state in setOf("timeout","invalid","disconnected","unavailable-terminal")) return
        gate.disconnect(epoch); releaseTransport()
        publish(OwnerScreen(if(reason=="unavailable") "unavailable-terminal" else reason,busy=false))
    }
    fun request(nav: Int, fixtureDelayMs: Int=0) {
        if (closed || !queued.compareAndSet(false,true)) return
        if (!worker.post { queued.set(false); startRead(nav,fixtureDelayMs) }) queued.set(false)
    }
    private fun startRead(nav: Int, fixtureDelayMs: Int=0) {
        if (closed) return
        val move=when(nav){1->OwnerClientEpoch.Move.FIRST;2->OwnerClientEpoch.Move.NEXT;3->OwnerClientEpoch.Move.REFRESH;else->return}
        val q=gate.begin(move,SystemClock.elapsedRealtime()) ?: return
        pending=q
        publish(snapshot.copy(state="reading",busy=true))
        armDeadline()
        if (!send(LabOwnerService.READ,q.serial,nav,fixtureDelayMs)) {
            gate.sendFailed(q); terminal("unavailable")
        }
    }
    private fun receive(m: Message) {
        if (closed || m.sendingUid!=android.os.Process.myUid()) return
        try { receiveChecked(m) } catch (_: RuntimeException) { terminal("invalid") }
    }
    private fun receiveChecked(m: Message) {
        val b=m.data
        val g=b.getLong("generation",-1)
        val pid=b.getInt("ownerPid",0)
        if (m.what==LabOwnerService.ATTACHED && m.arg1==0 && remote!=null && gate.phase()==OwnerClientEpoch.Phase.CONNECTING) {
            if (gate.attach(epoch,g,pid,SystemClock.elapsedRealtime())) {
                worker.removeCallbacks(deadline)
                transportGeneration=g
                publish(OwnerScreen(pid=pid,busy=false)); startRead(1)
            } else if (gate.phase()==OwnerClientEpoch.Phase.LOST) terminal("timeout")
            return
        }
        val q=pending ?: return
        if (g!=q.generation || pid!=q.pid || m.arg1!=q.serial) return
        fun finish(outcome: OwnerClientEpoch.Outcome,more: Boolean): Boolean {
            val accepted=gate.finish(epoch,g,pid,q.serial,outcome,more,SystemClock.elapsedRealtime())
            if (!accepted) {
                if(gate.phase()==OwnerClientEpoch.Phase.LOST) terminal(if(outcome==OwnerClientEpoch.Outcome.INVALID) "invalid" else "timeout")
                return false
            }
            pending=null; worker.removeCallbacks(deadline); return true
        }
        if (m.what==LabOwnerService.REJECTED) {
            if(finish(OwnerClientEpoch.Outcome.REJECTED,false)) publish(snapshot.copy(state="busy",busy=false,responseSerial=q.serial))
            return
        }
        if (m.what!=LabOwnerService.PAGE) { finish(OwnerClientEpoch.Outcome.INVALID,false); return }
        val status=b.getString("status")
        if(status=="CHANGED"||status=="UNAVAILABLE"){
            val outcome=if(status=="CHANGED") OwnerClientEpoch.Outcome.CHANGED else OwnerClientEpoch.Outcome.UNAVAILABLE
            if(finish(outcome,false)) publish(snapshot.copy(state=status.lowercase(),busy=false,responseSerial=q.serial))
            return
        }
        if(status!="OBSERVED"){finish(OwnerClientEpoch.Outcome.INVALID,false);return}
        val indices=b.getIntArray("indices");val progress=b.getLongArray("progress");val total=b.getLongArray("total")
        val states=b.getStringArray("states");val observations=b.getStringArray("observations")
        val n=indices?.size ?: -1;val more=b.getBoolean("more")
        if(n !in 0..24||progress?.size!=n||total?.size!=n||states?.size!=n||observations?.size!=n||(more&&n!=24)){
            finish(OwnerClientEpoch.Outcome.INVALID,false);return
        }
        val rows=ArrayList<OwnerRow>(n)
        for(i in 0 until n){
            val pr=progress!![i];val all=total!![i];val state=states!![i];val obs=observations!![i]
            if(indices!![i]!=i||!DownloadModel.Transport.values().any{it.name==state}||
                !BoundedDownloadRead.Result.values().any{it.name==obs}||
                (obs=="OBSERVED"&&(pr<0||all==0L||all< -1||all>0&&pr>all))||
                (obs!="OBSERVED"&&(pr!= -1L||all!= -1L||state!="UNKNOWN"))){
                finish(OwnerClientEpoch.Outcome.INVALID,false);return
            }
            rows.add(OwnerRow(i,pr,all,state,obs))
        }
        if(finish(OwnerClientEpoch.Outcome.OBSERVED,more))
            publish(OwnerScreen("observed",pid,gate.page(),rows.toList(),gate.more(),false,q.serial))
    }
    fun close() {
        if(closed)return
        closed=true
        worker.post { gate.close();releaseTransport();thread.quitSafely() }
    }
}
