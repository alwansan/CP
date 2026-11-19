package com.shabakaty.cinemana.htmlbridge.model;
import java.lang.reflect.*;
import java.util.*;

/** Candidate for the existing Room owner; never opens SQLite directly.
 * APKTool descriptors audited in Html; actual original-runtime ART gate pending.
 * API >=28 only until an exact process identity fallback is proven.
 */
public final class ExistingOwnerPageSource implements OwnerPageRead.Source {
    private final Object app;
    private final ExistingDaoSource transfer;
    private Object database;
    private Class<?> room,query,cursor,cancellation,queryInterface;
    private Method execute;
    private static final String SELECT="SELECT id,downloadTaskId,collectionID,qualityName,path FROM CinemanaDownloadItem";
    public ExistingOwnerPageSource(Object applicationContext){
        app=Objects.requireNonNull(applicationContext);transfer=new ExistingDaoSource(app);
    }
    @Override public void checkOwnerWorker()throws Exception{
        Class<?> context=Class.forName("android.content.Context");
        Class<?> application=Class.forName("android.app.Application");
        Class<?> looper=Class.forName("android.os.Looper");
        if(looper.getMethod("getMainLooper").invoke(null)==looper.getMethod("myLooper").invoke(null))
            throw new IllegalStateException("worker required");
        if(!application.isInstance(app)||context.getMethod("getApplicationContext").invoke(app)!=app)
            throw new IllegalArgumentException("application required");
        String owner=(String)context.getMethod("getPackageName").invoke(app);
        Object process=application.getMethod("getProcessName").invoke(null);
        if(owner==null||owner.isEmpty()||!owner.equals(process))throw new IllegalStateException("owner process required");
        transfer.checkWorker();
        Object dao=Class.forName("com.shabakaty.cinemana.ca1.DownloadStore263").getMethod("appDao",context).invoke(null,app);
        Class<?> daoType=Class.forName("com.shabakaty.downloader.kw0");
        room=Class.forName("com.shabakaty.downloader.vt3");
        query=Class.forName("com.shabakaty.downloader.yt3");
        queryInterface=Class.forName("com.shabakaty.downloader.bi4");
        cursor=Class.forName("android.database.Cursor");
        cancellation=Class.forName("android.os.CancellationSignal");
        database=daoType.getField("a").get(dao);
        if(!room.isInstance(database))throw new IllegalStateException("Room unavailable");
        execute=Class.forName("com.shabakaty.downloader.lh0").getMethod("b",room,queryInterface,boolean.class,cancellation);
    }
    @Override public List<BoundedDownloadRead.AppRow> page(String after)throws Exception{
        if(database==null)throw new IllegalStateException("worker validation required");
        if(after!=null&&!after.matches("[A-Za-z0-9_.:-]{1,128}"))throw new IllegalArgumentException("native cursor");
        String sql=SELECT+(after==null?"":" WHERE id COLLATE BINARY > ?")+" ORDER BY id COLLATE BINARY LIMIT 25";
        Object q=query.getMethod("a",String.class,int.class).invoke(null,sql,after==null?0:1);
        Object c=null;
        try{
            if(after!=null)query.getMethod("I",int.class,String.class).invoke(q,1,after);
            room.getMethod("b").invoke(database);
            c=execute.invoke(null,database,q,false,null);
            Method next=cursor.getMethod("moveToNext"),getString=cursor.getMethod("getString",int.class),getInt=cursor.getMethod("getInt",int.class);
            List<BoundedDownloadRead.AppRow> rows=new ArrayList<>(25);
            while(Boolean.TRUE.equals(next.invoke(c))){
                if(rows.size()>=OwnerPageRead.LOOKAHEAD)throw new IllegalStateException("row limit");
                rows.add(new BoundedDownloadRead.AppRow((String)getString.invoke(c,0),(Integer)getInt.invoke(c,1),
                   (Integer)getInt.invoke(c,2),(String)getString.invoke(c,3),(String)getString.invoke(c,4)));
            }
            return rows;
        }finally{
            try{if(c!=null)cursor.getMethod("close").invoke(c);}
            finally{query.getMethod("c").invoke(q);}
        }
    }
    @Override public BoundedDownloadRead.TransferRow transfer(int task)throws Exception{return transfer.transfer(task);}
}
