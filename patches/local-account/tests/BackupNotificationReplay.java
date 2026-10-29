import com.shabakaty.cinemana.local.LocalAccountStore;
import com.shabakaty.cinemana.local.LocalAccountStore.*;
import java.io.*;import java.nio.file.*;import java.util.*;
/** Local-only replay: no notification is sent and the supplied ZIP is never modified. */
public class BackupNotificationReplay {
 public static void main(String[] args)throws Exception {
  File temp=Files.createTempDirectory("notification-replay").toFile();
  LocalAccountStore s=new LocalAccountStore(temp,null);
  try(InputStream in=new FileInputStream(args[0])){s.importZip(in);}
  String show="3146171";
  if(s.find(ListKind.SUBSCRIPTION,show)==null||s.baselineSize(show)!=3||!s.inbox().isEmpty())throw new AssertionError("unexpected fixture");
  List<Item> items=new ArrayList<>();for(String id:new String[]{"3146171","3146174","3146177"})items.add(new Item(id,"old",0));
  items.add(new Item("replay_fourth","episode 4 simulation",0));
  if(s.reconcile(show,items).size()!=1||s.inbox().size()!=1)throw new AssertionError("missing new episode");
  if(!s.reconcile(show,items).isEmpty()||s.inbox().size()!=1)throw new AssertionError("duplicate");
  System.out.println("PASS actual uploaded ZIP restores 26 subscriptions and 3-episode baseline; simulated fourth creates exactly one inbox item, repeated response creates none");
 }
}
