package com.shabakaty.downloader;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.ServiceLoader;

/* JADX INFO: loaded from: classes.dex */
public class ll3 implements v37, ho5, j31 {
    public ll3(int i) {
    }

    public static List<ClassLoader> a(ClassLoader classLoader) {
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(classLoader);
        if (Thread.currentThread().getContextClassLoader() != null) {
            arrayList.add(Thread.currentThread().getContextClassLoader());
        }
        arrayList.add(ll3.class.getClassLoader());
        return arrayList;
    }

    public static <T> T f(Class<T> cls) {
        try {
            return (T) g(cls, a(cls.getClassLoader()));
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            throw new RuntimeException(e);
        }
    }

    public static <T> T g(Class<T> cls, Iterable<ClassLoader> iterable) throws NoSuchMethodException, ClassNotFoundException {
        T t;
        for (ClassLoader classLoader : iterable) {
            try {
                Constructor<?> declaredConstructor = classLoader.loadClass(cls.getName() + "Impl").getDeclaredConstructor(new Class[0]);
                declaredConstructor.setAccessible(true);
                t = (T) declaredConstructor.newInstance(new Object[0]);
            } catch (ClassNotFoundException unused) {
                Iterator it = ServiceLoader.load(cls, classLoader).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        t = null;
                        break;
                    }
                    Object next = it.next();
                    if (next != null) {
                        t = (T) next;
                        break;
                    }
                }
            } catch (IllegalAccessException e) {
                e = e;
                throw new RuntimeException(e);
            } catch (InstantiationException e2) {
                e = e2;
                throw new RuntimeException(e);
            } catch (InvocationTargetException e3) {
                e = e3;
                throw new RuntimeException(e);
            }
            if (t != null) {
                return t;
            }
        }
        StringBuilder sbA = um3.a("Cannot find implementation for ");
        sbA.append(cls.getName());
        throw new ClassNotFoundException(sbA.toString());
    }

    @Override // com.shabakaty.downloader.ho5
    public byte[] b(byte[] bArr, int i, int i2) {
        return Arrays.copyOfRange(bArr, i, i2 + i);
    }

    public String c(gg4 gg4Var) {
        j32.e(gg4Var, "level");
        return gg4Var.b;
    }

    @Override // com.shabakaty.downloader.j31
    public void d(n31 n31Var) {
        int i;
        String str = n31Var.a;
        int i2 = n31Var.f;
        int length = str.length();
        if (i2 < length) {
            char cCharAt = str.charAt(i2);
            i = 0;
            while (iq6.k(cCharAt) && i2 < length) {
                i++;
                i2++;
                if (i2 < length) {
                    cCharAt = str.charAt(i2);
                }
            }
        } else {
            i = 0;
        }
        if (i >= 2) {
            char cCharAt2 = n31Var.a.charAt(n31Var.f);
            char cCharAt3 = n31Var.a.charAt(n31Var.f + 1);
            if (!iq6.k(cCharAt2) || !iq6.k(cCharAt3)) {
                throw new IllegalArgumentException("not digits: " + cCharAt2 + cCharAt3);
            }
            n31Var.e.append((char) ((cCharAt3 - '0') + ((cCharAt2 - '0') * 10) + 130));
            n31Var.f += 2;
            return;
        }
        char cB = n31Var.b();
        int iS = iq6.s(n31Var.a, n31Var.f, 0);
        if (iS == 0) {
            if (!iq6.l(cB)) {
                n31Var.e.append((char) (cB + 1));
                n31Var.f++;
                return;
            } else {
                n31Var.e.append((char) 235);
                n31Var.e.append((char) ((cB - 128) + 1));
                n31Var.f++;
                return;
            }
        }
        if (iS == 1) {
            n31Var.e.append((char) 230);
            n31Var.g = 1;
            return;
        }
        if (iS == 2) {
            n31Var.e.append((char) 239);
            n31Var.g = 2;
            return;
        }
        if (iS == 3) {
            n31Var.e.append((char) 238);
            n31Var.g = 3;
        } else if (iS == 4) {
            n31Var.e.append((char) 240);
            n31Var.g = 4;
        } else {
            if (iS != 5) {
                throw new IllegalStateException("Illegal mode: ".concat(String.valueOf(iS)));
            }
            n31Var.e.append((char) 231);
            n31Var.g = 5;
        }
    }

    public gg4 e(String str) {
        j32.e(str, "value");
        gg4 gg4VarH = FontImportStore.h(str);
        if (gg4VarH != null) {
            return gg4VarH;
        }
        gg4 gg4Var = gg4.c;
        gg4.b bVar = gg4.b.e;
        if (j32.a(str, "fonts/almarai_regular.ttf")) {
            return bVar;
        }
        gg4.a aVar = gg4.a.e;
        if (j32.a(str, "fonts/almarai_bold.ttf")) {
            return aVar;
        }
        gg4.k kVar = gg4.k.e;
        if (j32.a(str, "fonts/helveticaneueltarabic-bold.ttf")) {
            return kVar;
        }
        gg4.p pVar = gg4.p.e;
        if (j32.a(str, "fonts/TheSans-Bold.otf")) {
            return pVar;
        }
        gg4.h hVar = gg4.h.e;
        if (j32.a(str, "fonts/Dubai-Bold.otf")) {
            return hVar;
        }
        gg4.s sVar = gg4.s.e;
        if (j32.a(str, "fonts/UniversNextArabic-Regular.ttf")) {
            return sVar;
        }
        gg4.m mVar = gg4.m.e;
        if (j32.a(str, "fonts/makkah.otf")) {
            return mVar;
        }
        gg4.d dVar = gg4.d.e;
        if (j32.a(str, "fonts/Bahij Muna-Regular.ttf")) {
            return dVar;
        }
        gg4.e eVar = gg4.e.e;
        if (j32.a(str, "fonts/Bahij TheSansArabic-Plain.ttf")) {
            return eVar;
        }
        gg4.g gVar = gg4.g.e;
        if (j32.a(str, "fonts/dinnextltarabic-light.ttf")) {
            return gVar;
        }
        gg4.i iVar = gg4.i.e;
        if (j32.a(str, "fonts/FrutigerLTArabic-55Roman.ttf")) {
            return iVar;
        }
        gg4.j jVar = gg4.j.e;
        if (j32.a(str, "fonts/Hacen Typographer Md.ttf")) {
            return jVar;
        }
        gg4.l lVar = gg4.l.e;
        if (j32.a(str, "fonts/KacstLetter.ttf")) {
            return lVar;
        }
        gg4.n nVar = gg4.n.e;
        if (j32.a(str, "fonts/PF Din Text Arabic Medium.otf")) {
            return nVar;
        }
        gg4.o oVar = gg4.o.e;
        if (j32.a(str, "fonts/PalatinoLTArabic-Regular.ttf")) {
            return oVar;
        }
        gg4.q qVar = gg4.q.e;
        if (j32.a(str, "fonts/timeburner_regular.ttf")) {
            return qVar;
        }
        return j32.a(str, "fonts/trado.ttf") ? gg4.r.e : gg4.c.e;
    }
}
