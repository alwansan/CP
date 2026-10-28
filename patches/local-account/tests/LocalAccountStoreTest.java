import com.shabakaty.cinemana.local.LocalAccountStore;
import com.shabakaty.cinemana.local.LocalAccountStore.*;
import java.io.*;import java.nio.file.*;import java.util.*;import java.util.zip.*;
public class LocalAccountStoreTest {
 static Item e(String id){return new Item(id,"Episode "+id,123);}
 static void check(boolean b){if(!b)throw new AssertionError();}
 public static void main(String[] args)throws Exception{
  File dir=Files.createTempDirectory("local-account-test").toFile();LocalAccountStore s=new LocalAccountStore(dir,null);
  s.profile("الوان",new byte[]{1,2,3});s.put(ListKind.SUBSCRIPTION,e("series"));s.put(ListKind.FAVORITE,e("film"));
  check(s.reconcile("series",Arrays.asList(e("1"),e("2"))).isEmpty());
  check(s.reconcile("series",Arrays.asList(e("1"),e("2"),e("3"))).size()==1);
  check(s.reconcile("series",Arrays.asList(e("1"),e("3"))).isEmpty());
  check(s.reconcile("series",Arrays.asList(e("1"),e("2"),e("3"))).isEmpty());
  check(s.reconcile("series",Collections.<Item>emptyList()).isEmpty());
  LocalAccountStore reopened=new LocalAccountStore(dir,null);check(reopened.inbox().size()==1);check(reopened.name().equals("الوان"));
  ByteArrayOutputStream archive=new ByteArrayOutputStream();s.exportZip(archive);
  reopened.importZip(new ByteArrayInputStream(archive.toByteArray()));check(reopened.list(ListKind.FAVORITE).size()==1);
  check(reopened.reconcile("series",Arrays.asList(e("1"),e("2"),e("3"),e("4"))).isEmpty());
  ByteArrayOutputStream bad=new ByteArrayOutputStream();ZipOutputStream z=new ZipOutputStream(bad);z.putNextEntry(new ZipEntry("../account.bin"));z.write(1);z.closeEntry();z.finish();
  try{reopened.importZip(new ByteArrayInputStream(bad.toByteArray()));throw new AssertionError();}catch(IOException expected){}
  check(reopened.name().equals("الوان"));
  reopened.remove(ListKind.SUBSCRIPTION,"series");check(reopened.reconcile("series",Arrays.asList(e("5"))).isEmpty());
  System.out.println("PASS persistence, ZIP round-trip, rejected traversal, unchanged state on invalid import, first baseline, deduplication, disappearance/reappearance, unsubscribe, restore baseline");
 }
}
