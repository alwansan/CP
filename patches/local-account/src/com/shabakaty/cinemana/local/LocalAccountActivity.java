package com.shabakaty.cinemana.local;
import android.app.*;import android.content.*;import android.os.*;import android.net.Uri;import android.provider.DocumentsContract;import android.graphics.*;import android.view.*;import android.widget.*;
import java.io.*;import java.text.SimpleDateFormat;import java.util.*;
import com.shabakaty.cinemana.local.LocalAccountStore.*;

/** Account editor and SAF backup UI. Reads, image decoding and ZIP work run on the serial worker. */
public final class LocalAccountActivity extends Activity {
 private LinearLayout content;private EditText name;private ImageView avatar;private byte[] selected;private boolean busy;private boolean restartAfterImport;
 public void onCreate(Bundle state){super.onCreate(state);LocalRuntime.init(this);render();if(Build.VERSION.SDK_INT>=33&&checkSelfPermission("android.permission.POST_NOTIFICATIONS")!=0)requestPermissions(new String[]{"android.permission.POST_NOTIFICATIONS"},266);}
 private void render(){
  ScrollView scroll=new ScrollView(this);content=new LinearLayout(this);content.setOrientation(1);content.setPadding(28,24,28,24);scroll.addView(content);setContentView(scroll);setTitle("حسابي المحلي");
  text("حسابك محفوظ على هذا الجهاز",22);text("لا يحتاج بريد إلكتروني أو رقم هاتف. جلب المحتوى والحلقات الجديدة يحتاج اتصالاً بالإنترنت.",15);
  avatar=new ImageView(this);avatar.setScaleType(ImageView.ScaleType.CENTER_CROP);content.addView(avatar,new LinearLayout.LayoutParams(200,200));
  name=new EditText(this);name.setSingleLine(true);name.setHint("الاسم");name.setText(LocalRuntime.name());name.setFilters(new android.text.InputFilter[]{new android.text.InputFilter.LengthFilter(80)});content.addView(name);
  button("اختيار صورة",new Runnable(){public void run(){pick("image/*",1);}});
  button("حفظ الملف الشخصي",new Runnable(){public void run(){final String value=name.getText().toString().trim();if(value.isEmpty()){toast("اكتب الاسم أولاً");return;}work(new Task(){public void run()throws Exception{LocalAccountStore s=LocalRuntime.data();s.profile(value,selected==null?s.avatar():selected);LocalRuntime.updateProfile();}},"تم حفظ الحساب");}});
  button("المفضلة",new Runnable(){public void run(){showList(ListKind.FAVORITE);}});
  button("المشاهدة لاحقاً",new Runnable(){public void run(){showList(ListKind.WATCH_LATER);}});
  button("الأعمال المشاهَدة",new Runnable(){public void run(){showList(ListKind.WATCHED);}});
  button("الاشتراكات وتنبيهات الحلقات",new Runnable(){public void run(){showList(ListKind.SUBSCRIPTION);}});
  button("الإشعارات",new Runnable(){public void run(){showList(null);}});
  button("تصدير نسخة احتياطية للحساب",new Runnable(){public void run(){if(busy)return;Intent intent=new Intent(Intent.ACTION_OPEN_DOCUMENT_TREE);intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION|Intent.FLAG_GRANT_WRITE_URI_PERMISSION);startActivityForResult(intent,2);}});
  button("استيراد نسخة احتياطية",new Runnable(){public void run(){if(busy)return;new AlertDialog.Builder(LocalAccountActivity.this).setMessage("الاستيراد يستبدل بيانات الحساب المحلي الحالية ببيانات النسخة. التنزيلات لا تتغير.").setNegativeButton("إلغاء",null).setPositiveButton("اختيار النسخة",(d,w)->pick("application/zip",3)).show();}});
  text("التنبيهات تُفحص دورياً عند توفر الشبكة. أندرويد قد يؤخر الفحص بالخلفية. أول فحص للعمل يحفظ الحلقات الحالية دون إشعار.",14);
  button("التحقق من الحلقات الآن",new Runnable(){public void run(){LocalRuntime.requestScan(true);toast("تم طلب الفحص؛ النتيجة تظهر في الإشعارات واللوق");}});
  button("العودة للتطبيق",new Runnable(){public void run(){finish();}});
  LocalRuntime.IO.execute(new Runnable(){public void run(){try{final byte[] bytes=LocalRuntime.data().avatar();final Bitmap bitmap=bytes.length==0?null:BitmapFactory.decodeByteArray(bytes,0,bytes.length);runOnUiThread(()->{if(!isFinishing())avatar.setImageBitmap(bitmap);});}catch(Exception e){LocalRuntime.failure("profile_load",e);}}});
 }
 private void text(String s,int size){TextView v=new TextView(this);v.setText(s);v.setTextSize(size);v.setPadding(4,14,4,14);content.addView(v);}
 private void button(String s,final Runnable action){Button b=new Button(this);b.setText(s);b.setAllCaps(false);content.addView(b,new LinearLayout.LayoutParams(-1,-2));b.setOnClickListener(v->{if(!busy)action.run();});}
 private void pick(String type,int code){if(busy)return;Intent intent=new Intent(Intent.ACTION_OPEN_DOCUMENT).setType(type).addCategory(Intent.CATEGORY_OPENABLE);startActivityForResult(intent,code);}
 private interface Task{void run()throws Exception;}
 private void work(final Task task,final String success){if(busy)return;busy=true;toast("جارٍ التنفيذ…");LocalRuntime.IO.execute(new Runnable(){public void run(){try{task.run();runOnUiThread(()->{busy=false;if(!isFinishing()){toast(success);if(restartAfterImport){Intent launch=getPackageManager().getLaunchIntentForPackage(getPackageName());if(launch!=null){launch.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK|Intent.FLAG_ACTIVITY_CLEAR_TASK);startActivity(launch);finish();return;}}render();}});}catch(final Exception e){LocalRuntime.failure("account_ui",e);runOnUiThread(()->{busy=false;if(!isFinishing())toast("تعذر إكمال العملية؛ راجع سجل التشخيص.");});}}});}
 protected void onActivityResult(int request,int result,Intent data){super.onActivityResult(request,result,data);if(result!=RESULT_OK||data==null||data.getData()==null)return;final Uri uri=data.getData();
  if(request==1)work(()->{byte[] bytes=read(uri,8*1024*1024);BitmapFactory.Options bounds=new BitmapFactory.Options();bounds.inJustDecodeBounds=true;BitmapFactory.decodeByteArray(bytes,0,bytes.length,bounds);
   if(bounds.outWidth<=0||bounds.outHeight<=0||(long)bounds.outWidth*bounds.outHeight>100000000)throw new IOException("invalid image");
   BitmapFactory.Options options=new BitmapFactory.Options();options.inSampleSize=1;while(Math.max(bounds.outWidth,bounds.outHeight)/options.inSampleSize>512)options.inSampleSize*=2;
   Bitmap bitmap=BitmapFactory.decodeByteArray(bytes,0,bytes.length,options);if(bitmap==null)throw new IOException("invalid image");ByteArrayOutputStream out=new ByteArrayOutputStream();bitmap.compress(Bitmap.CompressFormat.JPEG,85,out);bitmap.recycle();
   selected=out.toByteArray();LocalAccountStore s=LocalRuntime.data();s.profile(s.name(),selected);LocalRuntime.updateProfile();},"تم حفظ الصورة");
  else if(request==2)work(()->{
   LocalRuntime.flushProgress();LocalRuntime.snapshotLegacy(!LocalRuntime.data().config("legacy_seeded","0").equals("1"));
   Uri parent=DocumentsContract.buildDocumentUriUsingTree(uri,DocumentsContract.getTreeDocumentId(uri));String filename="Cinemana-account-"+new SimpleDateFormat("yyyyMMdd-HHmmss",Locale.ROOT).format(new Date())+".zip";
   Uri target=DocumentsContract.createDocument(getContentResolver(),parent,"application/zip",filename);if(target==null)throw new IOException("document not created");
   try(OutputStream out=getContentResolver().openOutputStream(target,"w")){if(out==null)throw new IOException("document not writable");LocalRuntime.data().exportZip(out);}catch(Exception e){try{DocumentsContract.deleteDocument(getContentResolver(),target);}catch(Exception ignored){}throw e;}
  },"تم تصدير النسخة إلى المجلد المختار");
  else if(request==3)work(()->{try(InputStream in=getContentResolver().openInputStream(uri)){if(in==null)throw new IOException("document not readable");LocalRuntime.importAccount(in);}selected=null;LocalRuntime.updateProfile();LocalRuntime.restoreLegacy();LocalRuntime.log("ui_refresh_after_import");restartAfterImport=true;},"تم استيراد الحساب وتحديث البيانات");
 }
 private byte[] read(Uri uri,int limit)throws IOException{try(InputStream in=getContentResolver().openInputStream(uri);ByteArrayOutputStream out=new ByteArrayOutputStream()){if(in==null)throw new IOException("image unreadable");byte[] b=new byte[8192];int n;while((n=in.read(b))!=-1){if(out.size()+n>limit)throw new IOException("image limit");out.write(b,0,n);}return out.toByteArray();}}
 private void showList(final ListKind kind){LocalRuntime.IO.execute(new Runnable(){public void run(){try{final java.util.List<Item> items=kind==null?LocalRuntime.data().inbox():LocalRuntime.data().list(kind);Collections.reverse(items);runOnUiThread(()->{if(isFinishing())return;String[] titles=new String[items.size()];for(int n=0;n<titles.length;n++)titles[n]=items.get(n).title;
   new AlertDialog.Builder(LocalAccountActivity.this).setTitle(kind==null?"الإشعارات":"عناصر الحساب").setItems(titles,(dialog,index)->{
    final Item item=items.get(index);new AlertDialog.Builder(LocalAccountActivity.this).setTitle(item.title).setItems(kind==null?new String[]{"فتح الحلقة"}:new String[]{"فتح العمل","إزالة من القائمة"},(d,choice)->{if(choice==0)openVideo(item.id);else work(()->LocalRuntime.data().remove(kind,item.id),"تمت الإزالة");}).setNegativeButton("رجوع",null).show();}).setNegativeButton("إغلاق",null).show();});
  }catch(Exception e){LocalRuntime.failure("list_ui",e);}}});}
 private void openVideo(String id){Intent intent=new Intent(Intent.ACTION_VIEW,Uri.parse("https://cinemana.shabakaty.cc/video/"+id));intent.setPackage(getPackageName());startActivity(intent);}
 private void toast(String text){Toast.makeText(this,text,Toast.LENGTH_LONG).show();}
}
