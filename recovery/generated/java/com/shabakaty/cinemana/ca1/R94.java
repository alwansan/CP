package com.shabakaty.cinemana.ca1;

import com.liulishuo.filedownloader.BuildConfig;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes6.dex */
public final class R94 {
    public static Object get(Object obj, String str) throws Exception {
        for (Class<?> superclass = obj instanceof Class ? (Class) obj : obj.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
            try {
                Field declaredField = superclass.getDeclaredField(str);
                declaredField.setAccessible(true);
                return declaredField.get(obj instanceof Class ? null : obj);
            } catch (NoSuchFieldException e) {
            }
        }
        throw new NoSuchFieldException(str);
    }

    public static Object call(Object obj, String str, Object... objArr) throws Exception {
        boolean z = obj instanceof Class;
        for (Class<?> superclass = z ? (Class) obj : obj.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
            for (Method method : superclass.getDeclaredMethods()) {
                if (method.getName().equals(str) && method.getParameterTypes().length == objArr.length) {
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    boolean z2 = true;
                    for (int i = 0; i < parameterTypes.length; i++) {
                        Class<?> cls = parameterTypes[i];
                        if (cls.isPrimitive()) {
                            if (cls == Integer.TYPE) {
                                cls = Integer.class;
                            } else if (cls == Long.TYPE) {
                                cls = Long.class;
                            } else if (cls == Boolean.TYPE) {
                                cls = Boolean.class;
                            } else if (cls == Float.TYPE) {
                                cls = Float.class;
                            } else if (cls == Double.TYPE) {
                                cls = Double.class;
                            }
                        }
                        Object obj2 = objArr[i];
                        if (obj2 != null && !cls.isInstance(obj2)) {
                            z2 = false;
                        }
                    }
                    if (z2) {
                        method.setAccessible(true);
                        if (z) {
                            obj = null;
                        }
                        return method.invoke(obj, objArr);
                    }
                }
            }
        }
        throw new NoSuchMethodException(str);
    }

    public static Object make(String str, Object... objArr) throws Exception {
        for (Constructor<?> constructor : Class.forName(str).getDeclaredConstructors()) {
            if (constructor.getParameterTypes().length == objArr.length) {
                Class<?>[] parameterTypes = constructor.getParameterTypes();
                boolean z = true;
                for (int i = 0; i < parameterTypes.length; i++) {
                    Class<?> cls = parameterTypes[i];
                    if (cls == Integer.TYPE) {
                        cls = Integer.class;
                    }
                    if (cls == Long.TYPE) {
                        cls = Long.class;
                    }
                    Object obj = objArr[i];
                    if (obj != null && !cls.isInstance(obj)) {
                        z = false;
                    }
                }
                if (z) {
                    constructor.setAccessible(true);
                    return constructor.newInstance(objArr);
                }
            }
        }
        throw new NoSuchMethodException(str);
    }

    public static String str(Object obj, String str) {
        try {
            Object obj2 = get(obj, str);
            return obj2 == null ? BuildConfig.FLAVOR : String.valueOf(obj2);
        } catch (Exception e) {
            return BuildConfig.FLAVOR;
        }
    }
}
