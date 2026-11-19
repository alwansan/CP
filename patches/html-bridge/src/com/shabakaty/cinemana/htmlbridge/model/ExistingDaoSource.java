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
        Object row=exp("readDownloadsByTaskId",downloaderDao,taskId);
        if(row==null)return null;
        Object status=field(row,"z");
        DownloadModel.Transport t=status instanceof Enum?
            DownloadModel.Transport.valueOf(((Enum<?>)status).name()):DownloadModel.Transport.UNKNOWN;
        return new BoundedDownloadRead.TransferRow(s(row,"s"),i(row,"r"),l(row,"t"),l(row,"y"),t);
    }
}
