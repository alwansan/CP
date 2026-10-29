package com.shabakaty.downloader;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import dalvik.system.BaseDexClassLoader;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.StringTokenizer;

/* JADX INFO: compiled from: MultiDex.java */
/* JADX INFO: loaded from: classes.dex */
public final class jv2 {
    public static final Set<File> a = new HashSet();
    public static final boolean b;

    static {
        String property = System.getProperty("java.vm.version");
        boolean z = false;
        if (property != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(property, ".");
            String strNextToken = stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : null;
            String strNextToken2 = stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : null;
            if (strNextToken != null && strNextToken2 != null) {
                try {
                    int i = Integer.parseInt(strNextToken);
                    int i2 = Integer.parseInt(strNextToken2);
                    if (i > 2 || (i == 2 && i2 >= 1)) {
                        z = true;
                    }
                } catch (NumberFormatException unused) {
                }
            }
        }
        StringBuilder sbA = vf3.a("VM with version ", property);
        sbA.append(z ? " has multidex support" : " does not have multidex support");
        Log.i("MultiDex", sbA.toString());
        b = z;
    }

    public static void a(Object obj, String str, Object[] objArr) throws IllegalAccessException, NoSuchFieldException {
        Field fieldD = d(obj, str);
        Object[] objArr2 = (Object[]) fieldD.get(obj);
        Object[] objArr3 = (Object[]) Array.newInstance(objArr2.getClass().getComponentType(), objArr2.length + objArr.length);
        System.arraycopy(objArr2, 0, objArr3, 0, objArr2.length);
        System.arraycopy(objArr, 0, objArr3, objArr2.length, objArr.length);
        fieldD.set(obj, objArr3);
    }

    public static void b(Context context) {
        File file = new File(context.getFilesDir(), "secondary-dexes");
        if (file.isDirectory()) {
            StringBuilder sbA = um3.a("Clearing old secondary dex dir (");
            sbA.append(file.getPath());
            sbA.append(").");
            Log.i("MultiDex", sbA.toString());
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                StringBuilder sbA2 = um3.a("Failed to list secondary dex dir content (");
                sbA2.append(file.getPath());
                sbA2.append(").");
                Log.w("MultiDex", sbA2.toString());
                return;
            }
            for (File file2 : fileArrListFiles) {
                StringBuilder sbA3 = um3.a("Trying to delete old file ");
                sbA3.append(file2.getPath());
                sbA3.append(" of size ");
                sbA3.append(file2.length());
                Log.i("MultiDex", sbA3.toString());
                if (file2.delete()) {
                    StringBuilder sbA4 = um3.a("Deleted old file ");
                    sbA4.append(file2.getPath());
                    Log.i("MultiDex", sbA4.toString());
                } else {
                    StringBuilder sbA5 = um3.a("Failed to delete old file ");
                    sbA5.append(file2.getPath());
                    Log.w("MultiDex", sbA5.toString());
                }
            }
            if (file.delete()) {
                StringBuilder sbA6 = um3.a("Deleted old secondary dex dir ");
                sbA6.append(file.getPath());
                Log.i("MultiDex", sbA6.toString());
            } else {
                StringBuilder sbA7 = um3.a("Failed to delete secondary dex dir ");
                sbA7.append(file.getPath());
                Log.w("MultiDex", sbA7.toString());
            }
        }
    }

    public static void c(Context context, File file, File file2, String str, String str2, boolean z) {
        ClassLoader classLoader;
        Set<File> set = a;
        synchronized (set) {
            if (((HashSet) set).contains(file)) {
                return;
            }
            ((HashSet) set).add(file);
            Log.w("MultiDex", "MultiDex is not guaranteed to work in SDK version " + Build.VERSION.SDK_INT + ": SDK version higher than 20 should be backed by runtime with built-in multidex capabilty but it's not the case here: java.vm.version=\"" + System.getProperty("java.vm.version") + "\"");
            IOException e = null;
            try {
                classLoader = context.getClassLoader();
                if (!(classLoader instanceof BaseDexClassLoader)) {
                    Log.e("MultiDex", "Context class loader is null or not dex-capable. Must be running in test mode. Skip patching.");
                    classLoader = null;
                }
            } catch (RuntimeException e2) {
                Log.w("MultiDex", "Failure while trying to obtain Context class loader. Must be running in test mode. Skip patching.", e2);
            }
            if (classLoader == null) {
                return;
            }
            try {
                b(context);
            } catch (Throwable th) {
                Log.w("MultiDex", "Something went wrong when trying to clear old MultiDex extraction, continuing without cleaning.", th);
            }
            File file3 = new File(file2, "code_cache");
            try {
                f(file3);
            } catch (IOException unused) {
                file3 = new File(context.getFilesDir(), "code_cache");
                f(file3);
            }
            File file4 = new File(file3, str);
            f(file4);
            lv2 lv2Var = new lv2(file, file4);
            try {
                try {
                    e(classLoader, file4, lv2Var.e(context, str2, false));
                } catch (IOException e3) {
                    if (!z) {
                        throw e3;
                    }
                    Log.w("MultiDex", "Failed to install extracted secondary dex files, retrying with forced extraction", e3);
                    e(classLoader, file4, lv2Var.e(context, str2, true));
                }
                try {
                    lv2Var.close();
                } catch (IOException e4) {
                    e = e4;
                }
                if (e != null) {
                    throw e;
                }
            } catch (Throwable th2) {
                try {
                    lv2Var.close();
                } catch (IOException unused2) {
                }
                throw th2;
            }
        }
    }

    public static Field d(Object obj, String str) throws NoSuchFieldException {
        for (Class<?> superclass = obj.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
            try {
                Field declaredField = superclass.getDeclaredField(str);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                return declaredField;
            } catch (NoSuchFieldException unused) {
            }
        }
        StringBuilder sbA = t3.a("Field ", str, " not found in ");
        sbA.append(obj.getClass());
        throw new NoSuchFieldException(sbA.toString());
    }

    public static void e(ClassLoader classLoader, File file, List<? extends File> list) throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, IOException {
        Method declaredMethod;
        IOException[] iOExceptionArr;
        if (list.isEmpty()) {
            return;
        }
        Object obj = d(classLoader, "pathList").get(classLoader);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(list);
        Class<?>[] clsArr = {ArrayList.class, File.class, ArrayList.class};
        Class<?> superclass = obj.getClass();
        while (true) {
            if (superclass == null) {
                StringBuilder sbA = t3.a("Method ", "makeDexElements", " with parameters ");
                sbA.append(Arrays.asList(clsArr));
                sbA.append(" not found in ");
                sbA.append(obj.getClass());
                throw new NoSuchMethodException(sbA.toString());
            }
            try {
                declaredMethod = superclass.getDeclaredMethod("makeDexElements", clsArr);
                if (!declaredMethod.isAccessible()) {
                    declaredMethod.setAccessible(true);
                    break;
                }
                break;
            } catch (NoSuchMethodException unused) {
                superclass = superclass.getSuperclass();
            }
        }
        a(obj, "dexElements", (Object[]) declaredMethod.invoke(obj, arrayList2, file, arrayList));
        if (arrayList.size() > 0) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Log.w("MultiDex", "Exception in makeDexElement", (IOException) it.next());
            }
            Field fieldD = d(obj, "dexElementsSuppressedExceptions");
            IOException[] iOExceptionArr2 = (IOException[]) fieldD.get(obj);
            if (iOExceptionArr2 == null) {
                iOExceptionArr = (IOException[]) arrayList.toArray(new IOException[arrayList.size()]);
            } else {
                IOException[] iOExceptionArr3 = new IOException[arrayList.size() + iOExceptionArr2.length];
                arrayList.toArray(iOExceptionArr3);
                System.arraycopy(iOExceptionArr2, 0, iOExceptionArr3, arrayList.size(), iOExceptionArr2.length);
                iOExceptionArr = iOExceptionArr3;
            }
            fieldD.set(obj, iOExceptionArr);
            IOException iOException = new IOException("I/O exception during makeDexElement");
            iOException.initCause((Throwable) arrayList.get(0));
            throw iOException;
        }
    }

    public static void f(File file) throws IOException {
        file.mkdir();
        if (file.isDirectory()) {
            return;
        }
        File parentFile = file.getParentFile();
        if (parentFile == null) {
            StringBuilder sbA = um3.a("Failed to create dir ");
            sbA.append(file.getPath());
            sbA.append(". Parent file is null.");
            Log.e("MultiDex", sbA.toString());
        } else {
            StringBuilder sbA2 = um3.a("Failed to create dir ");
            sbA2.append(file.getPath());
            sbA2.append(". parent file is a dir ");
            sbA2.append(parentFile.isDirectory());
            sbA2.append(", a file ");
            sbA2.append(parentFile.isFile());
            sbA2.append(", exists ");
            sbA2.append(parentFile.exists());
            sbA2.append(", readable ");
            sbA2.append(parentFile.canRead());
            sbA2.append(", writable ");
            sbA2.append(parentFile.canWrite());
            Log.e("MultiDex", sbA2.toString());
        }
        StringBuilder sbA3 = um3.a("Failed to create directory ");
        sbA3.append(file.getPath());
        throw new IOException(sbA3.toString());
    }
}
