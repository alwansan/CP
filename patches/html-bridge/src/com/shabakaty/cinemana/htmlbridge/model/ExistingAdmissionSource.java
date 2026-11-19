package com.shabakaty.cinemana.htmlbridge.model;

import java.io.File;
import java.lang.reflect.*;
import java.util.*;
import static com.shabakaty.cinemana.htmlbridge.model.NativeEvidenceGate.Flag;
import static com.shabakaty.cinemana.htmlbridge.model.OwnerAdmissionPreflight.*;

/** Candidate native read adapter. Does not invoke reenqueue/begin or modify existing state.
 * Negative process-local reads are NOT authoritative. An absent app row does not rule
 * out an orphan downloader row/request; task zero gives no bounded transport lookup.
 */
public final class ExistingAdmissionSource {
    private final Object app;
    public ExistingAdmissionSource(Object app){this.app=Objects.requireNonNull(app);}
    private static Class<?> type(String n)throws Exception{return Class.forName(n);}
    private static Object field(Object o,String n)throws Exception{return o.getClass().getField(n).get(o);}
    private static Flag flag(boolean b){return b?Flag.YES:Flag.NO;}
    private static Object declared(String cls,String method,Class<?>[] types,Object... args)throws Exception{
        Method m=type(cls).getDeclaredMethod(method,types);m.setAccessible(true);return m.invoke(null,args);
    }
    private Object pref(String name)throws Exception{
        return type("android.content.Context").getMethod("getSharedPreferences",String.class,int.class).invoke(app,name,0);
    }
    private Flag contains(String name,String id)throws Exception{
        return flag((Boolean)type("android.content.SharedPreferences").getMethod("contains",String.class).invoke(pref(name),id));
    }
    private Flag deleted(String id)throws Exception{
        return flag((Boolean)type("android.content.SharedPreferences").getMethod("getBoolean",String.class,boolean.class)
            .invoke(pref("ca1_delete_intent"),id,false));
    }
    private boolean owner()throws Exception{
        Class<?> c=type("android.content.Context"),l=type("android.os.Looper");
        if(l.getMethod("getMainLooper").invoke(null)==l.getMethod("myLooper").invoke(null))
            throw new IllegalStateException("main thread");
        if(!c.isInstance(app)||c.getMethod("getApplicationContext").invoke(app)!=app)
            throw new IllegalArgumentException("application context required");
        Object process=type("android.app.Application").getMethod("getProcessName").invoke(null);
        return process!=null&&process.equals(c.getMethod("getPackageName").invoke(app));
    }
    /** scope/quality are opaque native validated selections; not JS values.
     * Exact Quality reference in model.qualities, not Quality.equals (resolution-only).
     * Does not resolve an opaque quality token or account scope itself; therefore cannot
     * return authoritative or resolvedVariant=true until owner mapping exists.
     */
    public Facts observe(Identity i,Object model,Object quality)throws Exception{
        if(i==null||!i.valid())throw new IllegalArgumentException("native identity");
        boolean main=owner();
        if(!main) return unknown(i,false);
        Class<?> vm=type("com.shabakaty.cinemana.domain.models.local.VideoModel");
        Class<?> qt=type("com.shabakaty.cinemana.domain.models.local.Quality");
        if(!vm.isInstance(model)||!qt.isInstance(quality)||!i.external.equals(field(model,"nb")))
            throw new IllegalArgumentException("model identity");
        Object choices=field(model,"qualities");
        if(!(choices instanceof List)||((List<?>)choices).size()>128)
            throw new IllegalArgumentException("quality list");
        boolean found=false;
        for(Object q:(List<?>)choices)if(q==quality){found=true;break;}
        if(!found)throw new IllegalArgumentException("quality not in model");
        Object url=field(quality,"url"),resolution=field(quality,"resolution"),name=field(quality,"name");
        if(!(url instanceof String)||((String)url).isEmpty()||!(resolution instanceof String)
            ||((String)resolution).isEmpty()||!(name instanceof String))
            throw new IllegalArgumentException("quality incomplete");
        Flag del=Flag.UNKNOWN,journal=Flag.UNKNOWN,row=Flag.UNKNOWN,transfer=Flag.UNKNOWN,
            active=Flag.UNKNOWN,paused=Flag.UNKNOWN,recovery=Flag.UNKNOWN,claim=Flag.UNKNOWN;
        String epoch=null;
        try{del=deleted(i.external);}catch(Exception ignored){}
        try{journal=contains("ca1_delete_journal",i.external);}catch(Exception ignored){}
        try{recovery=contains("ca1_restart108","journal:"+i.external);}catch(Exception ignored){}
        try{
            Field f=type("com.shabakaty.cinemana.ca1.BatchDownload").getDeclaredField("ADMITTED");
            f.setAccessible(true);Object set=f.get(null);
            if(set instanceof Set)claim=flag(((Set<?>)set).contains(i.external));
        }catch(Exception ignored){}
        try{
            File files=(File)type("android.content.Context").getMethod("getFilesDir").invoke(app);
            FreshEpochRead.Observation e=new FreshEpochRead(files.toPath()).read(i.external);
            epoch=e.epoch;
        }catch(Exception ignored){}
        try{
            Object combined=type("com.shabakaty.cinemana.ca1.DownloadStore263")
                .getMethod("combined",type("android.content.Context"),String.class).invoke(null,app,i.external);
            if(combined==null)row=Flag.NO;
            else{
                Object item=field(combined,"cinemanaDownloadItem");
                if(item==null||!i.external.equals(field(item,"id")))return unknown(i,true,del,journal);
                row=Flag.YES;
                int task=((Number)field(item,"downloadTaskId")).intValue();
                try{active=flag((Boolean)declared("com.shabakaty.cinemana.features.MkvExporter","isItemActive",new Class<?>[]{Object.class},item));}catch(Exception ignored){}
                if(task!=0){
                    try{if(Boolean.TRUE.equals(declared("com.shabakaty.cinemana.ca1.Restart108","active",new Class<?>[]{int.class},task)))active=Flag.YES;}catch(Exception ignored){}
                    try{paused=flag((Boolean)declared("com.shabakaty.cinemana.ca1.Queue110","isPaused",new Class<?>[]{int.class},task));}catch(Exception ignored){}
                    try{transfer=contains("ca1_admission110","request:"+task);}catch(Exception ignored){}
                }
            }
        }catch(Exception ignored){}
        // Existing hints never authorize mutation, even when every local read is negative.
        return new Facts(i,epoch,del,journal,row,transfer,active,paused,recovery,claim,false,true,false);
    }
    private static Facts unknown(Identity i,boolean main){return unknown(i,main,Flag.UNKNOWN,Flag.UNKNOWN);}
    private static Facts unknown(Identity i,boolean main,Flag del,Flag journal){
        return new Facts(i,null,del,journal,Flag.UNKNOWN,Flag.UNKNOWN,Flag.UNKNOWN,Flag.UNKNOWN,
            Flag.UNKNOWN,Flag.UNKNOWN,false,main,false);
    }
}
