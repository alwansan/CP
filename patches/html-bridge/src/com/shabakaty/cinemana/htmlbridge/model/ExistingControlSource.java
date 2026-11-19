package com.shabakaty.cinemana.htmlbridge.model;
import java.lang.reflect.Method;
import java.util.Objects;
import static com.shabakaty.cinemana.htmlbridge.model.NativeEvidenceGate.Flag;

/** Static-descriptor candidate against current APKTool helpers.
 * Local SharedPreferences and active-job maps can be stale across processes.
 * This source therefore NEVER claims authoritative negative observations.
 * Call only on a serialized worker, never from JS or main.
 */
public final class ExistingControlSource {
    private final Object app;
    public ExistingControlSource(Object applicationContext){app=Objects.requireNonNull(applicationContext);}
    private static Flag flag(boolean value){return value?Flag.YES:Flag.NO;}
    private static Class<?> type(String x)throws Exception{return Class.forName(x);}
    private static Object declared(String cls,String name,Class<?>[] types,Object... args)throws Exception{
        Method m=type(cls).getDeclaredMethod(name,types);
        m.setAccessible(true);return m.invoke(null,args);
    }
    private Object prefs(String name)throws Exception{
        return type("android.content.Context").getMethod("getSharedPreferences",String.class,int.class).invoke(app,name,0);
    }
    private Flag prefBool(String name,String id)throws Exception{
        return flag((Boolean)type("android.content.SharedPreferences").getMethod("getBoolean",String.class,boolean.class)
            .invoke(prefs(name),id,false));
    }
    private Flag contains(String name,String id)throws Exception{
        return flag((Boolean)type("android.content.SharedPreferences").getMethod("contains",String.class).invoke(prefs(name),id));
    }
    private void checkWorker()throws Exception{
        Class<?> l=type("android.os.Looper"),c=type("android.content.Context");
        if(l.getMethod("getMainLooper").invoke(null)==l.getMethod("myLooper").invoke(null))throw new IllegalStateException("main thread");
        if(!c.isInstance(app)||c.getMethod("getApplicationContext").invoke(app)!=app)throw new IllegalArgumentException("application context required");
    }
    public NativeEvidenceGate.Control observe(String id,int taskId,Object nativeItem)throws Exception{
        checkWorker();
        if(id==null||!id.matches("[A-Za-z0-9_.:-]{1,128}")||nativeItem==null)throw new IllegalArgumentException("native identity");
        Class<?> itemType=type("com.shabakaty.cinemana.data.db.downloads.CinemanaDownloadItem");
        if(!itemType.isInstance(nativeItem)||!id.equals(itemType.getField("id").get(nativeItem))
            ||taskId!=itemType.getField("downloadTaskId").getInt(nativeItem))throw new IllegalArgumentException("native identity mismatch");
        String epoch=null;Flag del=Flag.UNKNOWN,journal=Flag.UNKNOWN,owner=Flag.UNKNOWN,recovery=Flag.UNKNOWN,pause=Flag.UNKNOWN;
        // Read independent hints; an exception in one does not erase a positive delete hint.
        try{del=prefBool("ca1_delete_intent",id);}catch(Exception ignored){}
        try{journal=contains("ca1_delete_journal",id);}catch(Exception ignored){}
        try{epoch=(String)declared("com.shabakaty.cinemana.ca1.Fresh121","epoch",new Class<?>[]{Object.class,String.class},app,id);}catch(Exception ignored){}
        try{owner=flag((Boolean)declared("com.shabakaty.cinemana.features.MkvExporter","isItemActive",new Class<?>[]{Object.class},nativeItem));}catch(Exception ignored){}
        try{recovery=contains("ca1_restart108","journal:"+id);}catch(Exception ignored){}
        if(taskId!=0){
            Flag q=Flag.UNKNOWN,r=Flag.UNKNOWN;
            try{q=flag((Boolean)declared("com.shabakaty.cinemana.ca1.Queue110","isPaused",new Class<?>[]{int.class},taskId));}catch(Exception ignored){}
            try{String s=(String)type("android.content.SharedPreferences").getMethod("getString",String.class,String.class)
                .invoke(prefs("ca1_restart108"),"intent:"+taskId,"");r=flag(s.endsWith("|PAUSE"));}catch(Exception ignored){}
            pause=q==Flag.YES||r==Flag.YES?Flag.YES:q==Flag.NO&&r==Flag.NO?Flag.NO:Flag.UNKNOWN;
        }
        return new NativeEvidenceGate.Control(epoch,del,journal,owner,recovery,pause,false);
    }
}
