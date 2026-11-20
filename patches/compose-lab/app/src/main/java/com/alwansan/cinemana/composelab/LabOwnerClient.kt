package com.alwansan.cinemana.composelab

import android.content.*
import android.os.*
import androidx.compose.runtime.*
import com.shabakaty.cinemana.htmlbridge.model.BoundedDownloadRead
import com.shabakaty.cinemana.htmlbridge.model.DownloadModel
import com.shabakaty.cinemana.htmlbridge.model.OwnerClientEpoch
import com.shabakaty.cinemana.htmlbridge.model.OwnerPageRead
import java.util.concurrent.atomic.AtomicBoolean

/** One inbox per binding. Timeout/disconnect/invalid reply poisons the session;
 * no automatic cursor replay. A new screen client must explicitly bind anew.
 * All IPC and validations on worker; Compose receives one bounded snapshot.
 */
@Immutable
internal data class OwnerRow(val index: Int, val progress: Long, val total: Long, val transport: String, val observation: String, val title: String = "")
internal data class OwnerScreen(val state: String = "connecting", val pid: Int = 0, val page: Int = 0,
    val rows: List<OwnerRow> = emptyList(), val more: Boolean = false, val busy: Boolean = true,
    val responseSerial: Int = 0)
internal class LabOwnerClient(context: Context, private val timeoutMs: Long = 12000L, private val autoRefresh: Boolean = false) {
    private val app = context.applicationContext
    private val realOwner = app.packageName == "com.cinemana.pro"
    private val component = if(realOwner) ComponentName("com.cinemana.pro","cp.realowner.RealOwnerService")
        else ComponentName(app,LabOwnerService::class.java)
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
    // One delayed callback owned by the existing serialized IPC worker.
    // No additional thread, coroutine loop, polling while detached, or queued catch-up.
    private val autoTag = Integer.toHexString(System.identityHashCode(this))
    private val autoTick = Runnable {
        if (!closed && realOwner && autoRefresh && !queued.get() &&
            gate.phase()==OwnerClientEpoch.Phase.READY && gate.page()>0) {
            startRead(3,automatic=true)
        }
    }
    private fun scheduleAuto() {
        worker.removeCallbacks(autoTick)
        if (closed || !realOwner || !autoRefresh || gate.phase()!=OwnerClientEpoch.Phase.READY || gate.page()==0) return
        val active=snapshot.state=="observed" && snapshot.rows.any {
            it.observation=="OBSERVED" && it.transport in setOf("PENDING","STARTED","PROGRESS","RETRY")
        }
        worker.postDelayed(autoTick,if(active) 2000L else 10000L)
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
        check(!realOwner || (Build.VERSION.SDK_INT>=28 &&
            android.app.Application.getProcessName()=="com.cinemana.pro:nativeui" &&
            app.javaClass.name=="cp.nativegate.NativeGateApplication")) { "real owner client outside independent UI" }
        worker.post {
            if (!closed) {
                gate.open(epoch,SystemClock.elapsedRealtime())
                armDeadline()
                try {
                    bound=app.bindService(Intent().setComponent(component),connection,Context.BIND_AUTO_CREATE)
                    if (!bound) terminal("unavailable")
                } catch (_: Exception) { terminal("unavailable") }
            }
        }
    }
    private fun armDeadline() { worker.removeCallbacks(deadline); worker.postDelayed(deadline,timeoutMs) }
    private fun publish(next: OwnerScreen) {
        snapshot=next
        ui.post { if (!closed) screen=next }
        scheduleAuto()
    }
    private fun send(what: Int,s: Int,nav: Int,fixtureDelayMs: Int=0): Boolean {
        val target=remote ?: return false
        val m=Message.obtain(null,what,s,nav)
        m.replyTo=inbox
        if(realOwner && fixtureDelayMs!=0) return false
        if(!realOwner || what!=LabOwnerService.ATTACH) {
            m.data=Bundle().apply { putLong("generation",transportGeneration); if(fixtureDelayMs!=0)putInt("fixtureDelayMs",fixtureDelayMs) }
        }
        return try { target.send(m); true } catch (_: Exception) { false }
    }
    private fun releaseTransport() {
        worker.removeCallbacks(deadline)
        worker.removeCallbacks(autoTick)
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
    private fun startRead(nav: Int, fixtureDelayMs: Int=0, automatic: Boolean=false) {
        if (closed) return
        val move=when(nav){1->OwnerClientEpoch.Move.FIRST;2->OwnerClientEpoch.Move.NEXT;3->OwnerClientEpoch.Move.REFRESH;else->return}
        val q=gate.begin(move,SystemClock.elapsedRealtime())
        if(q==null){scheduleAuto();return}
        worker.removeCallbacks(autoTick)
        pending=q
        // Keep the last successful snapshot visible during automatic reads;
        // a failed reply still marks it stale and hides progress.
        publish(snapshot.copy(state=if(automatic && snapshot.state=="observed") "observed" else "reading",busy=true))
        if(automatic) android.util.Log.i("CPOwnerAuto","CP_OWNER_AUTO_BEGIN session="+autoTag+" serial="+q.serial)
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
        if(realOwner) {
            val expected=when(m.what) {
                LabOwnerService.ATTACHED,LabOwnerService.REJECTED->setOf("generation","ownerPid")
                LabOwnerService.PAGE->setOf("generation","ownerPid","status","more","indices","progress","total","states","observations","titles")
                else->emptySet()
            }
            if(expected.isEmpty()||b.keySet()!=expected){ terminal("invalid");return }
        }
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
        val states=b.getStringArray("states");val observations=b.getStringArray("observations");val titles=if(realOwner)b.getStringArray("titles") else null
        val n=indices?.size ?: -1;val more=b.getBoolean("more")
        if(n !in 0..24||progress?.size!=n||total?.size!=n||states?.size!=n||observations?.size!=n||(realOwner&&titles?.size!=n)||(more&&n!=24)){
            finish(OwnerClientEpoch.Outcome.INVALID,false);return
        }
        val rows=ArrayList<OwnerRow>(n)
        for(i in 0 until n){
            val pr=progress!![i];val all=total!![i];val state=states!![i];val obs=observations!![i]
            val title=if(realOwner)titles!![i] else ""
            if(title==null||title!=OwnerPageRead.safeTitle(title)||indices!![i]!=i||!DownloadModel.Transport.values().any{it.name==state}||
                !BoundedDownloadRead.Result.values().any{it.name==obs}||
                (obs=="OBSERVED"&&(pr<0||all==0L||all< -1||all>0&&pr>all))||
                (obs!="OBSERVED"&&(pr!= -1L||all!= -1L||state!="UNKNOWN"))){
                finish(OwnerClientEpoch.Outcome.INVALID,false);return
            }
            rows.add(OwnerRow(i,pr,all,state,obs,title))
        }
        if(finish(OwnerClientEpoch.Outcome.OBSERVED,more)) {
            // Reuse only an equal, already validated page. Never suppress
            // response serial, page, or freshness updates.
            val page=gate.page()
            val nextRows=if(snapshot.page==page && snapshot.rows==rows) snapshot.rows else rows.toList()
            publish(OwnerScreen("observed",pid,page,nextRows,gate.more(),false,q.serial))
        }
    }
    fun close() {
        if(closed)return
        closed=true
        worker.post {
            gate.close();releaseTransport()
            if(realOwner && autoRefresh) android.util.Log.i("CPOwnerAuto","CP_OWNER_AUTO_CLOSED session="+autoTag)
            thread.quitSafely()
        }
    }
}
