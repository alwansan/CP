package com.shabakaty.cinemana.htmlbridge.model;

import java.lang.reflect.*;
import java.util.Objects;

/** Candidate adapter for the exact APKTool helper/field descriptors audited in Html.
 * Kept outside APK build. Call only from an existing native background executor.
 * Reuses app DAO / MkvExporter cached downloader DAO; no direct SQLite open or mutation.
 * On Android this still needs ART, Room, process and lifecycle verification.
 */
public final class ExistingDaoSource implements BoundedDownloadRead.Source {
    private final Object appContext;
    private Object downloaderDao;
    private Method combined, exporter;
    public ExistingDaoSource(Object applicationContext) {
        this.appContext=Objects.requireNonNull(applicationContext);
    }
    @Override public void checkWorker() throws Exception {
        Class<?> looper=Class.forName("android.os.Looper");
        if(looper.getMethod("getMainLooper").invoke(null)==looper.getMethod("myLooper").invoke(null))
            throw new IllegalStateException("main thread");
        Class<?> context=Class.forName("android.content.Context");
        if(!context.isInstance(appContext)||context.getMethod("getApplicationContext").invoke(appContext)!=appContext)
            throw new IllegalArgumentException("application context required");
        combined=Class.forName("com.shabakaty.cinemana.ca1.DownloadStore263").getMethod("combined",context,String.class);
        exporter=Class.forName("com.shabakaty.cinemana.ca1.Restart108").getMethod("exp",String.class,Object[].class);
        downloaderDao=null; // per page, existing engine owns cache
    }
    private Object exp(String name,Object... args) throws Exception {
        return exporter.invoke(null,name,args);
    }
    private static Object field(Object o,String name) throws Exception {return o.getClass().getField(name).get(o);}
    private static int i(Object o,String name) throws Exception{return ((Number)field(o,name)).intValue();}
    private static long l(Object o,String name) throws Exception{return ((Number)field(o,name)).longValue();}
    private static String s(Object o,String name) throws Exception{return (String)field(o,name);}
    @Override public BoundedDownloadRead.AppRow app(String id) throws Exception {
        Object row=combined.invoke(null,appContext,id);
        if(row==null)return null;
        Object item=field(row,"cinemanaDownloadItem");
        if(item==null)throw new IllegalStateException("missing item");
        return new BoundedDownloadRead.AppRow(s(item,"id"),i(item,"downloadTaskId"),
            i(item,"collectionID"),s(item,"qualityName"),s(item,"path"));
    }
    @Override public BoundedDownloadRead.TransferRow transfer(int taskId) throws Exception {
        if(downloaderDao==null)downloaderDao=exp("getDownloadsDao",appContext,appContext);
        if(downloaderDao==null)throw new IllegalStateException("missing DAO");
        // The original DAO selects only the first task_id match. Its composite
        // primary key permits duplicate task IDs. Read at most two matches
        // in ONE cursor snapshot, so a competing identity cannot be hidden by
        // a separate count/lookup race. Never open a separate database.
        Class<?> daoType=Class.forName("com.shabakaty.downloader.lz0");
        Class<?> room=Class.forName("com.shabakaty.downloader.vt3");
        Class<?> query=Class.forName("com.shabakaty.downloader.yt3");
        Class<?> cursor=Class.forName("android.database.Cursor");
        Object db=daoType.getField("a").get(downloaderDao);
        if(!room.isInstance(db))throw new IllegalStateException("transfer Room unavailable");
        Object q=query.getMethod("a",String.class,int.class).invoke(null,
            "SELECT task_id,external_id,progress_bytes,size_bytes,status FROM Downloads WHERE task_id = ? LIMIT 2",1);
        Object c=null;
        try{
            query.getMethod("h0",int.class,long.class).invoke(q,1,(long)taskId);
            room.getMethod("b").invoke(db);
            c=Class.forName("com.shabakaty.downloader.lh0").getMethod("b",room,
                Class.forName("com.shabakaty.downloader.bi4"),boolean.class,
                Class.forName("android.os.CancellationSignal")).invoke(null,db,q,false,null);
            Method next=cursor.getMethod("moveToNext"),getInt=cursor.getMethod("getInt",int.class),
                getLong=cursor.getMethod("getLong",int.class),getString=cursor.getMethod("getString",int.class);
            if(!Boolean.TRUE.equals(next.invoke(c)))return null;
            int actual=(Integer)getInt.invoke(c,0),code=(Integer)getInt.invoke(c,4);
            String id=(String)getString.invoke(c,1);
            long progress=(Long)getLong.invoke(c,2),total=(Long)getLong.invoke(c,3);
            if(Boolean.TRUE.equals(next.invoke(c))){
                // Deliberately invalid identity: both page projections classify
                // this as CONFLICT and expose neither bytes nor any candidate ID.
                return new BoundedDownloadRead.TransferRow(null,taskId,-1,-1,null);
            }
            Class<?> status=Class.forName("com.shabakaty.downloader.xc4");
            DownloadModel.Transport state=null;
            for(Object e:status.getEnumConstants()){
                if(status.getField("r").getInt(e)==code){
                    if(state!=null)throw new IllegalStateException("ambiguous status code");
                    state=DownloadModel.Transport.valueOf(((Enum<?>)e).name());
                }
            }
            return new BoundedDownloadRead.TransferRow(id,actual,progress,total,state);
        }finally{
            try{if(c!=null)cursor.getMethod("close").invoke(c);}
            finally{query.getMethod("c").invoke(q);}
        }
    }
}
