package com.alwansan.cinemana.nativeuilab;
import android.app.Activity;
import android.os.*;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.view.*;
import android.widget.*;
import java.util.Locale;

/** Independent Android Views experiment, all data synthetic. No WebView/Room/engine. */
public final class NativeLabActivity extends Activity {
    private static final int BG=0xff090a0d,CARD=0xff17191e,INK=0xfff8f4ee,ACCENT=0xffff856c;
    private static final String[] NAMES={"الرئيسية","الأقسام","البحث","التحميلات","الحساب"};
    private final int[] progress=new int[452];
    private final Handler main=new Handler(Looper.getMainLooper());
    private LinearLayout root,body,dock;
    private TextView title,pageLabel;
    private ListView rows;
    private int route=0,page=0;
    private boolean resumed,stress;
    private int ticker;
    private final Runnable update=new Runnable(){
        public void run(){
            if(!resumed||!stress||route!=3)return;
            // At most 64 model changes, at most the visible rows get a UI write.
            for(int j=0;j<64;j++){int id=(ticker*64+j)%progress.length;progress[id]=(progress[id]+3)%101;}
            ticker=(ticker+1)%452;
            if(rows!=null)for(int i=0;i<rows.getChildCount();i++){
                View v=rows.getChildAt(i);Object tag=v.getTag();
                if(tag instanceof Integer)fill((LinearLayout)v,(Integer)tag);
            }
            main.postDelayed(this,200);
        }
    };
    private int dp(int x){return Math.round(x*getResources().getDisplayMetrics().density);}
    private GradientDrawable bg(int color,int radius){GradientDrawable d=new GradientDrawable();d.setColor(color);d.setCornerRadius(dp(radius));return d;}
    private LinearLayout column(){LinearLayout l=new LinearLayout(this);l.setOrientation(LinearLayout.VERTICAL);return l;}
    private TextView text(String s,int size,int color){TextView t=new TextView(this);t.setText(s);t.setTextSize(size);t.setTextColor(color);t.setGravity(Gravity.CENTER_VERTICAL|Gravity.START);return t;}
    private Button button(String s,String tag,Runnable action){Button v=new Button(this);v.setText(s);v.setTextColor(INK);v.setTextSize(13);v.setAllCaps(false);v.setTag(tag);v.setOnClickListener(x->action.run());return v;}
    @Override public void onCreate(Bundle state){
        super.onCreate(state);getWindow().setStatusBarColor(BG);getWindow().setNavigationBarColor(BG);
        if(state!=null){route=Math.max(0,Math.min(4,state.getInt("route")));page=Math.max(0,Math.min(18,state.getInt("page")));}
        root=column();root.setLayoutDirection(View.LAYOUT_DIRECTION_RTL);root.setBackgroundColor(BG);root.setPadding(dp(12),dp(8),dp(12),dp(8));
        TextView brand=text("CINEMANA  /  مختبر Native",19,INK);brand.setTypeface(null,Typeface.BOLD);root.addView(brand,new LinearLayout.LayoutParams(-1,dp(40)));
        TextView info=text("بيانات وهمية فقط · 452 حلقة · دون اتصال بالمحرك",12,ACCENT);root.addView(info,new LinearLayout.LayoutParams(-1,dp(36)));
        title=text("",24,INK);title.setTypeface(null,Typeface.BOLD);root.addView(title,new LinearLayout.LayoutParams(-1,dp(46)));
        body=column();root.addView(body,new LinearLayout.LayoutParams(-1,0,1));
        dock=new LinearLayout(this);dock.setOrientation(LinearLayout.HORIZONTAL);
        for(int n=0;n<5;n++){final int id=n;Button b=button(NAMES[n],"route-"+n,()->show(id));b.setTextSize(11);b.setPadding(0,0,0,0);dock.addView(b,new LinearLayout.LayoutParams(0,dp(54),1));}
        root.addView(dock);setContentView(root);show(route);
    }
    @Override protected void onSaveInstanceState(Bundle out){out.putInt("route",route);out.putInt("page",page);super.onSaveInstanceState(out);}
    @Override protected void onResume(){super.onResume();resumed=true;schedule();}
    @Override protected void onPause(){resumed=false;main.removeCallbacks(update);super.onPause();}
    private void schedule(){main.removeCallbacks(update);if(resumed&&stress&&route==3)main.postDelayed(update,200);}
    private void show(int id){
        route=id;main.removeCallbacks(update);rows=null;body.removeAllViews();title.setText(NAMES[id]);title.setTag("active-"+id);
        for(int i=0;i<5;i++){Button b=(Button)dock.getChildAt(i);b.setSelected(i==id);b.setTextColor(i==id?BG:INK);b.setBackground(bg(i==id?INK:CARD,16));}
        if(id==3){downloads();schedule();return;}
        if(id==2){EditText q=new EditText(this);q.setSingleLine(true);q.setTextColor(INK);q.setHintTextColor(0xffbbbbbb);q.setHint("ابحث في المحتوى التجريبي");body.addView(q);}
        String[] content=id==0?new String[]{"تابع المشاهدة","أحدث الأفلام","مسلسلات مختارة"}:id==1?new String[]{"أفلام","مسلسلات","أنمي"}:id==2?new String[]{"نتائج البحث التجريبية"}:new String[]{"الحساب المحلي التجريبي","إعدادات المظهر","حول المختبر"};
        for(String s:content){TextView card=text(s,18,INK);card.setPadding(dp(16),dp(12),dp(16),dp(12));card.setBackground(bg(CARD,18));LinearLayout.LayoutParams lp=new LinearLayout.LayoutParams(-1,dp(74));lp.bottomMargin=dp(10);body.addView(card,lp);}
    }
    private void downloads(){
        Button toggle=button(stress?"إيقاف تحديثات العرض":"تشغيل تحديثات 452 حلقة","stress",()->{stress=!stress;Button b=(Button)body.findViewWithTag("stress");b.setText(stress?"إيقاف تحديثات العرض":"تشغيل تحديثات 452 حلقة");schedule();});
        body.addView(toggle,new LinearLayout.LayoutParams(-1,dp(48)));
        LinearLayout pager=new LinearLayout(this);pager.setGravity(Gravity.CENTER);
        pager.addView(button("السابق","prev",()->setPage(page-1)),new LinearLayout.LayoutParams(0,dp(44),1));
        pageLabel=text("",15,INK);pageLabel.setGravity(Gravity.CENTER);pager.addView(pageLabel,new LinearLayout.LayoutParams(0,dp(44),1));
        pager.addView(button("التالي","next",()->setPage(page+1)),new LinearLayout.LayoutParams(0,dp(44),1));body.addView(pager);
        rows=new ListView(this);rows.setTag("rows");rows.setDividerHeight(dp(5));rows.setCacheColorHint(Color.TRANSPARENT);body.addView(rows,new LinearLayout.LayoutParams(-1,0,1));setPage(page);
    }
    private void setPage(int n){
        page=Math.max(0,Math.min(18,n));pageLabel.setText((page+1)+" / 19");pageLabel.setTag("page-"+page);
        body.findViewWithTag("prev").setEnabled(page>0);body.findViewWithTag("next").setEnabled(page<18);
        rows.setAdapter(new BaseAdapter(){
            public int getCount(){return Math.min(24,progress.length-page*24);}
            public Object getItem(int pos){return Integer.valueOf(page*24+pos);}
            public long getItemId(int pos){return page*24L+pos;}
            public boolean hasStableIds(){return true;}
            public View getView(int pos,View reused,ViewGroup parent){
                LinearLayout card;
                if(reused instanceof LinearLayout)card=(LinearLayout)reused;
                else{card=column();card.setPadding(dp(12),dp(9),dp(12),dp(9));card.setBackground(bg(CARD,12));
                    card.addView(text("",16,INK));ProgressBar bar=new ProgressBar(NativeLabActivity.this,null,android.R.attr.progressBarStyleHorizontal);
                    bar.setMax(100);card.addView(bar,new LinearLayout.LayoutParams(-1,dp(10)));card.addView(text("",12,ACCENT));}
                int key=page*24+pos;card.setTag(key);fill(card,key);return card;
            }
        });
    }
    private void fill(LinearLayout card,int id){
        TextView name=(TextView)card.getChildAt(0),status=(TextView)card.getChildAt(2);
        String label=String.format(Locale.ROOT,"الحلقة %03d · تجريبية",id+1);
        if(!label.contentEquals(name.getText()))name.setText(label);
        ProgressBar bar=(ProgressBar)card.getChildAt(1);if(bar.getProgress()!=progress[id])bar.setProgress(progress[id]);
        String s=progress[id]+"%";if(!s.contentEquals(status.getText()))status.setText(s);
    }
}
