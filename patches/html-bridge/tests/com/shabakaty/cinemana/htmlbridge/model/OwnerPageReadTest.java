package com.shabakaty.cinemana.htmlbridge.model;
import java.util.*;
public final class OwnerPageReadTest {
    static int n;
    static void ok(boolean b){if(!b)throw new AssertionError("assertion "+n);n++;}
    static class Fixture implements OwnerPageRead.Source{
        final List<BoundedDownloadRead.AppRow> all=new ArrayList<>();
        int pages,transfers;boolean denied,changed,oversize,failTransfer,conflict;
        Fixture(){for(int i=1;i<=452;i++)all.add(new BoundedDownloadRead.AppRow(String.format(Locale.ROOT,"ep%04d",i),i,0,"q","native-path"));}
        public void checkOwnerWorker(){if(denied)throw new IllegalStateException();}
        public List<BoundedDownloadRead.AppRow> page(String after){
            pages++;List<BoundedDownloadRead.AppRow> rows=new ArrayList<>();
            for(BoundedDownloadRead.AppRow a:all)if(after==null||a.id.compareTo(after)>0){rows.add(a);if(rows.size()==(oversize?26:25))break;}
            if(changed&&pages%2==0&&!rows.isEmpty()){BoundedDownloadRead.AppRow a=rows.get(0);rows.set(0,new BoundedDownloadRead.AppRow(a.id,a.taskId,0,"different",a.path));}
            return rows;
        }
        public BoundedDownloadRead.TransferRow transfer(int task){
            transfers++;if(failTransfer)throw new IllegalStateException();
            return new BoundedDownloadRead.TransferRow(conflict?"other":String.format(Locale.ROOT,"ep%04d",task),task,100,1000,DownloadModel.Transport.PROGRESS);
        }
    }
    static class Batched extends Fixture{
        int calls;boolean failed,unexpected;
        public Map<Integer,BoundedDownloadRead.TransferRow> transferPage(List<Integer> tasks){
            calls++;ok(tasks.size()<=24&&new HashSet<>(tasks).size()==tasks.size()&&!tasks.contains(0));
            if(failed)throw new IllegalStateException("batch unavailable");
            Map<Integer,BoundedDownloadRead.TransferRow> result=new HashMap<>();
            for(int task:tasks)if(task!=4)result.put(task,task==3?
                new BoundedDownloadRead.TransferRow(null,task,-1,-1,null):
                new BoundedDownloadRead.TransferRow(String.format(Locale.ROOT,"ep%04d",task),task,100,1000,DownloadModel.Transport.PROGRESS));
            if(unexpected)result.put(999999,result.get(1));
            return result;
        }
    }
    public static void main(String[] args)throws Exception{
        Fixture f=new Fixture();OwnerPageRead reader=new OwnerPageRead(f);
        int count=0,pages=0;String cursor=null;
        do{
            OwnerPageRead.Page p=reader.read(cursor);ok(p.status==OwnerPageRead.Status.OBSERVED);ok(p.rows.size()<=24);
            for(int i=0;i<p.rows.size();i++){OwnerPageRead.Row r=p.rows.get(i);ok(r.index==i);ok(r.result==BoundedDownloadRead.Result.OBSERVED);ok(r.progressBytes==100&&r.totalBytes==1000);}
            count+=p.rows.size();pages++;ok(p.hasMore==(p.nextNativeCursor!=null));cursor=p.nextNativeCursor;
        }while(cursor!=null);
        ok(count==452);ok(pages==19);ok(f.pages==38);ok(f.transfers==452);
        f=new Fixture();f.changed=true;OwnerPageRead.Page changed=new OwnerPageRead(f).read(null);ok(changed.status==OwnerPageRead.Status.CHANGED&&changed.rows.isEmpty()&&changed.nextNativeCursor==null);
        f=new Fixture();f.oversize=true;ok(new OwnerPageRead(f).read(null).status==OwnerPageRead.Status.UNAVAILABLE);ok(f.transfers==0);
        f=new Fixture();f.failTransfer=true;ok(new OwnerPageRead(f).read(null).rows.get(0).result==BoundedDownloadRead.Result.UNAVAILABLE);
        f=new Fixture();f.conflict=true;ok(new OwnerPageRead(f).read(null).rows.get(0).result==BoundedDownloadRead.Result.CONFLICT);
        f=new Fixture();f.denied=true;try{new OwnerPageRead(f).read(null);throw new AssertionError();}catch(IllegalStateException expected){ok(f.pages==0&&f.transfers==0);}
        f=new Fixture();try{new OwnerPageRead(f).read("bad cursor");throw new AssertionError();}catch(IllegalArgumentException expected){ok(f.pages==0);}
        f=new Fixture();f.all.clear();ok(new OwnerPageRead(f).read(null).rows.isEmpty());ok(f.transfers==0);
        f=new Fixture();f.all.set(0,new BoundedDownloadRead.AppRow("ep0001",0,0,"q","p"));ok(new OwnerPageRead(f).read(null).rows.get(0).result==BoundedDownloadRead.Result.NO_TRANSPORT_ROW);
        Batched batch=new Batched();OwnerPageRead.Page bp=new OwnerPageRead(batch).read(null);
        ok(batch.calls==1&&batch.transfers==0&&batch.pages==2);
        ok(bp.rows.get(0).result==BoundedDownloadRead.Result.OBSERVED);
        ok(bp.rows.get(2).result==BoundedDownloadRead.Result.CONFLICT);
        ok(bp.rows.get(3).result==BoundedDownloadRead.Result.NO_TRANSPORT_ROW);
        batch.failed=true;bp=new OwnerPageRead(batch).read(null);
        ok(bp.rows.get(0).result==BoundedDownloadRead.Result.UNAVAILABLE&&batch.transfers==0);
        batch.failed=false;batch.unexpected=true;bp=new OwnerPageRead(batch).read(null);
        ok(bp.rows.get(0).result==BoundedDownloadRead.Result.UNAVAILABLE&&batch.transfers==0);
        batch=new Batched();batch.all.set(1,new BoundedDownloadRead.AppRow("ep0002",1,0,"q","p"));
        bp=new OwnerPageRead(batch).read(null);
        ok(batch.calls==1&&batch.transfers==0&&bp.rows.get(1).result==BoundedDownloadRead.Result.CONFLICT);
        batch=new Batched();batch.all.clear();ok(new OwnerPageRead(batch).read(null).rows.isEmpty()&&batch.calls==0);
        ok(OwnerPageRead.safeTitle(null).isEmpty());
        ok(OwnerPageRead.safeTitle("  حلقة"+(char)0+(char)0x202e+" 12  ").equals("حلقة 12"));
        ok(OwnerPageRead.safeTitle(String.join("",Collections.nCopies(100,"😀"))).length()==160);
        f=new Fixture();
        f.all.set(0,new BoundedDownloadRead.AppRow("ep0001",1,0,"q","native-path","الحلقة 1"));
        ok(new OwnerPageRead(f).read(null).rows.get(0).displayTitle.equals("الحلقة 1"));
        f=new Fixture(){
            public List<BoundedDownloadRead.AppRow> page(String after){
                List<BoundedDownloadRead.AppRow> r=super.page(after);
                BoundedDownloadRead.AppRow x=r.get(0);
                r.set(0,new BoundedDownloadRead.AppRow(x.id,x.taskId,x.collection,x.quality,x.path,pages==1?"first":"changed"));
                return r;
            }
        };
        ok(new OwnerPageRead(f).read(null).status==OwnerPageRead.Status.CHANGED);
        // Identity remains stable for one reader despite progress, missing
        // transport, title changes and a shifted position after removal.
        f=new Fixture();reader=new OwnerPageRead(f);
        OwnerPageRead.Page initial=reader.read(null);
        Set<String> keys=new HashSet<>();
        for(OwnerPageRead.Row row:initial.rows)ok(row.displayKey.matches("[0-9a-f]{64}")&&keys.add(row.displayKey));
        String target=initial.rows.get(1).displayKey;
        f.all.remove(0);
        f.all.set(0,new BoundedDownloadRead.AppRow("ep0002",0,0,"q","private-path","new title"));
        OwnerPageRead.Page shifted=reader.read(null);
        ok(shifted.rows.get(0).displayKey.equals(target)&&shifted.rows.get(0).index==0);
        ok(shifted.rows.get(0).result==BoundedDownloadRead.Result.NO_TRANSPORT_ROW);
        ok(reader.read(null).rows.get(0).displayKey.equals(target));
        ok(!new OwnerPageRead(f).read(null).rows.get(0).displayKey.equals(target));
        ok(!reader.read(null).rows.get(0).displayKey.contains("ep0002"));
        // Verify no crypto initialization on constructor, invalid cursor,
        // empty database or worker rejection. First nonempty read initializes
        // one secret and subsequent page reads reuse the same reader secret.
        java.lang.reflect.Field secret=OwnerPageRead.class.getDeclaredField("keySecret");
        secret.setAccessible(true);
        OwnerPageRead cold=new OwnerPageRead(new Fixture());
        ok(secret.get(cold)==null);
        Fixture denied=new Fixture();denied.denied=true;
        cold=new OwnerPageRead(denied);
        try{cold.read(null);throw new AssertionError("worker rejection");}
        catch(IllegalStateException expected){ok(secret.get(cold)==null);}
        cold=new OwnerPageRead(new Fixture());
        try{cold.read("invalid cursor");throw new AssertionError("bad cursor");}
        catch(IllegalArgumentException expected){ok(secret.get(cold)==null);}
        Fixture empty=new Fixture();empty.all.clear();
        cold=new OwnerPageRead(empty);
        ok(cold.read(null).rows.isEmpty()&&secret.get(cold)==null);
        cold=new OwnerPageRead(new Fixture());
        OwnerPageRead.Page keyed=cold.read(null);
        byte[] identity=(byte[])secret.get(cold);
        ok(identity!=null&&identity.length==32);
        ok(keyed.rows.size()==24);
        ok(cold.read(null).rows.get(0).displayKey.equals(keyed.rows.get(0).displayKey));
        ok(secret.get(cold)==identity);
        ok(!new OwnerPageRead(new Fixture()).read(null).rows.get(0).displayKey.equals(keyed.rows.get(0).displayKey));
        System.out.println("CP_OWNER_DISPLAY_KEYS_LAZY_PASS constructor=clean invalid=clean empty=clean page=24 stable=verified");
        System.out.println("CP_OWNER_DISPLAY_KEYS_PASS stable=verified shift=verified readerIsolation=verified");
        System.out.println("CP_OWNER_PAGE_READ_PASS assertions="+n+" syntheticRows=452 pages=19");
    }
}
