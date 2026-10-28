package com.shabakaty.cinemana.local;
import com.shabakaty.downloader.*;import com.shabakaty.cinemana.local.LocalAccountStore.*;
import com.shabakaty.cinemana.domain.models.remote.*;import com.shabakaty.cinemana.domain.models.remote.user.*;
import java.io.*;import java.nio.file.*;import java.util.concurrent.*;import java.lang.reflect.*;
public class RuntimeBridgeTest {
 static Object await(Object single)throws Exception{CountDownLatch latch=new CountDownLatch(1);Object[] value=new Object[1];Throwable[] error=new Throwable[1];((f74)single).a(new y74(){public void c(mu0 d){}public void onSuccess(Object v){value[0]=v;latch.countDown();}public void b(Throwable t){error[0]=t;latch.countDown();}});if(!latch.await(5,TimeUnit.SECONDS))throw new AssertionError("timeout");if(error[0]!=null)throw new IOException(error[0]);return value[0];}
 static void check(boolean v){if(!v)throw new AssertionError();}
 public static void main(String[] a)throws Exception{try{
  LocalRuntime.store=new LocalAccountStore(Files.createTempDirectory("local-bridge").toFile(),null);LocalRuntime.store.setConfig("legacy_seeded","1");
  LocalRuntime.store.put(ListKind.FAVORITE,new Item("100","فيلم",0,"{\"nb\":\"100\",\"ar_title\":\"فيلم\"}"));
  final int[] remote={0};k9 original=(k9)Proxy.newProxyInstance(k9.class.getClassLoader(),new Class[]{k9.class},(p,m,args)->{remote[0]++;return new f74(){public void l(y74 observer){observer.c(new mu0(){public void h(){}public boolean n(){return false;}});observer.b(new IOException("remote unavailable"));}};});
  k9 api=(k9)LocalRuntime.wrap(original);
  UserListApi list=(UserListApi)await(api.e("0","ignored","3"));check(list.data.size()==1&&list.data.get(0).arTitle.equals("فيلم"));
  check(((UserListApi)await(api.e("1","ignored","3"))).data.isEmpty());
  check(((r25)await(api.a("100"))).favorit);
  await(api.d("ignored","100","3"));check(!((r25)await(api.a("100"))).favorit);
  await(api.t("ignored","200","2"));check(((r25)await(api.a("200"))).watchLater.equals("1"));
  await(api.t("ignored","200","1"));check(((r25)await(api.a("200"))).watched);
  try{await(api.f("ignored","200","private"));throw new AssertionError();}catch(IOException expected){}
  check(remote[0]==0);
  LocalRuntime.store.put(ListKind.FAVORITE,new Item("100","فيلم",0,"{\"nb\":\"100\",\"ar_title\":\"فيلم\"}"));
  check(((VideoModelApi)await(api.A("100","none"))).nb.equals("100"));
  try{await(api.A("9","none"));throw new AssertionError();}catch(Exception expected){}check(remote[0]==2);
  System.out.println("PASS native API routing: local reads/mutations/status/pagination, blocked server comments, remote catalogue delegation");
 }finally{LocalRuntime.IO.shutdownNow();LocalRuntime.NETWORK.shutdownNow();}}
}
