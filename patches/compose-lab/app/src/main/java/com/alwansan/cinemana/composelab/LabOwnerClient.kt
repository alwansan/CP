package com.alwansan.cinemana.composelab

import android.content.*
import android.os.*
import androidx.compose.runtime.*
import com.shabakaty.cinemana.htmlbridge.model.BoundedDownloadRead
import com.shabakaty.cinemana.htmlbridge.model.DownloadModel

/** Private lab client. All bind/send operations occur off the Compose/UI thread.
 * UI observes one bounded immutable snapshot. No raw IDs, cursor, path or actions.
 */
internal data class OwnerRow(val index: Int, val progress: Long, val total: Long, val transport: String, val observation: String)
internal data class OwnerScreen(val state: String = "connecting", val pid: Int = 0, val page: Int = 0,
    val rows: List<OwnerRow> = emptyList(), val more: Boolean = false, val busy: Boolean = true)
internal class LabOwnerClient(context: Context) {
    private val app = context.applicationContext
    private val ui = Handler(Looper.getMainLooper())
    private val thread = HandlerThread("cp-ui-ipc", android.os.Process.THREAD_PRIORITY_BACKGROUND).apply { start() }
    private val worker = Handler(thread.looper)
    private var remote: Messenger? = null
    private var generation = 0L
    private var serial = 0
    private var outstanding = 0
    private var move = 0
    private var snapshot = OwnerScreen()
    @Volatile private var closed = false
    private var bound = false
    var screen by mutableStateOf(OwnerScreen())
        private set
    private val inbox = Messenger(Handler(thread.looper) { m -> receive(m); true })
    private val connection = object : ServiceConnection {
        override fun onServiceConnected(name: ComponentName, binder: IBinder) {
            worker.post { if (!closed) { remote = Messenger(binder); send(LabOwnerService.ATTACH,0,0) } }
        }
        override fun onServiceDisconnected(name: ComponentName) {
            worker.post { remote = null; generation = 0; outstanding = 0; publish(OwnerScreen("disconnected",busy=false)) }
        }
        override fun onBindingDied(name: ComponentName) { onServiceDisconnected(name) }
        override fun onNullBinding(name: ComponentName) { onServiceDisconnected(name) }
    }
    init {
        worker.post {
            if (!closed) {
                try {
                    bound = app.bindService(Intent(app, LabOwnerService::class.java), connection, Context.BIND_AUTO_CREATE)
                    if (!bound) publish(OwnerScreen("unavailable",busy=false))
                } catch (_: Exception) { publish(OwnerScreen("unavailable",busy=false)) }
            }
        }
    }
    private fun publish(next: OwnerScreen) {
        snapshot = next
        ui.post { if (!closed) screen = next }
    }
    private fun send(what: Int, s: Int, nav: Int): Boolean {
        val target = remote ?: return false
        val m = Message.obtain(null,what,s,nav)
        m.replyTo = inbox
        m.data = Bundle().apply { putLong("generation", generation) }
        return try { target.send(m); true } catch (_: RemoteException) { false }
    }
    fun request(nav: Int) {
        worker.post { startRead(nav) }
    }
    private fun startRead(nav: Int) {
        if (closed || generation <= 0 || outstanding != 0 || serial == Int.MAX_VALUE || nav !in 1..3) return
        if (nav == 2 && !snapshot.more || nav == 3 && snapshot.page == 0) return
        outstanding = ++serial; move = nav
        publish(snapshot.copy(state="reading",busy=true))
        if (!send(LabOwnerService.READ,outstanding,nav)) {
            outstanding = 0; publish(snapshot.copy(state="unavailable",busy=false))
        }
    }
    private fun receive(m: Message) {
        if (closed || m.sendingUid != android.os.Process.myUid()) return
        val b = m.data
        val g = b.getLong("generation", -1)
        val pid = b.getInt("ownerPid", 0)
        if (pid <= 0 || pid == android.os.Process.myPid()) return
        if (m.what == LabOwnerService.ATTACHED && m.arg1 == 0 && generation == 0L && g > 0) {
            generation = g; serial = 0; outstanding = 0; publish(OwnerScreen(pid=pid,busy=false)); startRead(1); return
        }
        if (g != generation || generation <= 0 || m.arg1 != outstanding || outstanding == 0 || pid != snapshot.pid) return
        outstanding = 0
        if (m.what == LabOwnerService.REJECTED) { publish(snapshot.copy(state="busy",busy=false)); return }
        if (m.what != LabOwnerService.PAGE) { publish(snapshot.copy(state="invalid",busy=false)); return }
        val status = b.getString("status")
        if (status != "OBSERVED") { publish(snapshot.copy(state=if(status=="CHANGED") "changed" else "unavailable",busy=false)); return }
        val indices = b.getIntArray("indices")
        val progress = b.getLongArray("progress")
        val total = b.getLongArray("total")
        val states = b.getStringArray("states")
        val observations = b.getStringArray("observations")
        val n = indices?.size ?: -1
        if (n !in 0..24 || progress?.size != n || total?.size != n || states?.size != n || observations?.size != n ||
            (b.getBoolean("more") && n != 24)) { publish(snapshot.copy(state="invalid",busy=false)); return }
        val rows = ArrayList<OwnerRow>(n)
        for (i in 0 until n) {
            val pr=progress!![i]; val all=total!![i]; val state=states!![i]; val obs=observations!![i]
            val validState=DownloadModel.Transport.values().any { it.name==state }
            val validObservation=BoundedDownloadRead.Result.values().any { it.name==obs }
            if (indices!![i] != i || !validState || !validObservation ||
                (obs=="OBSERVED" && (pr<0 || all==0L || all< -1 || all>0 && pr>all)) ||
                (obs!="OBSERVED" && (pr!= -1L || all!= -1L || state!="UNKNOWN"))) {
                publish(snapshot.copy(state="invalid",busy=false)); return
            }
            rows.add(OwnerRow(i,pr,all,state,obs))
        }
        val page = if(move==1) 1 else if(move==2) snapshot.page+1 else snapshot.page
        publish(OwnerScreen("observed",pid,page,rows.toList(),b.getBoolean("more"),false))
    }
    fun close() {
        if (closed) return
        closed = true
        worker.post {
            if (generation>0) send(LabOwnerService.DETACH,0,0)
            if (bound) { try { app.unbindService(connection) } catch (_: IllegalArgumentException) {} }
            bound=false; remote=null; thread.quitSafely()
        }
    }
}
