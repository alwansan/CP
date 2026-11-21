package cp.nativegate.test;
import android.app.*;
import android.content.*;
import android.net.Uri;
import android.os.*;
import android.view.accessibility.AccessibilityNodeInfo;
import android.graphics.Rect;
import android.util.Log;
import java.io.*;
import java.util.*;
import java.util.regex.Pattern;

public final class GateInstrumentation extends Instrumentation {
    private void require(boolean ok,String why){if(!ok)throw new AssertionError(why);}
    private boolean renderer;
    private boolean ownerUi;
    private boolean populatedUi;
    private boolean pressureUi;
    private boolean remuxUi;
    private static final String TAG="CPNativeGate";
    private static final String PKG="com.cinemana.pro";
    private int recoveries=0;
    private String stage="start";
    private String str(CharSequence x){return x==null?"":x.toString();}
    private String shell(String command) throws IOException {
        try(InputStream in=new ParcelFileDescriptor.AutoCloseInputStream(getUiAutomation().executeShellCommand(command));
            ByteArrayOutputStream out=new ByteArrayOutputStream()){
            byte[] buf=new byte[4096];int n;
            while((n=in.read(buf))!=-1){if(out.size()+n>1024*1024)throw new IOException("diagnostic output too large");out.write(buf,0,n);}
            return out.toString("UTF-8");
        }
    }
    static boolean launcherFocus(String focus) {
        return Pattern.compile("mCurrentFocus=Window\\{[^\\n}]*Application Not Responding: com\\.google\\.android\\.apps\\.nexuslauncher\\}").matcher(focus).find()
            && Pattern.compile("mFocusedApp=ActivityRecord\\{[^\\n}]* com\\.cinemana\\.pro/").matcher(focus).find();
    }
    private void guardSelfTest(){
        String focus="mCurrentFocus=Window{abc u0 Application Not Responding: com.google.android.apps.nexuslauncher}\nmFocusedApp=ActivityRecord{abc u0 com.cinemana.pro/.Example t8}";
        require(launcherFocus(focus),"launcher guard positive");
        require(!launcherFocus(focus.replace("com.google.android.apps.nexuslauncher",PKG)),"app ANR must not be dismissed");
        require(!launcherFocus(focus.replace("com.cinemana.pro/", "other.app/")),"unrelated foreground");
        require(!launcherFocus(""),"empty focus");
        Log.i(TAG,"CP_NATIVE_GATE_LAUNCHER_GUARD_PASS assertions=4");
    }
    private void setStage(String value){stage=value;Log.i(TAG,"CP_NATIVE_GATE_STAGE "+stage);}
    private boolean recoverLauncher(AccessibilityNodeInfo root){
        if(recoveries>=2)return false;
        List<AccessibilityNodeInfo> titles=root.findAccessibilityNodeInfosByViewId("android:id/alertTitle");
        List<AccessibilityNodeInfo> buttons=root.findAccessibilityNodeInfosByViewId("android:id/aerr_close");
        try{
            if(titles.size()!=1||buttons.size()!=1)return false;
            AccessibilityNodeInfo title=titles.get(0),button=buttons.get(0);
            if(!"android".equals(str(title.getPackageName()))||
               !"Pixel Launcher isn't responding".equals(str(title.getText()))||
               !"android".equals(str(button.getPackageName()))||
               !"android.widget.Button".equals(str(button.getClassName()))||
               !"Close app".equals(str(button.getText()))||
               !button.isEnabled()||!button.isClickable()||!button.isVisibleToUser())return false;
            Rect bounds=new Rect();button.getBoundsInScreen(bounds);
            if(bounds.isEmpty()||bounds.left<0||bounds.top<0)return false;
            String focus;
            try{focus=shell("dumpsys window displays");}
            catch(IOException e){Log.w(TAG,"ANR focus evidence unavailable",e);return false;}
            if(!launcherFocus(focus))return false;
            Log.i(TAG,"CP_NATIVE_GATE_LAUNCHER_ANR_EVIDENCE "+stage+" "+bounds);
            for(String line:focus.split("\n"))if(line.contains("mCurrentFocus=")||line.contains("mFocusedApp="))Log.i(TAG,line.trim());
            if(!button.performAction(AccessibilityNodeInfo.ACTION_CLICK))return false;
            recoveries++;
            Log.i(TAG,"CP_NATIVE_GATE_LAUNCHER_ANR_RECOVERED "+recoveries);
            SystemClock.sleep(1000);
            return true;
        } finally{
            for(AccessibilityNodeInfo n:titles)n.recycle();
            for(AccessibilityNodeInfo n:buttons)n.recycle();
        }
    }
    private void describe(AccessibilityNodeInfo node,int depth,int[] budget){
        if(node==null||depth>16||budget[0]--<=0)return;
        String text=str(node.getText()),desc=str(node.getContentDescription());
        if(!text.isEmpty()||!desc.isEmpty()){
            Rect db=new Rect();node.getBoundsInScreen(db);
            Log.i(TAG,"window visible="+node.isVisibleToUser()+" bounds="+db+" clickable="+node.isClickable()+" "+str(node.getPackageName())+" "+str(node.getViewIdResourceName())+" text="+text.substring(0,Math.min(160,text.length()))+" desc="+desc.substring(0,Math.min(160,desc.length())));
        }
        for(int x=0;x<node.getChildCount()&&budget[0]>0;x++){
            AccessibilityNodeInfo child=node.getChild(x);
            if(child!=null){try{describe(child,depth+1,budget);}finally{child.recycle();}}
        }
    }
    private void diagnose(){
        Log.e(TAG,"CP_NATIVE_GATE_FAILURE_STAGE "+stage+" recoveries="+recoveries);
        try{
            AccessibilityNodeInfo root=getUiAutomation().getRootInActiveWindow();
            if(root!=null){try{Log.i(TAG,"active root "+str(root.getPackageName()));describe(root,0,new int[]{160});}finally{root.recycle();}}
            for(String line:shell("dumpsys window displays").split("\n"))
                if(line.contains("mCurrentFocus=")||line.contains("mFocusedApp="))Log.i(TAG,line.trim());
        }catch(Exception e){Log.w(TAG,"diagnostics unavailable",e);}
    }
    @Override public void onCreate(Bundle args){super.onCreate(args);renderer="true".equals(args.getString("renderer"));ownerUi="true".equals(args.getString("owner_ui"));populatedUi="true".equals(args.getString("populated_ui"));pressureUi="true".equals(args.getString("pressure_ui"));remuxUi="true".equals(args.getString("remux_ui"));start();}
    // Compose virtual accessibility nodes can be enumerated through getChild()
    // even when the provider's text-search implementation returns no result.
    // Retain the exact package/text, visible flag and positive screen bounds.
    private boolean matches(AccessibilityNodeInfo n,String text){
        Rect bounds=new Rect();n.getBoundsInScreen(bounds);
        return PKG.equals(str(n.getPackageName()))&&n.isVisibleToUser()&&!bounds.isEmpty()
            &&(text.equals(str(n.getText()))||text.equals(str(n.getContentDescription())));
    }
    private AccessibilityNodeInfo walk(AccessibilityNodeInfo node,String text,int depth,int[] budget){
        if(node==null||depth>32||budget[0]--<=0)return null;
        if(matches(node,text))return AccessibilityNodeInfo.obtain(node);
        for(int x=0;x<node.getChildCount()&&budget[0]>0;x++){
            AccessibilityNodeInfo child=node.getChild(x);
            if(child!=null){
                try{
                    AccessibilityNodeInfo hit=walk(child,text,depth+1,budget);
                    if(hit!=null)return hit;
                }finally{child.recycle();}
            }
        }
        return null;
    }
    private void observed(AccessibilityNodeInfo n,String text,String method){
        Rect b=new Rect();n.getBoundsInScreen(b);
        Log.i(TAG,"CP_NATIVE_GATE_NODE "+method+" text="+text+" visible="+n.isVisibleToUser()+" bounds="+b);
    }
    private AccessibilityNodeInfo find(String text,long timeout) {
        long end=SystemClock.elapsedRealtime()+timeout;
        do {
            AccessibilityNodeInfo root=getUiAutomation().getRootInActiveWindow();
            if(root!=null) {
                try {
                    if(recoverLauncher(root))continue;
                    // Traversal is authoritative for Compose virtual nodes.
                    AccessibilityNodeInfo hit=walk(root,text,0,new int[]{1024});
                    if(hit!=null){
                        observed(hit,text,"tree");
                        return hit;
                    }
                    List<AccessibilityNodeInfo> results=root.findAccessibilityNodeInfosByText(text);
                    try {
                        for(AccessibilityNodeInfo n:results){
                            if(matches(n,text)){
                                observed(n,text,"search");
                                return AccessibilityNodeInfo.obtain(n);
                            }
                        }
                    }finally{for(AccessibilityNodeInfo n:results)n.recycle();}
                } finally {root.recycle();}
            }
            SystemClock.sleep(250);
        } while(SystemClock.elapsedRealtime()<end);
        throw new AssertionError("missing drawn text "+text);
    }
    private void requireFocused(String component) throws IOException {
        String focus=shell("dumpsys window displays");
        String suffix=Pattern.quote(PKG+"/"+component);
        require(Pattern.compile("mCurrentFocus=Window\\{[^\\n}]* "+suffix+"\\}").matcher(focus).find(),"wrong foreground window "+component);
        require(Pattern.compile("mFocusedApp=ActivityRecord\\{[^\\n}]* "+suffix+"(?: |\\})").matcher(focus).find(),"wrong focused activity "+component);
        Log.i(TAG,"CP_NATIVE_GATE_FOCUSED "+component);
    }
    private void clickText(String text){
        AccessibilityNodeInfo n=find(text,30000);
        for(int depth=0;depth<5&&n!=null;depth++){
            Rect bounds=new Rect();n.getBoundsInScreen(bounds);
            if(PKG.equals(str(n.getPackageName()))&&n.isVisibleToUser()&&n.isEnabled()&&n.isClickable()&&!bounds.isEmpty()){
                boolean clicked=n.performAction(AccessibilityNodeInfo.ACTION_CLICK);
                Log.i(TAG,"CP_NATIVE_GATE_CLICK "+text+" depth="+depth+" bounds="+bounds+" accepted="+clicked);
                if(clicked){n.recycle();return;}
            }
            AccessibilityNodeInfo parent=n.getParent();n.recycle();n=parent;
        }
        if(n!=null)n.recycle();
        throw new AssertionError("click failed "+text);
    }

    /** Test-APK-only fixture: committed briefly for cross-process verification.
     * No original schema changes, scheduling, files, media or network requests.
     * An empty disposable emulator is mandatory; cleanup is exact-key scoped. */
    private final class UiFixture {
        final Class<?> rt=type("vt3"), qt=type("yt3"), at=type("kw0"), tt=type("lz0");
        final Object ad,ar,td,tr,adapter;
        final Class<?> item=Class.forName("com.shabakaty.cinemana.data.db.downloads.CinemanaDownloadItem");
        final Class<?> row=type("pw0"),status=type("xc4");
        final java.lang.reflect.Constructor<?> insert;
        boolean armed;
        boolean earlierAdded;
        int largeRows;
        volatile boolean writerUnstopped;
        private Class<?> type(String n)throws ClassNotFoundException{return Class.forName("com.shabakaty.downloader."+n);}
        UiFixture(Context ctx)throws Exception{
            require(Build.VERSION.SDK_INT==35 && ("ranchu".equals(Build.HARDWARE)||"goldfish".equals(Build.HARDWARE)
                ||"sdk_gphone64_x86_64".equals(Build.PRODUCT)) && "1".equals(shell("getprop ro.kernel.qemu").trim()),"disposable emulator required");
            require("1".equals(shell("settings get global airplane_mode_on").trim()),"offline emulator required");
            Context app=ctx.getApplicationContext();
            require(PKG.equals(Application.getProcessName())&&Looper.myLooper()!=Looper.getMainLooper(),"fixture owner worker");
            ad=Class.forName("com.shabakaty.cinemana.ca1.DownloadStore263").getMethod("appDao",Context.class).invoke(null,app);
            ar=at.getField("a").get(ad);
            java.lang.reflect.Method exp=Class.forName("com.shabakaty.cinemana.ca1.Restart108").getMethod("exp",String.class,Object[].class);
            td=exp.invoke(null,"getDownloadsDao",new Object[]{app,app});
            require(td==exp.invoke(null,"getDownloadsDao",new Object[]{app,app}),"transfer cache");
            tr=tt.getField("a").get(td);adapter=tt.getField("b").get(td);
            require(rt.isInstance(ar)&&rt.isInstance(tr)&&ar!=tr,"Room owners");
            insert=type("kw0$c").getConstructor(at,item);
            require(count(ar,"CinemanaDownloadItem")==0&&count(tr,"Downloads")==0,"refuse preexisting rows");
        }
        String id(int n){return String.format(Locale.ROOT,"cp-owner-ui-fixture-%03d",n);}
        int task(int n){return 720000+n;}
        long count(Object db,String table)throws Exception{
            require("Downloads".equals(table)||"CinemanaDownloadItem".equals(table),"count table");
            Object q=qt.getMethod("a",String.class,int.class).invoke(null,"SELECT COUNT(*) FROM "+table,0);
            android.database.Cursor c=null;
            try{
                c=(android.database.Cursor)type("lh0").getMethod("b",rt,type("bi4"),boolean.class,CancellationSignal.class).invoke(null,db,q,false,null);
                require(c.moveToFirst(),"count cursor");return c.getLong(0);
            }finally{try{if(c!=null)c.close();}finally{qt.getMethod("c").invoke(q);}}
        }
        void transaction(Object db,java.util.concurrent.Callable<Void> body)throws Exception{
            rt.getMethod("i").invoke(db);
            try{body.call();rt.getMethod("n").invoke(db);}finally{rt.getMethod("j").invoke(db);}
        }
        void transfer(int n,String external,long progress,long total,String state)throws Exception{
            Object e=row.getConstructor().newInstance();
            row.getField("r").setInt(e,task(n));row.getField("s").set(e,external);
            row.getField("t").setLong(e,progress);row.getField("y").setLong(e,total);
            for(String f:new String[]{"u","v","w","x","B"})row.getField(f).set(e,"");
            Object match=null;
            for(Object x:status.getEnumConstants())if(((Enum<?>)x).name().equals(state))match=x;
            require(match!=null,"transfer status");row.getField("z").set(e,match);
            type("x31").getMethod("f",Object.class).invoke(adapter,e);
        }
        void seed()throws Exception{
            require(count(ar,"CinemanaDownloadItem")==0&&count(tr,"Downloads")==0,"fixture initial emptiness");
            armed=true;
            transaction(tr,()->{
                require(count(tr,"Downloads")==0,"transfer table changed");
                transfer(1,id(1),250,1000,"PROGRESS");
                transfer(2,id(2),1000,1000,"COMPLETED");
                transfer(3,id(3),400,1000,"PROGRESS");
                transfer(3,id(5),900,1000,"PROGRESS");
                return null;
            });
            transaction(ar,()->{
                require(count(ar,"CinemanaDownloadItem")==0,"app table changed");
                for(int n=1;n<=4;n++){
                    Object e=item.getConstructor().newInstance();
                    item.getField("id").set(e,id(n));item.getField("title").set(e,"CP disposable UI "+n);
                    item.getField("downloadTaskId").setInt(e,task(n));item.getField("collectionID").setInt(e,0);
                    item.getField("path").set(e,"");item.getField("qualityName").set(e,"fixture");
                    ((java.util.concurrent.Callable<?>)insert.newInstance(ad,e)).call();
                }
                return null;
            });
            require(count(ar,"CinemanaDownloadItem")==4&&count(tr,"Downloads")==4,"committed fixture counts");
        }
        void addEarlier()throws Exception{
            require(armed&&!earlierAdded&&largeRows==0&&count(ar,"CinemanaDownloadItem")==4,
                "expected four committed disposable rows");
            transaction(ar,()->{
                Object e=item.getConstructor().newInstance();
                item.getField("id").set(e,id(0));
                item.getField("title").set(e,"CP disposable UI 0");
                item.getField("downloadTaskId").setInt(e,0);
                item.getField("collectionID").setInt(e,0);
                item.getField("path").set(e,"");
                item.getField("qualityName").set(e,"fixture");
                ((java.util.concurrent.Callable<?>)insert.newInstance(ad,e)).call();
                return null;
            });
            earlierAdded=true;
            require(count(ar,"CinemanaDownloadItem")==5,"earlier row was not committed");
        }
        void seedLarge()throws Exception{seedLarge(100);}
        void seedLarge(long initialProgress)throws Exception{
            require(count(ar,"CinemanaDownloadItem")==0&&count(tr,"Downloads")==0,"large initial emptiness");
            largeRows=452;armed=true;
            transaction(tr,()->{
                require(count(tr,"Downloads")==0,"large transfer changed");
                for(int n=1;n<=largeRows;n++)transfer(n,id(n),initialProgress,100000,"PROGRESS");
                return null;
            });
            transaction(ar,()->{
                require(count(ar,"CinemanaDownloadItem")==0,"large app changed");
                for(int n=1;n<=largeRows;n++){
                    Object e=item.getConstructor().newInstance();
                    item.getField("id").set(e,id(n));item.getField("title").set(e,"CP isolated load "+n);
                    item.getField("downloadTaskId").setInt(e,task(n));item.getField("collectionID").setInt(e,0);
                    item.getField("path").set(e,"");item.getField("qualityName").set(e,"fixture");
                    ((java.util.concurrent.Callable<?>)insert.newInstance(ad,e)).call();
                }
                return null;
            });
            require(count(ar,"CinemanaDownloadItem")==452&&count(tr,"Downloads")==452,"large committed counts");
        }
        void writeBatch(int batch)throws Exception{
            transaction(tr,()->{
                for(int j=0;j<64;j++){
                    int n=(batch*64+j)%largeRows+1;
                    transfer(n,id(n),100L+batch*100L+j,100000,"PROGRESS");
                }
                return null;
            });
        }
        // Keep the first visible episode at exactly 75% after the first batch;
        // independently update other rows without overwriting that sentinel.
        void writePresentationBatch(int batch)throws Exception{
            transaction(tr,()->{
                if(batch==1)transfer(1,id(1),75000,100000,"PROGRESS");
                for(int j=0;j<64;j++){
                    int n=(batch*64+j)%451+2;
                    transfer(n,id(n),100L+batch*100L+j,100000,"PROGRESS");
                }
                return null;
            });
        }
        void advance()throws Exception{
            transaction(tr,()->{transfer(1,id(1),750,1000,"PROGRESS");return null;});
            require(count(tr,"Downloads")==4,"refresh transfer count");
        }
        void delete(Object db,String sql,Object... args)throws Exception{
            Object helper=rt.getField("d").get(db);
            Object writable=type("zh4").getMethod("getWritableDatabase").invoke(helper);
            type("yh4").getMethod("k0",String.class,Object[].class).invoke(writable,sql,args);
        }
        void cleanup()throws Exception{
            if(!armed)return;
            require(!writerUnstopped,"writer still active; refuse concurrent cleanup on disposable emulator");
            // Remove app bindings first; never clear unrelated rows or use engine delete side effects.
            try{
                transaction(ar,()->{
                    for(int n=1;n<=(largeRows>0?largeRows:4);n++)delete(ar,"DELETE FROM CinemanaDownloadItem WHERE id = ? AND downloadTaskId = ?",id(n),task(n));
                    if(earlierAdded)delete(ar,"DELETE FROM CinemanaDownloadItem WHERE id = ? AND downloadTaskId = ?",id(0),0);
                    return null;
                });
            }finally{
                transaction(tr,()->{
                    for(int n=1;n<=(largeRows>0?largeRows:3);n++)delete(tr,"DELETE FROM Downloads WHERE task_id = ? AND external_id = ?",task(n),id(n));
                    if(largeRows==0)delete(tr,"DELETE FROM Downloads WHERE task_id = ? AND external_id = ?",task(3),id(5));
                    return null;
                });
            }
            require(count(ar,"CinemanaDownloadItem")==0&&count(tr,"Downloads")==0,"cleanup not empty");
            armed=false;
        }
    }


    // Accessibility observation latency includes 250ms polling and test dispatch;
    // not physical touch-to-photon or a frame-rate measurement.
    private String samples(long[] values){
        long[] sorted=values.clone();Arrays.sort(sorted);
        return "medianMs="+sorted[sorted.length/2]+" maxMs="+sorted[sorted.length-1]+" samples="+sorted.length;
    }
    private String pairedActions(int firstSerial,int firstCount,java.util.concurrent.atomic.AtomicInteger batches)throws Exception{
        long[] local=new long[8],reply=new long[8];int start=batches==null?0:batches.get();
        for(int i=0;i<8;i++){
            int before=batches==null?0:batches.get();
            find("CP_REAL_OWNER_UI_OBSERVED",15000).recycle();
            long dispatch=SystemClock.elapsedRealtime();
            clickText(i%2==0?"التالي":"الأولى");
            long localStart=SystemClock.elapsedRealtime();
            clickText("CP_COMPOSE_INCREMENT");
            find("CP_COMPOSE_COUNT_"+(firstCount+i+1),15000).recycle();
            local[i]=SystemClock.elapsedRealtime()-localStart;
            find("Reply: "+(firstSerial+i+1),15000).recycle();
            find("CP_REAL_OWNER_UI_OBSERVED",15000).recycle();
            find("صفحة "+(i%2==0?2:1)+" · 24 عنصر",15000).recycle();
            reply[i]=SystemClock.elapsedRealtime()-dispatch;
            if(batches!=null)require(batches.get()>=before,"writer count regressed");
        }
        int during=batches==null?0:batches.get()-start;
        if(batches!=null)require(during>=4,"insufficient writes during active measurement");
        return "local_"+samples(local)+" reply_"+samples(reply)+" overlappingBatches="+during;
    }
    private String pressure(UiFixture fixture)throws Exception{
        return pressure(fixture,14,8);
    }
    private String pressure(UiFixture fixture,int firstSerial,int firstCount)throws Exception{
        java.util.concurrent.atomic.AtomicBoolean stop=new java.util.concurrent.atomic.AtomicBoolean();
        java.util.concurrent.atomic.AtomicInteger batches=new java.util.concurrent.atomic.AtomicInteger();
        java.util.concurrent.atomic.AtomicReference<Throwable> error=new java.util.concurrent.atomic.AtomicReference<>();
        java.util.concurrent.CountDownLatch ready=new java.util.concurrent.CountDownLatch(1);
        Thread writer=new Thread(()->{
            try{
                long deadline=SystemClock.elapsedRealtime()+90000;
                for(int b=1;b<=256&&!stop.get()&&SystemClock.elapsedRealtime()<deadline;b++){
                    fixture.writeBatch(b);batches.incrementAndGet();ready.countDown();
                    SystemClock.sleep(100);
                }
            }catch(Throwable t){error.set(t);}finally{ready.countDown();}
        },"cp-disposable-transfer-pressure");
        writer.start();
        String metrics;
        try{
            require(ready.await(15,java.util.concurrent.TimeUnit.SECONDS)&&batches.get()>0&&error.get()==null,"writer startup");
            require(writer.isAlive(),"writer ended before pressure");
            metrics=pairedActions(firstSerial,firstCount,batches);
            require(writer.isAlive()&&error.get()==null,"writer ended during pressure");
        }finally{
            stop.set(true);writer.join(15000);
            fixture.writerUnstopped=writer.isAlive();
            require(!fixture.writerUnstopped,"writer did not stop");
        }
        require(error.get()==null&&batches.get()>0,"writer failed");
        require(fixture.count(fixture.ar,"CinemanaDownloadItem")==452&&fixture.count(fixture.tr,"Downloads")==452,"pressure row count");
        return metrics+" commits="+batches.get()+" updates="+(64*batches.get());
    }

    private static final String MUX_DIR="/data/local/tmp/cp-remux-probe";
    // Shell-command output can retain its pipe indefinitely (or a dumpsys
    // binder can stall). Poll the descriptor with an absolute deadline.
    // Closing our read end is bounded even if the remote command is wedged.
    private String remuxShell(String command)throws Exception{
        long deadline=SystemClock.elapsedRealtime()+20000;
        Log.i(TAG,"CP_REMUX_SHELL_BEGIN "+command);
        try(ParcelFileDescriptor fd=getUiAutomation().executeShellCommand(command);
            ByteArrayOutputStream out=new ByteArrayOutputStream()){
            android.system.StructPollfd poll=new android.system.StructPollfd();
            poll.fd=fd.getFileDescriptor();
            poll.events=(short)(android.system.OsConstants.POLLIN|android.system.OsConstants.POLLHUP);
            byte[] bytes=new byte[4096];
            while(true){
                long left=deadline-SystemClock.elapsedRealtime();
                if(left<=0)throw new IOException("remux shell deadline: "+command);
                poll.revents=0;
                if(android.system.Os.poll(new android.system.StructPollfd[]{poll},(int)left)==0)
                    throw new IOException("remux shell timeout: "+command);
                if((poll.revents&(android.system.OsConstants.POLLERR|android.system.OsConstants.POLLNVAL))!=0)
                    throw new IOException("remux shell pipe error: "+command);
                if((poll.revents&poll.events)==0)continue;
                int n=android.system.Os.read(poll.fd,bytes,0,bytes.length);
                if(n==0)break;
                if(n<0||out.size()+n>1024*1024)throw new IOException("remux shell output invalid");
                out.write(bytes,0,n);
            }
            Log.i(TAG,"CP_REMUX_SHELL_END bytes="+out.size()+" "+command);
            return out.toString("UTF-8");
        }
    }
    private String shellScalar(String command)throws Exception{return remuxShell(command).trim();}
    // UiAutomation executes an argv-like string, not shell syntax. All
    // compound operations live in a fixed test-only script pushed by adb.
    private String muxControl(String action,int n)throws Exception{
        require(n>=1&&n<=6,"invalid diagnostic mux slot");
        require(Arrays.asList("start","pid","size","alive","done","exit","cleanup").contains(action),"invalid mux action");
        return shellScalar("sh "+MUX_DIR+"/control.sh "+action+" "+n);
    }
    private long muxSize(int n)throws Exception{
        String value=muxControl("size",n);
        require(value.matches("[0-9]+"),"invalid mux size "+n);
        return Long.parseLong(value);
    }
    private void activeMuxes(int[] pids)throws Exception{activeMuxes(pids,0);}
    private void activeMuxes(int[] pids,int offset)throws Exception{
        for(int n=1;n<=3;n++){
            String p=muxControl("pid",n+offset);
            require(p.matches("[1-9][0-9]*"),"missing mux pid "+n);
            int id=Integer.parseInt(p);
            if(pids[n-1]!=0)require(pids[n-1]==id,"mux PID changed");
            pids[n-1]=id;
            require(muxControl("alive",n+offset).equals("alive"),"mux ended or identity mismatch "+(n+offset));
        }
        require(pids[0]!=pids[1]&&pids[0]!=pids[2]&&pids[1]!=pids[2],"duplicate mux PID");
    }
    // Only accept the exact verified renderer PID and process name. A package
    // selector can instead select the original main process (or several apps).
    static String frameSummary(String dump,int pid){
        String expected="** Graphics info for pid "+pid+" ["+PKG+":nativeui] **";
        boolean nativeUi=false;int headers=0,frames=-1,janky=-1;String jank="";
        for(String raw:dump.split("\\n")){
            String line=raw.trim();
            if(line.startsWith("** Graphics info for pid ")){
                nativeUi=line.equals(expected);
                if(nativeUi)headers++;
            }
            if(!nativeUi)continue;
            if(line.startsWith("Total frames rendered:")){
                String value=line.substring("Total frames rendered:".length()).trim();
                if(frames!=-1||!value.matches("[0-9]+"))return null;
                frames=Integer.parseInt(value);
            }
            if(line.startsWith("Janky frames:")){
                java.util.regex.Matcher m=Pattern.compile("Janky frames:\\s*([0-9]+)(?:\\s+\\([^)]*\\))?").matcher(line);
                if(janky!=-1||!m.matches())return null;
                janky=Integer.parseInt(m.group(1));jank=line;
            }
        }
        return headers==1&&frames>0&&janky>=0&&janky<=frames?"frames="+frames+" "+jank:null;
    }
    private void frameParserSelfTest(){
        String header="** Graphics info for pid 123 ["+PKG+":nativeui] **\n";
        String stats="Total frames rendered: 32\nJanky frames: 4 (12.50%)\n";
        String legacy="** Graphics info for pid 456 ["+PKG+"] **\n";
        require(frameSummary(legacy+stats+header+stats,123)!=null,"frame parser correct process");
        require(frameSummary(legacy+stats,123)==null,"frame parser legacy rejection");
        require(frameSummary(header+legacy+stats,123)==null,"frame parser cross-process rejection");
        require(frameSummary(header+stats,124)==null,"frame parser PID rejection");
        require(frameSummary(header+stats.replace("32","0"),123)==null,"frame parser zero rejection");
        require(frameSummary(header+stats.replace("4 (","99 ("),123)==null,"frame parser count rejection");
        require(frameSummary(header+stats+header+stats,123)==null,"frame parser duplicate rejection");
        Log.i(TAG,"CP_REMUX_FRAME_PARSER_PASS assertions=7");
    }
    private void requireRendererPid(int pid)throws Exception{
        require(pid>0&&shellScalar("pidof "+PKG+":nativeui").equals(Integer.toString(pid)),"renderer PID changed");
    }
    private void reportFrames(String phase,int pid)throws Exception{
        requireRendererPid(pid);
        // Request the summary, not the per-frame CSV (framestats).
        String dump=remuxShell("dumpsys -t 8 gfxinfo "+pid);
        // Log bounded diagnostic summaries BEFORE asserting, including on failure.
        for(String raw:dump.split("\\n")){
            String line=raw.trim();
            if(line.startsWith("** Graphics info for pid ")||line.startsWith("Total frames rendered:")||
               line.startsWith("Janky frames:")||line.contains("percentile")||line.startsWith("No process found"))
                Log.i(TAG,"CP_REMUX_FRAME_DIAG "+phase+" "+line);
        }
        String summary=frameSummary(dump,pid);
        require(summary!=null,"missing or invalid nativeui frame metrics "+phase+" pid="+pid);
        requireRendererPid(pid);
        Log.i(TAG,"CP_REMUX_FRAME_SUMMARY "+phase+" pid="+pid+" "+summary);
    }
    private String remuxPressure(Context ctx,int uiPid)throws Exception{
        require("1".equals(shellScalar("getprop ro.kernel.qemu"))&&"35".equals(shellScalar("getprop ro.build.version.sdk"))&&
            "x86_64".equals(shellScalar("getprop ro.product.cpu.abi")),"remux disposable emulator only");
        int[] pids=new int[3];long[] startSizes=new long[3];
        // Open a fresh diagnostic renderer with real owner data, auto refresh disabled.
        Intent r=new Intent().setClassName(PKG,"com.alwansan.cinemana.composelab.NativeUiProbeActivity")
            .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK).putExtra("cp_real_owner",true);
        UiFixture fx=new UiFixture(ctx);
        Throwable primary=null;
        try{
            setStage("remux-seed");
            fx.seedLarge();ctx.startActivity(r);
            find("CP_REAL_OWNER_UI_OBSERVED",45000).recycle();
            find("صفحة 1 · 24 عنصر",15000).recycle();
            find("Reply: 1",15000).recycle();
            find("CP_COMPOSE_COUNT_0",15000).recycle();
            setStage("remux-idle-reset");
            frameParserSelfTest();
            requireRendererPid(uiPid);
            remuxShell("dumpsys -t 8 gfxinfo "+uiPid+" reset");
            setStage("remux-idle-actions");
            String idle=pairedActions(1,0,null);
            setStage("remux-idle-frames");
            reportFrames("idle",uiPid);
            remuxShell("dumpsys -t 8 gfxinfo "+uiPid+" reset");
            setStage("remux-launch-workers");
            for(int n=1;n<=3;n++)require(muxControl("start",n).equals("launched"),"mux launch failed "+n);
            long deadline=SystemClock.elapsedRealtime()+10000;
            while(SystemClock.elapsedRealtime()<deadline){
                boolean ready=true;
                for(int n=1;n<=3;n++)ready&=muxSize(n)>0;
                if(ready)break;
                SystemClock.sleep(200);
            }
            activeMuxes(pids);
            for(int n=1;n<=3;n++){startSizes[n-1]=muxSize(n);require(startSizes[n-1]>0,"empty mux");}
            // Combine actual shell remuxes with committed transfer-table writes.
            // The existing pressure helper requires >=4 overlapping batches,
            // a live writer across all actions, and exactly 452 rows afterwards.
            setStage("remux-combined-load-actions");
            String load=pressure(fx,9,8);
            activeMuxes(pids);
            for(int n=1;n<=3;n++){
                long endSize=muxSize(n);
                require(endSize>startSizes[n-1],"mux output did not grow "+n);
                Log.i(TAG,"CP_REMUX_COMBINED_GROWTH slot="+n+" pid="+pids[n-1]+" start="+startSizes[n-1]+" end="+endSize);
            }
            setStage("remux-load-frames");
            reportFrames("load",uiPid);
            requireFocused("com.alwansan.cinemana.composelab.NativeUiProbeActivity");
            setStage("remux-wait-outputs");
            deadline=SystemClock.elapsedRealtime()+60000;
            while(SystemClock.elapsedRealtime()<deadline){
                boolean done=true;
                for(int n=1;n<=3;n++)done&=muxControl("done",n).equals("yes");
                if(done)break;
                SystemClock.sleep(500);
            }
            for(int n=1;n<=3;n++)require(muxControl("exit",n).equals("0"),"mux failed "+n);
            return "CP_X86_REMUX_UI_IDLE "+idle+"\nCP_X86_REMUX_UI_LOAD "+load+"\n"+
                "CP_X86_REMUX_UI_PASS workers=3 growth=verified exits=0,0,0 actions=16\n"+
                "CP_X86_REMUX_COMBINED_PASS rows=452 page=24 workers=3 batches=verified actions=8";
        }catch(Exception|Error t){primary=t;throw t;}finally{
            // Retain the original failure stage and attempt every slot even if
            // one cleanup command fails. Fixture cleanup must always run.
            Log.i(TAG,"CP_REMUX_CLEANUP_BEGIN previousStage="+stage);
            Throwable cleanupFailure=null;
            for(int n=1;n<=3;n++){
                try{require(muxControl("cleanup",n).equals("ok"),"mux cleanup failed "+n);}
                catch(Throwable t){Log.e(TAG,"CP_REMUX_CLEANUP_SLOT_FAIL "+n,t);if(cleanupFailure==null)cleanupFailure=t;}
            }
            try{fx.cleanup();}catch(Throwable t){if(cleanupFailure==null)cleanupFailure=t;else cleanupFailure.addSuppressed(t);}
            if(cleanupFailure!=null){if(primary!=null)primary.addSuppressed(cleanupFailure);else throw new IOException("remux cleanup failed",cleanupFailure);}
        }
    }
    // A second, sequential group uses file slots 4..6, not additional
    // simultaneous app slots. The original diagnostics group must finish first.
    private String remuxPresentation(Context ctx,int uiPid)throws Exception{
        require("1".equals(shellScalar("getprop ro.kernel.qemu"))&&"35".equals(shellScalar("getprop ro.build.version.sdk"))&&
            "x86_64".equals(shellScalar("getprop ro.product.cpu.abi")),"presentation disposable emulator only");
        for(int n=1;n<=3;n++)require(muxControl("exit",n).equals("0")&&muxControl("alive",n).equals("dead"),"previous mux group still active");
        UiFixture fx=new UiFixture(ctx);
        java.util.concurrent.atomic.AtomicBoolean stop=new java.util.concurrent.atomic.AtomicBoolean();
        java.util.concurrent.atomic.AtomicInteger batches=new java.util.concurrent.atomic.AtomicInteger();
        java.util.concurrent.atomic.AtomicReference<Throwable> error=new java.util.concurrent.atomic.AtomicReference<>();
        java.util.concurrent.CountDownLatch ready=new java.util.concurrent.CountDownLatch(1);
        Thread writer=new Thread(()->{
            try{
                long deadline=SystemClock.elapsedRealtime()+90000;
                for(int batch=1;batch<=256&&!stop.get()&&SystemClock.elapsedRealtime()<deadline;batch++){
                    fx.writePresentationBatch(batch);batches.incrementAndGet();ready.countDown();
                    SystemClock.sleep(100);
                }
            }catch(Throwable t){error.set(t);}finally{ready.countDown();}
        },"cp-disposable-presentation-pressure");
        int[] pids=new int[3];long[] sizes=new long[3];
        Throwable primary=null;
        boolean launchedActivity=false;
        try{
            setStage("presentation-combined-seed");
            fx.seedLarge(25000);
            Intent intent=new Intent().setClassName(PKG,"com.alwansan.cinemana.composelab.NativeUiProbeActivity")
                .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK).putExtra("cp_real_owner",true).putExtra("cp_download_presentation",true);
            ctx.startActivity(intent);launchedActivity=true;
            find("التنزيلات",45000).recycle();
            find("صفحة 1 · 24 عنصر",15000).recycle();
            find("CP isolated load 1",15000).recycle();
            find("25%",15000).recycle();
            requireRendererPid(uiPid);
            setStage("presentation-combined-workers");
            for(int n=4;n<=6;n++)require(muxControl("start",n).equals("launched"),"presentation mux launch "+n);
            long deadline=SystemClock.elapsedRealtime()+10000;
            while(SystemClock.elapsedRealtime()<deadline){
                boolean readyFiles=true;
                for(int n=4;n<=6;n++)readyFiles&=muxSize(n)>0;
                if(readyFiles)break;
                SystemClock.sleep(200);
            }
            activeMuxes(pids,3);
            for(int n=4;n<=6;n++){sizes[n-4]=muxSize(n);require(sizes[n-4]>0,"empty presentation mux "+n);}
            remuxShell("dumpsys -t 8 gfxinfo "+uiPid+" reset");
            setStage("presentation-combined-auto-progress");
            long autoStart=SystemClock.elapsedRealtime();
            writer.start();
            require(ready.await(15,java.util.concurrent.TimeUnit.SECONDS)&&batches.get()>0&&error.get()==null,"presentation writer startup");
            // No refresh or navigation click before new progress is visible.
            find("75%",15000).recycle();
            long autoMs=SystemClock.elapsedRealtime()-autoStart;
            find("CP isolated load 1",15000).recycle();
            setStage("presentation-combined-navigation");
            long nextStart=SystemClock.elapsedRealtime();
            clickEnabledText("التالي");
            find("صفحة 2 · 24 عنصر",15000).recycle();
            long nextMs=SystemClock.elapsedRealtime()-nextStart;
            long firstStart=SystemClock.elapsedRealtime();
            clickEnabledText("الأولى");
            find("صفحة 1 · 24 عنصر",15000).recycle();
            find("CP isolated load 1",15000).recycle();
            find("75%",15000).recycle();
            long firstMs=SystemClock.elapsedRealtime()-firstStart;
            require(writer.isAlive()&&error.get()==null&&batches.get()>=4,"insufficient presentation write overlap");
            activeMuxes(pids,3);
            for(int n=4;n<=6;n++){
                long end=muxSize(n);require(end>sizes[n-4],"presentation mux did not grow "+n);
                Log.i(TAG,"CP_REMUX_PRESENTATION_GROWTH slot="+n+" pid="+pids[n-4]+" start="+sizes[n-4]+" end="+end);
            }
            reportFrames("presentation-load",uiPid);
            requireFocused("com.alwansan.cinemana.composelab.NativeUiProbeActivity");
            stop.set(true);writer.join(15000);
            fx.writerUnstopped=writer.isAlive();
            require(!fx.writerUnstopped&&error.get()==null,"presentation writer did not stop cleanly");
            int commits=batches.get();
            require(fx.count(fx.ar,"CinemanaDownloadItem")==452&&fx.count(fx.tr,"Downloads")==452,"presentation row count");
            setStage("presentation-combined-wait-media");
            deadline=SystemClock.elapsedRealtime()+60000;
            while(SystemClock.elapsedRealtime()<deadline){
                boolean done=true;
                for(int n=4;n<=6;n++)done&=muxControl("done",n).equals("yes");
                if(done)break;
                SystemClock.sleep(500);
            }
            for(int n=4;n<=6;n++)require(muxControl("exit",n).equals("0"),"presentation mux failed "+n);
            fx.cleanup();
            setStage("presentation-combined-empty");
            find("لا توجد تنزيلات",20000).recycle();
            clickEnabledText("إغلاق");launchedActivity=false;
            return "CP_X86_REMUX_PRESENTATION_METRICS autoMs="+autoMs+" nextMs="+nextMs+" firstMs="+firstMs+" commits="+commits+" updates="+(64*commits+1)+"\n"+
                "CP_X86_REMUX_PRESENTATION_PASS rows=452 page=24 workers=3 growth=verified exits=0,0,0 auto=25,75 navigation=2 empty=observed";
        }catch(Exception|Error t){primary=t;throw t;}finally{
            Throwable cleanupFailure=null;
            stop.set(true);
            try{writer.join(15000);fx.writerUnstopped=writer.isAlive();require(!fx.writerUnstopped,"presentation writer alive");}
            catch(Throwable t){cleanupFailure=t;}
            for(int n=4;n<=6;n++){
                try{require(muxControl("cleanup",n).equals("ok"),"presentation cleanup "+n);}
                catch(Throwable t){if(cleanupFailure==null)cleanupFailure=t;else cleanupFailure.addSuppressed(t);}
            }
            try{fx.cleanup();}catch(Throwable t){if(cleanupFailure==null)cleanupFailure=t;else cleanupFailure.addSuppressed(t);}
            if(launchedActivity)try{clickEnabledText("إغلاق");}catch(Throwable t){if(cleanupFailure==null)cleanupFailure=t;else cleanupFailure.addSuppressed(t);}
            if(cleanupFailure!=null){if(primary!=null)primary.addSuppressed(cleanupFailure);else throw new IOException("presentation cleanup failed",cleanupFailure);}
        }
    }
    // Auto-refresh can temporarily disable navigation. Wait for an enabled
    // clickable ancestor, rather than treating a busy button as a failure.
    private void clickEnabledText(String text){
        long deadline=SystemClock.elapsedRealtime()+15000;
        do{
            AccessibilityNodeInfo node=find(text,3000);
            for(int depth=0;depth<5&&node!=null;depth++){
                Rect bounds=new Rect();node.getBoundsInScreen(bounds);
                if(PKG.equals(str(node.getPackageName()))&&node.isVisibleToUser()&&node.isEnabled()&&node.isClickable()&&!bounds.isEmpty()){
                    boolean accepted=node.performAction(AccessibilityNodeInfo.ACTION_CLICK);
                    node.recycle();node=null;
                    if(accepted){Log.i(TAG,"CP_REMUX_PRESENTATION_CLICK "+text);return;}
                    break;
                }
                AccessibilityNodeInfo parent=node.getParent();node.recycle();node=parent;
            }
            if(node!=null)node.recycle();
            SystemClock.sleep(100);
        }while(SystemClock.elapsedRealtime()<deadline);
        throw new AssertionError("presentation enabled click timed out "+text);
    }
    @Override public void onStart(){
        Bundle result=new Bundle();
        try {
            guardSelfTest();
            android.accessibilityservice.AccessibilityServiceInfo info=getUiAutomation().getServiceInfo();
            info.flags|=android.accessibilityservice.AccessibilityServiceInfo.FLAG_REPORT_VIEW_IDS;
            getUiAutomation().setServiceInfo(info);
            setStage("startup-provider");
            Context ctx=getTargetContext();
            require("com.cinemana.pro".equals(ctx.getPackageName()),"wrong package");
            require("com.shabakaty.cinemana.CinemanaApplication".equals(ctx.getApplicationContext().getClass().getName()),"old Application not preserved");
            int main=android.os.Process.myPid();
            Uri uri=Uri.parse("content://com.cinemana.pro.cp-nativeui-gate");
            Bundle b=null;
            long readyDeadline=SystemClock.elapsedRealtime()+10000;
            do {
                b=ctx.getContentResolver().call(uri,"snapshot",null,null);
                if(b!=null&&b.getBoolean("ready"))break;
                SystemClock.sleep(100);
            } while(SystemClock.elapsedRealtime()<readyDeadline);
            require(b!=null&&b.getBoolean("ready"),"startup order");
            require("cp.nativegate.NativeGateApplication".equals(b.getString("application")),"wrong UI Application");
            int ui=b.getInt("pid");
            require(ui>0&&ui!=main,"UI PID not independent");
            setStage("diagnostic-activity");
            Intent i=new Intent().setClassName(PKG,"cp.nativegate.NativeGateActivity").addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            ctx.startActivity(i);
            find("CP_SAME_PACKAGE_NATIVEUI_READY "+ui,45000).recycle();
            Bundle after=ctx.getContentResolver().call(Uri.parse("content://com.cinemana.pro.cp-nativeui-gate"),"snapshot",null,null);
            require(after!=null&&after.getBoolean("ready")&&after.getInt("pid")==ui,"UI process changed");
            String markerResult="CP_NATIVEUI_FACTORY_IN_PACKAGE_PASS main="+main+" ui="+ui+"\n";
            if(renderer){
                setStage("compose-launch");
                ctx.startActivity(new Intent().setClassName("com.cinemana.pro","com.alwansan.cinemana.composelab.NativeUiProbeActivity").addFlags(Intent.FLAG_ACTIVITY_NEW_TASK));
                find("CP_SAME_PACKAGE_COMPOSE_READY",45000).recycle();
                requireFocused("com.alwansan.cinemana.composelab.NativeUiProbeActivity");
                setStage("compose-content");
                find("PID: "+ui,15000).recycle();
                find("CP_COMPOSE_ROW_1",15000).recycle();
                find("CP_COMPOSE_COUNT_0",15000).recycle();
                setStage("compose-click");
                clickText("CP_COMPOSE_INCREMENT");
                find("CP_COMPOSE_COUNT_1",15000).recycle();
                clickText("CP_COMPOSE_INCREMENT");
                find("CP_COMPOSE_COUNT_2",15000).recycle();
                requireFocused("com.alwansan.cinemana.composelab.NativeUiProbeActivity");
                Bundle rendered=ctx.getContentResolver().call(uri,"snapshot",null,null);
                require(rendered!=null&&rendered.getBoolean("ready")&&rendered.getInt("pid")==ui,"renderer changed UI process");
                markerResult+="CP_SAME_PACKAGE_COMPOSE_RENDER_PASS main="+main+" ui="+ui+" clicks=2 rows=48_fixture\n";
            }
            if(ownerUi){
                require(renderer,"owner UI requires baseline renderer test");
                setStage("real-owner-ui");
                Intent real=new Intent().setClassName(PKG,"com.alwansan.cinemana.composelab.NativeUiProbeActivity")
                    .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK).putExtra("cp_real_owner",true);
                ctx.startActivity(real);
                find("CP_REAL_OWNER_UI_OBSERVED",45000).recycle();
                find("PID: "+main,15000).recycle();
                find("صفحة 1 · 0 عنصر",15000).recycle();
                find("Reply: 1",15000).recycle();
                clickText("تحديث");
                find("Reply: 2",15000).recycle();
                find("CP_REAL_OWNER_UI_OBSERVED",15000).recycle();
                find("صفحة 1 · 0 عنصر",15000).recycle();
                requireFocused("com.alwansan.cinemana.composelab.NativeUiProbeActivity");
                Bundle realAfter=ctx.getContentResolver().call(uri,"snapshot",null,null);
                require(realAfter!=null&&realAfter.getBoolean("ready")&&realAfter.getInt("pid")==ui,"owner UI changed process");
                markerResult+="CP_REAL_OWNER_COMPOSE_UI_PASS owner="+main+" ui="+ui+" first=0 refresh=0 serial=2\n";
                if(populatedUi){
                    setStage("real-owner-ui-populated");
                    UiFixture fixture=new UiFixture(ctx);
                    try{
                        fixture.seed();
                        clickText("تحديث");
                        find("Reply: 3",15000).recycle();
                        find("صفحة 1 · 4 عنصر",15000).recycle();
                        find("عنصر 1 · 250/1000 · PROGRESS · OBSERVED",15000).recycle();
                        find("عنصر 2 · 1000/1000 · COMPLETED · OBSERVED",15000).recycle();
                        find("عنصر 3 · -1/-1 · UNKNOWN · CONFLICT",15000).recycle();
                        find("عنصر 4 · -1/-1 · UNKNOWN · NO_TRANSPORT_ROW",15000).recycle();
                        fixture.advance();
                        clickText("تحديث");
                        find("Reply: 4",15000).recycle();
                        find("عنصر 1 · 750/1000 · PROGRESS · OBSERVED",15000).recycle();
                        find("عنصر 3 · -1/-1 · UNKNOWN · CONFLICT",15000).recycle();
                    }finally{fixture.cleanup();}
                    clickText("تحديث");
                    find("Reply: 5",15000).recycle();
                    find("صفحة 1 · 0 عنصر",15000).recycle();
                    find("CP_REAL_OWNER_UI_OBSERVED",15000).recycle();
                    requireFocused("com.alwansan.cinemana.composelab.NativeUiProbeActivity");
                    markerResult+="CP_REAL_OWNER_COMPOSE_POPULATED_PASS rows=4 progress=250,750 collision=1 missing=1 cleanup=verified serial=5\n";
                    if(pressureUi){
                        setStage("real-owner-ui-paired-pressure");
                        UiFixture large=new UiFixture(ctx);
                        String idle,loaded;
                        try{
                            large.seedLarge();
                            clickText("تحديث");find("Reply: 6",15000).recycle();
                            find("صفحة 1 · 24 عنصر",15000).recycle();
                            find("CP_REAL_OWNER_UI_OBSERVED",15000).recycle();
                            find("CP_COMPOSE_COUNT_0",15000).recycle();
                            idle=pairedActions(6,0,null);
                            loaded=pressure(large);
                            requireFocused("com.alwansan.cinemana.composelab.NativeUiProbeActivity");
                            Bundle same=ctx.getContentResolver().call(uri,"snapshot",null,null);
                            require(same!=null&&same.getInt("pid")==ui,"pressure UI process changed");
                        }finally{large.cleanup();}
                        clickText("تحديث");find("Reply: 23",15000).recycle();
                        find("صفحة 1 · 0 عنصر",15000).recycle();
                        find("CP_REAL_OWNER_UI_OBSERVED",15000).recycle();
                        markerResult+="CP_REAL_OWNER_PRESSURE_IDLE "+idle+"\n";
                        markerResult+="CP_REAL_OWNER_PRESSURE_LOAD "+loaded+"\n";
                        markerResult+="CP_REAL_OWNER_PRESSURE_PASS rows=452 page=24 actions=16 cleanup=verified serial=23\n";
                        setStage("real-download-presentation");
                        UiFixture screen=new UiFixture(ctx);
                        try{
                            screen.seed();
                            Intent present=new Intent().setClassName(PKG,"com.alwansan.cinemana.composelab.NativeUiProbeActivity")
                                .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK).putExtra("cp_real_owner",true).putExtra("cp_download_presentation",true);
                            ctx.startActivity(present);
                            find("التنزيلات",45000).recycle();
                            find("CP disposable UI 1",15000).recycle();
                            find("25%",15000).recycle();
                            find("اكتمل النقل · لم تثبت جاهزية الملف",15000).recycle();
                            find("تعارض بيانات النقل",15000).recycle();
                            find("حالة النقل غير متاحة",15000).recycle();
                            screen.advance();
                            // No refresh click: only a new owner response can expose 75%.
                            find("75%",15000).recycle();
                            require(shell("logcat -d -s CPOwnerAuto:I '*:S'").contains("CP_OWNER_AUTO_BEGIN session="),"automatic request evidence");
                            requireFocused("com.alwansan.cinemana.composelab.NativeUiProbeActivity");
                        }finally{screen.cleanup();}
                        // Auto refresh must also observe removal, without a manual click.
                        find("لا توجد تنزيلات",20000).recycle();
                        clickText("إغلاق");
                        long closedDeadline=SystemClock.elapsedRealtime()+10000;
                        String autoLog="";
                        do{
                            autoLog=shell("logcat -d -s CPOwnerAuto:I '*:S'");
                            if(autoLog.contains("CP_OWNER_AUTO_CLOSED session="))break;
                            SystemClock.sleep(100);
                        }while(SystemClock.elapsedRealtime()<closedDeadline);
                        java.util.regex.Matcher closeLog=Pattern.compile("CP_OWNER_AUTO_CLOSED session=([a-f0-9]+)").matcher(autoLog);
                        require(closeLog.find(),"auto client closure evidence");
                        String session=closeLog.group(1);
                        int cut=autoLog.lastIndexOf("CP_OWNER_AUTO_CLOSED session="+session);
                        require(autoLog.substring(0,cut).contains("CP_OWNER_AUTO_BEGIN session="+session+" serial="),"auto/close session mismatch");
                        // Empty-page idle interval is 10 seconds; observe beyond it.
                        SystemClock.sleep(11500);
                        String afterClose=shell("logcat -d -s CPOwnerAuto:I '*:S'");
                        int stop=afterClose.lastIndexOf("CP_OWNER_AUTO_CLOSED session="+session);
                        require(stop>=0&&!afterClose.substring(stop).contains("CP_OWNER_AUTO_BEGIN session="+session+" serial="),"poll after close");
                        markerResult+="CP_REAL_DOWNLOAD_PRESENTATION_PASS titles=verified progress=25,75 completion=transport_only conflict=verified cleanup=verified\n";
                        markerResult+="CP_REAL_DOWNLOAD_AUTO_REFRESH_PASS progress=25,75 empty=observed manualClicks=0 close=verified noPollAfterClose=11500ms\n";
                        if(remuxUi){
                            setStage("x86-android-ffmpeg-remux-pressure");
                            markerResult+=remuxPressure(ctx,ui)+"\n";
                            clickText("تحديث");
                            find("صفحة 1 · 0 عنصر",15000).recycle();
                            markerResult+="CP_X86_REMUX_CLEANUP_PASS\n";
                            markerResult+=remuxPresentation(ctx,ui)+"\n";
                        }
                    }
                }
            }
            if(ownerUi&&populatedUi){
                setStage("real-owner-ipc-keyshift");
                // Only the offline API35 disposable emulator. Previous visible
                // renderer tests have finished; probe may take the service lease.
                UiFixture shift=new UiFixture(ctx);
                try {
                    shift.seed();
                    Uri proof=Uri.parse("content://com.cinemana.pro.cp-real-owner-ipc-probe");
                    Bundle before=ctx.getContentResolver().call(proof,"probe-key",null,null);
                    require(before!=null&&before.getInt("rows")==4&&before.getInt("index")==0&&
                        before.getInt("ownerPid")==main&&before.getInt("uiPid")==ui,"IPC pre-shift fixture");
                    String stable=before.getString("key");
                    require(stable!=null&&stable.matches("[0-9a-f]{64}"),"pre-shift opaque HMAC");
                    shift.addEarlier();
                    Bundle afterKey=ctx.getContentResolver().call(proof,"probe-key",null,null);
                    require(afterKey!=null&&afterKey.getInt("rows")==5&&afterKey.getInt("index")==1&&
                        afterKey.getInt("ownerPid")==main&&afterKey.getInt("uiPid")==ui&&
                        stable.equals(afterKey.getString("key")),"IPC key changed after real Room row insertion");
                } finally {shift.cleanup();}
                markerResult+="CP_REAL_OWNER_IPC_KEYS_SHIFT_PASS rows=4,5 index=0,1 stable=verified cleanup=verified\n";
            }
            if(ownerUi&&populatedUi){
                setStage("real-owner-compose-keyset-shift");
                // Android 15 offline emulator only. This is a separate,
                // scoped real owner Room fixture, never a production dataset.
                UiFixture visibleShift=new UiFixture(ctx);
                try{
                    visibleShift.seed();
                    Intent screen=new Intent().setClassName(PKG,"com.alwansan.cinemana.composelab.NativeUiProbeActivity")
                        .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK).putExtra("cp_real_owner",true);
                    ctx.startActivity(screen);
                    find("CP_REAL_OWNER_UI_OBSERVED",45000).recycle();
                    find("Reply: 1",15000).recycle();
                    find("صفحة 1 · 4 عنصر",15000).recycle();
                    find("عنصر 1 · 250/1000 · PROGRESS · OBSERVED",15000).recycle();
                    visibleShift.addEarlier();
                    clickText("تحديث");
                    find("Reply: 2",15000).recycle();
                    find("صفحة 1 · 5 عنصر",15000).recycle();
                    find("عنصر 1 · -1/-1 · UNKNOWN · NO_TRANSPORT_ROW",15000).recycle();
                    find("عنصر 2 · 250/1000 · PROGRESS · OBSERVED",15000).recycle();
                    find("عنصر 3 · 1000/1000 · COMPLETED · OBSERVED",15000).recycle();
                    requireFocused("com.alwansan.cinemana.composelab.NativeUiProbeActivity");
                } finally {visibleShift.cleanup();}
                clickText("تحديث");
                find("Reply: 3",15000).recycle();
                find("صفحة 1 · 0 عنصر",15000).recycle();
                find("CP_REAL_OWNER_UI_OBSERVED",15000).recycle();
                markerResult+="CP_REAL_OWNER_COMPOSE_KEYSET_SHIFT_PASS rows=4,5,0 index=0,1 progress=250 cleanup=verified\n";
            }
            result.putString("stream",markerResult);
            finish(Activity.RESULT_OK,result);
        } catch(Throwable t){diagnose();Log.e(TAG,"Gate failed",t);result.putString("stream","CP_NATIVEUI_FACTORY_IN_PACKAGE_FAIL "+android.util.Log.getStackTraceString(t));finish(Activity.RESULT_CANCELED,result);}
    }
}
