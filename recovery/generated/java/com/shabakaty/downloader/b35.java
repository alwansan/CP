package com.shabakaty.downloader;

import android.content.res.Resources;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.cinemana.pro.R;
import com.google.android.material.button.MaterialButton;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: compiled from: VideosLayoutBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class b35 extends a35 {
    public long c0;

    /* JADX WARN: Illegal instructions before constructor call */
    public b35(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 4, null, null);
        super(gl0Var, view, 2, (MaterialButton) objArrS[3], (RecyclerView) objArrS[2], (TextView) objArrS[1]);
        this.c0 = -1L;
        ((ConstraintLayout) objArrS[0]).setTag(null);
        this.M.setTag(null);
        this.N.setTag(null);
        this.O.setTag(null);
        view.setTag(R.id.dataBinding, this);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (18 == i) {
            L((rm1) obj);
        } else if (37 == i) {
            xv2<tj<List<VideoModel>>> xv2Var = (xv2) obj;
            E(0, xv2Var);
            this.V = xv2Var;
            synchronized (this) {
                this.c0 |= 1;
            }
            f(37);
            x();
        } else if (31 == i) {
            xv2<String> xv2Var2 = (xv2) obj;
            E(1, xv2Var2);
            this.X = xv2Var2;
            synchronized (this) {
                this.c0 |= 2;
            }
            f(31);
            x();
        } else if (32 == i) {
            N((Boolean) obj);
        } else if (25 == i) {
            this.R = (Integer) obj;
            synchronized (this) {
                this.c0 |= 16;
            }
            f(25);
            x();
        } else if (1 == i) {
            G((Boolean) obj);
        } else if (4 == i) {
            H((Boolean) obj);
        } else if (2 == i) {
            this.T = (RecyclerView.e) obj;
            synchronized (this) {
                this.c0 |= 128;
            }
            f(2);
            x();
        } else if (36 == i) {
            P((List) obj);
        } else if (9 == i) {
            this.Q = (rm1) obj;
            synchronized (this) {
                this.c0 |= 512;
            }
            f(9);
            x();
        } else if (16 == i) {
            J((qk) obj);
        } else if (12 == i) {
            I((Integer) obj);
        } else {
            if (30 != i) {
                return false;
            }
            M((String) obj);
        }
        return true;
    }

    @Override // com.shabakaty.downloader.a35
    public void G(Boolean bool) {
        this.b0 = bool;
        synchronized (this) {
            this.c0 |= 32;
        }
        f(1);
        x();
    }

    @Override // com.shabakaty.downloader.a35
    public void H(Boolean bool) {
        this.Z = bool;
        synchronized (this) {
            this.c0 |= 64;
        }
        f(4);
        x();
    }

    @Override // com.shabakaty.downloader.a35
    public void I(Integer num) {
        this.S = num;
        synchronized (this) {
            this.c0 |= 2048;
        }
        f(12);
        x();
    }

    @Override // com.shabakaty.downloader.a35
    public void J(qk qkVar) {
        this.Y = qkVar;
        synchronized (this) {
            this.c0 |= 1024;
        }
        f(16);
        x();
    }

    @Override // com.shabakaty.downloader.a35
    public void L(rm1<qv4> rm1Var) {
        this.P = rm1Var;
        synchronized (this) {
            this.c0 |= 4;
        }
        f(18);
        x();
    }

    @Override // com.shabakaty.downloader.a35
    public void M(String str) {
        this.W = str;
        synchronized (this) {
            this.c0 |= 4096;
        }
        f(30);
        x();
    }

    @Override // com.shabakaty.downloader.a35
    public void N(Boolean bool) {
        this.a0 = bool;
        synchronized (this) {
            this.c0 |= 8;
        }
        f(32);
        x();
    }

    @Override // com.shabakaty.downloader.a35
    public void P(List<VideoModel> list) {
        this.U = list;
        synchronized (this) {
            this.c0 |= 256;
        }
        f(36);
        x();
    }

    /* JADX WARN: Code duplicated, block: B:100:0x016f  */
    /* JADX WARN: Code duplicated, block: B:103:0x017e  */
    /* JADX WARN: Code duplicated, block: B:105:0x0184  */
    /* JADX WARN: Code duplicated, block: B:106:0x0187  */
    /* JADX WARN: Code duplicated, block: B:108:0x018b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:109:0x018d  */
    /* JADX WARN: Code duplicated, block: B:110:0x0193  */
    /* JADX WARN: Code duplicated, block: B:112:0x019b  */
    /* JADX WARN: Code duplicated, block: B:116:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:118:0x01b2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:119:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:120:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:124:0x01c5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:125:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:126:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:129:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:130:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:131:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:134:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:136:0x01f1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:137:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:138:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:141:0x0203 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:142:0x0205  */
    /* JADX WARN: Code duplicated, block: B:143:0x020b  */
    /* JADX WARN: Code duplicated, block: B:147:0x021a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:148:0x021c  */
    /* JADX WARN: Code duplicated, block: B:149:0x0228  */
    /* JADX WARN: Code duplicated, block: B:151:0x023a  */
    /* JADX WARN: Code duplicated, block: B:152:0x023e  */
    /* JADX WARN: Code duplicated, block: B:155:0x024c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:156:0x024e  */
    /* JADX WARN: Code duplicated, block: B:157:0x0251  */
    /* JADX WARN: Code duplicated, block: B:159:0x0255 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:160:0x0257  */
    /* JADX WARN: Code duplicated, block: B:161:0x025a  */
    /* JADX WARN: Code duplicated, block: B:162:0x025f  */
    /* JADX WARN: Code duplicated, block: B:165:0x0269 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:166:0x026b  */
    /* JADX WARN: Code duplicated, block: B:167:0x026e  */
    /* JADX WARN: Code duplicated, block: B:169:0x0272 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:170:0x0274  */
    /* JADX WARN: Code duplicated, block: B:171:0x027a  */
    /* JADX WARN: Code duplicated, block: B:173:0x0282  */
    /* JADX WARN: Code duplicated, block: B:176:0x028f  */
    /* JADX WARN: Code duplicated, block: B:178:0x0295 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:179:0x0297  */
    /* JADX WARN: Code duplicated, block: B:180:0x029d  */
    /* JADX WARN: Code duplicated, block: B:182:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:185:0x02ac A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:187:0x02af  */
    /* JADX WARN: Code duplicated, block: B:188:0x02b4  */
    /* JADX WARN: Code duplicated, block: B:191:0x02bc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:192:0x02be  */
    /* JADX WARN: Code duplicated, block: B:193:0x02c0  */
    /* JADX WARN: Code duplicated, block: B:196:0x02c7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:197:0x02c9  */
    /* JADX WARN: Code duplicated, block: B:198:0x02cb  */
    /* JADX WARN: Code duplicated, block: B:201:0x02d2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:202:0x02d4  */
    /* JADX WARN: Code duplicated, block: B:203:0x02e2  */
    /* JADX WARN: Code duplicated, block: B:206:0x02f0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:207:0x02f2  */
    /* JADX WARN: Code duplicated, block: B:209:0x02fc  */
    /* JADX WARN: Code duplicated, block: B:210:0x02ff  */
    /* JADX WARN: Code duplicated, block: B:213:0x0307 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:214:0x0309  */
    /* JADX WARN: Code duplicated, block: B:215:0x030c  */
    /* JADX WARN: Code duplicated, block: B:218:0x0314  */
    /* JADX WARN: Code duplicated, block: B:220:0x031e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:221:0x0320  */
    /* JADX WARN: Code duplicated, block: B:222:0x0324  */
    /* JADX WARN: Code duplicated, block: B:226:0x032f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:227:0x0331  */
    /* JADX WARN: Code duplicated, block: B:228:0x0335  */
    /* JADX WARN: Code duplicated, block: B:231:0x033c  */
    /* JADX WARN: Code duplicated, block: B:232:0x033e  */
    /* JADX WARN: Code duplicated, block: B:233:0x0340  */
    /* JADX WARN: Code duplicated, block: B:236:0x0349 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:237:0x034b  */
    /* JADX WARN: Code duplicated, block: B:238:0x0350  */
    /* JADX WARN: Code duplicated, block: B:240:0x0354 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:241:0x0356  */
    /* JADX WARN: Code duplicated, block: B:242:0x035a  */
    /* JADX WARN: Code duplicated, block: B:244:0x035f  */
    /* JADX WARN: Code duplicated, block: B:247:0x0369 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:249:0x036c  */
    /* JADX WARN: Code duplicated, block: B:252:0x0373 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:254:0x0376  */
    /* JADX WARN: Code duplicated, block: B:255:0x037b  */
    /* JADX WARN: Code duplicated, block: B:258:0x0384 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:260:0x0388  */
    /* JADX WARN: Code duplicated, block: B:263:0x038f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:264:0x0391  */
    /* JADX WARN: Code duplicated, block: B:265:0x0393  */
    /* JADX WARN: Code duplicated, block: B:268:0x039a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:270:0x039d  */
    /* JADX WARN: Code duplicated, block: B:272:0x03a0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:273:0x03a2  */
    /* JADX WARN: Code duplicated, block: B:274:0x03a5  */
    /* JADX WARN: Code duplicated, block: B:276:0x03aa  */
    /* JADX WARN: Code duplicated, block: B:279:0x03b5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:280:0x03b7  */
    /* JADX WARN: Code duplicated, block: B:282:0x03c1  */
    /* JADX WARN: Code duplicated, block: B:283:0x03c4  */
    /* JADX WARN: Code duplicated, block: B:286:0x03cc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:287:0x03ce  */
    /* JADX WARN: Code duplicated, block: B:288:0x03d1  */
    /* JADX WARN: Code duplicated, block: B:291:0x03db A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:292:0x03dd  */
    /* JADX WARN: Code duplicated, block: B:294:0x03e4  */
    /* JADX WARN: Code duplicated, block: B:295:0x03e7  */
    /* JADX WARN: Code duplicated, block: B:298:0x03f1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:299:0x03f3  */
    /* JADX WARN: Code duplicated, block: B:300:0x03f7  */
    /* JADX WARN: Code duplicated, block: B:304:0x0404 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:305:0x0406  */
    /* JADX WARN: Code duplicated, block: B:306:0x0408  */
    /* JADX WARN: Code duplicated, block: B:308:0x040c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:309:0x040e  */
    /* JADX WARN: Code duplicated, block: B:310:0x0414  */
    /* JADX WARN: Code duplicated, block: B:312:0x041c  */
    /* JADX WARN: Code duplicated, block: B:315:0x042a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:316:0x042c  */
    /* JADX WARN: Code duplicated, block: B:319:0x043d A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:321:0x0444  */
    /* JADX WARN: Code duplicated, block: B:325:0x044d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:326:0x044f  */
    /* JADX WARN: Code duplicated, block: B:327:0x0451  */
    /* JADX WARN: Code duplicated, block: B:330:0x045a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:331:0x045c  */
    /* JADX WARN: Code duplicated, block: B:333:0x045f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:334:0x0461  */
    /* JADX WARN: Code duplicated, block: B:335:0x0464  */
    /* JADX WARN: Code duplicated, block: B:336:0x0469  */
    /* JADX WARN: Code duplicated, block: B:339:0x0472 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:340:0x0474  */
    /* JADX WARN: Code duplicated, block: B:341:0x0476  */
    /* JADX WARN: Code duplicated, block: B:343:0x0479 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:344:0x047b  */
    /* JADX WARN: Code duplicated, block: B:345:0x047f  */
    /* JADX WARN: Code duplicated, block: B:347:0x0485  */
    /* JADX WARN: Code duplicated, block: B:350:0x0491 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:352:0x0498  */
    /* JADX WARN: Code duplicated, block: B:355:0x049f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:357:0x04a2  */
    /* JADX WARN: Code duplicated, block: B:358:0x04a5  */
    /* JADX WARN: Code duplicated, block: B:361:0x04af A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:363:0x04b2  */
    /* JADX WARN: Code duplicated, block: B:365:0x04b6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:366:0x04b8  */
    /* JADX WARN: Code duplicated, block: B:367:0x04bc  */
    /* JADX WARN: Code duplicated, block: B:370:0x04c3  */
    /* JADX WARN: Code duplicated, block: B:371:0x04c6 A[PHI: r2
      0x04c6: PHI (r2v23 long) = (r2v22 long), (r2v27 long) binds: [B:360:0x04ad, B:369:0x04c1] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:374:0x04cf A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:375:0x04d1  */
    /* JADX WARN: Code duplicated, block: B:376:0x04d4  */
    /* JADX WARN: Code duplicated, block: B:377:0x04d6  */
    /* JADX WARN: Code duplicated, block: B:380:0x04dd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:381:0x04df  */
    /* JADX WARN: Code duplicated, block: B:382:0x04e2  */
    /* JADX WARN: Code duplicated, block: B:384:0x04e7  */
    /* JADX WARN: Code duplicated, block: B:386:0x04ea  */
    /* JADX WARN: Code duplicated, block: B:389:0x04f7  */
    /* JADX WARN: Code duplicated, block: B:392:0x0502  */
    /* JADX WARN: Code duplicated, block: B:395:0x051b  */
    /* JADX WARN: Code duplicated, block: B:400:0x052f  */
    /* JADX WARN: Code duplicated, block: B:403:0x053b  */
    /* JADX WARN: Code duplicated, block: B:406:0x054b  */
    /* JADX WARN: Code duplicated, block: B:409:0x055b  */
    /* JADX WARN: Code duplicated, block: B:412:0x0565  */
    /* JADX WARN: Code duplicated, block: B:417:0x0577  */
    /* JADX WARN: Code duplicated, block: B:419:0x0586  */
    /* JADX WARN: Code duplicated, block: B:420:0x0589  */
    /* JADX WARN: Code duplicated, block: B:423:0x058d  */
    /* JADX WARN: Code duplicated, block: B:430:0x05a2  */
    /* JADX WARN: Code duplicated, block: B:432:0x05b1  */
    /* JADX WARN: Code duplicated, block: B:433:0x05b4  */
    /* JADX WARN: Code duplicated, block: B:437:0x05c7  */
    /* JADX WARN: Code duplicated, block: B:439:0x05d3  */
    /* JADX WARN: Code duplicated, block: B:446:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x00f8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:64:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:65:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:67:0x0101 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:68:0x0103  */
    /* JADX WARN: Code duplicated, block: B:69:0x0106  */
    /* JADX WARN: Code duplicated, block: B:70:0x010c  */
    /* JADX WARN: Code duplicated, block: B:73:0x0118 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:74:0x011a  */
    /* JADX WARN: Code duplicated, block: B:75:0x011d  */
    /* JADX WARN: Code duplicated, block: B:77:0x0121 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:78:0x0123  */
    /* JADX WARN: Code duplicated, block: B:79:0x0127  */
    /* JADX WARN: Code duplicated, block: B:81:0x012d  */
    /* JADX WARN: Code duplicated, block: B:84:0x013b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:85:0x013d  */
    /* JADX WARN: Code duplicated, block: B:86:0x0140  */
    /* JADX WARN: Code duplicated, block: B:88:0x0144 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:89:0x0146  */
    /* JADX WARN: Code duplicated, block: B:90:0x014b  */
    /* JADX WARN: Code duplicated, block: B:91:0x014e  */
    /* JADX WARN: Code duplicated, block: B:94:0x0161 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:95:0x0163  */
    /* JADX WARN: Code duplicated, block: B:96:0x0166  */
    /* JADX WARN: Code duplicated, block: B:98:0x016a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:99:0x016c  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v32, types: [android.view.ViewGroup, androidx.recyclerview.widget.RecyclerView] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4, types: [int] */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        rm1<qv4> rm1Var;
        tj<List<VideoModel>> value;
        List<VideoModel> list;
        boolean z;
        boolean z2;
        String value2;
        boolean z3;
        boolean zIsEmpty;
        long j2;
        boolean z4;
        long j3;
        boolean z5;
        long j4;
        boolean z6;
        long j5;
        boolean z7;
        boolean z8;
        long j6;
        int iIntValue;
        tj<List<VideoModel>> value3;
        String string;
        boolean zA;
        long j7;
        boolean z9;
        long j8;
        boolean z10;
        long j9;
        boolean z11;
        int r10;
        int iIntValue2;
        long j10;
        boolean zIsEmpty2;
        boolean z12;
        long j11;
        tj<List<VideoModel>> tjVar;
        long j12;
        boolean z13;
        long j13;
        boolean zIsEmpty3;
        long j14;
        long j15;
        boolean z14;
        boolean zIsEmpty4;
        long j16;
        int i;
        long j17;
        int i2;
        long j18;
        int i3;
        RecyclerView.m layoutManager;
        LinearLayoutManager linearLayoutManager;
        RecyclerView.e adapter;
        ej ejVar;
        RecyclerView recyclerView;
        int i4;
        long j19;
        long j20;
        long j21;
        long j22;
        long j23;
        long j24;
        boolean zA2;
        long j25;
        long j26;
        boolean zA3;
        long j27;
        long j28;
        Resources resources;
        int i5;
        long j29;
        boolean zA4;
        long j30;
        long j31;
        long j32;
        long j33;
        long j34;
        synchronized (this) {
            j = this.c0;
            this.c0 = 0L;
        }
        rm1<qv4> rm1Var2 = this.P;
        xv2<tj<List<VideoModel>>> xv2Var = this.V;
        xv2<String> xv2Var2 = this.X;
        Boolean bool = this.a0;
        Integer num = this.R;
        Boolean bool2 = this.b0;
        Boolean bool3 = this.Z;
        RecyclerView.e eVar = this.T;
        List<VideoModel> list2 = this.U;
        rm1<qv4> rm1Var3 = this.Q;
        qk qkVar = this.Y;
        Integer num2 = this.S;
        String str = this.W;
        boolean z15 = true;
        if ((j & 15691) != 0) {
            value = xv2Var != null ? xv2Var.getValue() : null;
            if ((j & 8449) != 0) {
                z = value == null;
                if ((j & 1125917086720257L) != 0) {
                    j = z ? j | 144115188075855872L : j | 72057594037927936L;
                }
            } else {
                z = false;
            }
            rm1Var = rm1Var3;
            list = value != null ? value.b : null;
            z2 = list == null;
            if ((j & 15691) != 0) {
                j |= z2 ? 8388608L : 4194304L;
            }
        } else {
            rm1Var = rm1Var3;
            value = null;
            list = null;
            z = false;
            z2 = false;
        }
        long j35 = j & 13571;
        if (j35 != 0) {
            value2 = xv2Var2 != null ? xv2Var2.getValue() : null;
            z3 = value2 == null;
            if (j35 != 0) {
                j |= z3 ? 137438953472L : 68719476736L;
            }
            long j36 = j & 12547;
            if (j36 != 0) {
                zIsEmpty = value2 != null ? value2.isEmpty() : false;
                if (j36 != 0) {
                    j |= zIsEmpty ? 35184372088832L : 17592186044416L;
                }
            }
            j2 = j & 8216;
            if (j2 != 0) {
                if (num == null) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (j2 != 0) {
                    if (z4) {
                        j |= 524288;
                    } else {
                        j |= 262144;
                    }
                }
            } else {
                z4 = false;
            }
            j3 = j & 8224;
            if (j3 != 0) {
                if (bool2 == null) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (j3 != 0) {
                    if (z5) {
                        j34 = 536870912;
                    } else {
                        j34 = 268435456;
                    }
                    j |= j34;
                }
            } else {
                z5 = false;
            }
            j4 = j & 8256;
            if (j4 != 0) {
                if (bool3 == null) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (j4 != 0) {
                    if (z6) {
                        j |= 9007199254740992L;
                    } else {
                        j |= 4503599627370496L;
                    }
                }
            } else {
                z6 = false;
            }
            j5 = j & 10569;
            if (j5 != 0) {
                if (num2 == null) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                if (j5 != 0) {
                    if (z7) {
                        j |= 8796093022208L;
                    } else {
                        j |= 4398046511104L;
                    }
                }
                j32 = j & 10497;
                if (j32 != 0) {
                    if (ViewDataBinding.z(num2) == 0) {
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    if (j32 != 0) {
                        if (z8) {
                            j33 = 140737488355328L;
                        } else {
                            j33 = 70368744177664L;
                        }
                        j |= j33;
                    }
                }
                j6 = j & 524288;
                if (j6 != 0) {
                    zA4 = ViewDataBinding.A(bool);
                    if (j6 != 0) {
                        if (zA4) {
                            j31 = 131072;
                        } else {
                            j31 = 65536;
                        }
                        j |= j31;
                    }
                    if ((j & 549755813888L) != 0) {
                        if (zA4) {
                            j30 = 33554432;
                        } else {
                            j30 = 16777216;
                        }
                        j |= j30;
                    }
                    if (zA4) {
                        iIntValue = 2;
                    } else {
                        iIntValue = 3;
                    }
                } else {
                    iIntValue = 0;
                }
                if ((j & 4512395720392704L) != 0) {
                    zA = ViewDataBinding.A(bool3);
                    if ((j & 8796093022208L) != 0) {
                        if (zA) {
                            j |= 549755813888L;
                        } else {
                            j |= 274877906944L;
                        }
                    }
                    if ((j & 4503599627370496L) != 0) {
                        if (zA) {
                            j29 = 2199023255552L;
                        } else {
                            j29 = 1099511627776L;
                        }
                        j |= j29;
                    }
                    value3 = value;
                    if ((j & 4503599627370496L) != 0) {
                        if (zA) {
                            resources = this.M.getResources();
                            i5 = R.string.see_all;
                        } else {
                            resources = this.M.getResources();
                            i5 = R.string.see_less;
                        }
                        string = resources.getString(i5);
                        j = j;
                    } else {
                        string = null;
                    }
                } else {
                    value3 = value;
                    string = null;
                    zA = false;
                }
                j7 = j & 12547;
                if (j7 != 0) {
                    if (zIsEmpty) {
                        z9 = true;
                    } else {
                        z9 = z3;
                    }
                    if (j7 != 0) {
                        if (z9) {
                            j |= 562949953421312L;
                        } else {
                            j |= 281474976710656L;
                        }
                    }
                } else {
                    z9 = false;
                }
                j8 = j & 10497;
                if (j8 != 0) {
                    if (z8) {
                        z10 = true;
                    } else {
                        z10 = z7;
                    }
                    if (j8 != 0) {
                        if (z10) {
                            j28 = 34359738368L;
                        } else {
                            j28 = 17179869184L;
                        }
                        j |= j28;
                    }
                } else {
                    z10 = false;
                }
                j9 = j & 268435456;
                if (j9 != 0) {
                    zA3 = ViewDataBinding.A(bool2);
                    if (j9 != 0) {
                        if (zA3) {
                            j27 = 2147483648L;
                        } else {
                            j27 = 1073741824;
                        }
                        j |= j27;
                        z11 = zA3;
                    }
                } else {
                    z11 = false;
                }
                z11 = zA3;
                if ((j & 8216) != 0) {
                    iIntValue = 0;
                } else if (!z4) {
                    iIntValue = num.intValue();
                }
                r10 = z11 ? 1 : 0;
                if ((j & 8224) != 0) {
                    r10 = 0;
                } else if (z5) {
                    r10 = 1;
                }
                if ((j & 13571) != 0) {
                    value2 = null;
                } else if (z3) {
                    value2 = str;
                }
                if ((j & 8256) != 0) {
                    string = null;
                } else if (z6) {
                    string = this.M.getResources().getString(R.string.see_all);
                }
                if ((j & 17179869184L) != 0) {
                    if (xv2Var != null) {
                        value3 = xv2Var.getValue();
                    }
                    if (value3 == null) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if ((j & 1125917086720257L) != 0) {
                        if (z) {
                            j |= 144115188075855872L;
                        } else {
                            j |= 72057594037927936L;
                        }
                    }
                }
                if ((j & 549755813888L) != 0) {
                    zA2 = ViewDataBinding.A(bool);
                    if ((j & 524288) != 0) {
                        if (zA2) {
                            j26 = 131072;
                        } else {
                            j26 = 65536;
                        }
                        j |= j26;
                    }
                    if ((j & 549755813888L) != 0) {
                        if (zA2) {
                            j25 = 33554432;
                        } else {
                            j25 = 16777216;
                        }
                        j |= j25;
                    }
                    if (zA2) {
                        iIntValue2 = 4;
                    } else {
                        iIntValue2 = 6;
                    }
                } else {
                    iIntValue2 = 0;
                }
                j10 = j & 562949953421312L;
                if (j10 != 0) {
                    if (str != null) {
                        zIsEmpty2 = str.isEmpty();
                    } else {
                        zIsEmpty2 = false;
                    }
                    if (j10 != 0) {
                        if (zIsEmpty2) {
                            j24 = 32768;
                        } else {
                            j24 = 16384;
                        }
                        j |= j24;
                    }
                } else {
                    zIsEmpty2 = false;
                }
                if ((j & 8796093022208L) != 0 || !zA) {
                    iIntValue2 = 0;
                }
                if ((j & 10569) != 0) {
                    iIntValue2 = 0;
                } else if (!z7) {
                    iIntValue2 = num2.intValue();
                }
                if ((j & 16384) == 0 && str == null) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                if ((j & 562949953421312L) != 0) {
                    z12 = false;
                } else if (zIsEmpty2) {
                    z12 = true;
                }
                j11 = j & 12547;
                if (j11 != 0) {
                    if (!z9) {
                        z12 = false;
                    }
                    if (j11 != 0) {
                        if (z12) {
                            j23 = 2251799813685248L;
                        } else {
                            j23 = 1125899906842624L;
                        }
                        j |= j23;
                    }
                } else {
                    z12 = false;
                }
                if ((j & 1125899906842624L) != 0) {
                    if (xv2Var != null) {
                        value3 = xv2Var.getValue();
                    }
                    if (value3 == null) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if ((j & 1125917086720257L) != 0) {
                        if (z) {
                            j |= 144115188075855872L;
                        } else {
                            j |= 72057594037927936L;
                        }
                    }
                }
                tjVar = value3;
                if ((j & 72057594037927936L) != 0) {
                    if (tjVar != null) {
                        list = tjVar.b;
                    }
                    if (list == null) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if ((j & 15691) != 0) {
                        if (z2) {
                            j22 = 8388608;
                        } else {
                            j22 = 4194304;
                        }
                        j |= j22;
                    }
                }
                j12 = j & 1125917086720257L;
                if (j12 != 0) {
                    if (z) {
                        z13 = true;
                    } else {
                        z13 = z2;
                    }
                    if (j12 != 0) {
                        if (z13) {
                            j21 = 8589934592L;
                        } else {
                            j21 = 4294967296L;
                        }
                        j |= j21;
                    }
                } else {
                    z13 = false;
                }
                if ((j & 4299161600L) != 0) {
                    if (tjVar != null) {
                        list = tjVar.b;
                    }
                    j13 = 0;
                    if ((4294967296L & j) == 0 && list != null) {
                        zIsEmpty3 = list.isEmpty();
                    }
                    if ((j & 15691) != j13) {
                        list = null;
                    } else if (z2) {
                        list = list2;
                    }
                    j14 = j & 1125917086720257L;
                    if (j14 != j13) {
                        if (z13) {
                            zIsEmpty3 = true;
                        }
                        if (j14 != j13) {
                            if (zIsEmpty3) {
                                j |= 36028797018963968L;
                            } else {
                                j |= 18014398509481984L;
                            }
                        }
                    } else {
                        zIsEmpty3 = false;
                    }
                    j15 = j & 36028797018963968L;
                    if (j15 != 0) {
                        if (list2 == null) {
                            z14 = true;
                        } else {
                            z14 = false;
                        }
                        if (j15 != 0) {
                            if (z14) {
                                j20 = 134217728;
                            } else {
                                j20 = 67108864;
                            }
                            j |= j20;
                        }
                    } else {
                        z14 = false;
                    }
                    if ((j & 67108864) != 0 || list2 == null) {
                        zIsEmpty4 = false;
                    } else {
                        zIsEmpty4 = list2.isEmpty();
                    }
                    if ((j & 36028797018963968L) != 0) {
                        z15 = false;
                    } else if (!z14) {
                        z15 = zIsEmpty4;
                    }
                    j16 = j & 1125917086720257L;
                    if (j16 == 0) {
                        i = 0;
                    } else {
                        if (!zIsEmpty3) {
                            z15 = false;
                        }
                        if (j16 != 0) {
                            if (z15) {
                                j19 = 2097152;
                            } else {
                                j19 = 1048576;
                            }
                            j |= j19;
                        }
                        if (z15) {
                            i = 8;
                        } else {
                            i = 0;
                        }
                    }
                    j17 = j & 10497;
                    if (j17 != 0) {
                        i2 = 0;
                    } else if (z10) {
                        i2 = 8;
                    } else {
                        i2 = i;
                    }
                    j18 = j & 12547;
                    if (j18 != 0) {
                        if (z12) {
                            i4 = 8;
                        } else {
                            i4 = i;
                        }
                        i3 = i4;
                    } else {
                        i3 = 0;
                    }
                    if (j17 != 0) {
                        this.M.setVisibility(i2);
                    }
                    if ((j & 8256) != 0) {
                        nl6.r(this.M, string);
                    }
                    if ((j & 13571) != 0) {
                        MaterialButton materialButton = this.M;
                        HashMap<Integer, String> map = st2.a;
                        j32.e(materialButton, "<this>");
                        materialButton.setOnClickListener(new qt2(qkVar, list, value2));
                    }
                    if ((j & 8224) != 0 && ViewDataBinding.G >= 19) {
                        this.N.setAccessibilityLiveRegion(r10);
                    }
                    if ((8449 & j) != 0) {
                        this.N.setVisibility(i);
                    }
                    if ((12290 & j) != 0) {
                        nl6.q(this.N, value2);
                        nl6.r(this.O, value2);
                    }
                    if ((j & 8216) != 0) {
                        fo3.c(this.N, Integer.valueOf(iIntValue));
                    }
                    if ((8320 & j) != 0) {
                        recyclerView = this.N;
                        j32.e(recyclerView, "recycler");
                        if (eVar != null && recyclerView.getAdapter() == null) {
                            recyclerView.setAdapter(eVar);
                        }
                    }
                    if ((8704 & j) != 0) {
                        RecyclerView recyclerView2 = this.N;
                        j32.e(recyclerView2, "recycler");
                        adapter = recyclerView2.getAdapter();
                        if (adapter instanceof ej) {
                            ejVar = (ej) adapter;
                        } else {
                            ejVar = null;
                        }
                        if (ejVar != null && ejVar.getItemCount() == 0 && rm1Var != null) {
                            rm1Var.invoke();
                        }
                    }
                    if ((8196 & j) != 0) {
                        RecyclerView recyclerView3 = this.N;
                        j32.e(recyclerView3, "recycler");
                        layoutManager = recyclerView3.getLayoutManager();
                        if (layoutManager instanceof LinearLayoutManager) {
                            linearLayoutManager = (LinearLayoutManager) layoutManager;
                        } else {
                            linearLayoutManager = null;
                        }
                        recyclerView3.j(new eo3(recyclerView3, linearLayoutManager, rm1Var2));
                    }
                    if ((j & 10569) != 0) {
                        fo3.a(this.N, list, Integer.valueOf(iIntValue2), null);
                    }
                    if (j18 != 0) {
                        this.O.setVisibility(i3);
                    }
                }
                j13 = 0;
                zIsEmpty3 = false;
                if ((j & 15691) != j13) {
                    list = null;
                } else if (z2) {
                    list = list2;
                }
                j14 = j & 1125917086720257L;
                if (j14 != j13) {
                    if (z13) {
                        zIsEmpty3 = true;
                    }
                    if (j14 != j13) {
                        if (zIsEmpty3) {
                            j |= 36028797018963968L;
                        } else {
                            j |= 18014398509481984L;
                        }
                    }
                } else {
                    zIsEmpty3 = false;
                }
                j15 = j & 36028797018963968L;
                if (j15 != 0) {
                    if (list2 == null) {
                        z14 = true;
                    } else {
                        z14 = false;
                    }
                    if (j15 != 0) {
                        if (z14) {
                            j20 = 134217728;
                        } else {
                            j20 = 67108864;
                        }
                        j |= j20;
                    }
                } else {
                    z14 = false;
                }
                if ((j & 67108864) != 0) {
                    zIsEmpty4 = false;
                } else {
                    zIsEmpty4 = false;
                }
                if ((j & 36028797018963968L) != 0) {
                    z15 = false;
                } else if (!z14) {
                    z15 = zIsEmpty4;
                }
                j16 = j & 1125917086720257L;
                if (j16 == 0) {
                    i = 0;
                } else {
                    if (!zIsEmpty3) {
                        z15 = false;
                    }
                    if (j16 != 0) {
                        if (z15) {
                            j19 = 2097152;
                        } else {
                            j19 = 1048576;
                        }
                        j |= j19;
                    }
                    if (z15) {
                        i = 8;
                    } else {
                        i = 0;
                    }
                }
                j17 = j & 10497;
                if (j17 != 0) {
                    i2 = 0;
                } else if (z10) {
                    i2 = 8;
                } else {
                    i2 = i;
                }
                j18 = j & 12547;
                if (j18 != 0) {
                    if (z12) {
                        i4 = 8;
                    } else {
                        i4 = i;
                    }
                    i3 = i4;
                } else {
                    i3 = 0;
                }
                if (j17 != 0) {
                    this.M.setVisibility(i2);
                }
                if ((j & 8256) != 0) {
                    nl6.r(this.M, string);
                }
                if ((j & 13571) != 0) {
                    MaterialButton materialButton2 = this.M;
                    HashMap<Integer, String> map2 = st2.a;
                    j32.e(materialButton2, "<this>");
                    materialButton2.setOnClickListener(new qt2(qkVar, list, value2));
                }
                if ((j & 8224) != 0) {
                    this.N.setAccessibilityLiveRegion(r10);
                }
                if ((8449 & j) != 0) {
                    this.N.setVisibility(i);
                }
                if ((12290 & j) != 0) {
                    nl6.q(this.N, value2);
                    nl6.r(this.O, value2);
                }
                if ((j & 8216) != 0) {
                    fo3.c(this.N, Integer.valueOf(iIntValue));
                }
                if ((8320 & j) != 0) {
                    recyclerView = this.N;
                    j32.e(recyclerView, "recycler");
                    if (eVar != null) {
                        recyclerView.setAdapter(eVar);
                    }
                }
                if ((8704 & j) != 0) {
                    RecyclerView recyclerView4 = this.N;
                    j32.e(recyclerView4, "recycler");
                    adapter = recyclerView4.getAdapter();
                    if (adapter instanceof ej) {
                        ejVar = (ej) adapter;
                    } else {
                        ejVar = null;
                    }
                    if (ejVar != null) {
                        rm1Var.invoke();
                    }
                }
                if ((8196 & j) != 0) {
                    RecyclerView recyclerView5 = this.N;
                    j32.e(recyclerView5, "recycler");
                    layoutManager = recyclerView5.getLayoutManager();
                    if (layoutManager instanceof LinearLayoutManager) {
                        linearLayoutManager = (LinearLayoutManager) layoutManager;
                    } else {
                        linearLayoutManager = null;
                    }
                    recyclerView5.j(new eo3(recyclerView5, linearLayoutManager, rm1Var2));
                }
                if ((j & 10569) != 0) {
                    fo3.a(this.N, list, Integer.valueOf(iIntValue2), null);
                }
                if (j18 != 0) {
                    this.O.setVisibility(i3);
                }
            }
            z7 = false;
            z8 = false;
            j6 = j & 524288;
            if (j6 != 0) {
                zA4 = ViewDataBinding.A(bool);
                if (j6 != 0) {
                    if (zA4) {
                        j31 = 131072;
                    } else {
                        j31 = 65536;
                    }
                    j |= j31;
                }
                if ((j & 549755813888L) != 0) {
                    if (zA4) {
                        j30 = 33554432;
                    } else {
                        j30 = 16777216;
                    }
                    j |= j30;
                }
                if (zA4) {
                    iIntValue = 2;
                } else {
                    iIntValue = 3;
                }
            } else {
                iIntValue = 0;
            }
            if ((j & 4512395720392704L) != 0) {
                zA = ViewDataBinding.A(bool3);
                if ((j & 8796093022208L) != 0) {
                    if (zA) {
                        j |= 549755813888L;
                    } else {
                        j |= 274877906944L;
                    }
                }
                if ((j & 4503599627370496L) != 0) {
                    if (zA) {
                        j29 = 2199023255552L;
                    } else {
                        j29 = 1099511627776L;
                    }
                    j |= j29;
                }
                value3 = value;
                if ((j & 4503599627370496L) != 0) {
                    if (zA) {
                        resources = this.M.getResources();
                        i5 = R.string.see_all;
                    } else {
                        resources = this.M.getResources();
                        i5 = R.string.see_less;
                    }
                    string = resources.getString(i5);
                    j = j;
                } else {
                    string = null;
                }
            } else {
                value3 = value;
                string = null;
                zA = false;
            }
            j7 = j & 12547;
            if (j7 != 0) {
                if (zIsEmpty) {
                    z9 = true;
                } else {
                    z9 = z3;
                }
                if (j7 != 0) {
                    if (z9) {
                        j |= 562949953421312L;
                    } else {
                        j |= 281474976710656L;
                    }
                }
            } else {
                z9 = false;
            }
            j8 = j & 10497;
            if (j8 != 0) {
                if (z8) {
                    z10 = true;
                } else {
                    z10 = z7;
                }
                if (j8 != 0) {
                    if (z10) {
                        j28 = 34359738368L;
                    } else {
                        j28 = 17179869184L;
                    }
                    j |= j28;
                }
            } else {
                z10 = false;
            }
            j9 = j & 268435456;
            if (j9 != 0) {
                zA3 = ViewDataBinding.A(bool2);
                if (j9 != 0) {
                    if (zA3) {
                        j27 = 2147483648L;
                    } else {
                        j27 = 1073741824;
                    }
                    j |= j27;
                    z11 = zA3;
                }
            } else {
                z11 = false;
            }
            z11 = zA3;
            if ((j & 8216) != 0) {
                iIntValue = 0;
            } else if (!z4) {
                iIntValue = num.intValue();
            }
            r10 = z11 ? 1 : 0;
            if ((j & 8224) != 0) {
                r10 = 0;
            } else if (z5) {
                r10 = 1;
            }
            if ((j & 13571) != 0) {
                value2 = null;
            } else if (z3) {
                value2 = str;
            }
            if ((j & 8256) != 0) {
                string = null;
            } else if (z6) {
                string = this.M.getResources().getString(R.string.see_all);
            }
            if ((j & 17179869184L) != 0) {
                if (xv2Var != null) {
                    value3 = xv2Var.getValue();
                }
                if (value3 == null) {
                    z = true;
                } else {
                    z = false;
                }
                if ((j & 1125917086720257L) != 0) {
                    if (z) {
                        j |= 144115188075855872L;
                    } else {
                        j |= 72057594037927936L;
                    }
                }
            }
            if ((j & 549755813888L) != 0) {
                zA2 = ViewDataBinding.A(bool);
                if ((j & 524288) != 0) {
                    if (zA2) {
                        j26 = 131072;
                    } else {
                        j26 = 65536;
                    }
                    j |= j26;
                }
                if ((j & 549755813888L) != 0) {
                    if (zA2) {
                        j25 = 33554432;
                    } else {
                        j25 = 16777216;
                    }
                    j |= j25;
                }
                if (zA2) {
                    iIntValue2 = 4;
                } else {
                    iIntValue2 = 6;
                }
            } else {
                iIntValue2 = 0;
            }
            j10 = j & 562949953421312L;
            if (j10 != 0) {
                if (str != null) {
                    zIsEmpty2 = str.isEmpty();
                } else {
                    zIsEmpty2 = false;
                }
                if (j10 != 0) {
                    if (zIsEmpty2) {
                        j24 = 32768;
                    } else {
                        j24 = 16384;
                    }
                    j |= j24;
                }
            } else {
                zIsEmpty2 = false;
            }
            if ((j & 8796093022208L) != 0) {
                iIntValue2 = 0;
            } else {
                iIntValue2 = 0;
            }
            if ((j & 10569) != 0) {
                iIntValue2 = 0;
            } else if (!z7) {
                iIntValue2 = num2.intValue();
            }
            if ((j & 16384) == 0) {
                z12 = false;
            } else {
                z12 = false;
            }
            if ((j & 562949953421312L) != 0) {
                z12 = false;
            } else if (zIsEmpty2) {
                z12 = true;
            }
            j11 = j & 12547;
            if (j11 != 0) {
                if (!z9) {
                    z12 = false;
                }
                if (j11 != 0) {
                    if (z12) {
                        j23 = 2251799813685248L;
                    } else {
                        j23 = 1125899906842624L;
                    }
                    j |= j23;
                }
            } else {
                z12 = false;
            }
            if ((j & 1125899906842624L) != 0) {
                if (xv2Var != null) {
                    value3 = xv2Var.getValue();
                }
                if (value3 == null) {
                    z = true;
                } else {
                    z = false;
                }
                if ((j & 1125917086720257L) != 0) {
                    if (z) {
                        j |= 144115188075855872L;
                    } else {
                        j |= 72057594037927936L;
                    }
                }
            }
            tjVar = value3;
            if ((j & 72057594037927936L) != 0) {
                if (tjVar != null) {
                    list = tjVar.b;
                }
                if (list == null) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if ((j & 15691) != 0) {
                    if (z2) {
                        j22 = 8388608;
                    } else {
                        j22 = 4194304;
                    }
                    j |= j22;
                }
            }
            j12 = j & 1125917086720257L;
            if (j12 != 0) {
                if (z) {
                    z13 = true;
                } else {
                    z13 = z2;
                }
                if (j12 != 0) {
                    if (z13) {
                        j21 = 8589934592L;
                    } else {
                        j21 = 4294967296L;
                    }
                    j |= j21;
                }
            } else {
                z13 = false;
            }
            if ((j & 4299161600L) != 0) {
                if (tjVar != null) {
                    list = tjVar.b;
                }
                j13 = 0;
                if ((4294967296L & j) == 0) {
                }
                if ((j & 15691) != j13) {
                    list = null;
                } else if (z2) {
                    list = list2;
                }
                j14 = j & 1125917086720257L;
                if (j14 != j13) {
                    if (z13) {
                        zIsEmpty3 = true;
                    }
                    if (j14 != j13) {
                        if (zIsEmpty3) {
                            j |= 36028797018963968L;
                        } else {
                            j |= 18014398509481984L;
                        }
                    }
                } else {
                    zIsEmpty3 = false;
                }
                j15 = j & 36028797018963968L;
                if (j15 != 0) {
                    if (list2 == null) {
                        z14 = true;
                    } else {
                        z14 = false;
                    }
                    if (j15 != 0) {
                        if (z14) {
                            j20 = 134217728;
                        } else {
                            j20 = 67108864;
                        }
                        j |= j20;
                    }
                } else {
                    z14 = false;
                }
                if ((j & 67108864) != 0) {
                    zIsEmpty4 = false;
                } else {
                    zIsEmpty4 = false;
                }
                if ((j & 36028797018963968L) != 0) {
                    z15 = false;
                } else if (!z14) {
                    z15 = zIsEmpty4;
                }
                j16 = j & 1125917086720257L;
                if (j16 == 0) {
                    i = 0;
                } else {
                    if (!zIsEmpty3) {
                        z15 = false;
                    }
                    if (j16 != 0) {
                        if (z15) {
                            j19 = 2097152;
                        } else {
                            j19 = 1048576;
                        }
                        j |= j19;
                    }
                    if (z15) {
                        i = 8;
                    } else {
                        i = 0;
                    }
                }
                j17 = j & 10497;
                if (j17 != 0) {
                    i2 = 0;
                } else if (z10) {
                    i2 = 8;
                } else {
                    i2 = i;
                }
                j18 = j & 12547;
                if (j18 != 0) {
                    if (z12) {
                        i4 = 8;
                    } else {
                        i4 = i;
                    }
                    i3 = i4;
                } else {
                    i3 = 0;
                }
                if (j17 != 0) {
                    this.M.setVisibility(i2);
                }
                if ((j & 8256) != 0) {
                    nl6.r(this.M, string);
                }
                if ((j & 13571) != 0) {
                    MaterialButton materialButton3 = this.M;
                    HashMap<Integer, String> map3 = st2.a;
                    j32.e(materialButton3, "<this>");
                    materialButton3.setOnClickListener(new qt2(qkVar, list, value2));
                }
                if ((j & 8224) != 0) {
                    this.N.setAccessibilityLiveRegion(r10);
                }
                if ((8449 & j) != 0) {
                    this.N.setVisibility(i);
                }
                if ((12290 & j) != 0) {
                    nl6.q(this.N, value2);
                    nl6.r(this.O, value2);
                }
                if ((j & 8216) != 0) {
                    fo3.c(this.N, Integer.valueOf(iIntValue));
                }
                if ((8320 & j) != 0) {
                    recyclerView = this.N;
                    j32.e(recyclerView, "recycler");
                    if (eVar != null) {
                        recyclerView.setAdapter(eVar);
                    }
                }
                if ((8704 & j) != 0) {
                    RecyclerView recyclerView6 = this.N;
                    j32.e(recyclerView6, "recycler");
                    adapter = recyclerView6.getAdapter();
                    if (adapter instanceof ej) {
                        ejVar = (ej) adapter;
                    } else {
                        ejVar = null;
                    }
                    if (ejVar != null) {
                        rm1Var.invoke();
                    }
                }
                if ((8196 & j) != 0) {
                    RecyclerView recyclerView7 = this.N;
                    j32.e(recyclerView7, "recycler");
                    layoutManager = recyclerView7.getLayoutManager();
                    if (layoutManager instanceof LinearLayoutManager) {
                        linearLayoutManager = (LinearLayoutManager) layoutManager;
                    } else {
                        linearLayoutManager = null;
                    }
                    recyclerView7.j(new eo3(recyclerView7, linearLayoutManager, rm1Var2));
                }
                if ((j & 10569) != 0) {
                    fo3.a(this.N, list, Integer.valueOf(iIntValue2), null);
                }
                if (j18 != 0) {
                    this.O.setVisibility(i3);
                }
            }
            j13 = 0;
            zIsEmpty3 = false;
            if ((j & 15691) != j13) {
                list = null;
            } else if (z2) {
                list = list2;
            }
            j14 = j & 1125917086720257L;
            if (j14 != j13) {
                if (z13) {
                    zIsEmpty3 = true;
                }
                if (j14 != j13) {
                    if (zIsEmpty3) {
                        j |= 36028797018963968L;
                    } else {
                        j |= 18014398509481984L;
                    }
                }
            } else {
                zIsEmpty3 = false;
            }
            j15 = j & 36028797018963968L;
            if (j15 != 0) {
                if (list2 == null) {
                    z14 = true;
                } else {
                    z14 = false;
                }
                if (j15 != 0) {
                    if (z14) {
                        j20 = 134217728;
                    } else {
                        j20 = 67108864;
                    }
                    j |= j20;
                }
            } else {
                z14 = false;
            }
            if ((j & 67108864) != 0) {
                zIsEmpty4 = false;
            } else {
                zIsEmpty4 = false;
            }
            if ((j & 36028797018963968L) != 0) {
                z15 = false;
            } else if (!z14) {
                z15 = zIsEmpty4;
            }
            j16 = j & 1125917086720257L;
            if (j16 == 0) {
                i = 0;
            } else {
                if (!zIsEmpty3) {
                    z15 = false;
                }
                if (j16 != 0) {
                    if (z15) {
                        j19 = 2097152;
                    } else {
                        j19 = 1048576;
                    }
                    j |= j19;
                }
                if (z15) {
                    i = 8;
                } else {
                    i = 0;
                }
            }
            j17 = j & 10497;
            if (j17 != 0) {
                i2 = 0;
            } else if (z10) {
                i2 = 8;
            } else {
                i2 = i;
            }
            j18 = j & 12547;
            if (j18 != 0) {
                if (z12) {
                    i4 = 8;
                } else {
                    i4 = i;
                }
                i3 = i4;
            } else {
                i3 = 0;
            }
            if (j17 != 0) {
                this.M.setVisibility(i2);
            }
            if ((j & 8256) != 0) {
                nl6.r(this.M, string);
            }
            if ((j & 13571) != 0) {
                MaterialButton materialButton4 = this.M;
                HashMap<Integer, String> map4 = st2.a;
                j32.e(materialButton4, "<this>");
                materialButton4.setOnClickListener(new qt2(qkVar, list, value2));
            }
            if ((j & 8224) != 0) {
                this.N.setAccessibilityLiveRegion(r10);
            }
            if ((8449 & j) != 0) {
                this.N.setVisibility(i);
            }
            if ((12290 & j) != 0) {
                nl6.q(this.N, value2);
                nl6.r(this.O, value2);
            }
            if ((j & 8216) != 0) {
                fo3.c(this.N, Integer.valueOf(iIntValue));
            }
            if ((8320 & j) != 0) {
                recyclerView = this.N;
                j32.e(recyclerView, "recycler");
                if (eVar != null) {
                    recyclerView.setAdapter(eVar);
                }
            }
            if ((8704 & j) != 0) {
                RecyclerView recyclerView8 = this.N;
                j32.e(recyclerView8, "recycler");
                adapter = recyclerView8.getAdapter();
                if (adapter instanceof ej) {
                    ejVar = (ej) adapter;
                } else {
                    ejVar = null;
                }
                if (ejVar != null) {
                    rm1Var.invoke();
                }
            }
            if ((8196 & j) != 0) {
                RecyclerView recyclerView9 = this.N;
                j32.e(recyclerView9, "recycler");
                layoutManager = recyclerView9.getLayoutManager();
                if (layoutManager instanceof LinearLayoutManager) {
                    linearLayoutManager = (LinearLayoutManager) layoutManager;
                } else {
                    linearLayoutManager = null;
                }
                recyclerView9.j(new eo3(recyclerView9, linearLayoutManager, rm1Var2));
            }
            if ((j & 10569) != 0) {
                fo3.a(this.N, list, Integer.valueOf(iIntValue2), null);
            }
            if (j18 != 0) {
                this.O.setVisibility(i3);
            }
        }
        value2 = null;
        z3 = false;
        zIsEmpty = false;
        j2 = j & 8216;
        if (j2 != 0) {
            if (num == null) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (j2 != 0) {
                if (z4) {
                    j |= 524288;
                } else {
                    j |= 262144;
                }
            }
        } else {
            z4 = false;
        }
        j3 = j & 8224;
        if (j3 != 0) {
            if (bool2 == null) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (j3 != 0) {
                if (z5) {
                    j34 = 536870912;
                } else {
                    j34 = 268435456;
                }
                j |= j34;
            }
        } else {
            z5 = false;
        }
        j4 = j & 8256;
        if (j4 != 0) {
            if (bool3 == null) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (j4 != 0) {
                if (z6) {
                    j |= 9007199254740992L;
                } else {
                    j |= 4503599627370496L;
                }
            }
        } else {
            z6 = false;
        }
        j5 = j & 10569;
        if (j5 != 0) {
            if (num2 == null) {
                z7 = true;
            } else {
                z7 = false;
            }
            if (j5 != 0) {
                if (z7) {
                    j |= 8796093022208L;
                } else {
                    j |= 4398046511104L;
                }
            }
            j32 = j & 10497;
            if (j32 != 0) {
                if (ViewDataBinding.z(num2) == 0) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                if (j32 != 0) {
                    if (z8) {
                        j33 = 140737488355328L;
                    } else {
                        j33 = 70368744177664L;
                    }
                    j |= j33;
                }
            }
            j6 = j & 524288;
            if (j6 != 0) {
                zA4 = ViewDataBinding.A(bool);
                if (j6 != 0) {
                    if (zA4) {
                        j31 = 131072;
                    } else {
                        j31 = 65536;
                    }
                    j |= j31;
                }
                if ((j & 549755813888L) != 0) {
                    if (zA4) {
                        j30 = 33554432;
                    } else {
                        j30 = 16777216;
                    }
                    j |= j30;
                }
                if (zA4) {
                    iIntValue = 2;
                } else {
                    iIntValue = 3;
                }
            } else {
                iIntValue = 0;
            }
            if ((j & 4512395720392704L) != 0) {
                zA = ViewDataBinding.A(bool3);
                if ((j & 8796093022208L) != 0) {
                    if (zA) {
                        j |= 549755813888L;
                    } else {
                        j |= 274877906944L;
                    }
                }
                if ((j & 4503599627370496L) != 0) {
                    if (zA) {
                        j29 = 2199023255552L;
                    } else {
                        j29 = 1099511627776L;
                    }
                    j |= j29;
                }
                value3 = value;
                if ((j & 4503599627370496L) != 0) {
                    if (zA) {
                        resources = this.M.getResources();
                        i5 = R.string.see_all;
                    } else {
                        resources = this.M.getResources();
                        i5 = R.string.see_less;
                    }
                    string = resources.getString(i5);
                    j = j;
                } else {
                    string = null;
                }
            } else {
                value3 = value;
                string = null;
                zA = false;
            }
            j7 = j & 12547;
            if (j7 != 0) {
                if (zIsEmpty) {
                    z9 = true;
                } else {
                    z9 = z3;
                }
                if (j7 != 0) {
                    if (z9) {
                        j |= 562949953421312L;
                    } else {
                        j |= 281474976710656L;
                    }
                }
            } else {
                z9 = false;
            }
            j8 = j & 10497;
            if (j8 != 0) {
                if (z8) {
                    z10 = true;
                } else {
                    z10 = z7;
                }
                if (j8 != 0) {
                    if (z10) {
                        j28 = 34359738368L;
                    } else {
                        j28 = 17179869184L;
                    }
                    j |= j28;
                }
            } else {
                z10 = false;
            }
            j9 = j & 268435456;
            if (j9 != 0) {
                zA3 = ViewDataBinding.A(bool2);
                if (j9 != 0) {
                    if (zA3) {
                        j27 = 2147483648L;
                    } else {
                        j27 = 1073741824;
                    }
                    j |= j27;
                    z11 = zA3;
                }
            } else {
                z11 = false;
            }
            z11 = zA3;
            if ((j & 8216) != 0) {
                iIntValue = 0;
            } else if (!z4) {
                iIntValue = num.intValue();
            }
            r10 = z11 ? 1 : 0;
            if ((j & 8224) != 0) {
                r10 = 0;
            } else if (z5) {
                r10 = 1;
            }
            if ((j & 13571) != 0) {
                value2 = null;
            } else if (z3) {
                value2 = str;
            }
            if ((j & 8256) != 0) {
                string = null;
            } else if (z6) {
                string = this.M.getResources().getString(R.string.see_all);
            }
            if ((j & 17179869184L) != 0) {
                if (xv2Var != null) {
                    value3 = xv2Var.getValue();
                }
                if (value3 == null) {
                    z = true;
                } else {
                    z = false;
                }
                if ((j & 1125917086720257L) != 0) {
                    if (z) {
                        j |= 144115188075855872L;
                    } else {
                        j |= 72057594037927936L;
                    }
                }
            }
            if ((j & 549755813888L) != 0) {
                zA2 = ViewDataBinding.A(bool);
                if ((j & 524288) != 0) {
                    if (zA2) {
                        j26 = 131072;
                    } else {
                        j26 = 65536;
                    }
                    j |= j26;
                }
                if ((j & 549755813888L) != 0) {
                    if (zA2) {
                        j25 = 33554432;
                    } else {
                        j25 = 16777216;
                    }
                    j |= j25;
                }
                if (zA2) {
                    iIntValue2 = 4;
                } else {
                    iIntValue2 = 6;
                }
            } else {
                iIntValue2 = 0;
            }
            j10 = j & 562949953421312L;
            if (j10 != 0) {
                if (str != null) {
                    zIsEmpty2 = str.isEmpty();
                } else {
                    zIsEmpty2 = false;
                }
                if (j10 != 0) {
                    if (zIsEmpty2) {
                        j24 = 32768;
                    } else {
                        j24 = 16384;
                    }
                    j |= j24;
                }
            } else {
                zIsEmpty2 = false;
            }
            if ((j & 8796093022208L) != 0) {
                iIntValue2 = 0;
            } else {
                iIntValue2 = 0;
            }
            if ((j & 10569) != 0) {
                iIntValue2 = 0;
            } else if (!z7) {
                iIntValue2 = num2.intValue();
            }
            if ((j & 16384) == 0) {
                z12 = false;
            } else {
                z12 = false;
            }
            if ((j & 562949953421312L) != 0) {
                z12 = false;
            } else if (zIsEmpty2) {
                z12 = true;
            }
            j11 = j & 12547;
            if (j11 != 0) {
                if (!z9) {
                    z12 = false;
                }
                if (j11 != 0) {
                    if (z12) {
                        j23 = 2251799813685248L;
                    } else {
                        j23 = 1125899906842624L;
                    }
                    j |= j23;
                }
            } else {
                z12 = false;
            }
            if ((j & 1125899906842624L) != 0) {
                if (xv2Var != null) {
                    value3 = xv2Var.getValue();
                }
                if (value3 == null) {
                    z = true;
                } else {
                    z = false;
                }
                if ((j & 1125917086720257L) != 0) {
                    if (z) {
                        j |= 144115188075855872L;
                    } else {
                        j |= 72057594037927936L;
                    }
                }
            }
            tjVar = value3;
            if ((j & 72057594037927936L) != 0) {
                if (tjVar != null) {
                    list = tjVar.b;
                }
                if (list == null) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if ((j & 15691) != 0) {
                    if (z2) {
                        j22 = 8388608;
                    } else {
                        j22 = 4194304;
                    }
                    j |= j22;
                }
            }
            j12 = j & 1125917086720257L;
            if (j12 != 0) {
                if (z) {
                    z13 = true;
                } else {
                    z13 = z2;
                }
                if (j12 != 0) {
                    if (z13) {
                        j21 = 8589934592L;
                    } else {
                        j21 = 4294967296L;
                    }
                    j |= j21;
                }
            } else {
                z13 = false;
            }
            if ((j & 4299161600L) != 0) {
                if (tjVar != null) {
                    list = tjVar.b;
                }
                j13 = 0;
                if ((4294967296L & j) == 0) {
                }
                if ((j & 15691) != j13) {
                    list = null;
                } else if (z2) {
                    list = list2;
                }
                j14 = j & 1125917086720257L;
                if (j14 != j13) {
                    if (z13) {
                        zIsEmpty3 = true;
                    }
                    if (j14 != j13) {
                        if (zIsEmpty3) {
                            j |= 36028797018963968L;
                        } else {
                            j |= 18014398509481984L;
                        }
                    }
                } else {
                    zIsEmpty3 = false;
                }
                j15 = j & 36028797018963968L;
                if (j15 != 0) {
                    if (list2 == null) {
                        z14 = true;
                    } else {
                        z14 = false;
                    }
                    if (j15 != 0) {
                        if (z14) {
                            j20 = 134217728;
                        } else {
                            j20 = 67108864;
                        }
                        j |= j20;
                    }
                } else {
                    z14 = false;
                }
                if ((j & 67108864) != 0) {
                    zIsEmpty4 = false;
                } else {
                    zIsEmpty4 = false;
                }
                if ((j & 36028797018963968L) != 0) {
                    z15 = false;
                } else if (!z14) {
                    z15 = zIsEmpty4;
                }
                j16 = j & 1125917086720257L;
                if (j16 == 0) {
                    i = 0;
                } else {
                    if (!zIsEmpty3) {
                        z15 = false;
                    }
                    if (j16 != 0) {
                        if (z15) {
                            j19 = 2097152;
                        } else {
                            j19 = 1048576;
                        }
                        j |= j19;
                    }
                    if (z15) {
                        i = 8;
                    } else {
                        i = 0;
                    }
                }
                j17 = j & 10497;
                if (j17 != 0) {
                    i2 = 0;
                } else if (z10) {
                    i2 = 8;
                } else {
                    i2 = i;
                }
                j18 = j & 12547;
                if (j18 != 0) {
                    if (z12) {
                        i4 = 8;
                    } else {
                        i4 = i;
                    }
                    i3 = i4;
                } else {
                    i3 = 0;
                }
                if (j17 != 0) {
                    this.M.setVisibility(i2);
                }
                if ((j & 8256) != 0) {
                    nl6.r(this.M, string);
                }
                if ((j & 13571) != 0) {
                    MaterialButton materialButton5 = this.M;
                    HashMap<Integer, String> map5 = st2.a;
                    j32.e(materialButton5, "<this>");
                    materialButton5.setOnClickListener(new qt2(qkVar, list, value2));
                }
                if ((j & 8224) != 0) {
                    this.N.setAccessibilityLiveRegion(r10);
                }
                if ((8449 & j) != 0) {
                    this.N.setVisibility(i);
                }
                if ((12290 & j) != 0) {
                    nl6.q(this.N, value2);
                    nl6.r(this.O, value2);
                }
                if ((j & 8216) != 0) {
                    fo3.c(this.N, Integer.valueOf(iIntValue));
                }
                if ((8320 & j) != 0) {
                    recyclerView = this.N;
                    j32.e(recyclerView, "recycler");
                    if (eVar != null) {
                        recyclerView.setAdapter(eVar);
                    }
                }
                if ((8704 & j) != 0) {
                    RecyclerView recyclerView10 = this.N;
                    j32.e(recyclerView10, "recycler");
                    adapter = recyclerView10.getAdapter();
                    if (adapter instanceof ej) {
                        ejVar = (ej) adapter;
                    } else {
                        ejVar = null;
                    }
                    if (ejVar != null) {
                        rm1Var.invoke();
                    }
                }
                if ((8196 & j) != 0) {
                    RecyclerView recyclerView11 = this.N;
                    j32.e(recyclerView11, "recycler");
                    layoutManager = recyclerView11.getLayoutManager();
                    if (layoutManager instanceof LinearLayoutManager) {
                        linearLayoutManager = (LinearLayoutManager) layoutManager;
                    } else {
                        linearLayoutManager = null;
                    }
                    recyclerView11.j(new eo3(recyclerView11, linearLayoutManager, rm1Var2));
                }
                if ((j & 10569) != 0) {
                    fo3.a(this.N, list, Integer.valueOf(iIntValue2), null);
                }
                if (j18 != 0) {
                    this.O.setVisibility(i3);
                }
            }
            j13 = 0;
            zIsEmpty3 = false;
            if ((j & 15691) != j13) {
                list = null;
            } else if (z2) {
                list = list2;
            }
            j14 = j & 1125917086720257L;
            if (j14 != j13) {
                if (z13) {
                    zIsEmpty3 = true;
                }
                if (j14 != j13) {
                    if (zIsEmpty3) {
                        j |= 36028797018963968L;
                    } else {
                        j |= 18014398509481984L;
                    }
                }
            } else {
                zIsEmpty3 = false;
            }
            j15 = j & 36028797018963968L;
            if (j15 != 0) {
                if (list2 == null) {
                    z14 = true;
                } else {
                    z14 = false;
                }
                if (j15 != 0) {
                    if (z14) {
                        j20 = 134217728;
                    } else {
                        j20 = 67108864;
                    }
                    j |= j20;
                }
            } else {
                z14 = false;
            }
            if ((j & 67108864) != 0) {
                zIsEmpty4 = false;
            } else {
                zIsEmpty4 = false;
            }
            if ((j & 36028797018963968L) != 0) {
                z15 = false;
            } else if (!z14) {
                z15 = zIsEmpty4;
            }
            j16 = j & 1125917086720257L;
            if (j16 == 0) {
                i = 0;
            } else {
                if (!zIsEmpty3) {
                    z15 = false;
                }
                if (j16 != 0) {
                    if (z15) {
                        j19 = 2097152;
                    } else {
                        j19 = 1048576;
                    }
                    j |= j19;
                }
                if (z15) {
                    i = 8;
                } else {
                    i = 0;
                }
            }
            j17 = j & 10497;
            if (j17 != 0) {
                i2 = 0;
            } else if (z10) {
                i2 = 8;
            } else {
                i2 = i;
            }
            j18 = j & 12547;
            if (j18 != 0) {
                if (z12) {
                    i4 = 8;
                } else {
                    i4 = i;
                }
                i3 = i4;
            } else {
                i3 = 0;
            }
            if (j17 != 0) {
                this.M.setVisibility(i2);
            }
            if ((j & 8256) != 0) {
                nl6.r(this.M, string);
            }
            if ((j & 13571) != 0) {
                MaterialButton materialButton6 = this.M;
                HashMap<Integer, String> map6 = st2.a;
                j32.e(materialButton6, "<this>");
                materialButton6.setOnClickListener(new qt2(qkVar, list, value2));
            }
            if ((j & 8224) != 0) {
                this.N.setAccessibilityLiveRegion(r10);
            }
            if ((8449 & j) != 0) {
                this.N.setVisibility(i);
            }
            if ((12290 & j) != 0) {
                nl6.q(this.N, value2);
                nl6.r(this.O, value2);
            }
            if ((j & 8216) != 0) {
                fo3.c(this.N, Integer.valueOf(iIntValue));
            }
            if ((8320 & j) != 0) {
                recyclerView = this.N;
                j32.e(recyclerView, "recycler");
                if (eVar != null) {
                    recyclerView.setAdapter(eVar);
                }
            }
            if ((8704 & j) != 0) {
                RecyclerView recyclerView12 = this.N;
                j32.e(recyclerView12, "recycler");
                adapter = recyclerView12.getAdapter();
                if (adapter instanceof ej) {
                    ejVar = (ej) adapter;
                } else {
                    ejVar = null;
                }
                if (ejVar != null) {
                    rm1Var.invoke();
                }
            }
            if ((8196 & j) != 0) {
                RecyclerView recyclerView13 = this.N;
                j32.e(recyclerView13, "recycler");
                layoutManager = recyclerView13.getLayoutManager();
                if (layoutManager instanceof LinearLayoutManager) {
                    linearLayoutManager = (LinearLayoutManager) layoutManager;
                } else {
                    linearLayoutManager = null;
                }
                recyclerView13.j(new eo3(recyclerView13, linearLayoutManager, rm1Var2));
            }
            if ((j & 10569) != 0) {
                fo3.a(this.N, list, Integer.valueOf(iIntValue2), null);
            }
            if (j18 != 0) {
                this.O.setVisibility(i3);
            }
        }
        z7 = false;
        z8 = false;
        j6 = j & 524288;
        if (j6 != 0) {
            zA4 = ViewDataBinding.A(bool);
            if (j6 != 0) {
                if (zA4) {
                    j31 = 131072;
                } else {
                    j31 = 65536;
                }
                j |= j31;
            }
            if ((j & 549755813888L) != 0) {
                if (zA4) {
                    j30 = 33554432;
                } else {
                    j30 = 16777216;
                }
                j |= j30;
            }
            if (zA4) {
                iIntValue = 2;
            } else {
                iIntValue = 3;
            }
        } else {
            iIntValue = 0;
        }
        if ((j & 4512395720392704L) != 0) {
            zA = ViewDataBinding.A(bool3);
            if ((j & 8796093022208L) != 0) {
                if (zA) {
                    j |= 549755813888L;
                } else {
                    j |= 274877906944L;
                }
            }
            if ((j & 4503599627370496L) != 0) {
                if (zA) {
                    j29 = 2199023255552L;
                } else {
                    j29 = 1099511627776L;
                }
                j |= j29;
            }
            value3 = value;
            if ((j & 4503599627370496L) != 0) {
                if (zA) {
                    resources = this.M.getResources();
                    i5 = R.string.see_all;
                } else {
                    resources = this.M.getResources();
                    i5 = R.string.see_less;
                }
                string = resources.getString(i5);
                j = j;
            } else {
                string = null;
            }
        } else {
            value3 = value;
            string = null;
            zA = false;
        }
        j7 = j & 12547;
        if (j7 != 0) {
            if (zIsEmpty) {
                z9 = true;
            } else {
                z9 = z3;
            }
            if (j7 != 0) {
                if (z9) {
                    j |= 562949953421312L;
                } else {
                    j |= 281474976710656L;
                }
            }
        } else {
            z9 = false;
        }
        j8 = j & 10497;
        if (j8 != 0) {
            if (z8) {
                z10 = true;
            } else {
                z10 = z7;
            }
            if (j8 != 0) {
                if (z10) {
                    j28 = 34359738368L;
                } else {
                    j28 = 17179869184L;
                }
                j |= j28;
            }
        } else {
            z10 = false;
        }
        j9 = j & 268435456;
        if (j9 != 0) {
            zA3 = ViewDataBinding.A(bool2);
            if (j9 != 0) {
                if (zA3) {
                    j27 = 2147483648L;
                } else {
                    j27 = 1073741824;
                }
                j |= j27;
                z11 = zA3;
            }
        } else {
            z11 = false;
        }
        z11 = zA3;
        if ((j & 8216) != 0) {
            iIntValue = 0;
        } else if (!z4) {
            iIntValue = num.intValue();
        }
        r10 = z11 ? 1 : 0;
        if ((j & 8224) != 0) {
            r10 = 0;
        } else if (z5) {
            r10 = 1;
        }
        if ((j & 13571) != 0) {
            value2 = null;
        } else if (z3) {
            value2 = str;
        }
        if ((j & 8256) != 0) {
            string = null;
        } else if (z6) {
            string = this.M.getResources().getString(R.string.see_all);
        }
        if ((j & 17179869184L) != 0) {
            if (xv2Var != null) {
                value3 = xv2Var.getValue();
            }
            if (value3 == null) {
                z = true;
            } else {
                z = false;
            }
            if ((j & 1125917086720257L) != 0) {
                if (z) {
                    j |= 144115188075855872L;
                } else {
                    j |= 72057594037927936L;
                }
            }
        }
        if ((j & 549755813888L) != 0) {
            zA2 = ViewDataBinding.A(bool);
            if ((j & 524288) != 0) {
                if (zA2) {
                    j26 = 131072;
                } else {
                    j26 = 65536;
                }
                j |= j26;
            }
            if ((j & 549755813888L) != 0) {
                if (zA2) {
                    j25 = 33554432;
                } else {
                    j25 = 16777216;
                }
                j |= j25;
            }
            if (zA2) {
                iIntValue2 = 4;
            } else {
                iIntValue2 = 6;
            }
        } else {
            iIntValue2 = 0;
        }
        j10 = j & 562949953421312L;
        if (j10 != 0) {
            if (str != null) {
                zIsEmpty2 = str.isEmpty();
            } else {
                zIsEmpty2 = false;
            }
            if (j10 != 0) {
                if (zIsEmpty2) {
                    j24 = 32768;
                } else {
                    j24 = 16384;
                }
                j |= j24;
            }
        } else {
            zIsEmpty2 = false;
        }
        if ((j & 8796093022208L) != 0) {
            iIntValue2 = 0;
        } else {
            iIntValue2 = 0;
        }
        if ((j & 10569) != 0) {
            iIntValue2 = 0;
        } else if (!z7) {
            iIntValue2 = num2.intValue();
        }
        if ((j & 16384) == 0) {
            z12 = false;
        } else {
            z12 = false;
        }
        if ((j & 562949953421312L) != 0) {
            z12 = false;
        } else if (zIsEmpty2) {
            z12 = true;
        }
        j11 = j & 12547;
        if (j11 != 0) {
            if (!z9) {
                z12 = false;
            }
            if (j11 != 0) {
                if (z12) {
                    j23 = 2251799813685248L;
                } else {
                    j23 = 1125899906842624L;
                }
                j |= j23;
            }
        } else {
            z12 = false;
        }
        if ((j & 1125899906842624L) != 0) {
            if (xv2Var != null) {
                value3 = xv2Var.getValue();
            }
            if (value3 == null) {
                z = true;
            } else {
                z = false;
            }
            if ((j & 1125917086720257L) != 0) {
                if (z) {
                    j |= 144115188075855872L;
                } else {
                    j |= 72057594037927936L;
                }
            }
        }
        tjVar = value3;
        if ((j & 72057594037927936L) != 0) {
            if (tjVar != null) {
                list = tjVar.b;
            }
            if (list == null) {
                z2 = true;
            } else {
                z2 = false;
            }
            if ((j & 15691) != 0) {
                if (z2) {
                    j22 = 8388608;
                } else {
                    j22 = 4194304;
                }
                j |= j22;
            }
        }
        j12 = j & 1125917086720257L;
        if (j12 != 0) {
            if (z) {
                z13 = true;
            } else {
                z13 = z2;
            }
            if (j12 != 0) {
                if (z13) {
                    j21 = 8589934592L;
                } else {
                    j21 = 4294967296L;
                }
                j |= j21;
            }
        } else {
            z13 = false;
        }
        if ((j & 4299161600L) != 0) {
            if (tjVar != null) {
                list = tjVar.b;
            }
            j13 = 0;
            if ((4294967296L & j) == 0) {
            }
            if ((j & 15691) != j13) {
                list = null;
            } else if (z2) {
                list = list2;
            }
            j14 = j & 1125917086720257L;
            if (j14 != j13) {
                if (z13) {
                    zIsEmpty3 = true;
                }
                if (j14 != j13) {
                    if (zIsEmpty3) {
                        j |= 36028797018963968L;
                    } else {
                        j |= 18014398509481984L;
                    }
                }
            } else {
                zIsEmpty3 = false;
            }
            j15 = j & 36028797018963968L;
            if (j15 != 0) {
                if (list2 == null) {
                    z14 = true;
                } else {
                    z14 = false;
                }
                if (j15 != 0) {
                    if (z14) {
                        j20 = 134217728;
                    } else {
                        j20 = 67108864;
                    }
                    j |= j20;
                }
            } else {
                z14 = false;
            }
            if ((j & 67108864) != 0) {
                zIsEmpty4 = false;
            } else {
                zIsEmpty4 = false;
            }
            if ((j & 36028797018963968L) != 0) {
                z15 = false;
            } else if (!z14) {
                z15 = zIsEmpty4;
            }
            j16 = j & 1125917086720257L;
            if (j16 == 0) {
                i = 0;
            } else {
                if (!zIsEmpty3) {
                    z15 = false;
                }
                if (j16 != 0) {
                    if (z15) {
                        j19 = 2097152;
                    } else {
                        j19 = 1048576;
                    }
                    j |= j19;
                }
                if (z15) {
                    i = 8;
                } else {
                    i = 0;
                }
            }
            j17 = j & 10497;
            if (j17 != 0) {
                i2 = 0;
            } else if (z10) {
                i2 = 8;
            } else {
                i2 = i;
            }
            j18 = j & 12547;
            if (j18 != 0) {
                if (z12) {
                    i4 = 8;
                } else {
                    i4 = i;
                }
                i3 = i4;
            } else {
                i3 = 0;
            }
            if (j17 != 0) {
                this.M.setVisibility(i2);
            }
            if ((j & 8256) != 0) {
                nl6.r(this.M, string);
            }
            if ((j & 13571) != 0) {
                MaterialButton materialButton7 = this.M;
                HashMap<Integer, String> map7 = st2.a;
                j32.e(materialButton7, "<this>");
                materialButton7.setOnClickListener(new qt2(qkVar, list, value2));
            }
            if ((j & 8224) != 0) {
                this.N.setAccessibilityLiveRegion(r10);
            }
            if ((8449 & j) != 0) {
                this.N.setVisibility(i);
            }
            if ((12290 & j) != 0) {
                nl6.q(this.N, value2);
                nl6.r(this.O, value2);
            }
            if ((j & 8216) != 0) {
                fo3.c(this.N, Integer.valueOf(iIntValue));
            }
            if ((8320 & j) != 0) {
                recyclerView = this.N;
                j32.e(recyclerView, "recycler");
                if (eVar != null) {
                    recyclerView.setAdapter(eVar);
                }
            }
            if ((8704 & j) != 0) {
                RecyclerView recyclerView14 = this.N;
                j32.e(recyclerView14, "recycler");
                adapter = recyclerView14.getAdapter();
                if (adapter instanceof ej) {
                    ejVar = (ej) adapter;
                } else {
                    ejVar = null;
                }
                if (ejVar != null) {
                    rm1Var.invoke();
                }
            }
            if ((8196 & j) != 0) {
                RecyclerView recyclerView15 = this.N;
                j32.e(recyclerView15, "recycler");
                layoutManager = recyclerView15.getLayoutManager();
                if (layoutManager instanceof LinearLayoutManager) {
                    linearLayoutManager = (LinearLayoutManager) layoutManager;
                } else {
                    linearLayoutManager = null;
                }
                recyclerView15.j(new eo3(recyclerView15, linearLayoutManager, rm1Var2));
            }
            if ((j & 10569) != 0) {
                fo3.a(this.N, list, Integer.valueOf(iIntValue2), null);
            }
            if (j18 != 0) {
                this.O.setVisibility(i3);
            }
        }
        j13 = 0;
        zIsEmpty3 = false;
        if ((j & 15691) != j13) {
            list = null;
        } else if (z2) {
            list = list2;
        }
        j14 = j & 1125917086720257L;
        if (j14 != j13) {
            if (z13) {
                zIsEmpty3 = true;
            }
            if (j14 != j13) {
                if (zIsEmpty3) {
                    j |= 36028797018963968L;
                } else {
                    j |= 18014398509481984L;
                }
            }
        } else {
            zIsEmpty3 = false;
        }
        j15 = j & 36028797018963968L;
        if (j15 != 0) {
            if (list2 == null) {
                z14 = true;
            } else {
                z14 = false;
            }
            if (j15 != 0) {
                if (z14) {
                    j20 = 134217728;
                } else {
                    j20 = 67108864;
                }
                j |= j20;
            }
        } else {
            z14 = false;
        }
        if ((j & 67108864) != 0) {
            zIsEmpty4 = false;
        } else {
            zIsEmpty4 = false;
        }
        if ((j & 36028797018963968L) != 0) {
            z15 = false;
        } else if (!z14) {
            z15 = zIsEmpty4;
        }
        j16 = j & 1125917086720257L;
        if (j16 == 0) {
            i = 0;
        } else {
            if (!zIsEmpty3) {
                z15 = false;
            }
            if (j16 != 0) {
                if (z15) {
                    j19 = 2097152;
                } else {
                    j19 = 1048576;
                }
                j |= j19;
            }
            if (z15) {
                i = 8;
            } else {
                i = 0;
            }
        }
        j17 = j & 10497;
        if (j17 != 0) {
            i2 = 0;
        } else if (z10) {
            i2 = 8;
        } else {
            i2 = i;
        }
        j18 = j & 12547;
        if (j18 != 0) {
            if (z12) {
                i4 = 8;
            } else {
                i4 = i;
            }
            i3 = i4;
        } else {
            i3 = 0;
        }
        if (j17 != 0) {
            this.M.setVisibility(i2);
        }
        if ((j & 8256) != 0) {
            nl6.r(this.M, string);
        }
        if ((j & 13571) != 0) {
            MaterialButton materialButton8 = this.M;
            HashMap<Integer, String> map8 = st2.a;
            j32.e(materialButton8, "<this>");
            materialButton8.setOnClickListener(new qt2(qkVar, list, value2));
        }
        if ((j & 8224) != 0) {
            this.N.setAccessibilityLiveRegion(r10);
        }
        if ((8449 & j) != 0) {
            this.N.setVisibility(i);
        }
        if ((12290 & j) != 0) {
            nl6.q(this.N, value2);
            nl6.r(this.O, value2);
        }
        if ((j & 8216) != 0) {
            fo3.c(this.N, Integer.valueOf(iIntValue));
        }
        if ((8320 & j) != 0) {
            recyclerView = this.N;
            j32.e(recyclerView, "recycler");
            if (eVar != null) {
                recyclerView.setAdapter(eVar);
            }
        }
        if ((8704 & j) != 0) {
            RecyclerView recyclerView16 = this.N;
            j32.e(recyclerView16, "recycler");
            adapter = recyclerView16.getAdapter();
            if (adapter instanceof ej) {
                ejVar = (ej) adapter;
            } else {
                ejVar = null;
            }
            if (ejVar != null) {
                rm1Var.invoke();
            }
        }
        if ((8196 & j) != 0) {
            RecyclerView recyclerView17 = this.N;
            j32.e(recyclerView17, "recycler");
            layoutManager = recyclerView17.getLayoutManager();
            if (layoutManager instanceof LinearLayoutManager) {
                linearLayoutManager = (LinearLayoutManager) layoutManager;
            } else {
                linearLayoutManager = null;
            }
            recyclerView17.j(new eo3(recyclerView17, linearLayoutManager, rm1Var2));
        }
        if ((j & 10569) != 0) {
            fo3.a(this.N, list, Integer.valueOf(iIntValue2), null);
        }
        if (j18 != 0) {
            this.O.setVisibility(i3);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.c0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.c0 = 8192L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        if (i == 0) {
            if (i2 != 0) {
                return false;
            }
            synchronized (this) {
                this.c0 |= 1;
            }
            return true;
        }
        if (i != 1) {
            return false;
        }
        if (i2 != 0) {
            return false;
        }
        synchronized (this) {
            this.c0 |= 2;
        }
        return true;
    }
}
