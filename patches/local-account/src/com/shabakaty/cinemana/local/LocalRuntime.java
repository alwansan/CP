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
 static final ExecutorService NETWORK=Executors.newSingleThreadExecutor();
 private static final java.util.concurrent.atomic.AtomicBoolean scanning=new java.util.concurrent.atomic.AtomicBoolean();
 private static final ConcurrentHashMap<String,Long> pendingProgress=new ConcurrentHashMap<>();
 private static final java.util.concurrent.atomic.AtomicBoolean progressScheduled=new java.util.concurrent.atomic.AtomicBoolean();
 private static final lr1 JSON=new lr1();
 private static final LinkedHashMap<String,String> cache=new LinkedHashMap<>();
 private static final String MODELS="com.shabakaty.cinemana.domain.models.remote.";
 static volatile boolean scanCancelled;private static volatile long lastMigrationAttempt;
 static final long INTERVAL=6*60*60*1000L;
 public static synchronized void init(Context context){
  if(app!=null)return;app=context.getApplicationContext();com.shabakaty.cinemana.ca1.LocalAccountLog.init(app);
  IO.execute(new Runnable(){public void run(){try{data();ensureLegacy();schedule();requestScan(false);}catch(Exception e){failure("init",e);}}});
 }
 static synchronized LocalAccountStore data()throws IOException{
  if(store==null){if(app==null)throw new IOException("local account not initialized");
   store=new LocalAccountStore(new File(app.getFilesDir(),"data/local-account"),new LocalAccountStore.Events(){public void record(String e,int n){log(e+" count="+n);}});
   updateProfile();
  }return store;
 }
 static void updateProfile()throws IOException{
  app.getSharedPreferences("local_profile",0).edit().putString("name",store.name()).apply();
  File image=new File(app.getFilesDir(),"data/local-account/avatar.jpg");byte[] bytes=store.avatar();
  if(bytes.length>0){android.util.AtomicFile atomic=new android.util.AtomicFile(image);FileOutputStream out=null;
   try{out=atomic.startWrite();out.write(bytes);atomic.finishWrite(out);}catch(IOException e){if(out!=null)atomic.failWrite(out);throw e;}}
  else if(image.exists())image.delete();
 }
 public static String name(){return app==null?"حسابي":app.getSharedPreferences("local_profile",0).getString("name","حسابي");}
 public static String avatar(){if(app==null)return "";File f=new File(app.getFilesDir(),"data/local-account/avatar.jpg");return f.exists()?Uri.fromFile(f).toString():"";}
 public static f74 logout(){return new LocalSingle(()->new JSONObject());}
 public static void open(Context context){context.startActivity(new Intent(context,LocalAccountActivity.class));}
 public static void log(String event){
  Log.i("CinemanaLocal",event);
  com.shabakaty.cinemana.ca1.LocalAccountLog.emit(event);
 }
 static void failure(String phase,Throwable e){log(phase+"_failed type="+e.getClass().getSimpleName());}
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
   if(Arrays.asList("a","d","e","t","p","q","v","y","s","B","C","E","f","r","x").contains(key))return new LocalSingle(new Callable<Object>(){public Object call()throws Exception{return local(key,args);}});
   try{
    Object value=method.invoke(remote,args);
    if(key.equals("A")&&value instanceof f74)return new CaptureSingle((f74)value,String.valueOf(args[0]));
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
  if(op.equals("a")){
   String id=String.valueOf(a[0]);JSONObject status=new JSONObject();
   String rating=s.config("rating_"+id,"");status.put("like",rating.equals("1")).put("dislike",rating.equals("0"));
   status.put("favorit",s.find(ListKind.FAVORITE,id)!=null).put("watched",s.find(ListKind.WATCHED,id)!=null).put("watchLater",s.find(ListKind.WATCH_LATER,id)!=null?"1":"0");
   return JSON.e(status.toString(),Class.forName("com.shabakaty.downloader.r25"));
  }
  if(op.equals("t")||op.equals("d")){
   String id=String.valueOf(a[1]);ListKind k=kind(String.valueOf(a[2]));
   if(op.equals("t"))s.put(k,item(id));else s.remove(k,id);
   return dto("user.LogoutResponseApi","{\"status\":\"success\"}");
  }
  if(op.equals("v")||op.equals("y")){
   String id=String.valueOf(a[1]);if(op.equals("v")){s.put(ListKind.SUBSCRIPTION,item(id));log("subscription_baseline_pending");requestScan(true);}else s.remove(ListKind.SUBSCRIPTION,id);
   return "success";
  }
  if(op.equals("e")){
   int page=Integer.parseInt(String.valueOf(a[0]));List<Item> items=s.list(kind(String.valueOf(a[2])));Collections.reverse(items);
   JSONArray array=new JSONArray();if(page<0||page>100000)throw new IOException("invalid page");int start=page*30;for(int i=start;i<Math.min(start+30,items.size());i++)array.put(model(items.get(i)));
   return dto("user.UserListApi",new JSONObject().put("data",array).put("status","success").toString());
  }
  if(op.equals("p")){JSONArray array=new JSONArray();for(Item i:s.list(ListKind.SUBSCRIPTION))array.put(model(i));return dtoArray(array);}
  if(op.equals("q")){JSONArray array=new JSONArray();List<Item> items=s.inbox();Collections.reverse(items);int limit=Math.max(1,Math.min(100,Integer.parseInt(String.valueOf(a[0]))));for(int n=0;n<Math.min(limit,items.size());n++)array.put(model(items.get(n)));return dto("user.NotificationsListApi",new JSONObject().put("new",String.valueOf(items.size())).put("notifications",array).toString());}
  if(op.equals("C")){// Like/dislike remains a local preference; never fabricate a server vote.
   s.setConfig("rating_"+String.valueOf(a[1]),String.valueOf(a[2]));return dto("user.LogoutResponseApi","{\"status\":\"success\",\"likeNumber\":\"0\",\"dislikeNumebr\":\"0\"}");
  }
  return new JSONObject(); // legacy device registration/logout suppressed, no tokens sent
 }
 static List<Object> dtoArray(JSONArray array)throws Exception{List<Object> list=new ArrayList<>();for(int i=0;i<array.length();i++)list.add(dto("VideoModelApi",array.getJSONObject(i).toString()));return list;}
 static JSONObject model(Item i)throws JSONException{return i.payload.length()>0?new JSONObject(i.payload):new JSONObject().put("nb",i.id).put("en_title",i.title).put("ar_title",i.title).put("kind","1");}
 static Item item(String id)throws Exception{
  String json=cache.get(id);if(json==null)for(ListKind k:ListKind.values()){Item i=data().find(k,id);if(i!=null&&i.payload.length()>0)return i;}
  if(json==null)return new Item(id,"عمل "+id,0);
  JSONObject o=new JSONObject(json);String title=o.optString("ar_title");if(title.length()==0)title=o.optString("en_title",id);return new Item(id,title,0,json);
 }
 static void capture(Object value){
  try{JSONObject o=new JSONObject(JSON.i(value));String id=o.optString("nb");if(!id.matches("[A-Za-z0-9_-]{1,100}"))return;
   JSONObject snapshot=new JSONObject();
   for(String key:new String[]{"nb","ar_title","en_title","custom_ar_title","custom_en_title","kind","rootSeries","season","episodeNummer","episode_flag","imgObjUrl","imgThumbObjUrl","imgMediumThumbObjUrl","year","duration","publishDate","rate","stars","filmRating","seriesRating","finished","ar_content","en_content"}){
    if(o.has(key)){Object field=o.get(key);if(field instanceof String&&((String)field).length()>4000)field=((String)field).substring(0,4000);snapshot.put(key,field);}
   }
   String json=snapshot.toString();if(json.length()>20000)throw new IOException("metadata limit");cache.put(id,json);while(cache.size()>64)cache.remove(cache.keySet().iterator().next());
  }catch(Exception e){failure("metadata",e);}
 }
 public static void progress(final String id,final long position){
  pendingProgress.put(id,position);if(progressScheduled.compareAndSet(false,true))IO.schedule(()->{try{flushProgress();}catch(Exception e){failure("progress",e);}finally{progressScheduled.set(false);}},10,TimeUnit.SECONDS);
 }
 public static void flushProgressAsync(){IO.execute(()->{try{flushProgress();}catch(Exception e){failure("progress",e);}});}
 static void flushProgress()throws Exception{
  Map<String,Long> copy=new HashMap<>(pendingProgress);Map<ListKind,List<Item>> records=new EnumMap<>(ListKind.class);List<Item> items=new ArrayList<>();
  for(Map.Entry<String,Long> e:copy.entrySet()){Item old=item(e.getKey());items.add(new Item(old.id,old.title,e.getValue(),old.payload));}
  records.put(ListKind.PROGRESS,items);if(!items.isEmpty()){data().merge(records);for(Map.Entry<String,Long> e:copy.entrySet())pendingProgress.remove(e.getKey(),e.getValue());}
 }
 static Object cachedModel(String id)throws Exception {for(ListKind k:ListKind.values()){Item i=data().find(k,id);if(i!=null&&!i.payload.isEmpty())return dto("VideoModelApi",i.payload);}throw new IOException("no local metadata");}
 public static long progressValue(String id){try{Item i=data().find(ListKind.PROGRESS,id);return i==null?0:i.positionMs;}catch(Exception e){return 0;}}
 public static void decorate(android.view.View root){
  final Context context=root.getContext();android.view.View row=root.findViewWithTag("local_account266");
  if(row!=null)row.setOnClickListener(v->open(context));
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
      else{String pref=o.getString("pref");if(!pref.equals("ca1_continue106")&&!pref.equals("ca1_episode_context107"))throw new IOException("invalid preferences");o.getString("key");String type=o.getString("type");if(!java.util.Arrays.asList("String","Long","Integer","Boolean","Float").contains(type))throw new IOException("unsupported preference type");if(type.equals("Long"))o.getLong("value");if(type.equals("Integer"))o.getInt("value");if(type.equals("Boolean"))o.getBoolean("value");if(type.equals("Float"))o.getDouble("value");if(!o.has("value"))throw new IOException("missing preference");}}
     else if(!item.id.equals(o.optString("nb")))throw new IOException("metadata id mismatch");
    }
   }
   int parental=Integer.parseInt(candidate.config("parental","0"));int translation=Integer.parseInt(candidate.config("translation","0"));
   if(parental<0||parental>3||translation<0||translation>1)throw new IOException("invalid filter");
   // Commit the validated account before refreshing compatibility projections.
   pendingProgress.clear();data().importZip(new ByteArrayInputStream(bytes.toByteArray()));
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
     long position=cursor.getLong(cursor.getColumnIndexOrThrow("videoProgress"));Item item=new Item(id,title,position,meta.toString());
     if(position>0)records.get(ListKind.PROGRESS).add(item);
     if(seed){if(cursor.getInt(cursor.getColumnIndexOrThrow("favorite"))!=0)records.get(ListKind.FAVORITE).add(item);if(cursor.getInt(cursor.getColumnIndexOrThrow("watched"))!=0)records.get(ListKind.WATCHED).add(item);if("1".equals(cursor.getString(cursor.getColumnIndexOrThrow("watchLater"))))records.get(ListKind.WATCH_LATER).add(item);}
    }}finally{cursor.close();}
    // Back up only user settings, not databases containing credentials/download jobs.
    android.database.Cursor settings=db.rawQuery("SELECT * FROM settings WHERE userId=?",new String[]{"local"});try{if(settings.moveToFirst()){
     JSONObject o=new JSONObject();for(int i=0;i<settings.getColumnCount();i++)if(!settings.isNull(i)&&!"userId".equals(settings.getColumnName(i)))o.put(settings.getColumnName(i),settings.getString(i));records.get(ListKind.STATE).add(new Item("settings","",0,o.toString()));
    }}finally{settings.close();}
   }catch(android.database.SQLException e){/* Other app databases do not contain account tables. */}finally{if(db!=null)db.close();}
  }
  for(String pref:new String[]{"ca1_continue106","ca1_episode_context107"}){
   for(Map.Entry<String,?> e:app.getSharedPreferences(pref,0).getAll().entrySet()){
    JSONObject o=new JSONObject().put("pref",pref).put("key",e.getKey()).put("value",e.getValue()).put("type",e.getValue().getClass().getSimpleName());
    String key=hex(java.security.MessageDigest.getInstance("SHA-256").digest((pref+":"+e.getKey()).getBytes("UTF-8")));
    records.get(ListKind.STATE).add(new Item(key,"",0,o.toString()));
   }
  }
  s.merge(records);if(seed&&found)s.setConfig("legacy_seeded","1");log("legacy_snapshot_complete");
 }
 private static String hex(byte[] b){StringBuilder s=new StringBuilder();for(byte v:b)s.append(String.format(Locale.ROOT,"%02x",v&255));return s.toString();}
 /** Restore the app's existing progress table without touching downloads or arbitrary SQL. */
 static void restoreLegacy()throws Exception {
  data().setConfig("legacy_seeded","1");
  for(String pref:new String[]{"ca1_continue106","ca1_episode_context107"})app.getSharedPreferences(pref,0).edit().clear().commit();
  for(Item entry:data().list(ListKind.STATE))if(!entry.id.equals("settings")){
   JSONObject o=new JSONObject(entry.payload);String pref=o.getString("pref");if(!pref.equals("ca1_continue106")&&!pref.equals("ca1_episode_context107"))continue;
   android.content.SharedPreferences.Editor edit=app.getSharedPreferences(pref,0).edit();String key=o.getString("key"),type=o.getString("type");
   if(type.equals("String"))edit.putString(key,o.getString("value"));else if(type.equals("Long"))edit.putLong(key,o.getLong("value"));else if(type.equals("Integer"))edit.putInt(key,o.getInt("value"));else if(type.equals("Boolean"))edit.putBoolean(key,o.getBoolean("value"));else if(type.equals("Float"))edit.putFloat(key,(float)o.getDouble("value"));edit.commit();
  }
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
  final Callable<Object> call;LocalSingle(Callable<Object> c){call=c;}
  public void l(final y74 observer){final Cancel cancel=new Cancel();observer.c(cancel);IO.execute(new Runnable(){public void run(){if(cancel.cancelled)return;try{Object result=call.call();if(!cancel.cancelled)observer.onSuccess(result);}catch(Exception e){failure("local_operation",e);if(!cancel.cancelled)observer.b(e);}}});}
 }
 static final class CaptureSingle extends f74 {
  final f74 upstream;final String id;CaptureSingle(f74 s,String id){upstream=s;this.id=id;}
  public void l(final y74 observer){upstream.a(new y74(){public void c(mu0 d){observer.c(d);}public void b(final Throwable t){IO.execute(()->{try{observer.onSuccess(cachedModel(id));log("detail_local_fallback");}catch(Exception missing){observer.b(t);}});}public void onSuccess(final Object result){IO.execute(new Runnable(){public void run(){capture(result);}});observer.onSuccess(result);}});}
 }
 static void schedule(){try{
  JobScheduler scheduler=(JobScheduler)app.getSystemService(Context.JOB_SCHEDULER_SERVICE);boolean exists=false;for(JobInfo j:scheduler.getAllPendingJobs())if(j.getId()==26601)exists=true;
  if(!exists)scheduler.schedule(new JobInfo.Builder(26601,new ComponentName(app,LocalEpisodeJob.class)).setRequiredNetworkType(JobInfo.NETWORK_TYPE_ANY).setPeriodic(INTERVAL).setPersisted(true).build());
 }catch(Exception e){failure("schedule",e);}}
 public static void requestScan(final boolean force){if(app==null||!scanning.compareAndSet(false,true))return;NETWORK.execute(new Runnable(){public void run(){try{scanCancelled=false;scan(force);}catch(Exception e){failure("scan",e);}finally{scanning.set(false);}}});}
 static void scan(boolean force)throws Exception{
  LocalAccountStore s=data();long now=System.currentTimeMillis(),last=Long.parseLong(s.config("last_scan","0"));
  if(now>=last&&now-last<(force?60000:INTERVAL)){deliver();return;}
  android.net.ConnectivityManager cm=(android.net.ConnectivityManager)app.getSystemService(Context.CONNECTIVITY_SERVICE);
  android.net.NetworkInfo info=cm.getActiveNetworkInfo();if(info==null||!info.isConnected())return;
  List<Item> subscriptions=s.list(ListKind.SUBSCRIPTION);if(subscriptions.isEmpty())return;
  int cursor=Integer.parseInt(s.config("scan_cursor","0"));int count=Math.min(5,subscriptions.size());
  long end=android.os.SystemClock.elapsedRealtime()+45000;int done=0;
  for(;done<count&&!scanCancelled&&android.os.SystemClock.elapsedRealtime()<end;done++){
   Item show=subscriptions.get((cursor+done)%subscriptions.size());
   try{JSONArray episodes=episodes(show.id);if(episodes.length()==0)continue;List<Item> items=new ArrayList<>();
    for(int n=0;n<episodes.length();n++){JSONObject o=episodes.getJSONObject(n);String id=o.optString("nb");if(!id.matches("[A-Za-z0-9_-]{1,100}"))throw new IOException("invalid episode id");
     items.add(new Item(id,show.title+" — "+o.optString("season","")+":"+o.optString("episodeNummer",""),0,o.toString()));}
    s.reconcile(show.id,items);
   }catch(Exception e){failure("episode_fetch",e);}
  }
  s.setConfig("scan_cursor",String.valueOf((cursor+done)%subscriptions.size()));s.setConfig("last_scan",String.valueOf(now));log("scan_complete checked="+done);deliver();
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
  if(Build.VERSION.SDK_INT>=24&&!manager.areNotificationsEnabled())return;
  if(Build.VERSION.SDK_INT>=26&&manager.getNotificationChannel("local_episodes").getImportance()==0)return;
  LocalAccountStore s=data();List<Item> inbox=s.inbox();int shown=0;
  for(Item episode:inbox){String key="delivered_"+episode.id;if(s.config(key,"0").equals("1"))continue;
   Intent intent=new Intent(Intent.ACTION_VIEW,Uri.parse("https://cinemana.shabakaty.cc/video/"+episode.id));intent.setPackage(app.getPackageName());intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK|Intent.FLAG_ACTIVITY_CLEAR_TOP);
   PendingIntent pending=PendingIntent.getActivity(app,episode.id.hashCode(),intent,PendingIntent.FLAG_UPDATE_CURRENT|(Build.VERSION.SDK_INT>=23?PendingIntent.FLAG_IMMUTABLE:0));
   Notification.Builder builder=Build.VERSION.SDK_INT>=26?new Notification.Builder(app,"local_episodes"):new Notification.Builder(app);
   builder.setSmallIcon(android.R.drawable.ic_media_play).setContentTitle("حلقة جديدة").setContentText(episode.title).setContentIntent(pending).setAutoCancel(true).setOnlyAlertOnce(true);
   manager.notify("local_episode_"+episode.id,266,builder.build());s.setConfig(key,"1");if(++shown>=5)break;
  }log("notifications_delivered count="+shown);
 }
}
