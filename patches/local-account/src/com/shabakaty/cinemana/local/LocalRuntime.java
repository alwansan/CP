package com.shabakaty.cinemana.local;

import android.app.*;import android.app.job.*;import android.content.*;import android.net.*;import android.os.*;import android.util.Log;
import com.shabakaty.downloader.*;
import java.io.*;import java.lang.reflect.*;import java.net.*;import java.util.*;import java.util.concurrent.*;
import org.json.*;
import com.shabakaty.cinemana.local.LocalAccountStore.*;

/** Sole bridge between legacy API consumers and local account state. Public catalogue reads
 * are delegated. Personal reads/writes never reach the upstream account service. */
public final class LocalRuntime {
 public static final ScheduledExecutorService IO=Executors.newSingleThreadScheduledExecutor();
 static volatile Context app;static volatile LocalAccountStore store;static volatile Object api;
 static final ExecutorService METADATA=Executors.newSingleThreadExecutor();
 static final ExecutorService NETWORK=Executors.newSingleThreadExecutor();
 private static final java.util.concurrent.atomic.AtomicBoolean scanning=new java.util.concurrent.atomic.AtomicBoolean();
 private static final Set<String> mutedProgress=Collections.newSetFromMap(new ConcurrentHashMap<String,Boolean>());
 private static final ConcurrentHashMap<String,Long> pendingProgress=new ConcurrentHashMap<>();
 private static final java.util.concurrent.atomic.AtomicBoolean progressScheduled=new java.util.concurrent.atomic.AtomicBoolean();
 private static final lr1 JSON=new lr1();
 static final LinkedHashMap<String,String> cache=new LinkedHashMap<>();
 private static final String MODELS="com.shabakaty.cinemana.domain.models.remote.";
 static volatile boolean scanCancelled;private static volatile long lastMigrationAttempt;private static long storageProbe,lastStateSnapshot;private static volatile boolean stateDirty;
 static final long INTERVAL=60*60*1000L;
 public static synchronized void init(Context context){
  if(app!=null)return;app=context.getApplicationContext();com.shabakaty.cinemana.ca1.LocalAccountLog.init(app);log("build=PATCH274");
  IO.execute(new Runnable(){public void run(){try{data();ensureLegacy();try{if(!data().config("upgrade268","0").equals("1")){snapshotLegacy(true);data().setConfig("upgrade268","1");log("account_upgrade268_complete");}}catch(Exception upgrade){failure("account_upgrade268",upgrade);}schedule();requestScan(false);}catch(Exception e){failure("init",e);}}});
 }
 static File sharedDirectory(){return new File(Environment.getExternalStorageDirectory(),"Cinemana/work/data/local-account");}
 static synchronized LocalAccountStore data()throws IOException {
  if(app==null&&store==null)throw new IOException("local account not initialized");if(app==null)return store;
  File privateDir=new File(app.getFilesDir(),"data/local-account");boolean restore=false;
  if(store==null){File shared=sharedDirectory();boolean available=(shared.isDirectory()||shared.mkdirs())&&shared.canWrite();File selected=available?shared:privateDir;
   File old=new File(privateDir,"account.bin");restore=available&&new File(shared,"account.bin").isFile()&&!old.exists()&&!app.getSharedPreferences("local_profile",0).getBoolean("loaded_shared",false);
   if(available&&old.exists()&&!new File(shared,"account.bin").exists())store=new LocalAccountStore(privateDir,new LocalAccountStore.Events(){public void record(String e,int n){log(e+" count="+n);}}).relocate(shared);
   else store=new LocalAccountStore(selected,new LocalAccountStore.Events(){public void record(String e,int n){log(e+" count="+n);}});
   if(available){app.getSharedPreferences("local_profile",0).edit().putBoolean("loaded_shared",true).apply();if(old.exists()){old.delete();new File(privateDir,"avatar.jpg").delete();}}
   storageProbe=System.currentTimeMillis();log("account_storage shared="+available);updateProfile();
  }else if(store.directory().equals(privateDir)&&System.currentTimeMillis()-storageProbe>30000){storageProbe=System.currentTimeMillis();File target=sharedDirectory();if((target.isDirectory()||target.mkdirs())&&target.canWrite()){store=store.relocate(target);app.getSharedPreferences("local_profile",0).edit().putBoolean("loaded_shared",true).apply();new File(privateDir,"account.bin").delete();new File(privateDir,"avatar.jpg").delete();updateProfile();log("account_storage shared=true");}}
  if(restore)IO.execute(()->{try{restoreLegacy();Class.forName("com.shabakaty.cinemana.ca1.Continue106").getMethod("portableReload",Object.class).invoke(null,app);log("account_reinstalled_restored");}catch(Exception e){failure("reinstall_restore",e);}});
  return store;
 }
 static void refreshStorage()throws IOException{storageProbe=0;data();}
 static void updateProfile()throws IOException {
  byte[] bytes=store.avatar();String path="";File dir=store.directory();
  if(bytes.length>0){try{String hash=hex(java.security.MessageDigest.getInstance("SHA-256").digest(bytes));File image=new File(dir,"avatar-"+hash.substring(0,16)+".jpg");if(!image.exists()){android.util.AtomicFile atomic=new android.util.AtomicFile(image);FileOutputStream out=null;try{out=atomic.startWrite();out.write(bytes);atomic.finishWrite(out);}catch(IOException e){if(out!=null)atomic.failWrite(out);throw e;}}path=Uri.fromFile(image).toString();
    File[] old=dir.listFiles();if(old!=null)for(File file:old)if((file.getName().equals("avatar.jpg")||file.getName().matches("avatar-[0-9a-f]+\\.jpg"))&&!file.equals(image))file.delete();
   }catch(java.security.NoSuchAlgorithmException e){throw new IOException(e);}}
  app.getSharedPreferences("local_profile",0).edit().putString("name",store.name()).putString("avatar",path).apply();
 }
 public static String name(){return app==null?"حسابي":app.getSharedPreferences("local_profile",0).getString("name","حسابي");}
 public static String avatar(){return app==null?"":app.getSharedPreferences("local_profile",0).getString("avatar","");}
 public static void profileResume(Object activity){try{activity.getClass().getMethod("H0",String.class).invoke(activity,avatar());}catch(NoSuchMethodException ignored){}catch(Exception e){failure("avatar_refresh",e);}}
 public static f74 logout(){return new LocalSingle(()->new JSONObject());}
 public static void open(Context context){context.startActivity(new Intent(context,LocalAccountActivity.class));}
 public static void log(String event){
  Log.i("CinemanaLocal",event);
  com.shabakaty.cinemana.ca1.LocalAccountLog.emit(event);
 }
 static void failure(String phase,Throwable e){String site="";for(StackTraceElement frame:e.getStackTrace())if(frame.getClassName().startsWith("com.shabakaty.cinemana.local")){site=" source="+frame.getClassName().substring(frame.getClassName().lastIndexOf('.')+1)+"."+frame.getMethodName()+":"+frame.getLineNumber();break;}log(phase+"_failed type="+causeTypes(e)+site);}
 public static Object wrap(final Object remote){
  api=remote;
  return java.lang.reflect.Proxy.newProxyInstance(remote.getClass().getClassLoader(),new Class[]{k9.class},new InvocationHandler(){public Object invoke(Object proxy,final Method method,final Object[] args)throws Throwable{
   final String key=method.getName();
   if(method.getDeclaringClass()==Object.class){if(key.equals("toString"))return "LocalAccountApi";if(key.equals("hashCode"))return System.identityHashCode(proxy);return proxy==args[0];}
   // Suspend settings calls can return immediately without a Continuation transition.
   if(key.equals("I"))return dto("user.UserSettingsApi",settings());
   if(key.equals("j")||key.equals("m")){
    final String setting=key.equals("j")?"parental":"translation";
    final String value=String.valueOf(args[0]);
    app.getSharedPreferences("local_settings",0).edit().putString(setting,value).apply();
    IO.execute(new Runnable(){public void run(){try{data().setConfig(setting,value);}catch(Exception e){failure("settings",e);}}});
    return Class.forName("com.shabakaty.downloader.qv4").getField("a").get(null);
   }
   if(Arrays.asList("a","d","e","t","p","q","v","y","s","B","C","E","f","r","x","l").contains(key))return new LocalSingle(new Callable<Object>(){public Object call()throws Exception{return local(key,args);}},key.equals("e")||key.equals("p")?METADATA:IO);
   try{
    Object value=method.invoke(remote,args);
    if(key.equals("D")&&value instanceof f74)return new CategorySingle((f74)value);
    if(key.equals("A")&&value instanceof f74)return new CaptureSingle((f74)value,String.valueOf(args[0]));
    if(key.equals("b")&&value instanceof qf1)return new EpisodeFlow((qf1)value,String.valueOf(args[0]));
    return value;
   }catch(InvocationTargetException e){throw e.getCause();}
  }});
 }
 static Object dto(String type,String json)throws Exception{return JSON.e(json,Class.forName(MODELS+type));}
 static String settings(){
  try{android.content.SharedPreferences p=app.getSharedPreferences("local_settings",0);
   return new JSONObject().put("parentalLevelStatus",Integer.parseInt(p.getString("parental","0"))).put("parentalControl",new JSONArray("[{\"id\":\"0\",\"name\":\"الافتراضي\"},{\"id\":\"1\",\"name\":\"الكل\"},{\"id\":\"2\",\"name\":\"للعائلة\"},{\"id\":\"3\",\"name\":\"للأطفال\"}]")).put("userTranslation",new JSONObject().put("name","عرض الأعمال بدون ترجمة").put("status",Integer.parseInt(p.getString("translation","0")))).toString();
  }catch(Exception e){return "{}";}
 }
 static ListKind kind(String v)throws IOException{if(v.equals("3"))return ListKind.FAVORITE;if(v.equals("2"))return ListKind.WATCH_LATER;if(v.equals("1"))return ListKind.WATCHED;throw new IOException("unsupported personal list");}
 static Object local(String op,Object[] a)throws Exception{
  LocalAccountStore s=data();ensureLegacy();log("api_local operation="+op);
  if(op.equals("f")||op.equals("r")||op.equals("x")||op.equals("E"))throw new IOException("التعليقات على الخادم تحتاج حساب شبكتي؛ حسابك الحالي محلي");
  if(op.equals("l")){
   String root=String.valueOf(a[0]);List<String> ids=new ArrayList<>();
   for(Item i:s.list(ListKind.WATCHED)){
    JSONObject o=model(i);if(i.id.equals(root)||root.equals(o.optString("rootSeries")))ids.add(i.id);
   }
   log("highlight_local id="+safeId(root)+" count="+ids.size());return ids;
  }
  if(op.equals("a")){
   String id=String.valueOf(a[0]);JSONObject status=new JSONObject();
   String rating=s.config("rating_"+id,"");status.put("like",rating.equals("1")).put("dislike",rating.equals("0"));
   status.put("favorit",s.find(ListKind.FAVORITE,id)!=null).put("watched",s.find(ListKind.WATCHED,id)!=null).put("watchLater",s.find(ListKind.WATCH_LATER,id)!=null?"1":"0");
   return JSON.e(status.toString(),Class.forName("com.shabakaty.downloader.r25"));
  }
  if(op.equals("t")||op.equals("d")){
   String id=String.valueOf(a[1]);ListKind k=kind(String.valueOf(a[2]));
   if(op.equals("t"))s.put(k,item(id));else s.remove(k,id);
   return dto("user.LogoutResponseApi","{\"status\":\"true\"}");
  }
  if(op.equals("v")||op.equals("y")){
   String id=String.valueOf(a[1]);if(op.equals("v")){s.put(ListKind.SUBSCRIPTION,item(id));log("subscription_baseline_pending");requestBaseline(id);}else s.remove(ListKind.SUBSCRIPTION,id);
   return "true";
  }
  if(op.equals("e")){
   int page=Integer.parseInt(String.valueOf(a[0]));List<Item> items=s.list(kind(String.valueOf(a[2])));Collections.reverse(items);
   if(page==0)Metadata269.hydrate(items.subList(0,Math.min(30,items.size())));JSONArray array=new JSONArray();if(page<0||page>100000)throw new IOException("invalid page");int start=page*30;for(int i=start;i<Math.min(start+30,items.size());i++)array.put(model(items.get(i)));
   return dto("user.UserListApi",new JSONObject().put("data",array).put("status","success").toString());
  }
  if(op.equals("p")){JSONArray array=new JSONArray();for(Item i:s.list(ListKind.SUBSCRIPTION))array.put(model(i));return dtoArray(array);}
  if(op.equals("q")){JSONArray array=new JSONArray();List<Item> items=s.inbox();Collections.reverse(items);int limit=Math.max(1,Math.min(100,Integer.parseInt(String.valueOf(a[0]))));for(int n=0;n<Math.min(limit,items.size());n++)array.put(model(items.get(n)));return dto("user.NotificationsListApi",new JSONObject().put("new",String.valueOf(items.size())).put("notifications",array).toString());}
  if(op.equals("C")){// Like/dislike remains a local preference; never fabricate a server vote.
   s.setConfig("rating_"+String.valueOf(a[1]),String.valueOf(a[2]));return dto("user.LogoutResponseApi","{\"status\":\"true\",\"likeNumber\":\"0\",\"dislikeNumebr\":\"0\"}");
  }
  return new JSONObject(); // legacy device registration/logout suppressed, no tokens sent
 }
 static List<Object> dtoArray(JSONArray array)throws Exception{List<Object> list=new ArrayList<>();for(int i=0;i<array.length();i++)list.add(dto("VideoModelApi",array.getJSONObject(i).toString()));return list;}
 static JSONObject model(Item i)throws Exception{return Metadata269.enrich(i);}
 static Item item(String id)throws Exception{
  String json; synchronized(cache){json=cache.get(id);}if(json==null)for(ListKind k:ListKind.values()){Item i=data().find(k,id);if(i!=null&&i.payload.length()>0)return i;}
  if(json==null)return new Item(id,"عمل "+id,0);
  JSONObject o=new JSONObject(json);String title=o.optString("ar_title");if(title.length()==0)title=o.optString("en_title",id);return new Item(id,title,0,json);
 }
 static void capture(Object value){
  try{JSONObject o=new JSONObject(JSON.i(value));String id=o.optString("nb");if(!id.matches("[A-Za-z0-9_-]{1,100}"))return;
   JSONObject snapshot=new JSONObject();
   for(String key:new String[]{"nb","ar_title","en_title","custom_ar_title","custom_en_title","kind","rootSeries","season","episodeNummer","episode_flag","imgObjUrl","imgThumbObjUrl","imgMediumThumbObjUrl","year","duration","publishDate","rate","stars","filmRating","seriesRating","finished","ar_content","en_content"}){
    if(o.has(key)){Object field=o.get(key);if(field instanceof String&&((String)field).length()>4000)field=((String)field).substring(0,4000);snapshot.put(key,field);}
   }
   String json=snapshot.toString();if(json.length()>20000)throw new IOException("metadata limit");synchronized(cache){cache.put(id,json);while(cache.size()>64)cache.remove(cache.keySet().iterator().next());}
  }catch(Exception e){failure("metadata",e);}
 }
 public static void progress(final String id,final long position){
  pendingProgress.put(id,position);if(progressScheduled.compareAndSet(false,true))IO.schedule(()->{try{flushProgress();}catch(Exception e){failure("progress",e);}finally{progressScheduled.set(false);}},10,TimeUnit.SECONDS);
 }
 public static void flushProgressAsync(){IO.execute(()->{try{flushProgress();if(stateDirty)snapshotPreferences();}catch(Exception e){failure("progress",e);}});}
 static void flushProgress()throws Exception{
  Map<String,Long> copy=new HashMap<>(pendingProgress);Map<ListKind,List<Item>> records=new EnumMap<>(ListKind.class);List<Item> items=new ArrayList<>();
  for(Map.Entry<String,Long> e:copy.entrySet()){String id=canonicalId(e.getKey());if(mutedProgress.contains(id))continue;Item old=item(id);items.add(new Item(old.id,old.title,e.getValue(),old.payload));}
  records.put(ListKind.PROGRESS,items);if(!items.isEmpty())data().merge(records);for(Map.Entry<String,Long> e:copy.entrySet())pendingProgress.remove(e.getKey(),e.getValue());if(stateDirty&&System.currentTimeMillis()-lastStateSnapshot>60000)snapshotPreferences();
 }
 static String canonicalId(String row){if(app==null)return row;for(String filename:app.databaseList()){if(filename.endsWith("-wal")||filename.endsWith("-shm")||filename.endsWith("-journal"))continue;android.database.sqlite.SQLiteDatabase db=null;try{db=android.database.sqlite.SQLiteDatabase.openDatabase(app.getDatabasePath(filename).getPath(),null,android.database.sqlite.SQLiteDatabase.OPEN_READONLY);android.database.Cursor cursor=db.rawQuery("SELECT videoId FROM video_status WHERE id=? OR videoId=? LIMIT 1",new String[]{row,row});try{if(cursor.moveToFirst())return cursor.getString(0);}finally{cursor.close();}}catch(android.database.SQLException ignored){}finally{if(db!=null)db.close();}}return row;}
 public static void resumeProgress(String id){mutedProgress.remove(id);stateDirty=true;}
 public static void watchedChanged(final String row,final boolean watched){IO.execute(()->{try{String id=canonicalId(row);if(watched)data().put(ListKind.WATCHED,item(id));else data().remove(ListKind.WATCHED,id);log("watched_changed id="+safeId(id)+" value="+watched);}catch(Exception e){failure("watched_sync",e);}});}
 public static void removeProgress(final String id){mutedProgress.add(id);pendingProgress.remove(id);IO.execute(()->{try{for(String key:new ArrayList<>(pendingProgress.keySet()))if(id.equals(canonicalId(key)))pendingProgress.remove(key);data().removeProgress(id);for(String filename:app.databaseList()){
  if(filename.endsWith("-wal")||filename.endsWith("-shm")||filename.endsWith("-journal"))continue;android.database.sqlite.SQLiteDatabase db=null;try{db=android.database.sqlite.SQLiteDatabase.openDatabase(app.getDatabasePath(filename).getPath(),null,android.database.sqlite.SQLiteDatabase.OPEN_READWRITE);db.execSQL("UPDATE video_status SET videoProgress=0 WHERE videoId=?",new Object[]{id});}catch(android.database.SQLException ignored){}finally{if(db!=null)db.close();}}
  snapshotPreferences();log("continue_removed id="+safeId(id));}catch(Exception e){failure("continue_remove",e);}});}
 static void snapshotPreferences()throws Exception {
  List<Item> records=new ArrayList<>();Item settings=data().find(ListKind.STATE,"settings");if(settings!=null)records.add(settings);
  for(String pref:new String[]{"ca1_continue106"})for(Map.Entry<String,?> entry:app.getSharedPreferences(pref,0).getAll().entrySet())records.addAll(BackupState.encode(pref,entry.getKey(),entry.getValue()));
  data().replace(ListKind.STATE,records);stateDirty=false;lastStateSnapshot=System.currentTimeMillis();
 }
 public static void stateChanged(){stateDirty=true;}
 static Object cachedModel(String id)throws Exception {for(ListKind k:ListKind.values()){Item i=data().find(k,id);if(i!=null&&!i.payload.isEmpty())return dto("VideoModelApi",i.payload);}throw new IOException("no local metadata");}
 public static long progressValue(String id){try{Item i=data().find(ListKind.PROGRESS,id);return i==null?0:i.positionMs;}catch(Exception e){return 0;}}
 public static void decorate(android.view.View root){
  final Context context=root.getContext();android.view.View row=root.findViewWithTag("local_account266");
  if(row!=null)row.setVisibility(android.view.View.GONE);
  final String[] hidden={"profile_logout_item","profile_login_linear","login_qr_button"};
  android.view.View.OnLayoutChangeListener hide=(view,l,t,r,b,ol,ot,oright,ob)->{for(String id:hidden){int n=context.getResources().getIdentifier(id,"id",context.getPackageName());android.view.View v=root.findViewById(n);if(v!=null&&v.getVisibility()!=android.view.View.GONE)v.setVisibility(android.view.View.GONE);}};
  root.addOnLayoutChangeListener(hide);root.post(()->hide.onLayoutChange(root,0,0,0,0,0,0,0,0));
 }
 public static void profileState(Object viewModel){
  try{Object live=viewModel.getClass().getField("o").get(viewModel);live.getClass().getMethod("postValue",Object.class).invoke(live,name());
   Object picture=viewModel.getClass().getField("q").get(viewModel);picture.getClass().getMethod("postValue",Object.class).invoke(picture,avatar());
  }catch(Exception e){failure("profile_refresh",e);}
 }
 public static void overlay(Object video){
  LocalAccountStore s=store;if(s==null||video==null)return;
  try{Class<?> c=video.getClass();String id=String.valueOf(c.getField("nb").get(video));String root=String.valueOf(c.getField("rootSeries").get(video));String listId=root.matches("[1-9][0-9]*")?root:id;Object status=c.getField("status").get(video);
   if(status==null){status=Class.forName("com.shabakaty.downloader.q25").newInstance();c.getField("status").set(video,status);}
   status.getClass().getField("v").setBoolean(status,s.find(ListKind.FAVORITE,listId)!=null);
   status.getClass().getField("s").setBoolean(status,s.find(ListKind.WATCHED,id)!=null);
   status.getClass().getField("w").set(status,s.find(ListKind.WATCH_LATER,listId)!=null?"1":"0");
   Item progress=s.find(ListKind.PROGRESS,id);if(progress!=null)status.getClass().getField("x").setLong(status,progress.positionMs);
  }catch(Exception e){failure("status_overlay",e);}
 }
 static void importAccount(InputStream in)throws Exception {
  ByteArrayOutputStream bytes=new ByteArrayOutputStream();byte[] buffer=new byte[8192];int n;
  while((n=in.read(buffer))!=-1){if(bytes.size()+n>32*1024*1024)throw new IOException("archive limit");bytes.write(buffer,0,n);}
  File stage=new File(app.getCacheDir(),"account-restore-stage");removeStage(stage);if(!stage.mkdirs())throw new IOException("staging unavailable");
  try{LocalAccountStore candidate=new LocalAccountStore(stage,null);candidate.importZip(new ByteArrayInputStream(bytes.toByteArray()));
   byte[] avatar=candidate.avatar();if(avatar.length>0){android.graphics.BitmapFactory.Options options=new android.graphics.BitmapFactory.Options();options.inJustDecodeBounds=true;android.graphics.BitmapFactory.decodeByteArray(avatar,0,avatar.length,options);if(options.outWidth<=0||options.outHeight<=0||options.outWidth>1024||options.outHeight>1024)throw new IOException("invalid avatar");}
   for(ListKind k:ListKind.values())for(Item item:candidate.list(k)){
    if(!item.payload.isEmpty()){
     JSONObject o=new JSONObject(item.payload);
     if(k==ListKind.STATE){if(item.id.equals("settings")){java.util.Iterator<String> keys=o.keys();while(keys.hasNext())if(!keys.next().matches("(filter|app|subtitles)_[A-Za-z]+"))throw new IOException("invalid settings");}
      else{/* Validated together below to detect missing or duplicate chunks. */}}
     else if(!item.id.equals(o.optString("nb")))throw new IOException("metadata id mismatch");
    }
   }
   BackupState.decode(candidate.list(ListKind.STATE));
   int parental=Integer.parseInt(candidate.config("parental","0"));int translation=Integer.parseInt(candidate.config("translation","0"));
   if(parental<0||parental>3||translation<0||translation>1)throw new IOException("invalid filter");
   // Commit the validated account before refreshing compatibility projections.
   pendingProgress.clear();data().importZip(new ByteArrayInputStream(bytes.toByteArray()));
   data().setConfig("last_scan","0");data().setConfig("scan_cursor","0");log("notification_restore baselines_preserved=true scan_reset=true");
  }finally{removeStage(stage);}
 }
 private static void removeStage(File dir){File[] files=dir.listFiles();if(files!=null)for(File f:files)f.delete();dir.delete();}
 private static void ensureLegacy(){
  try{if(data().config("legacy_seeded","0").equals("1"))return;long now=System.currentTimeMillis();if(now-lastMigrationAttempt<60000)return;lastMigrationAttempt=now;snapshotLegacy(true);}catch(Exception e){failure("legacy_migration",e);}
 }
 static void snapshotLegacy(boolean seed)throws Exception {
  LocalAccountStore s=data();Map<ListKind,List<Item>> records=new EnumMap<>(ListKind.class);for(ListKind k:ListKind.values())records.put(k,new ArrayList<Item>());
  boolean found=false;
  for(String filename:app.databaseList()){
   android.database.sqlite.SQLiteDatabase db=null;
   try{db=android.database.sqlite.SQLiteDatabase.openDatabase(app.getDatabasePath(filename).getPath(),null,android.database.sqlite.SQLiteDatabase.OPEN_READONLY);
    android.database.Cursor cursor=db.rawQuery("SELECT * FROM video_status",null);found=true;
    try{while(cursor.moveToNext()){
     String id=cursor.getString(cursor.getColumnIndexOrThrow("videoId"));if(id==null||!id.matches("[A-Za-z0-9_-]{1,100}"))continue;
     String title="عمل "+id;JSONObject meta=new JSONObject().put("nb",id).put("en_title",title).put("kind","1");
     android.database.Cursor model=db.rawQuery("SELECT nb,arTitle,enTitle,kind,rootSeries,season,episodeNummer,imgObjUrl,imgThumbObjUrl,imgMediumThumbObjUrl FROM video_model WHERE nb=?",new String[]{id});
     try{if(model.moveToFirst()){String[] fields={"nb","ar_title","en_title","kind","rootSeries","season","episodeNummer","imgObjUrl","imgThumbObjUrl","imgMediumThumbObjUrl"};for(int i=0;i<fields.length;i++)if(!model.isNull(i))meta.put(fields[i],model.getString(i));title=meta.optString("ar_title");if(title.isEmpty())title=meta.optString("en_title",id);}}finally{model.close();}
     meta=Metadata269.merge(Metadata269.local(id),meta);title=Metadata269.title(meta,"عمل "+id);long position=cursor.getLong(cursor.getColumnIndexOrThrow("videoProgress"));Item item=new Item(id,title,position,meta.toString());
     if(position>0&&app.getSharedPreferences("ca1_continue106",0).contains(id))records.get(ListKind.PROGRESS).add(item);
     if(seed){if(cursor.getInt(cursor.getColumnIndexOrThrow("favorite"))!=0)records.get(ListKind.FAVORITE).add(item);if(cursor.getInt(cursor.getColumnIndexOrThrow("watched"))!=0)records.get(ListKind.WATCHED).add(item);if("1".equals(cursor.getString(cursor.getColumnIndexOrThrow("watchLater"))))records.get(ListKind.WATCH_LATER).add(item);}
    }}finally{cursor.close();}
    // Back up only user settings, not databases containing credentials/download jobs.
    android.database.Cursor settings=db.rawQuery("SELECT * FROM settings WHERE userId=?",new String[]{"local"});try{if(settings.moveToFirst()){
     JSONObject o=new JSONObject();for(int i=0;i<settings.getColumnCount();i++)if(!settings.isNull(i)&&!"userId".equals(settings.getColumnName(i)))o.put(settings.getColumnName(i),settings.getString(i));records.get(ListKind.STATE).add(new Item("settings","",0,o.toString()));
    }}finally{settings.close();}
   }catch(android.database.SQLException e){/* Other app databases do not contain account tables. */}finally{if(db!=null)db.close();}
  }
  for(String pref:new String[]{"ca1_continue106"})for(Map.Entry<String,?> entry:app.getSharedPreferences(pref,0).getAll().entrySet())records.get(ListKind.STATE).addAll(BackupState.encode(pref,entry.getKey(),entry.getValue()));
  if(found)s.replace(ListKind.PROGRESS,records.remove(ListKind.PROGRESS));
  s.replace(ListKind.STATE,records.remove(ListKind.STATE));
  s.merge(records);if(seed&&found)s.setConfig("legacy_seeded","1");log("legacy_snapshot_complete");
 }
 private static String hex(byte[] b){StringBuilder s=new StringBuilder();for(byte v:b)s.append(String.format(Locale.ROOT,"%02x",v&255));return s.toString();}
 /** Restore the app's existing progress table without touching downloads or arbitrary SQL. */
 static void restoreLegacy()throws Exception {
  data().setConfig("legacy_seeded","1");
  for(String pref:new String[]{"ca1_continue106","ca1_episode_context107"})app.getSharedPreferences(pref,0).edit().clear().commit();
  Map<String,Map<String,Object>> restored=BackupState.decode(data().list(ListKind.STATE));
  for(Map.Entry<String,Map<String,Object>> group:restored.entrySet()){android.content.SharedPreferences.Editor edit=app.getSharedPreferences(group.getKey(),0).edit();for(Map.Entry<String,Object> entry:group.getValue().entrySet()){
   String key=entry.getKey();Object value=entry.getValue();if(value instanceof String)edit.putString(key,(String)value);else if(value instanceof Long)edit.putLong(key,(Long)value);else if(value instanceof Integer)edit.putInt(key,(Integer)value);else if(value instanceof Boolean)edit.putBoolean(key,(Boolean)value);else if(value instanceof Float)edit.putFloat(key,(Float)value);
  }if(!edit.commit())throw new IOException("preferences restore failed");}
  app.getSharedPreferences("local_settings",0).edit().putString("parental",data().config("parental","0")).putString("translation",data().config("translation","0")).apply();
  for(String filename:app.databaseList()){
   if(filename.endsWith("-wal")||filename.endsWith("-shm")||filename.endsWith("-journal"))continue;
   android.database.sqlite.SQLiteDatabase db=null;
   try{db=android.database.sqlite.SQLiteDatabase.openDatabase(app.getDatabasePath(filename).getPath(),null,android.database.sqlite.SQLiteDatabase.OPEN_READWRITE);
    android.database.Cursor check=db.rawQuery("SELECT name FROM sqlite_master WHERE type='table' AND name='video_status'",null);boolean exists;try{exists=check.moveToFirst();}finally{check.close();}if(!exists)continue;
    db.beginTransaction();try{
     db.execSQL("UPDATE video_status SET favorite=0,watched=0,watchLater='false',videoProgress=0");
     // Populate compatibility rows on a fresh installation before restoring flags/progress.
     java.util.LinkedHashMap<String,Item> all=new java.util.LinkedHashMap<>();
     for(ListKind k:new ListKind[]{ListKind.FAVORITE,ListKind.WATCH_LATER,ListKind.WATCHED,ListKind.PROGRESS,ListKind.SUBSCRIPTION})for(Item item:data().list(k))all.put(item.id,item);
     java.util.LinkedHashMap<String,String> types=new java.util.LinkedHashMap<>();android.database.Cursor modelColumns=db.rawQuery("PRAGMA table_info(video_model)",null);
     try{while(modelColumns.moveToNext())types.put(modelColumns.getString(1),modelColumns.getString(2));}finally{modelColumns.close();}
     for(Item item:all.values()){
      JSONObject model=model(item);android.content.ContentValues row=new android.content.ContentValues();
      for(Map.Entry<String,String> col:types.entrySet()){
       String key=col.getKey(),jsonKey=key.equals("arTitle")?"ar_title":key.equals("enTitle")?"en_title":key.equals("arContent")?"ar_content":key.equals("enContent")?"en_content":key;
       if(col.getValue().equalsIgnoreCase("TEXT"))row.put(key,model.optString(jsonKey,""));else row.put(key,0);
      }
      row.put("nb",item.id);if(row.getAsString("enTitle").isEmpty())row.put("enTitle",item.title);
      db.insertWithOnConflict("video_model",null,row,android.database.sqlite.SQLiteDatabase.CONFLICT_IGNORE);
      android.content.ContentValues status=new android.content.ContentValues();status.put("id",item.id);status.put("videoId",item.id);status.put("liked",0);status.put("disLiked",0);status.put("annoying",0);status.put("favorite",0);status.put("watched",0);status.put("watchLater","false");status.put("videoProgress",0);
      db.insertWithOnConflict("video_status",null,status,android.database.sqlite.SQLiteDatabase.CONFLICT_IGNORE);
     }

     for(ListKind k:new ListKind[]{ListKind.FAVORITE,ListKind.WATCH_LATER,ListKind.WATCHED,ListKind.PROGRESS})for(Item i:data().list(k)){
      String column=k==ListKind.FAVORITE?"favorite":k==ListKind.WATCH_LATER?"watchLater":k==ListKind.WATCHED?"watched":"videoProgress";
      Object value=k==ListKind.PROGRESS?i.positionMs:1;db.execSQL("UPDATE video_status SET "+column+"=? WHERE videoId=? OR id=?",new Object[]{value,i.id,i.id});
     }Item settings=data().find(ListKind.STATE,"settings");if(settings!=null){
      JSONObject o=new JSONObject(settings.payload);java.util.Iterator<String> keys=o.keys();android.content.ContentValues values=new android.content.ContentValues();
      java.util.Set<String> columns=new java.util.HashSet<>();android.database.Cursor schema=db.rawQuery("PRAGMA table_info(settings)",null);try{while(schema.moveToNext())columns.add(schema.getString(1));}finally{schema.close();}
      while(keys.hasNext()){String key=keys.next();if(columns.contains(key)&&!key.equals("userId"))values.put(key,o.getString(key));}if(values.size()>0){int changed=db.update("settings",values,"userId=?",new String[]{"local"});if(changed==0){values.put("userId","local");db.insertWithOnConflict("settings",null,values,android.database.sqlite.SQLiteDatabase.CONFLICT_IGNORE);}}
     }db.setTransactionSuccessful();
    }finally{db.endTransaction();}log("legacy_progress_restored");
   }catch(Exception e){failure("legacy_restore",e);}finally{if(db!=null)db.close();}
  }
 }
 static final class Cancel implements mu0 {volatile boolean cancelled;public void h(){cancelled=true;}public boolean n(){return cancelled;}}
 static final class LocalSingle extends f74 {
  final Callable<Object> call;final Executor executor;LocalSingle(Callable<Object> c){this(c,IO);}LocalSingle(Callable<Object> c,Executor e){call=c;executor=e;}
  public void l(final y74 observer){final Cancel cancel=new Cancel();observer.c(cancel);executor.execute(new Runnable(){public void run(){if(cancel.cancelled)return;try{Object result=call.call();if(!cancel.cancelled)observer.onSuccess(result);}catch(Exception e){failure("local_operation",e);if(!cancel.cancelled)observer.b(e);}}});}
 }
 static Object categories(Object value){if(!(value instanceof List))return value;List<Object> result=new ArrayList<>();for(Object item:(List<?>)value)if(item!=null&&Metadata269.category(item))result.add(item);log("categories_filtered kept="+result.size()+" total="+((List)value).size());return result;}
 static final class CategorySingle extends f74 {final f74 source;CategorySingle(f74 s){source=s;}public void l(y74 o){source.a(new y74(){public void c(mu0 d){o.c(d);}public void b(Throwable e){o.b(e);}public void onSuccess(Object value){o.onSuccess(categories(value));}});}}
 static String requestLabel(Object request)throws Exception {
  Object url=request.getClass().getField("b").get(request);String path=new java.net.URI(url.toString()).getPath();
  for(String route:new String[]{"allVideoInfo","videoSeason","transcoddedFiles"}){String prefix="/"+route+"/id/";int offset=path.indexOf(prefix);if(offset>=0)return route+" id="+safeId(path.substring(offset+prefix.length()));}
  return "";
 }
 public static void httpRequest(Object request){try{String label=requestLabel(request);if(!label.isEmpty())log("http_begin route="+label);}catch(Exception ignored){}}
 public static void httpResponse(Object response){try{Object request=response.getClass().getField("s").get(response);String label=requestLabel(request);if(!label.isEmpty())log("http_result route="+label+" status="+response.getClass().getField("v").getInt(response));}catch(Exception ignored){}}
 static String safeId(String value){return value!=null&&value.matches("[A-Za-z0-9_-]{1,100}")?value:"invalid";}
 static String causeTypes(Throwable error){StringBuilder out=new StringBuilder();for(int n=0;error!=null&&n<4;n++,error=error.getCause()){if(n>0)out.append('/');out.append(error.getClass().getSimpleName());}return out.toString();}
 static final class CaptureSingle extends f74 {
  final f74 upstream;final String id;CaptureSingle(f74 s,String id){upstream=s;this.id=id;}
  public void l(final y74 observer){final long started=System.currentTimeMillis();log("detail_begin id="+safeId(id));upstream.a(new y74(){public void c(mu0 d){observer.c(d);}public void b(final Throwable t){log("detail_failed id="+safeId(id)+" type="+causeTypes(t));IO.execute(()->{try{observer.onSuccess(cachedModel(id));log("detail_local_fallback id="+safeId(id));}catch(Exception missing){observer.b(t);}});}public void onSuccess(final Object result){
   IO.execute(new Runnable(){public void run(){capture(result);try{JSONObject o=new JSONObject(JSON.i(result));log("detail_result id="+safeId(id)+" kind="+("1".equals(o.optString("kind"))?"1":"2".equals(o.optString("kind"))?"2":"other")+" root="+safeId(o.optString("rootSeries"))+" poster="+(!o.optString("imgObjUrl").isEmpty())+" elapsed_ms="+(System.currentTimeMillis()-started));}catch(Exception e){failure("detail_trace",e);}}});observer.onSuccess(result);}});}
 }
 /** Forward the original catalogue stream with its demand and cancellation intact. */
 static final class EpisodeFlow extends qf1 {
  final qf1 upstream;final String id;EpisodeFlow(qf1 source,String value){upstream=source;id=value;}
  public void i(final ef4 downstream){upstream.h(new wg1(){
   final java.util.concurrent.atomic.AtomicBoolean terminal=new java.util.concurrent.atomic.AtomicBoolean();
   final long started=System.currentTimeMillis();volatile ScheduledFuture<?> deadline;volatile lf4 subscription;
   public void d(final lf4 next){subscription=next;log("season_begin id="+safeId(id));
    deadline=IO.schedule(()->{if(terminal.compareAndSet(false,true)){next.cancel();log("season_timeout id="+safeId(id));downstream.b(new java.net.SocketTimeoutException("episode catalogue timeout"));}},35,TimeUnit.SECONDS);
    downstream.d(new lf4(){public void u(long n){next.u(n);}public void cancel(){terminal.set(true);if(deadline!=null)deadline.cancel(false);next.cancel();log("season_cancel id="+safeId(id));}});
   }
   public void e(Object value){if(terminal.get())return;if(deadline!=null)deadline.cancel(false);int count=value instanceof Collection?((Collection)value).size():-1;log("season_result id="+safeId(id)+" count="+count+" elapsed_ms="+(System.currentTimeMillis()-started));observeEpisodes(id,value);downstream.e(value);}
   public void b(Throwable error){if(terminal.compareAndSet(false,true)){if(deadline!=null)deadline.cancel(false);log("season_failed id="+safeId(id)+" type="+causeTypes(error));downstream.b(error);}}
   public void a(){if(terminal.compareAndSet(false,true)){if(deadline!=null)deadline.cancel(false);downstream.a();}}
  });}
 }
 static void observeEpisodes(final String id,Object value){
  if(!(value instanceof Collection)||((Collection)value).isEmpty())return;
  try{final JSONArray fetched=new JSONArray(JSON.i(value));NETWORK.execute(()->{try{LocalAccountStore account=data();Item show=account.find(ListKind.SUBSCRIPTION,id);if(show==null)return;int before=account.baselineSize(id);List<Item> added=account.reconcile(id,episodeItems(show,fetched));log("episode_observed id="+safeId(id)+" previous="+before+" fetched="+fetched.length()+" new="+added.size());deliver();}catch(Exception e){failure("episode_observed",e);}});}catch(Exception e){failure("episode_observed_decode",e);}
 }
 static void schedule(){try{
  JobScheduler scheduler=(JobScheduler)app.getSystemService(Context.JOB_SCHEDULER_SERVICE);boolean exists=false;for(JobInfo j:scheduler.getAllPendingJobs())if(j.getId()==26601)exists=true;
  if(exists){for(JobInfo j:scheduler.getAllPendingJobs())if(j.getId()==26601&&j.getIntervalMillis()!=INTERVAL){scheduler.cancel(26601);exists=false;}}
  if(!exists)scheduler.schedule(new JobInfo.Builder(26601,new ComponentName(app,LocalEpisodeJob.class)).setRequiredNetworkType(JobInfo.NETWORK_TYPE_ANY).setPeriodic(INTERVAL).setPersisted(true).build());
 }catch(Exception e){failure("schedule",e);}}
 static void requestBaseline(final String id){NETWORK.execute(()->{try{LocalAccountStore account=data();if(account.find(ListKind.SUBSCRIPTION,id)==null||account.hasBaseline(id))return;JSONArray fetched=episodes(id);List<Item> items=episodeItems(item(id),fetched);if(!items.isEmpty()){account=data();account.reconcile(id,items);log("subscription_baseline id="+safeId(id)+" count="+account.baselineSize(id));}}catch(Exception e){failure("subscription_baseline",e);}});}
 static List<Item> episodeItems(Item show,JSONArray episodes)throws Exception {List<Item> items=new ArrayList<>();for(int n=0;n<episodes.length();n++){JSONObject o=episodes.getJSONObject(n);String id=o.optString("nb");if(!id.matches("[A-Za-z0-9_-]{1,100}"))throw new IOException("invalid episode id");JSONObject compact=new JSONObject();for(String key:new String[]{"nb","kind","rootSeries","season","episodeNummer","ar_title","en_title","imgObjUrl","imgThumbObjUrl","imgMediumThumbObjUrl","publishDate","duration"})if(o.has(key))compact.put(key,o.get(key));items.add(new Item(id,show.title+" — "+o.optString("season","")+":"+o.optString("episodeNummer",""),0,compact.toString()));}return items;}
 public static void foreground(Context context){init(context);log("foreground_episode_scan_requested");requestScan(true);}
 public static void requestScan(final boolean force){if(app==null||!scanning.compareAndSet(false,true))return;NETWORK.execute(new Runnable(){public void run(){try{scanCancelled=false;scan(force);}catch(Exception e){failure("scan",e);}finally{scanning.set(false);}}});}
 static void scan(boolean force)throws Exception{
  LocalAccountStore s=data();long now=System.currentTimeMillis(),last=Long.parseLong(s.config("last_scan","0"));
  if(now>=last&&now-last<(force?60000:INTERVAL)){deliver();return;}
  android.net.ConnectivityManager cm=(android.net.ConnectivityManager)app.getSystemService(Context.CONNECTIVITY_SERVICE);
  android.net.NetworkInfo info=cm.getActiveNetworkInfo();if(info==null||!info.isConnected())return;
  List<Item> subscriptions=s.list(ListKind.SUBSCRIPTION);if(subscriptions.isEmpty())return;
  int cursor=Integer.parseInt(s.config("scan_cursor","0"));int count=Math.min(200,subscriptions.size());
  long end=android.os.SystemClock.elapsedRealtime()+45000;int done=0;
  for(;done<count&&!scanCancelled&&android.os.SystemClock.elapsedRealtime()<end;done++){
   Item show=subscriptions.get((cursor+done)%subscriptions.size());
   try{JSONArray episodes=episodes(show.id);if(episodes.length()==0)continue;List<Item> items=episodeItems(show,episodes);
    s=data();int previous=s.baselineSize(show.id);List<Item> added=s.reconcile(show.id,items);log("subscription_checked id="+safeId(show.id)+" previous="+previous+" fetched="+items.size()+" new="+added.size()+" baseline="+s.baselineSize(show.id));
   }catch(Exception e){failure("episode_fetch",e);}
  }
  s.setConfig("scan_cursor",String.valueOf((cursor+done)%subscriptions.size()));s.setConfig("last_scan",String.valueOf(now));log("scan_complete checked="+done+" total="+subscriptions.size()+" cursor="+((cursor+done)%subscriptions.size()));deliver();
 }
 static JSONArray episodes(String id)throws Exception{
  HttpURLConnection connection=(HttpURLConnection)new URL("https://cinemana.shabakaty.cc/api/android/videoSeason/id/"+id).openConnection();
  try{connection.setConnectTimeout(8000);connection.setReadTimeout(8000);connection.setInstanceFollowRedirects(false);connection.setRequestProperty("Accept","application/json");
   int code=connection.getResponseCode();log("episode_http status="+code);if(code!=200)throw new IOException("episode http");
   String type=connection.getContentType();if(type==null||!type.toLowerCase(Locale.ROOT).contains("json"))throw new IOException("episode content type");
   ByteArrayOutputStream out=new ByteArrayOutputStream();try(InputStream in=connection.getInputStream()){byte[] b=new byte[8192];int n;while((n=in.read(b))!=-1){if(out.size()+n>2*1024*1024)throw new IOException("episode response limit");out.write(b,0,n);}}
   JSONArray array=new JSONArray(new String(out.toByteArray(),"UTF-8"));if(array.length()>10000)throw new IOException("episode limit");return array;
  }finally{connection.disconnect();}
 }
 static void deliver()throws Exception{
  if(Build.VERSION.SDK_INT>=33&&app.checkSelfPermission("android.permission.POST_NOTIFICATIONS")!=0){log("notification_permission_missing");return;}
  NotificationManager manager=(NotificationManager)app.getSystemService(Context.NOTIFICATION_SERVICE);
  if(Build.VERSION.SDK_INT>=26)manager.createNotificationChannel(new NotificationChannel("local_episodes","حلقات جديدة",NotificationManager.IMPORTANCE_DEFAULT));
  if(Build.VERSION.SDK_INT>=24&&!manager.areNotificationsEnabled()){log("notification_blocked reason=app_disabled");return;}
  if(Build.VERSION.SDK_INT>=26&&manager.getNotificationChannel("local_episodes").getImportance()==0){log("notification_blocked reason=channel_disabled");return;}
  LocalAccountStore s=data();List<Item> inbox=s.inbox();int shown=0;
  for(Item episode:inbox){String key="delivered_"+episode.id;if(s.config(key,"0").equals("1"))continue;
   Intent intent=new Intent(Intent.ACTION_VIEW,Uri.parse("https://cinemana.shabakaty.cc/video/"+episode.id));intent.setPackage(app.getPackageName());intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK|Intent.FLAG_ACTIVITY_CLEAR_TOP);
   PendingIntent pending=PendingIntent.getActivity(app,episode.id.hashCode(),intent,PendingIntent.FLAG_UPDATE_CURRENT|(Build.VERSION.SDK_INT>=23?PendingIntent.FLAG_IMMUTABLE:0));
   Notification.Builder builder=Build.VERSION.SDK_INT>=26?new Notification.Builder(app,"local_episodes"):new Notification.Builder(app);
   builder.setSmallIcon(android.R.drawable.ic_media_play).setContentTitle("حلقة جديدة").setContentText(episode.title).setContentIntent(pending).setAutoCancel(true).setOnlyAlertOnce(true);
   manager.notify("local_episode_"+episode.id,266,builder.build());log("notification_posted id="+safeId(episode.id));s.setConfig(key,"1");shown++;
  }log("notifications_delivered count="+shown);
 }
}
