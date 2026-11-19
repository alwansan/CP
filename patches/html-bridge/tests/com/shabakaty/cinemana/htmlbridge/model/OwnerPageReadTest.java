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
        System.out.println("CP_OWNER_PAGE_READ_PASS assertions="+n+" syntheticRows=452 pages=19");
    }
}
