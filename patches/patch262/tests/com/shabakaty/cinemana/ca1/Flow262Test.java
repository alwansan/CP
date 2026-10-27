package com.shabakaty.cinemana.ca1;
import android.content.*;import java.io.*;import java.lang.reflect.*;import java.nio.file.*;import java.util.*;import java.util.concurrent.*;
import com.shabakaty.cinemana.features.MkvExporter;
public class Flow262Test {
 static int assertions;
 static void ok(boolean x,String message){assertions++;if(!x)throw new AssertionError(message);}
 static final class Adapter {public List<Object> a=new ArrayList<Object>();public void e(List<Object> items){a=items;}}
 static final class Model {String nb="resume",season="1",episodeNummer="15";}
 static final class Entry {long p=724000,d=1440000;}
 static final class Item {String id,path;int downloadTaskId;Item(String id){this.id=id;path="/tmp/episode-"+id+".mp4";}}
 static final class TestContext extends ContextWrapper {
  boolean wrongDao;public Context getApplicationContext(){return this;} public Object h(){return wrongDao?new com.shabakaty.downloader.lz0():new com.shabakaty.downloader.kw0();}
  Map<String,Object> values;TestContext(){super(null);}
  public SharedPreferences getSharedPreferences(String n,int mode){
   if(values==null)values=new HashMap<String,Object>();
   final Map<String,Object> map=values;
   return (SharedPreferences)Proxy.newProxyInstance(SharedPreferences.class.getClassLoader(),new Class[]{SharedPreferences.class},(p,m,a)->{
    if(m.getName().equals("getBoolean"))return map.containsKey(a[0])?map.get(a[0]):a[1];
    if(m.getName().equals("edit"))return Proxy.newProxyInstance(SharedPreferences.Editor.class.getClassLoader(),new Class[]{SharedPreferences.Editor.class},(p2,m2,a2)->{
     if(m2.getName().equals("putBoolean")){map.put((String)a2[0],a2[1]);return p2;}
     if(m2.getName().equals("commit"))return true;return null;
    });throw new UnsupportedOperationException(m.getName());
   });
  }
 }
 static TestContext context()throws Exception {Field f=sun.misc.Unsafe.class.getDeclaredField("theUnsafe");f.setAccessible(true);return (TestContext)((sun.misc.Unsafe)f.get(null)).allocateInstance(TestContext.class);}
 static class ProcessStub extends Process {volatile boolean destroyed;Runnable callback;public OutputStream getOutputStream(){return new ByteArrayOutputStream();}public InputStream getInputStream(){return new ByteArrayInputStream(new byte[0]);}public InputStream getErrorStream(){return getInputStream();}public int waitFor(){return 0;}public int exitValue(){return 0;}public void destroy(){destroyed=true;if(callback!=null)callback.run();}}
 static class Pending implements Runnable {final String key;boolean ran;Pending(String k){key=k;}public void run(){ran=true;}}
 public static void main(String[] args)throws Exception {
  String[][] titles={{"ناروتو S01","ناروتو"},{"Naruto S01 E29","Naruto"},{"Naruto S٠١","Naruto"},{"S.W.A.T.","S.W.A.T."},{"Season of the Witch","Season of the Witch"},{"The S01 Story","The S01 Story"},{"1899","1899"}};
  for(String[] t:titles)ok(t[1].equals(ContinueActions262.cleanTitle(t[0])),"Title: "+t[0]);
  ok("   S01 E15 • 12:04/24:00   ".equals(ResumeDisplay263.subtitle("1","15",724000,1440000)),"Separate episode and progress");
  ok("E02".equals(ResumeDisplay263.episode("","٢")),"Unknown season stays unknown");
  ok("".equals(ResumeDisplay263.episode("0","null")),"No fake zero episode");
  ok("   S01 E02 • 1:00/1:00   ".equals(ResumeDisplay263.subtitle("1","2",90000,60000)),"Progress clamps to duration");
  ok("ناروتو".equals(ContinueActions262.cleanTitle("ناروتو S01\u200f")),"Bidi title suffix");
  Adapter adapter=new Adapter();Object footer=new Object();Object wrapped=new androidx.recyclerview.widget.g(new androidx.recyclerview.widget.g(adapter,footer),footer);
  ok(ContinueActions262.contentAdapter(wrapped)==adapter,"Unwrap actual ConcatAdapter video child, preserve footer");
  ContinueActions262.call(ContinueActions262.contentAdapter(wrapped),"e",Collections.singletonList(new Model()));
  ok(adapter.a.size()==1,"History refresh targets video adapter list setter");
  ok(ContinueActions262.contentAdapter(adapter)==adapter,"Unwrapped adapter supported");
  Continue106.entries.put("resume",new Entry());
  ok("   S01 E15 • 12:04/24:00   ".equals(ContinueActions262.resumeSubtitle(new Model())),"Real field-based resume row binding");
  Continue106.entries.clear();ok("   S01 E15   ".equals(ContinueActions262.resumeSubtitle(new Model())),"Metadata survives absent progress entry");
  ok("   S01 E06 • 0:00/23:24   ".equals(ResumeDisplay263.subtitle("1","6",0,1404000)),"Exact requested spacing and separator");
  ok("".equals(ResumeDisplay263.subtitle("","",0,0)),"Empty metadata stays empty without phantom spaces");
  TestContext c=context();c.wrongDao=true;boolean rejected=false;
  try{MkvCancel262.prepareDelete(c,new Item("bad"));}catch(IllegalArgumentException expected){rejected=true;}
  ok(rejected && c.values==null,"Wrong DAO rejected before persistent delete intent");c.wrongDao=false;
  Set<String> selected=new LinkedHashSet<String>(Arrays.asList("kept","gone"));DownloadStore263.Errors results=new DownloadStore263.Errors();DownloadStore263.recordSuccess(results,new Item("gone"));DownloadStore263.retainFailed(selected,results);
  ok(selected.equals(Collections.singleton("kept")),"Only failed existing rows remain selected");
  List<String> errors=new ArrayList<String>();for(int i=0;i<100;i++)errors.add(String.join("",Collections.nCopies(500,"x")));
  ok(DownloadStore263.errorSummary(errors).length()<1100,"Bulk errors bounded");
  Item queued=new Item("queued");Restart108.items.put(queued.id,queued);
  ThreadPoolExecutor pool=(ThreadPoolExecutor)Executors.newFixedThreadPool(1);MkvExporter.JOB_EXECUTOR=pool;
  CountDownLatch started=new CountDownLatch(1),release=new CountDownLatch(1);
  pool.execute(()->{started.countDown();try{release.await();}catch(InterruptedException e){Thread.currentThread().interrupt();}});started.await();
  Pending pending=new Pending("item:"+queued.id);MkvExporter.ACTIVE_JOB_KEYS.add(pending.key);pool.execute(pending);
  MkvCancel262.prepareDelete(c,queued);
  ok(MkvCancel262.blocked(c,queued),"Queued delete intent persisted before removal");
  ok(!MkvExporter.ACTIVE_JOB_KEYS.contains(pending.key),"Queued ownership retired only after queue removal");
  release.countDown();pool.shutdown();pool.awaitTermination(1,TimeUnit.SECONDS);ok(!pending.ran,"Deleted queued work never ran");
  ok(!com.shabakaty.cinemana.features.MkvStateStore.busy,"Queued busy flag cleared");
  Item running=new Item("running");Restart108.items.put(running.id,running);
  MkvExporter.JOB_EXECUTOR=Executors.newFixedThreadPool(1);MkvExporter.ACTIVE_JOB_KEYS.add("item:running");
  ProcessStub process=new ProcessStub();process.callback=()->{synchronized(MkvExporter.JOB_LOCK){MkvExporter.ACTIVE_JOB_KEYS.remove("item:running");}};
  CountDownLatch registered=new CountDownLatch(1);
  Thread mux=new Thread(()->{try{MkvCancel262.check(c,running);MkvCancel262.register(process);registered.countDown();while(!process.destroyed)Thread.sleep(1);MkvCancel262.unregister(process);}catch(Exception e){throw new RuntimeException(e);}finally{MkvCancel262.clearCurrent();}},"test-mux");
  mux.start();registered.await();MkvCancel262.prepareDelete(c,running);mux.join(1000);
  ok(process.destroyed,"Only the selected process was cancelled");
  ok(!MkvExporter.ACTIVE_JOB_KEYS.contains("item:running"),"Waited for running job release");
  boolean blocked=false;try{MkvCancel262.checkCurrent();}catch(IOException e){blocked=true;}ok(blocked,"Late publication fenced after cancellation");
  ProcessStub late=new ProcessStub();try{MkvCancel262.register(late);}catch(IOException e){}ok(late.destroyed,"Process registration race is cancelled too");
  MkvExporter.JOB_EXECUTOR.shutdownNow();MkvCancel262.clearCurrent();
  Path temp=Files.createTempDirectory("cnm262-");String source=temp.resolve("episode.mp4").toString();
  Path stage=temp.resolve("episode.mkv.cnm115-attempt.part"),other=temp.resolve("other.mkv.cnm115-attempt.part");Files.write(stage,new byte[]{1});Files.write(other,new byte[]{1});
  Set<String> paths=new LinkedHashSet<String>();paths.add(source);MkvCancel262.augmentPaths(paths);
  ok(paths.contains(source+".temp"),"Native partial is included in existing delete journal");ok(paths.contains(stage.toString()),"Only matching mux stage included");ok(!paths.contains(other.toString()),"Other episode stage is preserved");
  Files.delete(stage);Files.delete(other);Files.delete(temp);
  System.out.println(assertions+" assertions passed: titles, queued/running cancellation, late publish fencing, and scoped partial cleanup.");
 }
}
