package com.shabakaty.cinemana.htmlbridge.model;

import java.util.*;

/** Isolated native read candidate. Separate DBs do not provide a global transaction.
 * Observations are NOT a durable receipt, resume permission or playback proof.
 * Inputs are resolved native IDs, not arbitrary JS values. No scheduling or writes.
 */
public final class BoundedDownloadRead {
    public static final int MAX_PAGE = 64;
    public enum Result { OBSERVED, NO_APP_ROW, NO_TRANSPORT_ROW, CONFLICT, UNAVAILABLE, INVALID_ID }
    public interface Source {
        void checkWorker() throws Exception;
        AppRow app(String id) throws Exception;
        TransferRow transfer(int taskId) throws Exception;
    }
    public static final class AppRow {
        final String id, quality, path, title;
        final int taskId, collection;
        public AppRow(String id,int taskId,int collection,String quality,String path) {
            this(id,taskId,collection,quality,path,"");
        }
        public AppRow(String id,int taskId,int collection,String quality,String path,String title) {
            this.id=id;this.taskId=taskId;this.collection=collection;this.quality=quality;this.path=path;this.title=title;
        }
        boolean same(AppRow r) {
            return r!=null&&taskId==r.taskId&&collection==r.collection&&Objects.equals(id,r.id)
                &&Objects.equals(quality,r.quality)&&Objects.equals(path,r.path)&&Objects.equals(title,r.title);
        }
    }
    public static final class TransferRow {
        final String externalId;
        final int taskId;
        final long progress,total;
        final DownloadModel.Transport status;
        public TransferRow(String externalId,int taskId,long progress,long total,DownloadModel.Transport status) {
            this.externalId=externalId;this.taskId=taskId;this.progress=progress;this.total=total;this.status=status;
        }
    }
    /** Native-only projection; deliberately no IDs, URLs, paths, tokens or raw exception text. */
    public static final class Observation {
        public final int index;
        public final Result result;
        public final DownloadModel.Transport transport;
        public final long progressBytes,totalBytes;
        private Observation(int index,Result result,DownloadModel.Transport transport,long progress,long total) {
            this.index=index;this.result=result;this.transport=transport;
            this.progressBytes=progress;this.totalBytes=total;
        }
    }
    private final Source source;
    public BoundedDownloadRead(Source source) {this.source=Objects.requireNonNull(source);}
    private static Observation empty(int i,Result r) {
        return new Observation(i,r,DownloadModel.Transport.UNKNOWN,-1,-1);
    }
    private static boolean valid(String id) {return id!=null&&id.matches("[A-Za-z0-9_.:-]{1,128}");}
    public List<Observation> read(List<String> ids) throws Exception {
        Objects.requireNonNull(ids);
        if(ids.size()>MAX_PAGE) throw new IllegalArgumentException("page limit");
        List<String> input=new ArrayList<>(ids);
        if(input.size()>MAX_PAGE) throw new IllegalArgumentException("page limit");
        source.checkWorker(); // fail before all DAO calls; do not swallow main-thread rejection
        List<Observation> rows=new ArrayList<>(input.size());
        for(int i=0;i<input.size();i++) {
            if(Thread.currentThread().isInterrupted()) throw new InterruptedException();
            String id=input.get(i);
            if(!valid(id)) {rows.add(empty(i,Result.INVALID_ID));continue;}
            try {
                AppRow a=source.app(id);
                if(a==null) {rows.add(empty(i,Result.NO_APP_ROW));continue;}
                if(!id.equals(a.id)) {rows.add(empty(i,Result.CONFLICT));continue;}
                // Zero is not a valid transfer identity; recovered MKV may have no task.
                if(a.taskId==0) {rows.add(empty(i,Result.NO_TRANSPORT_ROW));continue;}
                TransferRow t=source.transfer(a.taskId);
                AppRow b=source.app(id);
                if(!a.same(b)) {rows.add(empty(i,Result.CONFLICT));continue;}
                if(t==null) {rows.add(empty(i,Result.NO_TRANSPORT_ROW));continue;}
                if(t.taskId!=a.taskId||!id.equals(t.externalId)||t.status==null
                    || t.progress<0||t.total< -1||(t.total>0&&t.progress>t.total)) {
                    rows.add(empty(i,Result.CONFLICT));continue;
                }
                // A zero/negative size is not known. Progress belongs to transport only.
                rows.add(new Observation(i,Result.OBSERVED,t.status,t.progress,t.total>0?t.total:-1));
            } catch(InterruptedException e) {Thread.currentThread().interrupt();throw e;}
              catch(Exception e) {rows.add(empty(i,Result.UNAVAILABLE));}
        }
        return Collections.unmodifiableList(rows);
    }
}
