package com.shabakaty.cinemana.htmlbridge.model;

import java.lang.reflect.*;
import java.util.*;

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
        if(taskId==0)return null;
        return transferPage(Collections.singletonList(taskId)).get(taskId);
    }
    /** A single cursor snapshot for a maximum of 24 distinct native task IDs.
     * Each indexed subquery has its own LIMIT 2, so collisions cannot starve
     * another task and the cursor contains at most 48 rows. No raw IN scan. */
    public Map<Integer,BoundedDownloadRead.TransferRow> transferPage(List<Integer> taskIds)throws Exception{
        Objects.requireNonNull(taskIds);
        if(taskIds.size()>OwnerPageRead.PAGE)throw new IllegalArgumentException("task page limit");
        LinkedHashSet<Integer> keys=new LinkedHashSet<>(taskIds);
        if(keys.contains(null)||keys.contains(0))throw new IllegalArgumentException("invalid task");
        if(keys.isEmpty())return Collections.emptyMap();
        if(downloaderDao==null)downloaderDao=exp("getDownloadsDao",appContext,appContext);
        if(downloaderDao==null)throw new IllegalStateException("missing DAO");
        Class<?> daoType=Class.forName("com.shabakaty.downloader.lz0");
        Class<?> room=Class.forName("com.shabakaty.downloader.vt3");
        Class<?> query=Class.forName("com.shabakaty.downloader.yt3");
        Class<?> cursor=Class.forName("android.database.Cursor");
        Object db=daoType.getField("a").get(downloaderDao);
        if(!room.isInstance(db))throw new IllegalStateException("transfer Room unavailable");
        StringBuilder sql=new StringBuilder();
        for(int n=0;n<keys.size();n++){
            if(n>0)sql.append(" UNION ALL ");
            sql.append("SELECT * FROM (SELECT task_id,external_id,progress_bytes,size_bytes,status FROM Downloads WHERE task_id = ? LIMIT 2)");
        }
        Class<?> status=Class.forName("com.shabakaty.downloader.xc4");
        Map<Integer,DownloadModel.Transport> states=new HashMap<>();
        for(Object e:status.getEnumConstants()){
            int code=status.getField("r").getInt(e);
            if(states.put(code,DownloadModel.Transport.valueOf(((Enum<?>)e).name()))!=null)
                throw new IllegalStateException("ambiguous status code");
        }
        Object q=query.getMethod("a",String.class,int.class).invoke(null,sql.toString(),keys.size());
        Object c=null;
        try{
            Method bind=query.getMethod("h0",int.class,long.class);
            int position=1;for(int task:keys)bind.invoke(q,position++,(long)task);
            room.getMethod("b").invoke(db);
            c=Class.forName("com.shabakaty.downloader.lh0").getMethod("b",room,
                Class.forName("com.shabakaty.downloader.bi4"),boolean.class,
                Class.forName("android.os.CancellationSignal")).invoke(null,db,q,false,null);
            Method next=cursor.getMethod("moveToNext"),getInt=cursor.getMethod("getInt",int.class),
                getLong=cursor.getMethod("getLong",int.class),getString=cursor.getMethod("getString",int.class);
            Map<Integer,BoundedDownloadRead.TransferRow> rows=new HashMap<>();
            Set<Integer> ambiguous=new HashSet<>();
            int seen=0;
            while(Boolean.TRUE.equals(next.invoke(c))){
                if(++seen>keys.size()*2)throw new IllegalStateException("transfer cursor limit");
                if(Thread.currentThread().isInterrupted())throw new InterruptedException();
                int actual=(Integer)getInt.invoke(c,0);
                if(!keys.contains(actual)||ambiguous.contains(actual))throw new IllegalStateException("unexpected task row");
                if(rows.containsKey(actual)){
                    ambiguous.add(actual);
                    rows.put(actual,new BoundedDownloadRead.TransferRow(null,actual,-1,-1,null));
                    continue;
                }
                rows.put(actual,new BoundedDownloadRead.TransferRow((String)getString.invoke(c,1),actual,
                    (Long)getLong.invoke(c,2),(Long)getLong.invoke(c,3),states.get((Integer)getInt.invoke(c,4))));
            }
            return Collections.unmodifiableMap(rows);
        }finally{
            try{if(c!=null)cursor.getMethod("close").invoke(c);}
            finally{query.getMethod("c").invoke(q);}
        }
    }
}
