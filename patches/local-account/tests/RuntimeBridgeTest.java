package com.shabakaty.cinemana.local;
import com.shabakaty.downloader.*;import com.shabakaty.cinemana.local.LocalAccountStore.*;
import com.shabakaty.cinemana.domain.models.remote.*;import com.shabakaty.cinemana.domain.models.remote.user.*;
import java.io.*;import java.nio.file.*;import java.util.concurrent.*;import java.lang.reflect.*;
public class RuntimeBridgeTest {
 static Object await(Object single)throws Exception{CountDownLatch latch=new CountDownLatch(1);Object[] value=new Object[1];Throwable[] error=new Throwable[1];((f74)single).a(new y74(){public void c(mu0 d){}public void onSuccess(Object v){value[0]=v;latch.countDown();}public void b(Throwable t){error[0]=t;latch.countDown();}});if(!latch.await(5,TimeUnit.SECONDS))throw new AssertionError("timeout");if(error[0]!=null)throw new IOException(error[0]);return value[0];}
 static void check(boolean v){if(!v)throw new AssertionError();}
 public static final class Cat {public String imgObjUrl;public String enTitle="Action";Cat(String image){imgObjUrl=image;}}
 public static void main(String[] a)throws Exception{try{
  StringBuilder large=new StringBuilder();for(int n=0;n<16000;n++)large.append("نص\\\"🌙");String preferenceText=large.toString();
  java.util.List<Item> chunks=BackupState.encode("ca1_continue106","123",preferenceText);check(chunks.size()>1);check(BackupState.decode(chunks).get("ca1_continue106").get("123").equals(preferenceText));
  java.util.List<Item> missing=new java.util.ArrayList<>(chunks);missing.remove(0);try{BackupState.decode(missing);throw new AssertionError();}catch(IOException expected){}
  java.util.List<Item> duplicate=new java.util.ArrayList<>(chunks);duplicate.add(chunks.get(0));try{BackupState.decode(duplicate);throw new AssertionError();}catch(IOException expected){}
  LocalAccountStore saved=new LocalAccountStore(Files.createTempDirectory("chunked-account").toFile(),null);saved.replace(ListKind.STATE,chunks);ByteArrayOutputStream zip=new ByteArrayOutputStream();saved.exportZip(zip);saved.importZip(new ByteArrayInputStream(zip.toByteArray()));check(BackupState.decode(saved.list(ListKind.STATE)).get("ca1_continue106").get("123").equals(preferenceText));
  check(((java.util.List)LocalRuntime.categories(java.util.Arrays.asList(new Cat(""),new Cat("https://images/test.jpg"),new Cat(null)))).size()==1);
  org.json.JSONObject rich=new org.json.JSONObject("{\"nb\":\"movie\",\"ar_title\":\"Title\",\"stars\":\"8.1\",\"year\":\"2005\",\"imgObjUrl\":\"https://images/poster.jpg\"}");
  org.json.JSONObject poor=new org.json.JSONObject("{\"nb\":\"movie\",\"ar_title\":\"\",\"en_title\":\"\",\"imgObjUrl\":\"\"}");
  org.json.JSONObject merged=Metadata269.merge(rich,poor);check(merged.getString("ar_title").equals("Title")&&merged.getString("stars").equals("8.1"));check(Metadata269.merge(poor,rich).getString("year").equals("2005"));
  Cat placeholder=new Cat("https://images/server/default.jpg");placeholder.enTitle="War & Politics";check(!Metadata269.category(placeholder));check(!Metadata269.category(new Cat("https://images/")));
  String old="https://cdn.shabakaty.cc/media/a.mp4?Expires=1793136771&Signature=old",fresh="https://cdn.shabakaty.cc/media/a.mp4?Expires=1793739656&Signature=new";long now=1793204331848L;
  check(ExpiredLink269.expired(old,now)&&!ExpiredLink269.expired(fresh,now)&&ExpiredLink269.sameMedia(old,fresh));check(ExpiredLink269.rejected("response code error: 403, ")&&!ExpiredLink269.rejected("response code error: 500"));
  org.json.JSONArray candidates=new org.json.JSONArray().put(new org.json.JSONObject().put("videoUrl",old)).put(new org.json.JSONObject().put("videoUrl",fresh)).put(new org.json.JSONObject().put("videoUrl","https://cdn.shabakaty.cc/media/b.mp4?Expires=1793739656").put("name","720p")).put(new org.json.JSONObject().put("videoUrl","https://cdn.shabakaty.cc/media/c.mp4?Expires=1793739656").put("name","1080p"));
  java.util.List<String> choices=ExpiredLink269.candidates(candidates,old,"720p",now);check(choices.size()==2&&choices.get(0).equals(fresh));check(ExpiredLink269.candidates(candidates,old,"",now).size()==1);check(!ExpiredLink269.safe("https://evil.invalid/video.mp4"));
  com.sun.net.httpserver.HttpServer server=com.sun.net.httpserver.HttpServer.create(new java.net.InetSocketAddress("127.0.0.1",0),0);
  server.createContext("/ok",exchange->{check("bytes=0-15".equals(exchange.getRequestHeaders().getFirst("Range")));byte[] header={0,0,0,24,'f','t','y','p','i','s','o','m'};exchange.sendResponseHeaders(206,header.length);exchange.getResponseBody().write(header);exchange.close();});
  server.createContext("/html",exchange->{byte[] body="<html>error</html>".getBytes("UTF-8");exchange.sendResponseHeaders(200,body.length);exchange.getResponseBody().write(body);exchange.close();});
  server.createContext("/denied",exchange->{exchange.sendResponseHeaders(403,-1);exchange.close();});server.start();try{String host="http://127.0.0.1:"+server.getAddress().getPort();check(ExpiredLink269.probe(host+"/ok"));check(!ExpiredLink269.probe(host+"/html"));check(!ExpiredLink269.probe(host+"/denied"));}finally{server.stop(0);}
  LocalRuntime.store=new LocalAccountStore(Files.createTempDirectory("local-bridge").toFile(),null);LocalRuntime.store.setConfig("legacy_seeded","1");
  LocalRuntime.store.put(ListKind.FAVORITE,new Item("100","فيلم",0,"{\"nb\":\"100\",\"ar_title\":\"فيلم\"}"));
  LocalRuntime.store.put(ListKind.WATCHED,new Item("movie","",60000,poor.toString()));LocalRuntime.store.put(ListKind.FAVORITE,new Item("movie","",0,poor.toString()));LocalRuntime.store.refreshMetadata(new Item("movie","Title",0,merged.toString()));check(LocalRuntime.store.find(ListKind.WATCHED,"movie").positionMs==60000);LocalRuntime.store.remove(ListKind.FAVORITE,"movie");LocalRuntime.store.refreshMetadata(new Item("movie","New Title",0,merged.toString()));check(LocalRuntime.store.find(ListKind.FAVORITE,"movie")==null);LocalRuntime.store.remove(ListKind.WATCHED,"movie");
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
  System.out.println("PASS blank metadata merge/repair without restoring deleted membership, placeholder category exclusion, expired-link/quality selection and real bounded HTTP range probes; large Arabic/emoji preference ZIP round-trip and missing/duplicate chunk rejection; empty artwork filtering; response contract true, local episode highlights, catalogue demand/completion; native API routing: local reads/mutations/status/pagination, blocked server comments, remote catalogue delegation");
 }finally{ExpiredLink269.worker.shutdownNow();LocalRuntime.METADATA.shutdownNow();LocalRuntime.IO.shutdownNow();LocalRuntime.NETWORK.shutdownNow();}}
}
