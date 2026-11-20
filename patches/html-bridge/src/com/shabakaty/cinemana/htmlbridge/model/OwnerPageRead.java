package com.shabakaty.cinemana.htmlbridge.model;
import java.util.*;

/** Native-only keyset page. Reads two bounded app snapshots around transfer reads.
 * No global database snapshot, write, playback proof, or external cursor accepted.
 * A caller must keep the raw cursor in native session state, not expose it to JS.
 */
public final class OwnerPageRead {
    public static final int PAGE = 24, LOOKAHEAD = 25;
    public enum Status { OBSERVED, CHANGED, UNAVAILABLE }
    public interface Source {
        void checkOwnerWorker() throws Exception;
        List<BoundedDownloadRead.AppRow> page(String after) throws Exception;
        BoundedDownloadRead.TransferRow transfer(int taskId) throws Exception;
        // Null explicitly means a legacy fixture without batch support. Real owner never falls back on failure.
        default Map<Integer,BoundedDownloadRead.TransferRow> transferPage(List<Integer> tasks)throws Exception{return null;}
    }
    public static final class Row {
        public final int index;
        public final BoundedDownloadRead.Result result;
        public final DownloadModel.Transport transport;
        public final long progressBytes,totalBytes;
        private Row(int i,BoundedDownloadRead.Result r,DownloadModel.Transport t,long p,long total){
            index=i;result=r;transport=t;progressBytes=p;totalBytes=total;
        }
    }
    public static final class Page {
        public final Status status;
        public final boolean hasMore;
        public final List<Row> rows;
        // Native only. No serializer or accessor for WebView.
        final String nextNativeCursor;
        private Page(Status s,boolean more,List<Row> rows,String cursor){
            status=s;hasMore=more;this.rows=Collections.unmodifiableList(new ArrayList<>(rows));nextNativeCursor=cursor;
        }
    }
    private final Source source;
    public OwnerPageRead(Source s){source=Objects.requireNonNull(s);}
    private static Page empty(Status s){return new Page(s,false,Collections.emptyList(),null);}
    private static Row unknown(int i,BoundedDownloadRead.Result r){
        return new Row(i,r,DownloadModel.Transport.UNKNOWN,-1,-1);
    }
    private static boolean valid(String id){return id!=null&&id.matches("[A-Za-z0-9_.:-]{1,128}");}
    private static List<BoundedDownloadRead.AppRow> checked(List<BoundedDownloadRead.AppRow> raw,String after){
        if(raw==null||raw.size()>LOOKAHEAD)throw new IllegalArgumentException("bounded page");
        List<BoundedDownloadRead.AppRow> copy=new ArrayList<>(raw);
        if(copy.size()>LOOKAHEAD)throw new IllegalArgumentException("bounded page");
        String previous=after;
        for(BoundedDownloadRead.AppRow row:copy){
            // ASCII restricted cursor gives exact Java vs SQLite BINARY order.
            if(row==null||!valid(row.id)||(previous!=null&&row.id.compareTo(previous)<=0))
                throw new IllegalArgumentException("invalid native page");
            previous=row.id;
        }
        return copy;
    }
    public Page read(String nativeCursor)throws Exception{
        if(nativeCursor!=null&&!valid(nativeCursor))throw new IllegalArgumentException("native cursor");
        source.checkOwnerWorker(); // reject wrong process/thread before touching DAO
        if(Thread.currentThread().isInterrupted())throw new InterruptedException();
        try{
            List<BoundedDownloadRead.AppRow> first=checked(source.page(nativeCursor),nativeCursor);
            List<Row> rows=new ArrayList<>();
            int n=Math.min(PAGE,first.size());
            LinkedHashSet<Integer> distinct=new LinkedHashSet<>();
            for(int i=0;i<n;i++)if(first.get(i).taskId!=0)distinct.add(first.get(i).taskId);
            Map<Integer,BoundedDownloadRead.TransferRow> batch=null;
            boolean batchFailed=false;
            if(!distinct.isEmpty())try{
                batch=source.transferPage(Collections.unmodifiableList(new ArrayList<>(distinct)));
                if(batch!=null){
                    batch=new HashMap<>(batch);
                    if(!distinct.containsAll(batch.keySet())||batch.containsValue(null))throw new IllegalStateException("invalid transfer page");
                }
            }catch(InterruptedException e){throw e;}catch(Exception e){batchFailed=true;}
            for(int i=0;i<n;i++){
                if(Thread.currentThread().isInterrupted())throw new InterruptedException();
                BoundedDownloadRead.AppRow a=first.get(i);
                if(a.taskId==0){rows.add(unknown(i,BoundedDownloadRead.Result.NO_TRANSPORT_ROW));continue;}
                try{
                    if(batchFailed){rows.add(unknown(i,BoundedDownloadRead.Result.UNAVAILABLE));continue;}
                    BoundedDownloadRead.TransferRow t=batch==null?source.transfer(a.taskId):batch.get(a.taskId);
                    if(t==null){rows.add(unknown(i,BoundedDownloadRead.Result.NO_TRANSPORT_ROW));continue;}
                    if(t.taskId!=a.taskId||!a.id.equals(t.externalId)||t.status==null||t.progress<0||t.total< -1||(t.total>0&&t.progress>t.total)){
                        rows.add(unknown(i,BoundedDownloadRead.Result.CONFLICT));continue;
                    }
                    rows.add(new Row(i,BoundedDownloadRead.Result.OBSERVED,t.status,t.progress,t.total>0?t.total:-1));
                }catch(InterruptedException e){throw e;}catch(Exception e){rows.add(unknown(i,BoundedDownloadRead.Result.UNAVAILABLE));}
            }
            if(Thread.currentThread().isInterrupted())throw new InterruptedException();
            List<BoundedDownloadRead.AppRow> second=checked(source.page(nativeCursor),nativeCursor);
            if(first.size()!=second.size())return empty(Status.CHANGED);
            for(int i=0;i<first.size();i++)if(!first.get(i).same(second.get(i)))return empty(Status.CHANGED);
            boolean more=first.size()>PAGE;
            return new Page(Status.OBSERVED,more,rows,more?first.get(n-1).id:null);
        }catch(InterruptedException e){Thread.currentThread().interrupt();throw e;}
        catch(Exception e){return empty(Status.UNAVAILABLE);}
    }
}
