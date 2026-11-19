package cp.probe;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Parcel;
import android.os.Parcelable;
import java.lang.reflect.*;
import java.util.Arrays;

/** Tests actual relocated minified classes, with no copy of their implementation. */
public final class ParcelRoundTrip {
    private static final String P="com.alwansan.cinemana.uiisolated.";
    private static final String Q=P+"parcel.";
    private static final byte[] DATA={11,22,33,44,55,66};
    private static final int TINT=0xff123456;
    private static Class<?> icon, action, wrapper, base, concrete, model;
    private static Constructor<?> parcelConstructor;
    private static Method write;
    private static Field wrapped;
    private static Parcelable.Creator<?> creator;
    private static int checks;
    private static void require(boolean ok,String msg) {
        if(!ok) throw new AssertionError(msg);
        checks++;
    }
    private static Class<?> load(String n) throws Exception {
        return Class.forName(n,true,ParcelRoundTrip.class.getClassLoader());
    }
    private static Field field(Class<?> t,String n,Class<?> expected) throws Exception {
        Field f=t.getDeclaredField(n);
        require(f.getType()==expected,t.getName()+"."+n+" type mismatch");
        f.setAccessible(true);
        return f;
    }
    private static Object create(Class<?> t) throws Exception {
        Constructor<?> c=t.getDeclaredConstructor();
        c.setAccessible(true);
        return c.newInstance();
    }
    private static Object newIcon() throws Exception {
        Object o=create(icon);
        field(icon,"a",int.class).setInt(o,3);
        field(icon,"b",Object.class).set(o,DATA.clone());
        field(icon,"e",int.class).setInt(o,1);
        field(icon,"f",int.class).setInt(o,4);
        field(icon,"g",ColorStateList.class).set(o,ColorStateList.valueOf(TINT));
        field(icon,"h",PorterDuff.Mode.class).set(o,PorterDuff.Mode.SRC_IN);
        return o;
    }
    private static void verifyIcon(Object o) throws Exception {
        require(o!=null && o.getClass()==icon,"wrong icon class");
        require(field(icon,"a",int.class).getInt(o)==3,"icon type");
        require(Arrays.equals((byte[])field(icon,"b",Object.class).get(o),DATA),"icon bytes");
        require(field(icon,"e",int.class).getInt(o)==1,"icon offset");
        require(field(icon,"f",int.class).getInt(o)==4,"icon length");
        require(((ColorStateList)field(icon,"g",ColorStateList.class).get(o)).getDefaultColor()==TINT,"icon tint");
        require(field(icon,"h",PorterDuff.Mode.class).get(o)==PorterDuff.Mode.SRC_IN,"icon tint mode");
    }
    private static Object newAction(boolean enabled, boolean show) throws Exception {
        Object o=create(action);
        field(action,"a",icon).set(o,newIcon());
        field(action,"b",CharSequence.class).set(o,"CP synthetic title");
        field(action,"c",CharSequence.class).set(o,"CP synthetic description");
        field(action,"d",android.app.PendingIntent.class).set(o,null);
        field(action,"e",boolean.class).setBoolean(o,enabled);
        field(action,"f",boolean.class).setBoolean(o,show);
        return o;
    }
    private static void verifyAction(Object o,boolean enabled,boolean show) throws Exception {
        require(o!=null && o.getClass()==action,"wrong action class");
        verifyIcon(field(action,"a",icon).get(o));
        require("CP synthetic title".contentEquals((CharSequence)field(action,"b",CharSequence.class).get(o)),"title");
        require("CP synthetic description".contentEquals((CharSequence)field(action,"c",CharSequence.class).get(o)),"description");
        require(field(action,"d",android.app.PendingIntent.class).get(o)==null,"null pending intent");
        require(field(action,"e",boolean.class).getBoolean(o)==enabled,"enabled");
        require(field(action,"f",boolean.class).getBoolean(o)==show,"show icon");
    }
    private static Object unwrap(Parcel p) throws Exception {
        p.setDataPosition(0);
        Object w=creator.createFromParcel(p);
        require(w.getClass()==wrapper,"wrong ParcelImpl");
        return wrapped.get(w);
    }
    private static Object roundTrip(Object input,String name,String alias) throws Exception {
        Parcel p=Parcel.obtain(), q=Parcel.obtain(), retry=Parcel.obtain();
        try {
            Object writer=parcelConstructor.newInstance(p);
            write.invoke(writer,input);
            require(p.dataSize()>0 && p.dataSize()<65536,"parcel size");
            p.setDataPosition(0);
            require(name.equals(p.readString()),"writer emitted incorrect reflective parcelizer name");
            int body=p.dataPosition();
            // Preserve the exact serialized field body, change only the root name
            // to the relocated legacy alias. This tests its real reflective read.
            q.writeString(alias);
            q.appendFrom(p,body,p.dataSize()-body);
            Object aliased=unwrap(q);
            p.setDataPosition(0);
            Object w=creator.createFromParcel(p);
            require(w.getClass()==wrapper,"wrong wrapper");
            Object normal=wrapped.get(w);
            require(normal!=aliased,"objects were reused");
            ((Parcelable)w).writeToParcel(retry,0);
            retry.setDataPosition(0);
            require(name.equals(retry.readString()),"ParcelImpl write emitted incorrect name");
            Object twice=unwrap(retry);
            if(input.getClass()==icon) {
                verifyIcon(aliased);verifyIcon(normal);verifyIcon(twice);
            } else {
                boolean e=field(action,"e",boolean.class).getBoolean(input);
                boolean f=field(action,"f",boolean.class).getBoolean(input);
                verifyAction(aliased,e,f);verifyAction(normal,e,f);verifyAction(twice,e,f);
            }
            return twice;
        } finally { p.recycle();q.recycle();retry.recycle(); }
    }
    public static void main(String[] args) throws Exception {
        // Exact names/fields corroborated by the verified stable R8 mapping.
        // Any future mapping drift must fail explicitly, not guess an overload.
        icon=load(Q+"core.drawable.IconCompat");
        action=load(Q+"core.app.RemoteActionCompat");
        wrapper=load(Q+"versioned.ParcelImpl");
        base=load(P+"mE");concrete=load(P+"nE");model=load(P+"oE");
        require(model.isAssignableFrom(icon)&&model.isAssignableFrom(action),"model ABI");
        require(base.isAssignableFrom(concrete),"parcel ABI");
        require(Parcelable.class.isAssignableFrom(wrapper),"wrapper ABI");
        parcelConstructor=concrete.getDeclaredConstructor(Parcel.class);
        parcelConstructor.setAccessible(true);
        write=base.getDeclaredMethod("i",model);
        require(write.getReturnType()==void.class,"write return type");
        write.setAccessible(true);
        wrapped=field(wrapper,"d",model);
        Field cf=wrapper.getDeclaredField("CREATOR");cf.setAccessible(true);
        creator=(Parcelable.Creator<?>)cf.get(null);
        require(creator!=null,"creator missing");
        for(String[] names:new String[][]{
            {"core.drawable.IconCompat","legacy.drawable.IconCompatParcelizer"},
            {"core.app.RemoteActionCompat","legacy.app.RemoteActionCompatParcelizer"}}) {
            Class<?> m=load(Q+names[0]);
            for(String name:new String[]{Q+names[0]+"Parcelizer",Q+names[1]}) {
                Class<?> p=load(name);
                Method r=p.getDeclaredMethod("read",base), w=p.getDeclaredMethod("write",m,base);
                require(Modifier.isStatic(r.getModifiers())&&r.getReturnType()==m,"read ABI "+name);
                require(Modifier.isStatic(w.getModifiers())&&w.getReturnType()==void.class,"write ABI "+name);
            }
        }
        roundTrip(newIcon(),Q+"core.drawable.IconCompatParcelizer",Q+"legacy.drawable.IconCompatParcelizer");
        for(boolean e:new boolean[]{false,true}) for(boolean f:new boolean[]{false,true})
            roundTrip(newAction(e,f),Q+"core.app.RemoteActionCompatParcelizer",Q+"legacy.app.RemoteActionCompatParcelizer");
        System.out.println("CP_RELOCATED_PARCEL_ROUNDTRIP_PASS checks="+checks+" cases=5 aliases=2");
    }
}
