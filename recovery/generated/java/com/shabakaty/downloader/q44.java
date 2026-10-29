package com.shabakaty.downloader;

import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;
import com.shabakaty.cinemana.ui.login.ShabakatyValidator;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: ShabakatyValidator.kt */
/* JADX INFO: loaded from: classes.dex */
public final class q44 {

    /* JADX INFO: compiled from: ShabakatyValidator.kt */
    public static final class a extends af2 implements tm1<Boolean, qv4> {
        public final /* synthetic */ List<Boolean> r;
        public final /* synthetic */ int s;
        public final /* synthetic */ ho3 t;
        public final /* synthetic */ tm1<Boolean, qv4> u;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(List<Boolean> list, int i, ho3 ho3Var, tm1<? super Boolean, qv4> tm1Var) {
            super(1);
            this.r = list;
            this.s = i;
            this.t = ho3Var;
            this.u = tm1Var;
        }

        @Override // com.shabakaty.downloader.tm1
        public qv4 invoke(Boolean bool) {
            boolean z;
            this.r.set(this.s, Boolean.valueOf(bool.booleanValue()));
            List<Boolean> list = this.r;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator<T> it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = true;
                        break;
                    }
                    if (!((Boolean) it.next()).booleanValue()) {
                        z = false;
                        break;
                    }
                }
            } else {
                z = true;
                break;
            }
            ho3 ho3Var = this.t;
            boolean z2 = ho3Var.r;
            if (z != z2) {
                boolean z3 = !z2;
                ho3Var.r = z3;
                this.u.invoke(Boolean.valueOf(z3));
            }
            return qv4.a;
        }
    }

    public static final boolean a(String str) {
        boolean zFind;
        boolean zFind2;
        boolean zFind3;
        if (str == null) {
            zFind = false;
        } else {
            j32.e("[a-z]+", "pattern");
            Pattern patternCompile = Pattern.compile("[a-z]+");
            j32.d(patternCompile, "compile(pattern)");
            j32.e(patternCompile, "nativePattern");
            j32.e(str, "input");
            zFind = patternCompile.matcher(str).find();
        }
        if (!zFind) {
            return false;
        }
        if (str == null) {
            zFind2 = false;
        } else {
            j32.e("[A-Z]+", "pattern");
            Pattern patternCompile2 = Pattern.compile("[A-Z]+");
            j32.d(patternCompile2, "compile(pattern)");
            j32.e(patternCompile2, "nativePattern");
            j32.e(str, "input");
            zFind2 = patternCompile2.matcher(str).find();
        }
        if (!zFind2) {
            return false;
        }
        if (str == null) {
            zFind3 = false;
        } else {
            j32.e("[0-9]", "pattern");
            Pattern patternCompile3 = Pattern.compile("[0-9]");
            j32.d(patternCompile3, "compile(pattern)");
            j32.e(patternCompile3, "nativePattern");
            j32.e(str, "input");
            zFind3 = patternCompile3.matcher(str).find();
        }
        if (zFind3) {
            return (str == null ? 0 : str.length()) > 6;
        }
        return false;
    }

    public static final j44.a b(TextInputLayout textInputLayout) {
        return new j44.a(textInputLayout);
    }

    public static final void c(ShabakatyValidator[] shabakatyValidatorArr, tm1<? super Boolean, qv4> tm1Var) {
        ArrayList arrayList = new ArrayList(shabakatyValidatorArr.length);
        int length = shabakatyValidatorArr.length;
        int i = 0;
        while (i < length) {
            ShabakatyValidator shabakatyValidator = shabakatyValidatorArr[i];
            i++;
            arrayList.add(Boolean.valueOf(shabakatyValidator.b));
        }
        List listZ0 = m50.z0(arrayList);
        ho3 ho3Var = new ho3();
        int length2 = shabakatyValidatorArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length2) {
            ShabakatyValidator shabakatyValidator2 = shabakatyValidatorArr[i2];
            i2++;
            int i4 = i3 + 1;
            a aVar = new a(listZ0, i3, ho3Var, tm1Var);
            Objects.requireNonNull(shabakatyValidator2);
            n44 n44Var = new n44(aVar, shabakatyValidator2);
            shabakatyValidator2.a.setError(null);
            shabakatyValidator2.a.setErrorEnabled(false);
            EditText editText = shabakatyValidator2.e;
            if (editText != null) {
                editText.addTextChangedListener(new o44(new ho3(), shabakatyValidator2, n44Var));
            }
            i3 = i4;
        }
    }
}
