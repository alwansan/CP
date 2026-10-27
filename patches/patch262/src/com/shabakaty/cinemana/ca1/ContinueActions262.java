package com.shabakaty.cinemana.ca1;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.*;
import android.widget.*;
import java.lang.ref.WeakReference;
import java.util.*;

/** UI actions are scoped to Continue Watching. Never deletes downloaded media. */
public final class ContinueActions262 {
    private static final int MENU_ID = 0x262106;
    private static final Map<View, More> pages = new WeakHashMap<View, More>();
    private static final Map<View, Bound> bound = new WeakHashMap<View, Bound>();
    private static final ThreadLocal<Boolean> details = new ThreadLocal<Boolean>();
    private ContinueActions262() {}
    static Object get(Object o, String k) throws Exception { return Continue106.get(o,k); }
    static Object call(Object o, String k, Object... a) throws Exception { return Continue106.call(o,k,a); }
    static String text(Object o, String k) { try { return Continue106.text(o,k); } catch(Exception e) { return ""; } }
    static String tr(String s) { return I18n161.t(s); }
    static void error(String s, Exception e) { Continue106.log(s,e); }
    public static boolean isDetails() { return Boolean.TRUE.equals(details.get()); }
    public static String cleanTitle(String s) {
        return ResumeDisplay263.cleanTitle(s);
    }
    private static String label(Object m) {
        for(String k : new String[]{"customArTitle","arTitle","title","customEnTitle","enTitle"}) {
            String s=cleanTitle(text(m,k)); if(!s.isEmpty()) return s;
        }
        return tr("عمل بدون عنوان");
    }
    private static String work(Object m) {
        String id=text(m,"rootSeries");
        return !id.isEmpty() && !"0".equals(id) ? "id:"+id : "title:"+label(m).toLowerCase(Locale.ROOT);
    }
    static int dp(Context c,int n) { return (int)(c.getResources().getDisplayMetrics().density*n+0.5f); }
    static More page(View v) {
        for(int i=0;v!=null && i<30;i++) {
            More p=pages.get(v); if(p!=null) return p;
            ViewParent parent=v.getParent(); v=parent instanceof View?(View)parent:null;
        }
        return null;
    }
    public static void bindHorizontal(Object binding, boolean enabled) {
        bind(binding,enabled,"U","T","P");
    }
    public static void bindWide(Object binding) {
        try {
            View v=(View)get(binding,"v");boolean enabled=page(v)!=null;
            bind(binding,enabled,"S","R","M");
            if(enabled){
                String line=resumeSubtitle(get(binding,"S"));
                TextView subtitle=(TextView)get(binding,"O");subtitle.setText(line);subtitle.setVisibility(line.isEmpty()?View.GONE:View.VISIBLE);
                ((View)get(binding,"Q")).setVisibility(View.GONE);
            }
        }
        catch(Exception e) { error("continue_wide_bind262",e); }
    }
    static String resumeSubtitle(Object model)throws Exception {
        Object entry;long p=0,d=0;
        synchronized(Continue106.class){
            entry=Continue106.entries.get(text(model,"nb"));
            if(entry!=null){p=((Number)get(entry,"p")).longValue();d=((Number)get(entry,"d")).longValue();}
        }
        return ResumeDisplay263.subtitle(text(model,"season"),text(model,"episodeNummer"),p,d);
    }
    private static void bind(Object binding,boolean enabled,String modelField,String listenerField,String titleField) {
        try {
            View root=(View)get(binding,"v");
            Bound previous=bound.remove(root);
            if(previous!=null) { root.setOnLongClickListener(null); root.setLongClickable(false); }
            if(!enabled) return;
            Object model=get(binding,modelField); if(model==null) return;
            String id=text(model,"nb"); if(id.isEmpty()) return;
            TextView title=(TextView)get(binding,titleField);
            Bound b=new Bound(root,model,get(binding,listenerField),title);
            bound.put(root,b); b.paint();
            root.setOnLongClickListener(new View.OnLongClickListener() {
                public boolean onLongClick(View view) {
                    Bound current=bound.get(view); if(current==null) return false;
                    More p=page(view);
                    if(p!=null && p.mode) { p.toggle(text(current.model,"nb")); return true; }
                    popup(view,current); return true;
                }
            });
        } catch(Exception e) { error("continue_bind262",e); }
    }
    static final class Bound {
        final WeakReference<View> view; final Object model; final WeakReference<Object> listener;
        final WeakReference<TextView> title; final String originalTitle;
        Bound(View v,Object m,Object l,TextView t) { view=new WeakReference<View>(v); model=m;listener=new WeakReference<Object>(l);title=new WeakReference<TextView>(t);originalTitle=cleanTitle(t.getText().toString()); }
        void paint() {
            View v=view.get();TextView t=title.get(); if(v==null||t==null)return;
            More p=page(v);boolean selected=p!=null && p.mode && p.selected.contains(text(model,"nb"));
            t.setText((selected?"✓  ":"")+(originalTitle.isEmpty()?label(model):originalTitle));
            v.setActivated(selected);
            v.setAlpha(p!=null && p.mode && !selected?0.65f:1f);
        }
    }
    static void popup(final View anchor,final Bound b) {
        final Context c=anchor.getContext();
        LinearLayout box=new LinearLayout(c);box.setOrientation(LinearLayout.VERTICAL);
        TextView arrow=new TextView(c);arrow.setText("▲");arrow.setTextColor(Color.rgb(42,42,42));arrow.setTextSize(12);arrow.setGravity(Gravity.RIGHT);arrow.setPadding(0,0,dp(c,20),0);
        box.addView(arrow,new LinearLayout.LayoutParams(-1,dp(c,14)));
        LinearLayout panel=new LinearLayout(c);panel.setOrientation(LinearLayout.VERTICAL);panel.setBackgroundColor(Color.rgb(42,42,42));box.addView(panel);
        final PopupWindow popup=new PopupWindow(box,dp(c,240),-2,true);
        popup.setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));popup.setOutsideTouchable(true);
        View info=action(c,tr("أظهر تفاصيل العمل"),android.R.drawable.ic_menu_info_details);
        View remove=action(c,tr("حذف من أكمل المشاهدة"),android.R.drawable.ic_menu_delete);
        panel.addView(info);panel.addView(remove);
        info.setOnClickListener(new View.OnClickListener(){ public void onClick(View v){popup.dismiss();openDetails(anchor,b);} });
        remove.setOnClickListener(new View.OnClickListener(){public void onClick(View v){popup.dismiss();remove(Collections.singleton(text(b.model,"nb")));}});
        anchor.performHapticFeedback(HapticFeedbackConstants.LONG_PRESS);
        popup.showAsDropDown(anchor,Math.max(0,anchor.getWidth()-dp(c,240)),0);
    }
    static View action(Context c,String title,int icon) {
        LinearLayout row=new LinearLayout(c);row.setGravity(Gravity.CENTER_VERTICAL);row.setPadding(dp(c,14),dp(c,10),dp(c,14),dp(c,10));row.setMinimumHeight(dp(c,48));
        ImageView image=new ImageView(c);image.setImageResource(icon);image.setColorFilter(Color.WHITE);row.addView(image,new LinearLayout.LayoutParams(dp(c,24),dp(c,24)));
        TextView text=new TextView(c);text.setText(title);text.setTextColor(Color.WHITE);text.setTextSize(15);text.setGravity(Gravity.RIGHT|Gravity.CENTER_VERTICAL);row.addView(text,new LinearLayout.LayoutParams(0,-2,1));return row;
    }
    static void openDetails(View anchor,Bound b) {
        try {
            Object model=b.model;
            String root=text(model,"rootSeries");
            if(!root.isEmpty() && !"0".equals(root) && !root.equals(text(model,"nb"))) {
                Parcel parcel=Parcel.obtain();
                try {
                    ((Parcelable)model).writeToParcel(parcel,0);parcel.setDataPosition(0);
                    Parcelable.Creator<?> creator=(Parcelable.Creator<?>)get(model.getClass(),"CREATOR");
                    model=creator.createFromParcel(parcel);
                    Continue106.set(model,"nb",root);
                } finally { parcel.recycle(); }
            }
            Object listener=b.listener.get();if(listener==null)throw new IllegalStateException("Missing item listener");
            details.set(Boolean.TRUE);
            try { call(listener,"a",model,anchor); } finally { details.remove(); }
        } catch(Exception e) { error("continue_details262",e);Toast.makeText(anchor.getContext(),tr("تعذر فتح تفاصيل العمل"),Toast.LENGTH_SHORT).show(); }
    }
    static void remove(Collection<String> ids) {
        try {
            // Existing removal mutes a playing session; it cannot recreate a dismissed entry on its next tick.
            for(String id:new ArrayList<String>(ids)) Continue106.removeOnly(id);
            Object home=Continue106.home==null?null:Continue106.home.get();if(home!=null)Continue106.refresh(home);
            for(More p:new ArrayList<More>(pages.values())) p.refresh();
        } catch(Exception e) { error("continue_remove262",e); }
    }
    public static boolean interceptClick(Object owner,Object model,View v) {
        if(isDetails())return false;
        More p=v==null?null:page(v);
        if(p!=null && p.mode) {p.toggle(text(model,"nb"));return true;}return false;
    }
    static View find(View v,String suffix) {
        if(v.getClass().getName().endsWith(suffix)) return v;
        if(v instanceof ViewGroup)for(int i=0;i<((ViewGroup)v).getChildCount();i++){View r=find(((ViewGroup)v).getChildAt(i),suffix);if(r!=null)return r;}
        return null;
    }
    public static void attachMore(final Object fragment) {
        try {
            Object vm=call(fragment,"c2");String title=text(vm,"l");
            if(!tr("أكمل المشاهدة").equals(title))return;
            final View root=(View)call(fragment,"getView");if(root==null||pages.containsKey(root))return;
            final More p=new More(root);pages.put(root,p);
            root.post(new Runnable(){public void run(){p.attach();}});
        } catch(Exception e) { error("continue_more_attach262",e); }
    }
    public static void detachMore(Object fragment) {
        try {View root=(View)call(fragment,"getView");More p=pages.remove(root);if(p!=null)p.detach();}
        catch(Exception e){error("continue_more_detach262",e);}
    }
    // Native fo3 also uses ConcatAdapter.f().get(0) for videos; its footer is independent.
    static Object contentAdapter(Object adapter)throws Exception {
        for(int depth=0;adapter!=null && depth<8;depth++){
            if(!"androidx.recyclerview.widget.g".equals(adapter.getClass().getName())){
                if(!(get(adapter,"a") instanceof List))throw new IllegalArgumentException("Missing video list");
                return adapter;
            }
            List<?> children=(List<?>)call(adapter,"f");adapter=children.isEmpty()?null:children.get(0);
        }
        throw new IllegalArgumentException("Missing video adapter");
    }
    public static void visibility(Object fragment,boolean active){
        try{View root=(View)call(fragment,"getView");More p=pages.get(root);if(p!=null){p.active=active;if(p.fallback!=null)p.fallback.setVisibility(active?View.VISIBLE:View.GONE);}}
        catch(Exception e){error("continue_more_visibility264",e);}
    }
    static View visibleToolbar(View root){
        if(root==null || !root.isShown())return null;
        if(root.getClass().getName().endsWith("Toolbar")){
            try{if(tr("أكمل المشاهدة").equals(String.valueOf(call(root,"getTitle"))))return root;}catch(Exception ignored){}
        }
        if(root instanceof ViewGroup)for(int i=0;i<((ViewGroup)root).getChildCount();i++){View found=visibleToolbar(((ViewGroup)root).getChildAt(i));if(found!=null)return found;}
        return null;
    }
    static final class More {
        final WeakReference<View> root;
        final LinkedHashSet<String> selected=new LinkedHashSet<String>();
        Object adapter;View recycler;LinearLayout bar;TextView count;Menu menu;ImageButton fallback;
        boolean mode,inlineAction;boolean active=true;int oldPadding;
        More(View v){root=new WeakReference<View>(v);}
        List<Object> items() {
            try {Object a=get(adapter,"a");if(a instanceof List)return new ArrayList<Object>((List<?>)a);}
            catch(Exception e){error("continue_items262",e);}return Collections.emptyList();
        }
        void attach() {
            try {
                View r=root.get();if(r==null)return;
                recycler=find(r,"RecyclerView");if(recycler==null)throw new IllegalStateException("Missing continue list");
                adapter=contentAdapter(call(recycler,"getAdapter"));oldPadding=recycler.getPaddingTop();
                View toolbar=visibleToolbar(r.getRootView());
                fallback=new ImageButton(r.getContext());fallback.setImageResource(android.R.drawable.ic_menu_delete);fallback.setColorFilter(Color.WHITE);
                fallback.setContentDescription(tr("حذف من أكمل المشاهدة"));fallback.setBackgroundColor(Color.TRANSPARENT);
                fallback.setOnClickListener(new View.OnClickListener(){public void onClick(View v){begin();}});
                if(toolbar instanceof ViewGroup) {
                    // A page-owned toolbar child survives the shared options-menu rebuild.
                    menu=(Menu)call(toolbar,"getMenu");menu.removeItem(MENU_ID);
                    ViewGroup.LayoutParams params=(ViewGroup.LayoutParams)Class.forName("androidx.appcompat.widget.Toolbar$e").getConstructor(int.class,int.class).newInstance(dp(r.getContext(),48),dp(r.getContext(),48));
                    Continue106.set(params,"a",Integer.valueOf(Gravity.LEFT|Gravity.CENTER_VERTICAL));
                    ((ViewGroup)toolbar).addView(fallback,params);
                } else {
                    inlineAction=true;fallback.setBackgroundColor(Color.rgb(30,30,30));
                    ((ViewGroup)r).addView(fallback,new ViewGroup.LayoutParams(dp(r.getContext(),48),dp(r.getContext(),48)));
                    recycler.setPadding(recycler.getPaddingLeft(),oldPadding+dp(r.getContext(),48),recycler.getPaddingRight(),recycler.getPaddingBottom());
                }
                fallback.setVisibility(active?View.VISIBLE:View.GONE);
                call(adapter,"notifyDataSetChanged");
            } catch(Exception e){error("continue_more_toolbar262",e);}
        }
        Button button(Context c,String title,View.OnClickListener l){Button b=new Button(c);b.setText(tr(title));b.setTextSize(12);b.setOnClickListener(l);return b;}
        void begin(){
            if(mode){confirm();return;}
            View r=root.get();if(!(r instanceof ViewGroup)||recycler==null)return;
            mode=true;Context c=r.getContext();bar=new LinearLayout(c);bar.setOrientation(LinearLayout.VERTICAL);bar.setBackgroundColor(Color.rgb(35,35,35));
            count=new TextView(c);count.setTextColor(Color.WHITE);count.setGravity(Gravity.CENTER);bar.addView(count);
            LinearLayout first=new LinearLayout(c);bar.addView(first);
            first.addView(button(c,"تحديد الكل",new View.OnClickListener(){public void onClick(View v){for(Object m:items())selected.add(text(m,"nb"));update();}}),new LinearLayout.LayoutParams(0,-2,1));
            first.addView(button(c,"إلغاء تحديد الكل",new View.OnClickListener(){public void onClick(View v){selected.clear();update();}}),new LinearLayout.LayoutParams(0,-2,1));
            first.addView(button(c,"تحديد عمل",new View.OnClickListener(){public void onClick(View v){chooseWork();}}),new LinearLayout.LayoutParams(0,-2,1));
            LinearLayout scopes=new LinearLayout(c);bar.addView(scopes);
            scopes.addView(button(c,"تحديد موسم",new View.OnClickListener(){public void onClick(View v){chooseScope(false);}}),new LinearLayout.LayoutParams(0,-2,1));
            scopes.addView(button(c,"تحديد نطاق",new View.OnClickListener(){public void onClick(View v){chooseScope(true);}}),new LinearLayout.LayoutParams(0,-2,1));
            LinearLayout second=new LinearLayout(c);bar.addView(second);
            second.addView(button(c,"حذف المحدد",new View.OnClickListener(){public void onClick(View v){confirm();}}),new LinearLayout.LayoutParams(0,-2,1));
            second.addView(button(c,"إلغاء",new View.OnClickListener(){public void onClick(View v){end();}}),new LinearLayout.LayoutParams(0,-2,1));
            ((ViewGroup)r).addView(bar,new ViewGroup.LayoutParams(-1,-2));bar.bringToFront();
            bar.post(new Runnable(){public void run(){if(mode)recycler.setPadding(recycler.getPaddingLeft(),oldPadding+bar.getHeight(),recycler.getPaddingRight(),recycler.getPaddingBottom());}});update();
        }
        void toggle(String id){if(!selected.remove(id))selected.add(id);update();}
        void update(){if(count!=null)count.setText(tr("المحدد")+": "+selected.size());for(Bound b:new ArrayList<Bound>(bound.values()))b.paint();}
        void chooseWork(){
            final LinkedHashMap<String,String> works=new LinkedHashMap<String,String>();for(Object m:items())works.put(work(m),label(m));
            final List<String> keys=new ArrayList<String>(works.keySet());
            new AlertDialog.Builder(root.get().getContext()).setTitle(tr("تحديد عمل")).setItems(works.values().toArray(new String[0]),new android.content.DialogInterface.OnClickListener(){public void onClick(android.content.DialogInterface d,int which){for(Object m:items())if(keys.get(which).equals(work(m)))selected.add(text(m,"nb"));update();}}).setNegativeButton(tr("إلغاء"),null).show();
        }
        void chooseScope(final boolean range){
            final LinkedHashMap<String,String> scopes=new LinkedHashMap<String,String>();
            for(Object m:items())scopes.put(work(m)+"|"+text(m,"season"),label(m)+" — "+tr("الموسم")+" "+text(m,"season"));
            final List<String> keys=new ArrayList<String>(scopes.keySet());
            new AlertDialog.Builder(root.get().getContext()).setTitle(tr("اختر العمل والموسم")).setItems(scopes.values().toArray(new String[0]),new android.content.DialogInterface.OnClickListener(){public void onClick(android.content.DialogInterface d,int which){
                final List<Object> scope=new ArrayList<Object>();for(Object m:items())if(keys.get(which).equals(work(m)+"|"+text(m,"season")))scope.add(m);
                if(!range){for(Object m:scope)selected.add(text(m,"nb"));update();return;}
                Context c=root.get().getContext();LinearLayout form=new LinearLayout(c);form.setOrientation(LinearLayout.VERTICAL);
                final EditText from=new EditText(c),to=new EditText(c);from.setInputType(2);to.setInputType(2);from.setHint(tr("من الحلقة"));to.setHint(tr("إلى الحلقة"));form.addView(from);form.addView(to);
                new AlertDialog.Builder(c).setTitle(tr("تحديد نطاق")).setView(form).setPositiveButton(tr("تحديد"),new android.content.DialogInterface.OnClickListener(){public void onClick(android.content.DialogInterface dialog,int w){
                    try{int a=Integer.parseInt(from.getText().toString()),b=Integer.parseInt(to.getText().toString());if(a<0||b<a)throw new NumberFormatException();for(Object m:scope){try{int e=Integer.parseInt(text(m,"episodeNummer"));if(e>=a&&e<=b)selected.add(text(m,"nb"));}catch(NumberFormatException skip){}}update();}
                    catch(NumberFormatException invalid){Toast.makeText(root.get().getContext(),tr("أدخل نطاق حلقات صحيحًا"),Toast.LENGTH_SHORT).show();}
                }}).setNegativeButton(tr("إلغاء"),null).show();
            }}).setNegativeButton(tr("إلغاء"),null).show();
        }
        void confirm(){
            if(selected.isEmpty())return;
            final Set<String> snapshot=new LinkedHashSet<String>(selected);
            new AlertDialog.Builder(root.get().getContext()).setTitle(tr("حذف من أكمل المشاهدة")).setMessage(tr("حذف العناصر المحددة من سجل المشاهدة؟")+" ("+snapshot.size()+")").setPositiveButton(tr("حذف"),new android.content.DialogInterface.OnClickListener(){public void onClick(android.content.DialogInterface d,int which){remove(snapshot);end();}}).setNegativeButton(tr("إلغاء"),null).show();
        }
        void refresh(){
            try {List<Object> filtered=new ArrayList<Object>();synchronized(Continue106.class){for(Object m:items())if(Continue106.entries.containsKey(text(m,"nb")))filtered.add(m);}call(adapter,"e",filtered);synchronized(Continue106.class){selected.retainAll(Continue106.entries.keySet());}update();}
            catch(Exception e){error("continue_more_refresh262",e);}
        }
        void end(){mode=false;selected.clear();View r=root.get();if(r instanceof ViewGroup && bar!=null)((ViewGroup)r).removeView(bar);bar=null;if(recycler!=null)recycler.setPadding(recycler.getPaddingLeft(),oldPadding+(inlineAction?dp(recycler.getContext(),48):0),recycler.getPaddingRight(),recycler.getPaddingBottom());update();}
        void detach(){end();if(menu!=null)menu.removeItem(MENU_ID);if(fallback!=null && fallback.getParent() instanceof ViewGroup)((ViewGroup)fallback.getParent()).removeView(fallback);fallback=null;adapter=null;recycler=null;}
    }
}
