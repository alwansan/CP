package com.shabakaty.cinemana.local;
import com.shabakaty.downloader.*;import com.shabakaty.cinemana.local.LocalAccountStore.*;
import com.shabakaty.cinemana.domain.models.remote.*;import com.shabakaty.cinemana.domain.models.remote.user.*;
import java.io.*;import java.nio.file.*;import java.util.concurrent.*;import java.lang.reflect.*;
public class RuntimeBridgeTest {
 static Object await(Object single)throws Exception{CountDownLatch latch=new CountDownLatch(1);Object[] value=new Object[1];Throwable[] error=new Throwable[1];((f74)single).a(new y74(){public void c(mu0 d){}public void onSuccess(Object v){value[0]=v;latch.countDown();}public void b(Throwable t){error[0]=t;latch.countDown();}});if(!latch.await(5,TimeUnit.SECONDS))throw new AssertionError("timeout");if(error[0]!=null)throw new IOException(error[0]);return value[0];}
 static void check(boolean v){if(!v)throw new AssertionError();}
 public static final class Cat {public String imgObjUrl;Cat(String image){imgObjUrl=image;}}
 public static void main(String[] a)throws Exception{try{
  StringBuilder large=new StringBuilder();for(int n=0;n<16000;n++)large.append("نص\\\"🌙");String preferenceText=large.toString();
  java.util.List<Item> chunks=BackupState.encode("ca1_continue106","123",preferenceText);check(chunks.size()>1);check(BackupState.decode(chunks).get("ca1_continue106").get("123").equals(preferenceText));
  java.util.List<Item> missing=new java.util.ArrayList<>(chunks);missing.remove(0);try{BackupState.decode(missing);throw new AssertionError();}catch(IOException expected){}
  java.util.List<Item> duplicate=new java.util.ArrayList<>(chunks);duplicate.add(chunks.get(0));try{BackupState.decode(duplicate);throw new AssertionError();}catch(IOException expected){}
  LocalAccountStore saved=new LocalAccountStore(Files.createTempDirectory("chunked-account").toFile(),null);saved.replace(ListKind.STATE,chunks);ByteArrayOutputStream zip=new ByteArrayOutputStream();saved.exportZip(zip);saved.importZip(new ByteArrayInputStream(zip.toByteArray()));check(BackupState.decode(saved.list(ListKind.STATE)).get("ca1_continue106").get("123").equals(preferenceText));
  check(((java.util.List)LocalRuntime.categories(java.util.Arrays.asList(new Cat(""),new Cat("https://images/test.jpg"),new Cat(null)))).size()==1);
  LocalRuntime.store=new LocalAccountStore(Files.createTempDirectory("local-bridge").toFile(),null);LocalRuntime.store.setConfig("legacy_seeded","1");
  LocalRuntime.store.put(ListKind.FAVORITE,new Item("100","فيلم",0,"{\"nb\":\"100\",\"ar_title\":\"فيلم\"}"));
  final int[] remote={0};k9 original=(k9)Proxy.newProxyInstance(k9.class.getClassLoader(),new Class[]{k9.class},(p,m,args)->{remote[0]++;return new f74(){public void l(y74 observer){observer.c(new mu0(){public void h(){}public boolean n(){return false;}});observer.b(new IOException("remote unavailable"));}};});
  k9 api=(k9)LocalRuntime.wrap(original);
  UserListApi list=(UserListApi)await(api.e("0","ignored","3"));check(list.data.size()==1&&list.data.get(0).arTitle.equals("فيلم"));
  check(((UserListApi)await(api.e("1","ignored","3"))).data.isEmpty());
  check(((r25)await(api.a("100"))).favorit);
  check(((LogoutResponseApi)await(api.d("ignored","100","3"))).status.equals("true"));check(!((r25)await(api.a("100"))).favorit);
  check(((LogoutResponseApi)await(api.t("ignored","200","2"))).status.equals("true"));check(((r25)await(api.a("200"))).watchLater.equals("1"));
  await(api.t("ignored","200","1"));check(((r25)await(api.a("200"))).watched);
  try{await(api.f("ignored","200","private"));throw new AssertionError();}catch(IOException expected){}
  check(((LogoutResponseApi)await(api.C("ignored","200","1"))).status.equals("true"));
  check(((java.util.List)await(api.l("442"))).isEmpty());
  LocalRuntime.store.put(ListKind.WATCHED,new Item("443","حلقة",0,"{\"nb\":\"443\",\"rootSeries\":\"442\"}"));
  check(((java.util.List)await(api.l("442"))).equals(java.util.Arrays.asList("443")));
  check(remote[0]==0);
  final int[] signals={0};final boolean[] cancelled={false};
  qf1 source=new qf1(){public void i(ef4 subscriber){subscriber.d(new lf4(){public void cancel(){cancelled[0]=true;}public void u(long n){check(n==2);subscriber.e(java.util.Arrays.asList("episode"));subscriber.a();}});}};
  new LocalRuntime.EpisodeFlow(source,"442").i(new wg1(){public void d(lf4 subscription){subscription.u(2);}public void e(Object v){check(((java.util.List)v).size()==1);signals[0]++;}public void a(){signals[0]++;}public void b(Throwable t){throw new AssertionError(t);}});
  check(signals[0]==2&&!cancelled[0]);

  LocalRuntime.store.put(ListKind.FAVORITE,new Item("100","فيلم",0,"{\"nb\":\"100\",\"ar_title\":\"فيلم\"}"));
  check(((VideoModelApi)await(api.A("100","none"))).nb.equals("100"));
  try{await(api.A("9","none"));throw new AssertionError();}catch(Exception expected){}check(remote[0]==2);
  System.out.println("PASS large Arabic/emoji preference ZIP round-trip and missing/duplicate chunk rejection; empty artwork filtering; response contract true, local episode highlights, catalogue demand/completion; native API routing: local reads/mutations/status/pagination, blocked server comments, remote catalogue delegation");
 }finally{LocalRuntime.IO.shutdownNow();LocalRuntime.NETWORK.shutdownNow();}}
}
