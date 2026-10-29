package com.shabakaty.downloader;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.HorizontalScrollView;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.cinemana.pro.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.chip.ChipGroup;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.player.FastForwardRewindButton;
import com.shabakaty.cinemana.player.NextPreviousEpisodeButton;
import java.util.List;

/* JADX INFO: compiled from: CinemanaPlaybackControlViewBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class q00 extends p00 implements lm0.a {
    public static final SparseIntArray t0;
    public final mm0 i0;
    public final mm0 j0;
    public final mm0 k0;
    public final mm0 l0;
    public final mm0 m0;
    public final mm0 n0;
    public final mm0 o0;
    public final mm0 p0;
    public final mm0 q0;
    public final mm0 r0;
    public long s0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        t0 = sparseIntArray;
        sparseIntArray.put(R.id.player_season_and_episode, 16);
        sparseIntArray.put(R.id.guideline, 17);
        sparseIntArray.put(R.id.guideline4, 18);
        sparseIntArray.put(R.id.controller_overlay_view, 19);
        sparseIntArray.put(R.id.inner_episodes_constraint, 20);
        sparseIntArray.put(R.id.seasons_chip_group_scroll, 21);
        sparseIntArray.put(R.id.seasons_chip_group, 22);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public q00(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 23, null, t0);
        super(gl0Var, view, 14, (View) objArrS[19], (FastForwardRewindButton) objArrS[6], (Guideline) objArrS[17], (Guideline) objArrS[18], (ConstraintLayout) objArrS[20], (RecyclerView) objArrS[15], (NextPreviousEpisodeButton) objArrS[8], (SimpleDraweeView) objArrS[4], (SimpleDraweeView) objArrS[2], (SeekBar) objArrS[14], (SimpleDraweeView) objArrS[5], (ConstraintLayout) objArrS[0], (TextView) objArrS[16], (NextPreviousEpisodeButton) objArrS[7], (FastForwardRewindButton) objArrS[9], (ChipGroup) objArrS[22], (HorizontalScrollView) objArrS[21], (SimpleDraweeView) objArrS[3], (Button) objArrS[11], (TextView) objArrS[12], (TextView) objArrS[10], (SimpleDraweeView) objArrS[13], (TextView) objArrS[1]);
        this.s0 = -1L;
        this.N.setTag(null);
        this.P.setTag(null);
        this.Q.setTag(null);
        this.R.setTag(null);
        this.S.setTag(null);
        this.T.setTag(null);
        this.U.setTag(null);
        this.V.setTag(null);
        this.X.setTag(null);
        this.Y.setTag(null);
        this.a0.setTag(null);
        this.b0.setTag(null);
        this.c0.setTag(null);
        this.d0.setTag(null);
        this.e0.setTag(null);
        this.f0.setTag(null);
        view.setTag(R.id.dataBinding, this);
        this.i0 = new lm0(this, 3);
        this.j0 = new lm0(this, 6);
        this.k0 = new lm0(this, 4);
        this.l0 = new lm0(this, 8);
        this.m0 = new lm0(this, 7);
        this.n0 = new lm0(this, 1);
        this.o0 = new lm0(this, 2);
        this.p0 = new lm0(this, 9);
        this.q0 = new lm0(this, 5);
        this.r0 = new lm0(this, 10);
        p();
    }

    public static String ca1CleanPlayerTitle130(String str) {
        Object obj;
        if (str == null) {
            return str;
        }
        String strTrim = str.replaceAll("(?i)\\s*\\[cnm-[a-z0-9]+\\]\\s*", " ").replaceAll("\\s+", " ").trim();
        do {
            obj = strTrim;
            strTrim = strTrim.replaceFirst("(?i)\\s*[\\[(]\\s*(?:s(?:eason)?\\s*0*\\d{1,3})(?:\\s*[-._ ]*e(?:p(?:isode)?)?\\s*0*\\d{1,4})?\\s*[\\])]\\s*$", BuildConfig.FLAVOR).trim().replaceFirst("(?i)\\s*(?:[-–—|,:]\\s*)?s(?:eason)?\\s*0*\\d{1,3}(?:\\s*[-._ ]*e(?:p(?:isode)?)?\\s*0*\\d{1,4})?\\s*$", BuildConfig.FLAVOR).trim().replaceFirst("\\s*(?:[-–—|،,:]\\s*)?الموسم\\s*[٠-٩0-9]{1,3}(?:\\s*[-–—|،,:]?\\s*الحلقة\\s*[٠-٩0-9]{1,4})?\\s*$", BuildConfig.FLAVOR).trim();
        } while (!strTrim.equals(obj));
        String strTrim2 = strTrim.replaceFirst("[\\s,،;؛:|\\-–—_]+$", BuildConfig.FLAVOR).trim();
        return strTrim2.length() == 0 ? str.replaceAll("(?i)\\s*\\[cnm-[a-z0-9]+\\]\\s*", " ").replaceAll("\\s+", " ").trim() : strTrim2;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (16 == i) {
            G((ud3) obj);
        } else {
            if (38 != i) {
                return false;
            }
            H((q10) obj);
        }
        return true;
    }

    @Override // com.shabakaty.downloader.p00
    public void G(ud3 ud3Var) {
        this.h0 = ud3Var;
        synchronized (this) {
            this.s0 |= 16384;
        }
        f(16);
        x();
    }

    @Override // com.shabakaty.downloader.p00
    public void H(q10 q10Var) {
        this.g0 = q10Var;
        synchronized (this) {
            this.s0 |= 32768;
        }
        f(38);
        x();
    }

    @Override // com.shabakaty.downloader.lm0.a
    public final void d(int i, View view) {
        switch (i) {
            case 1:
                ud3 ud3Var = this.h0;
                if (ud3Var != null) {
                    ud3Var.j();
                }
                break;
            case 2:
                ud3 ud3Var2 = this.h0;
                if (ud3Var2 != null) {
                    ud3Var2.c();
                }
                break;
            case 3:
                ud3 ud3Var3 = this.h0;
                if (ud3Var3 != null) {
                    ud3Var3.d();
                }
                break;
            case 4:
                ud3 ud3Var4 = this.h0;
                if (ud3Var4 != null) {
                    ud3Var4.e();
                }
                break;
            case 5:
                ud3 ud3Var5 = this.h0;
                if (ud3Var5 != null) {
                    ud3Var5.k();
                }
                break;
            case 6:
                ud3 ud3Var6 = this.h0;
                if (ud3Var6 != null) {
                    ud3Var6.a();
                }
                break;
            case 7:
                ud3 ud3Var7 = this.h0;
                if (ud3Var7 != null) {
                    ud3Var7.g();
                }
                break;
            case 8:
                ud3 ud3Var8 = this.h0;
                if (ud3Var8 != null) {
                    ud3Var8.h();
                }
                break;
            case 9:
                ud3 ud3Var9 = this.h0;
                if (ud3Var9 != null) {
                    ud3Var9.l();
                }
                break;
            case 10:
                ud3 ud3Var10 = this.h0;
                if (ud3Var10 != null) {
                    ud3Var10.r();
                }
                break;
        }
    }

    /* JADX WARN: Code duplicated, block: B:126:0x01d5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:127:0x01d7  */
    /* JADX WARN: Code duplicated, block: B:128:0x01da  */
    /* JADX WARN: Code duplicated, block: B:131:0x01e2  */
    /* JADX WARN: Code duplicated, block: B:132:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:135:0x01f6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:136:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:137:0x01fb  */
    /* JADX WARN: Code duplicated, block: B:140:0x0206 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:141:0x0208  */
    /* JADX WARN: Code duplicated, block: B:142:0x020d  */
    /* JADX WARN: Code duplicated, block: B:145:0x0221 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:146:0x0223  */
    /* JADX WARN: Code duplicated, block: B:147:0x0229  */
    /* JADX WARN: Code duplicated, block: B:154:0x023c  */
    /* JADX WARN: Code duplicated, block: B:158:0x0248 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:159:0x024a  */
    /* JADX WARN: Code duplicated, block: B:160:0x0251  */
    /* JADX WARN: Code duplicated, block: B:163:0x025d  */
    /* JADX WARN: Code duplicated, block: B:164:0x0264  */
    /* JADX WARN: Code duplicated, block: B:166:0x0267  */
    /* JADX WARN: Code duplicated, block: B:167:0x0270  */
    /* JADX WARN: Code duplicated, block: B:168:0x0276  */
    /* JADX WARN: Code duplicated, block: B:16:0x0061  */
    /* JADX WARN: Code duplicated, block: B:171:0x0288 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:172:0x028a  */
    /* JADX WARN: Code duplicated, block: B:173:0x0291  */
    /* JADX WARN: Code duplicated, block: B:176:0x029d  */
    /* JADX WARN: Code duplicated, block: B:177:0x02a4  */
    /* JADX WARN: Code duplicated, block: B:179:0x02a7  */
    /* JADX WARN: Code duplicated, block: B:180:0x02ac  */
    /* JADX WARN: Code duplicated, block: B:184:0x02b9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:185:0x02bb  */
    /* JADX WARN: Code duplicated, block: B:186:0x02c0  */
    /* JADX WARN: Code duplicated, block: B:189:0x02ca  */
    /* JADX WARN: Code duplicated, block: B:190:0x02d1  */
    /* JADX WARN: Code duplicated, block: B:194:0x02dc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:195:0x02de  */
    /* JADX WARN: Code duplicated, block: B:196:0x02e3  */
    /* JADX WARN: Code duplicated, block: B:199:0x02ed  */
    /* JADX WARN: Code duplicated, block: B:200:0x0311  */
    /* JADX WARN: Code duplicated, block: B:255:0x0408 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:257:0x040b  */
    /* JADX WARN: Code duplicated, block: B:259:0x040e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:25:0x007b  */
    /* JADX WARN: Code duplicated, block: B:260:0x0410  */
    /* JADX WARN: Code duplicated, block: B:261:0x0414  */
    /* JADX WARN: Code duplicated, block: B:265:0x041c  */
    /* JADX WARN: Code duplicated, block: B:266:0x041f A[PHI: r2
      0x041f: PHI (r2v3 long) = (r2v2 long), (r2v6 long) binds: [B:254:0x0406, B:263:0x0419] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:269:0x0428 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:271:0x042b  */
    /* JADX WARN: Code duplicated, block: B:273:0x042f  */
    /* JADX WARN: Code duplicated, block: B:274:0x0432  */
    /* JADX WARN: Code duplicated, block: B:276:0x0439  */
    /* JADX WARN: Code duplicated, block: B:279:0x0448  */
    /* JADX WARN: Code duplicated, block: B:280:0x0533  */
    /* JADX WARN: Code duplicated, block: B:283:0x0545  */
    /* JADX WARN: Code duplicated, block: B:286:0x0566  */
    /* JADX WARN: Code duplicated, block: B:288:0x058a  */
    /* JADX WARN: Code duplicated, block: B:291:0x0597  */
    /* JADX WARN: Code duplicated, block: B:294:0x05a3  */
    /* JADX WARN: Code duplicated, block: B:297:0x05ae  */
    /* JADX WARN: Code duplicated, block: B:299:0x05c5  */
    /* JADX WARN: Code duplicated, block: B:302:0x05dd  */
    /* JADX WARN: Code duplicated, block: B:305:0x05f1  */
    /* JADX WARN: Code duplicated, block: B:308:0x05fe  */
    /* JADX WARN: Code duplicated, block: B:311:0x060d  */
    /* JADX WARN: Code duplicated, block: B:313:0x0617  */
    /* JADX WARN: Code duplicated, block: B:316:0x0620  */
    /* JADX WARN: Code duplicated, block: B:319:0x062f  */
    /* JADX WARN: Code duplicated, block: B:322:0x063c  */
    /* JADX WARN: Code duplicated, block: B:325:0x0649  */
    /* JADX WARN: Code duplicated, block: B:328:0x0658  */
    /* JADX WARN: Code duplicated, block: B:335:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:74:0x0116  */
    /* JADX WARN: Code duplicated, block: B:86:0x013b  */
    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        float f;
        Boolean bool;
        String str;
        int i;
        int i2;
        List<b41> list;
        Boolean bool2;
        Boolean bool3;
        String str2;
        boolean z;
        int i3;
        Drawable drawable;
        String str3;
        String str4;
        boolean z2;
        String str5;
        Boolean bool4;
        xv2<VideoModel> xv2Var;
        String str6;
        VideoModel value;
        int iIntValue;
        long j2;
        int i4;
        int i5;
        String str7;
        boolean zEquals;
        long j3;
        int i6;
        long j4;
        int i7;
        SeekBar seekBar;
        int i8;
        int i9;
        long j5;
        List<b41> value2;
        Boolean value3;
        Boolean value4;
        boolean zA;
        String string;
        Boolean value5;
        int iIntValue2;
        Drawable drawableB;
        String string2;
        int iIntValue3;
        long j6;
        Boolean value6;
        boolean zA2;
        int i10;
        String strC;
        String value7;
        xv2<String> xv2Var2;
        xv2<String> xv2Var3;
        xv2<Long> xv2Var4;
        Long value8;
        xv2<VideoModel> xv2Var5;
        xv2<Boolean> xv2Var6;
        long j7;
        int i11;
        xv2<Long> xv2Var7;
        Resources resources;
        int i12;
        long j8;
        long j9;
        Resources resources2;
        int i13;
        synchronized (this) {
            j = this.s0;
            this.s0 = 0L;
        }
        q10 q10Var = this.g0;
        float f2 = 0.0f;
        if ((114687 & j) != 0) {
            if ((j & 98305) == 0) {
                value2 = null;
            } else {
                xv2<List<b41>> xv2Var8 = q10Var != null ? q10Var.A : null;
                E(0, xv2Var8);
                if (xv2Var8 != null) {
                    value2 = xv2Var8.getValue();
                } else {
                    value2 = null;
                }
            }
            if ((j & 98306) == 0) {
                value3 = null;
            } else {
                xv2<Boolean> xv2Var9 = q10Var != null ? q10Var.s : null;
                E(1, xv2Var9);
                if (xv2Var9 != null) {
                    value3 = xv2Var9.getValue();
                } else {
                    value3 = null;
                }
            }
            long j10 = j & 98308;
            if (j10 != 0) {
                xv2<Boolean> xv2Var10 = q10Var != null ? q10Var.C : null;
                E(2, xv2Var10);
                value4 = xv2Var10 != null ? xv2Var10.getValue() : null;
                zA = ViewDataBinding.A(value4);
                if (j10 != 0) {
                    j |= zA ? 68719476736L : 34359738368L;
                }
                f2 = zA ? 1.0f : 0.3f;
            } else {
                value4 = null;
                zA = false;
            }
            long j11 = j & 98312;
            if (j11 != 0) {
                xv2<Boolean> xv2Var11 = q10Var != null ? q10Var.G : null;
                E(3, xv2Var11);
                boolean zA3 = ViewDataBinding.A(xv2Var11 != null ? xv2Var11.getValue() : null);
                if (j11 != 0) {
                    j |= zA3 ? 268435456L : 134217728L;
                }
                if (zA3) {
                    resources2 = this.e0.getResources();
                    i13 = R.string.toggle_landscape_txt;
                } else {
                    resources2 = this.e0.getResources();
                    i13 = R.string.toggle_portrait_txt;
                }
                string = resources2.getString(i13);
            } else {
                string = null;
            }
            if ((j & 98336) == 0) {
                value5 = null;
            } else {
                xv2<Boolean> xv2Var12 = q10Var != null ? q10Var.t : null;
                E(5, xv2Var12);
                if (xv2Var12 != null) {
                    value5 = xv2Var12.getValue();
                } else {
                    value5 = null;
                }
            }
            if ((j & 98368) == 0) {
                iIntValue2 = 0;
            } else {
                xv2<Long> xv2Var13 = q10Var != null ? q10Var.w : null;
                E(6, xv2Var13);
                Long value9 = xv2Var13 != null ? xv2Var13.getValue() : null;
                if (value9 != null) {
                    iIntValue2 = value9.intValue();
                } else {
                    iIntValue2 = 0;
                }
            }
            long j12 = j & 98432;
            if (j12 != 0) {
                xv2<Boolean> xv2Var14 = q10Var != null ? q10Var.y : null;
                E(7, xv2Var14);
                boolean zA4 = ViewDataBinding.A(xv2Var14 != null ? xv2Var14.getValue() : null);
                if (j12 != 0) {
                    if (zA4) {
                        j8 = j | 1048576;
                        j9 = 16777216;
                    } else {
                        j8 = j | 524288;
                        j9 = 8388608;
                    }
                    j = j8 | j9;
                }
                if (zA4) {
                    resources = this.R.getResources();
                    i12 = R.string.start_playback_txt;
                } else {
                    resources = this.R.getResources();
                    i12 = R.string.pause_playback_txt;
                }
                string2 = resources.getString(i12);
                drawableB = ra.b(this.R.getContext(), zA4 ? R.drawable.ic_play : R.drawable.ic_pause);
            } else {
                drawableB = null;
                string2 = null;
            }
            if ((j & 98560) != 0) {
                if (q10Var != null) {
                    xv2Var7 = q10Var.F;
                    i11 = 8;
                } else {
                    i11 = 8;
                    xv2Var7 = null;
                }
                E(i11, xv2Var7);
                Long value10 = xv2Var7 != null ? xv2Var7.getValue() : null;
                iIntValue3 = value10 != null ? value10.intValue() : 0;
                if ((j & 99856) != 0) {
                    if (q10Var != null) {
                        xv2Var6 = q10Var.D;
                    } else {
                        xv2Var6 = null;
                    }
                    E(9, xv2Var6);
                    if (xv2Var6 != null) {
                        value6 = xv2Var6.getValue();
                    } else {
                        value6 = null;
                    }
                    zA2 = ViewDataBinding.A(value6);
                    if ((j & 99840) != 0) {
                        if (zA2) {
                            j |= 262144;
                        } else {
                            j |= 131072;
                        }
                    }
                    if ((j & 98832) != 0) {
                        if (zA2) {
                            j = j | 67108864 | 17179869184L;
                        } else {
                            j = j | 33554432 | 8589934592L;
                        }
                    }
                    j6 = 0;
                    if ((j & 98816) != 0) {
                        if (zA2) {
                            j7 = 274877906944L;
                        } else {
                            j7 = 137438953472L;
                        }
                        j |= j7;
                    }
                    if ((j & 98816) == 0 && !zA2) {
                        i10 = 8;
                    }
                    if ((j & 99328) != j6) {
                        if (q10Var != null) {
                            xv2Var5 = q10Var.z;
                        } else {
                            xv2Var5 = null;
                        }
                        E(10, xv2Var5);
                        if (xv2Var5 != null) {
                            value = xv2Var5.getValue();
                        } else {
                            value = null;
                        }
                        if (value != null) {
                            strC = value.c();
                            xv2Var = xv2Var5;
                            str6 = value.kind;
                        } else {
                            xv2Var = xv2Var5;
                            str6 = null;
                            strC = null;
                        }
                    } else {
                        value6 = value6;
                        iIntValue3 = iIntValue3;
                        str6 = null;
                        value = null;
                        strC = null;
                        xv2Var = null;
                    }
                    if ((j & 100352) != 0) {
                        if (q10Var != null) {
                            xv2Var4 = q10Var.E;
                        } else {
                            xv2Var4 = null;
                        }
                        E(11, xv2Var4);
                        if (xv2Var4 != null) {
                            value8 = xv2Var4.getValue();
                        } else {
                            value8 = null;
                        }
                        iIntValue = value8 != null ? value8.intValue() : 0;
                        if ((j & 102400) != 0) {
                            if (q10Var != null) {
                                xv2Var3 = q10Var.u;
                            } else {
                                xv2Var3 = null;
                            }
                            E(12, xv2Var3);
                            value7 = xv2Var3 != null ? xv2Var3.getValue() : null;
                            if ((j & 106496) != 0) {
                                if (q10Var != null) {
                                    xv2Var2 = q10Var.v;
                                } else {
                                    xv2Var2 = null;
                                }
                                E(13, xv2Var2);
                                if (xv2Var2 != null) {
                                    String value11 = xv2Var2.getValue();
                                    bool = value6;
                                    z2 = zA2;
                                    drawable = drawableB;
                                    str2 = string2;
                                    z = zA;
                                    bool2 = value3;
                                    i = iIntValue2;
                                    i3 = i10;
                                    str4 = value7;
                                    f = f2;
                                    str3 = string;
                                    list = value2;
                                    str = strC;
                                    bool4 = value5;
                                    bool3 = value4;
                                    i2 = iIntValue3;
                                    str5 = value11;
                                    j = j;
                                }
                            } else {
                                j = j;
                            }
                            bool = value6;
                            j = j;
                            z2 = zA2;
                            drawable = drawableB;
                            str2 = string2;
                            z = zA;
                            bool2 = value3;
                            i = iIntValue2;
                            i3 = i10;
                            str4 = value7;
                            f = f2;
                            str3 = string;
                            list = value2;
                            str = strC;
                            bool4 = value5;
                            bool3 = value4;
                            i2 = iIntValue3;
                            str5 = null;
                        } else {
                            iIntValue = iIntValue;
                        }
                        if ((j & 106496) != 0) {
                            if (q10Var != null) {
                                xv2Var2 = q10Var.v;
                            } else {
                                xv2Var2 = null;
                            }
                            E(13, xv2Var2);
                            if (xv2Var2 != null) {
                                String value12 = xv2Var2.getValue();
                                bool = value6;
                                z2 = zA2;
                                drawable = drawableB;
                                str2 = string2;
                                z = zA;
                                bool2 = value3;
                                i = iIntValue2;
                                i3 = i10;
                                str4 = value7;
                                f = f2;
                                str3 = string;
                                list = value2;
                                str = strC;
                                bool4 = value5;
                                bool3 = value4;
                                i2 = iIntValue3;
                                str5 = value12;
                                j = j;
                            }
                        } else {
                            j = j;
                        }
                        bool = value6;
                        j = j;
                        z2 = zA2;
                        drawable = drawableB;
                        str2 = string2;
                        z = zA;
                        bool2 = value3;
                        i = iIntValue2;
                        i3 = i10;
                        str4 = value7;
                        f = f2;
                        str3 = string;
                        list = value2;
                        str = strC;
                        bool4 = value5;
                        bool3 = value4;
                        i2 = iIntValue3;
                        str5 = null;
                    } else {
                        str6 = str6;
                        value = value;
                    }
                    if ((j & 102400) != 0) {
                        if (q10Var != null) {
                            xv2Var3 = q10Var.u;
                        } else {
                            xv2Var3 = null;
                        }
                        E(12, xv2Var3);
                        if (xv2Var3 != null) {
                        }
                        if ((j & 106496) != 0) {
                            if (q10Var != null) {
                                xv2Var2 = q10Var.v;
                            } else {
                                xv2Var2 = null;
                            }
                            E(13, xv2Var2);
                            if (xv2Var2 != null) {
                                String value13 = xv2Var2.getValue();
                                bool = value6;
                                z2 = zA2;
                                drawable = drawableB;
                                str2 = string2;
                                z = zA;
                                bool2 = value3;
                                i = iIntValue2;
                                i3 = i10;
                                str4 = value7;
                                f = f2;
                                str3 = string;
                                list = value2;
                                str = strC;
                                bool4 = value5;
                                bool3 = value4;
                                i2 = iIntValue3;
                                str5 = value13;
                                j = j;
                            }
                        } else {
                            j = j;
                        }
                        bool = value6;
                        j = j;
                        z2 = zA2;
                        drawable = drawableB;
                        str2 = string2;
                        z = zA;
                        bool2 = value3;
                        i = iIntValue2;
                        i3 = i10;
                        str4 = value7;
                        f = f2;
                        str3 = string;
                        list = value2;
                        str = strC;
                        bool4 = value5;
                        bool3 = value4;
                        i2 = iIntValue3;
                        str5 = null;
                    } else {
                        iIntValue = iIntValue;
                    }
                    if ((j & 106496) != 0) {
                        if (q10Var != null) {
                            xv2Var2 = q10Var.v;
                        } else {
                            xv2Var2 = null;
                        }
                        E(13, xv2Var2);
                        if (xv2Var2 != null) {
                            String value14 = xv2Var2.getValue();
                            bool = value6;
                            z2 = zA2;
                            drawable = drawableB;
                            str2 = string2;
                            z = zA;
                            bool2 = value3;
                            i = iIntValue2;
                            i3 = i10;
                            str4 = value7;
                            f = f2;
                            str3 = string;
                            list = value2;
                            str = strC;
                            bool4 = value5;
                            bool3 = value4;
                            i2 = iIntValue3;
                            str5 = value14;
                            j = j;
                        }
                    } else {
                        j = j;
                    }
                    bool = value6;
                    j = j;
                    z2 = zA2;
                    drawable = drawableB;
                    str2 = string2;
                    z = zA;
                    bool2 = value3;
                    i = iIntValue2;
                    i3 = i10;
                    str4 = value7;
                    f = f2;
                    str3 = string;
                    list = value2;
                    str = strC;
                    bool4 = value5;
                    bool3 = value4;
                    i2 = iIntValue3;
                    str5 = null;
                } else {
                    j6 = 0;
                    value6 = null;
                    zA2 = false;
                }
                i10 = 0;
                if ((j & 99328) != j6) {
                    if (q10Var != null) {
                        xv2Var5 = q10Var.z;
                    } else {
                        xv2Var5 = null;
                    }
                    E(10, xv2Var5);
                    if (xv2Var5 != null) {
                        value = xv2Var5.getValue();
                    } else {
                        value = null;
                    }
                    if (value != null) {
                        strC = value.c();
                        xv2Var = xv2Var5;
                        str6 = value.kind;
                    } else {
                        xv2Var = xv2Var5;
                        str6 = null;
                        strC = null;
                    }
                } else {
                    value6 = value6;
                    iIntValue3 = iIntValue3;
                    str6 = null;
                    value = null;
                    strC = null;
                    xv2Var = null;
                }
                if ((j & 100352) != 0) {
                    if (q10Var != null) {
                        xv2Var4 = q10Var.E;
                    } else {
                        xv2Var4 = null;
                    }
                    E(11, xv2Var4);
                    if (xv2Var4 != null) {
                        value8 = xv2Var4.getValue();
                    } else {
                        value8 = null;
                    }
                    if (value8 != null) {
                    }
                    if ((j & 102400) != 0) {
                        if (q10Var != null) {
                            xv2Var3 = q10Var.u;
                        } else {
                            xv2Var3 = null;
                        }
                        E(12, xv2Var3);
                        if (xv2Var3 != null) {
                        }
                        if ((j & 106496) != 0) {
                            if (q10Var != null) {
                                xv2Var2 = q10Var.v;
                            } else {
                                xv2Var2 = null;
                            }
                            E(13, xv2Var2);
                            if (xv2Var2 != null) {
                                String value15 = xv2Var2.getValue();
                                bool = value6;
                                z2 = zA2;
                                drawable = drawableB;
                                str2 = string2;
                                z = zA;
                                bool2 = value3;
                                i = iIntValue2;
                                i3 = i10;
                                str4 = value7;
                                f = f2;
                                str3 = string;
                                list = value2;
                                str = strC;
                                bool4 = value5;
                                bool3 = value4;
                                i2 = iIntValue3;
                                str5 = value15;
                                j = j;
                            }
                        } else {
                            j = j;
                        }
                        bool = value6;
                        j = j;
                        z2 = zA2;
                        drawable = drawableB;
                        str2 = string2;
                        z = zA;
                        bool2 = value3;
                        i = iIntValue2;
                        i3 = i10;
                        str4 = value7;
                        f = f2;
                        str3 = string;
                        list = value2;
                        str = strC;
                        bool4 = value5;
                        bool3 = value4;
                        i2 = iIntValue3;
                        str5 = null;
                    } else {
                        iIntValue = iIntValue;
                    }
                    if ((j & 106496) != 0) {
                        if (q10Var != null) {
                            xv2Var2 = q10Var.v;
                        } else {
                            xv2Var2 = null;
                        }
                        E(13, xv2Var2);
                        if (xv2Var2 != null) {
                            String value16 = xv2Var2.getValue();
                            bool = value6;
                            z2 = zA2;
                            drawable = drawableB;
                            str2 = string2;
                            z = zA;
                            bool2 = value3;
                            i = iIntValue2;
                            i3 = i10;
                            str4 = value7;
                            f = f2;
                            str3 = string;
                            list = value2;
                            str = strC;
                            bool4 = value5;
                            bool3 = value4;
                            i2 = iIntValue3;
                            str5 = value16;
                            j = j;
                        }
                    } else {
                        j = j;
                    }
                    bool = value6;
                    j = j;
                    z2 = zA2;
                    drawable = drawableB;
                    str2 = string2;
                    z = zA;
                    bool2 = value3;
                    i = iIntValue2;
                    i3 = i10;
                    str4 = value7;
                    f = f2;
                    str3 = string;
                    list = value2;
                    str = strC;
                    bool4 = value5;
                    bool3 = value4;
                    i2 = iIntValue3;
                    str5 = null;
                } else {
                    str6 = str6;
                    value = value;
                }
                if ((j & 102400) != 0) {
                    if (q10Var != null) {
                        xv2Var3 = q10Var.u;
                    } else {
                        xv2Var3 = null;
                    }
                    E(12, xv2Var3);
                    if (xv2Var3 != null) {
                    }
                    if ((j & 106496) != 0) {
                        if (q10Var != null) {
                            xv2Var2 = q10Var.v;
                        } else {
                            xv2Var2 = null;
                        }
                        E(13, xv2Var2);
                        if (xv2Var2 != null) {
                            String value17 = xv2Var2.getValue();
                            bool = value6;
                            z2 = zA2;
                            drawable = drawableB;
                            str2 = string2;
                            z = zA;
                            bool2 = value3;
                            i = iIntValue2;
                            i3 = i10;
                            str4 = value7;
                            f = f2;
                            str3 = string;
                            list = value2;
                            str = strC;
                            bool4 = value5;
                            bool3 = value4;
                            i2 = iIntValue3;
                            str5 = value17;
                            j = j;
                        }
                    } else {
                        j = j;
                    }
                    bool = value6;
                    j = j;
                    z2 = zA2;
                    drawable = drawableB;
                    str2 = string2;
                    z = zA;
                    bool2 = value3;
                    i = iIntValue2;
                    i3 = i10;
                    str4 = value7;
                    f = f2;
                    str3 = string;
                    list = value2;
                    str = strC;
                    bool4 = value5;
                    bool3 = value4;
                    i2 = iIntValue3;
                    str5 = null;
                } else {
                    iIntValue = iIntValue;
                }
                if ((j & 106496) != 0) {
                    if (q10Var != null) {
                        xv2Var2 = q10Var.v;
                    } else {
                        xv2Var2 = null;
                    }
                    E(13, xv2Var2);
                    if (xv2Var2 != null) {
                        String value18 = xv2Var2.getValue();
                        bool = value6;
                        z2 = zA2;
                        drawable = drawableB;
                        str2 = string2;
                        z = zA;
                        bool2 = value3;
                        i = iIntValue2;
                        i3 = i10;
                        str4 = value7;
                        f = f2;
                        str3 = string;
                        list = value2;
                        str = strC;
                        bool4 = value5;
                        bool3 = value4;
                        i2 = iIntValue3;
                        str5 = value18;
                        j = j;
                    }
                } else {
                    j = j;
                }
                bool = value6;
                j = j;
                z2 = zA2;
                drawable = drawableB;
                str2 = string2;
                z = zA;
                bool2 = value3;
                i = iIntValue2;
                i3 = i10;
                str4 = value7;
                f = f2;
                str3 = string;
                list = value2;
                str = strC;
                bool4 = value5;
                bool3 = value4;
                i2 = iIntValue3;
                str5 = null;
            }
            if ((j & 99856) != 0) {
                if (q10Var != null) {
                    xv2Var6 = q10Var.D;
                } else {
                    xv2Var6 = null;
                }
                E(9, xv2Var6);
                if (xv2Var6 != null) {
                    value6 = xv2Var6.getValue();
                } else {
                    value6 = null;
                }
                zA2 = ViewDataBinding.A(value6);
                if ((j & 99840) != 0) {
                    if (zA2) {
                        j |= 262144;
                    } else {
                        j |= 131072;
                    }
                }
                if ((j & 98832) != 0) {
                    if (zA2) {
                        j = j | 67108864 | 17179869184L;
                    } else {
                        j = j | 33554432 | 8589934592L;
                    }
                }
                j6 = 0;
                if ((j & 98816) != 0) {
                    if (zA2) {
                        j7 = 274877906944L;
                    } else {
                        j7 = 137438953472L;
                    }
                    j |= j7;
                }
                if ((j & 98816) == 0) {
                }
                if ((j & 99328) != j6) {
                    if (q10Var != null) {
                        xv2Var5 = q10Var.z;
                    } else {
                        xv2Var5 = null;
                    }
                    E(10, xv2Var5);
                    if (xv2Var5 != null) {
                        value = xv2Var5.getValue();
                    } else {
                        value = null;
                    }
                    if (value != null) {
                        strC = value.c();
                        xv2Var = xv2Var5;
                        str6 = value.kind;
                    } else {
                        xv2Var = xv2Var5;
                        str6 = null;
                        strC = null;
                    }
                } else {
                    value6 = value6;
                    iIntValue3 = iIntValue3;
                    str6 = null;
                    value = null;
                    strC = null;
                    xv2Var = null;
                }
                if ((j & 100352) != 0) {
                    if (q10Var != null) {
                        xv2Var4 = q10Var.E;
                    } else {
                        xv2Var4 = null;
                    }
                    E(11, xv2Var4);
                    if (xv2Var4 != null) {
                        value8 = xv2Var4.getValue();
                    } else {
                        value8 = null;
                    }
                    if (value8 != null) {
                    }
                    if ((j & 102400) != 0) {
                        if (q10Var != null) {
                            xv2Var3 = q10Var.u;
                        } else {
                            xv2Var3 = null;
                        }
                        E(12, xv2Var3);
                        if (xv2Var3 != null) {
                        }
                        if ((j & 106496) != 0) {
                            if (q10Var != null) {
                                xv2Var2 = q10Var.v;
                            } else {
                                xv2Var2 = null;
                            }
                            E(13, xv2Var2);
                            if (xv2Var2 != null) {
                                String value19 = xv2Var2.getValue();
                                bool = value6;
                                z2 = zA2;
                                drawable = drawableB;
                                str2 = string2;
                                z = zA;
                                bool2 = value3;
                                i = iIntValue2;
                                i3 = i10;
                                str4 = value7;
                                f = f2;
                                str3 = string;
                                list = value2;
                                str = strC;
                                bool4 = value5;
                                bool3 = value4;
                                i2 = iIntValue3;
                                str5 = value19;
                                j = j;
                            }
                        } else {
                            j = j;
                        }
                        bool = value6;
                        j = j;
                        z2 = zA2;
                        drawable = drawableB;
                        str2 = string2;
                        z = zA;
                        bool2 = value3;
                        i = iIntValue2;
                        i3 = i10;
                        str4 = value7;
                        f = f2;
                        str3 = string;
                        list = value2;
                        str = strC;
                        bool4 = value5;
                        bool3 = value4;
                        i2 = iIntValue3;
                        str5 = null;
                    } else {
                        iIntValue = iIntValue;
                    }
                    if ((j & 106496) != 0) {
                        if (q10Var != null) {
                            xv2Var2 = q10Var.v;
                        } else {
                            xv2Var2 = null;
                        }
                        E(13, xv2Var2);
                        if (xv2Var2 != null) {
                            String value110 = xv2Var2.getValue();
                            bool = value6;
                            z2 = zA2;
                            drawable = drawableB;
                            str2 = string2;
                            z = zA;
                            bool2 = value3;
                            i = iIntValue2;
                            i3 = i10;
                            str4 = value7;
                            f = f2;
                            str3 = string;
                            list = value2;
                            str = strC;
                            bool4 = value5;
                            bool3 = value4;
                            i2 = iIntValue3;
                            str5 = value110;
                            j = j;
                        }
                    } else {
                        j = j;
                    }
                    bool = value6;
                    j = j;
                    z2 = zA2;
                    drawable = drawableB;
                    str2 = string2;
                    z = zA;
                    bool2 = value3;
                    i = iIntValue2;
                    i3 = i10;
                    str4 = value7;
                    f = f2;
                    str3 = string;
                    list = value2;
                    str = strC;
                    bool4 = value5;
                    bool3 = value4;
                    i2 = iIntValue3;
                    str5 = null;
                } else {
                    str6 = str6;
                    value = value;
                }
                if ((j & 102400) != 0) {
                    if (q10Var != null) {
                        xv2Var3 = q10Var.u;
                    } else {
                        xv2Var3 = null;
                    }
                    E(12, xv2Var3);
                    if (xv2Var3 != null) {
                    }
                    if ((j & 106496) != 0) {
                        if (q10Var != null) {
                            xv2Var2 = q10Var.v;
                        } else {
                            xv2Var2 = null;
                        }
                        E(13, xv2Var2);
                        if (xv2Var2 != null) {
                            String value111 = xv2Var2.getValue();
                            bool = value6;
                            z2 = zA2;
                            drawable = drawableB;
                            str2 = string2;
                            z = zA;
                            bool2 = value3;
                            i = iIntValue2;
                            i3 = i10;
                            str4 = value7;
                            f = f2;
                            str3 = string;
                            list = value2;
                            str = strC;
                            bool4 = value5;
                            bool3 = value4;
                            i2 = iIntValue3;
                            str5 = value111;
                            j = j;
                        }
                    } else {
                        j = j;
                    }
                    bool = value6;
                    j = j;
                    z2 = zA2;
                    drawable = drawableB;
                    str2 = string2;
                    z = zA;
                    bool2 = value3;
                    i = iIntValue2;
                    i3 = i10;
                    str4 = value7;
                    f = f2;
                    str3 = string;
                    list = value2;
                    str = strC;
                    bool4 = value5;
                    bool3 = value4;
                    i2 = iIntValue3;
                    str5 = null;
                } else {
                    iIntValue = iIntValue;
                }
                if ((j & 106496) != 0) {
                    if (q10Var != null) {
                        xv2Var2 = q10Var.v;
                    } else {
                        xv2Var2 = null;
                    }
                    E(13, xv2Var2);
                    if (xv2Var2 != null) {
                        String value112 = xv2Var2.getValue();
                        bool = value6;
                        z2 = zA2;
                        drawable = drawableB;
                        str2 = string2;
                        z = zA;
                        bool2 = value3;
                        i = iIntValue2;
                        i3 = i10;
                        str4 = value7;
                        f = f2;
                        str3 = string;
                        list = value2;
                        str = strC;
                        bool4 = value5;
                        bool3 = value4;
                        i2 = iIntValue3;
                        str5 = value112;
                        j = j;
                    }
                } else {
                    j = j;
                }
                bool = value6;
                j = j;
                z2 = zA2;
                drawable = drawableB;
                str2 = string2;
                z = zA;
                bool2 = value3;
                i = iIntValue2;
                i3 = i10;
                str4 = value7;
                f = f2;
                str3 = string;
                list = value2;
                str = strC;
                bool4 = value5;
                bool3 = value4;
                i2 = iIntValue3;
                str5 = null;
            } else {
                j6 = 0;
                value6 = null;
                zA2 = false;
            }
            i10 = 0;
            if ((j & 99328) != j6) {
                if (q10Var != null) {
                    xv2Var5 = q10Var.z;
                } else {
                    xv2Var5 = null;
                }
                E(10, xv2Var5);
                if (xv2Var5 != null) {
                    value = xv2Var5.getValue();
                } else {
                    value = null;
                }
                if (value != null) {
                    strC = value.c();
                    xv2Var = xv2Var5;
                    str6 = value.kind;
                } else {
                    xv2Var = xv2Var5;
                    str6 = null;
                    strC = null;
                }
            } else {
                value6 = value6;
                iIntValue3 = iIntValue3;
                str6 = null;
                value = null;
                strC = null;
                xv2Var = null;
            }
            if ((j & 100352) != 0) {
                if (q10Var != null) {
                    xv2Var4 = q10Var.E;
                } else {
                    xv2Var4 = null;
                }
                E(11, xv2Var4);
                if (xv2Var4 != null) {
                    value8 = xv2Var4.getValue();
                } else {
                    value8 = null;
                }
                if (value8 != null) {
                }
                if ((j & 102400) != 0) {
                    if (q10Var != null) {
                        xv2Var3 = q10Var.u;
                    } else {
                        xv2Var3 = null;
                    }
                    E(12, xv2Var3);
                    if (xv2Var3 != null) {
                    }
                    if ((j & 106496) != 0) {
                        if (q10Var != null) {
                            xv2Var2 = q10Var.v;
                        } else {
                            xv2Var2 = null;
                        }
                        E(13, xv2Var2);
                        if (xv2Var2 != null) {
                            String value113 = xv2Var2.getValue();
                            bool = value6;
                            z2 = zA2;
                            drawable = drawableB;
                            str2 = string2;
                            z = zA;
                            bool2 = value3;
                            i = iIntValue2;
                            i3 = i10;
                            str4 = value7;
                            f = f2;
                            str3 = string;
                            list = value2;
                            str = strC;
                            bool4 = value5;
                            bool3 = value4;
                            i2 = iIntValue3;
                            str5 = value113;
                            j = j;
                        }
                    } else {
                        j = j;
                    }
                    bool = value6;
                    j = j;
                    z2 = zA2;
                    drawable = drawableB;
                    str2 = string2;
                    z = zA;
                    bool2 = value3;
                    i = iIntValue2;
                    i3 = i10;
                    str4 = value7;
                    f = f2;
                    str3 = string;
                    list = value2;
                    str = strC;
                    bool4 = value5;
                    bool3 = value4;
                    i2 = iIntValue3;
                    str5 = null;
                } else {
                    iIntValue = iIntValue;
                }
                if ((j & 106496) != 0) {
                    if (q10Var != null) {
                        xv2Var2 = q10Var.v;
                    } else {
                        xv2Var2 = null;
                    }
                    E(13, xv2Var2);
                    if (xv2Var2 != null) {
                        String value114 = xv2Var2.getValue();
                        bool = value6;
                        z2 = zA2;
                        drawable = drawableB;
                        str2 = string2;
                        z = zA;
                        bool2 = value3;
                        i = iIntValue2;
                        i3 = i10;
                        str4 = value7;
                        f = f2;
                        str3 = string;
                        list = value2;
                        str = strC;
                        bool4 = value5;
                        bool3 = value4;
                        i2 = iIntValue3;
                        str5 = value114;
                        j = j;
                    }
                } else {
                    j = j;
                }
                bool = value6;
                j = j;
                z2 = zA2;
                drawable = drawableB;
                str2 = string2;
                z = zA;
                bool2 = value3;
                i = iIntValue2;
                i3 = i10;
                str4 = value7;
                f = f2;
                str3 = string;
                list = value2;
                str = strC;
                bool4 = value5;
                bool3 = value4;
                i2 = iIntValue3;
                str5 = null;
            } else {
                str6 = str6;
                value = value;
            }
            if ((j & 102400) != 0) {
                if (q10Var != null) {
                    xv2Var3 = q10Var.u;
                } else {
                    xv2Var3 = null;
                }
                E(12, xv2Var3);
                if (xv2Var3 != null) {
                }
                if ((j & 106496) != 0) {
                    if (q10Var != null) {
                        xv2Var2 = q10Var.v;
                    } else {
                        xv2Var2 = null;
                    }
                    E(13, xv2Var2);
                    if (xv2Var2 != null) {
                        String value115 = xv2Var2.getValue();
                        bool = value6;
                        z2 = zA2;
                        drawable = drawableB;
                        str2 = string2;
                        z = zA;
                        bool2 = value3;
                        i = iIntValue2;
                        i3 = i10;
                        str4 = value7;
                        f = f2;
                        str3 = string;
                        list = value2;
                        str = strC;
                        bool4 = value5;
                        bool3 = value4;
                        i2 = iIntValue3;
                        str5 = value115;
                        j = j;
                    }
                } else {
                    j = j;
                }
                bool = value6;
                j = j;
                z2 = zA2;
                drawable = drawableB;
                str2 = string2;
                z = zA;
                bool2 = value3;
                i = iIntValue2;
                i3 = i10;
                str4 = value7;
                f = f2;
                str3 = string;
                list = value2;
                str = strC;
                bool4 = value5;
                bool3 = value4;
                i2 = iIntValue3;
                str5 = null;
            } else {
                iIntValue = iIntValue;
            }
            if ((j & 106496) != 0) {
                if (q10Var != null) {
                    xv2Var2 = q10Var.v;
                } else {
                    xv2Var2 = null;
                }
                E(13, xv2Var2);
                if (xv2Var2 != null) {
                    String value116 = xv2Var2.getValue();
                    bool = value6;
                    z2 = zA2;
                    drawable = drawableB;
                    str2 = string2;
                    z = zA;
                    bool2 = value3;
                    i = iIntValue2;
                    i3 = i10;
                    str4 = value7;
                    f = f2;
                    str3 = string;
                    list = value2;
                    str = strC;
                    bool4 = value5;
                    bool3 = value4;
                    i2 = iIntValue3;
                    str5 = value116;
                    j = j;
                }
            } else {
                j = j;
            }
            bool = value6;
            j = j;
            z2 = zA2;
            drawable = drawableB;
            str2 = string2;
            z = zA;
            bool2 = value3;
            i = iIntValue2;
            i3 = i10;
            str4 = value7;
            f = f2;
            str3 = string;
            list = value2;
            str = strC;
            bool4 = value5;
            bool3 = value4;
            i2 = iIntValue3;
            str5 = null;
        } else {
            f = 0.0f;
            bool = null;
            str = null;
            i = 0;
            i2 = 0;
            list = null;
            bool2 = null;
            bool3 = null;
            str2 = null;
            z = false;
            i3 = 0;
            drawable = null;
            str3 = null;
            str4 = null;
            z2 = false;
            str5 = null;
            bool4 = null;
            xv2Var = null;
            str6 = null;
            value = null;
            iIntValue = 0;
        }
        if ((j & 17246978048L) != 0) {
            xv2<Boolean> xv2Var15 = q10Var != null ? q10Var.x : null;
            E(4, xv2Var15);
            boolean zA5 = ViewDataBinding.A(xv2Var15 != null ? xv2Var15.getValue() : null);
            j2 = 0;
            if ((j & 67108864) != 0) {
                j |= zA5 ? 1073741824L : 536870912L;
            }
            if ((j & 17179869184L) != 0) {
                j |= zA5 ? 4294967296L : 2147483648L;
            }
            i5 = ((j & 67108864) == 0 || !zA5) ? 0 : 8;
            i4 = ((j & 17179869184L) == 0 || zA5) ? 0 : 8;
        } else {
            i = i;
            i2 = i2;
            j2 = 0;
            i4 = 0;
            i5 = 0;
        }
        if ((j & 262144) != j2) {
            xv2<VideoModel> xv2Var16 = q10Var != null ? q10Var.z : xv2Var;
            E(10, xv2Var16);
            if (xv2Var16 != null) {
                value = xv2Var16.getValue();
            }
            VideoModel videoModel = value;
            str7 = videoModel != null ? videoModel.kind : str6;
            if (str7 != null) {
                zEquals = str7.equals("2");
            } else {
                str6 = str7;
            }
            j3 = j & 99840;
            if (j3 == 0) {
                i6 = 0;
            } else {
                if (!z2) {
                    zEquals = false;
                }
                if (j3 != 0) {
                    if (zEquals) {
                        j5 = 4194304;
                    } else {
                        j5 = 2097152;
                    }
                    j |= j5;
                }
                if (zEquals) {
                    i6 = 0;
                } else {
                    i6 = 8;
                }
            }
            j4 = j & 98832;
            if (j4 != 0) {
                if (!z2) {
                    i5 = 8;
                }
                if (z2) {
                    i9 = i4;
                } else {
                    i9 = 8;
                }
                i7 = i9;
            } else {
                i7 = 0;
                i5 = 0;
            }
            if ((j & 65536) != 0) {
                FastForwardRewindButton fastForwardRewindButton = this.N;
                nl6.q(fastForwardRewindButton, fastForwardRewindButton.getResources().getString(R.string.fastforward_txt));
                FastForwardRewindButton fastForwardRewindButton2 = this.N;
                Boolean bool5 = Boolean.TRUE;
                fastForwardRewindButton2.setIsFastForward(bool5);
                FastForwardRewindButton fastForwardRewindButton3 = this.N;
                mm0 mm0Var = this.q0;
                Boolean bool6 = Boolean.FALSE;
                st2.c(fastForwardRewindButton3, mm0Var, bool6);
                NextPreviousEpisodeButton nextPreviousEpisodeButton = this.Q;
                nl6.q(nextPreviousEpisodeButton, nextPreviousEpisodeButton.getResources().getString(R.string.next_episode_txt));
                this.Q.setIsNext(bool5);
                st2.c(this.Q, this.m0, bool6);
                st2.c(this.R, this.i0, bool6);
                st2.c(this.S, this.n0, null);
                SeekBar seekBar2 = this.T;
                nl6.q(seekBar2, seekBar2.getResources().getString(R.string.seekbar_txt));
                SimpleDraweeView simpleDraweeView = this.U;
                nl6.q(simpleDraweeView, simpleDraweeView.getResources().getString(R.string.replay_txt));
                st2.c(this.U, this.k0, bool6);
                NextPreviousEpisodeButton nextPreviousEpisodeButton2 = this.X;
                nl6.q(nextPreviousEpisodeButton2, nextPreviousEpisodeButton2.getResources().getString(R.string.previous_episode_txt));
                this.X.setIsNext(bool6);
                st2.c(this.X, this.j0, bool6);
                FastForwardRewindButton fastForwardRewindButton4 = this.Y;
                nl6.q(fastForwardRewindButton4, fastForwardRewindButton4.getResources().getString(R.string.rewind_txt));
                this.Y.setIsFastForward(bool6);
                st2.c(this.Y, this.l0, bool6);
                SimpleDraweeView simpleDraweeView2 = this.a0;
                nl6.q(simpleDraweeView2, simpleDraweeView2.getResources().getString(R.string.settings_txt));
                st2.c(this.a0, this.o0, null);
                Button button = this.b0;
                nl6.r(button, button.getResources().getString(R.string.skip_txt));
                st2.c(this.b0, this.p0, bool6);
                st2.c(this.e0, this.r0, bool6);
            }
            if ((j & 98816) != 0) {
                this.N.setInnerEpisodesHidden(bool);
                this.Q.setInnerEpisodesHidden(bool);
                this.X.setInnerEpisodesHidden(bool);
                this.Y.setInnerEpisodesHidden(bool);
                this.a0.setVisibility(i3);
            }
            if ((j & 98308) != 0) {
                this.N.setPlayerReady(bool3);
                this.Q.setPlayerReady(bool3);
                this.T.setEnabled(z);
                this.X.setPlayerReady(bool3);
                this.Y.setPlayerReady(bool3);
                this.b0.setEnabled(z);
                if (ViewDataBinding.G >= 11) {
                    this.T.setAlpha(f);
                }
            }
            if ((j & 98305) != 0) {
                fo3.a(this.P, list, null, null);
            }
            if ((j & 98306) != 0) {
                this.Q.setHasNextEpisode(bool2);
            }
            if ((j & 99328) != 0) {
                this.Q.setKind(str7);
                this.X.setKind(str7);
                nl6.r(this.f0, ca1CleanPlayerTitle130(str));
            }
            if (j4 != 0) {
                this.R.setVisibility(i5);
                this.U.setVisibility(i7);
            }
            if ((98432 & j) != 0) {
                nl6.q(this.R, str2);
                oy1.d(this.R, drawable);
            }
            if ((j & 99840) != 0) {
                this.S.setVisibility(i6);
            }
            if ((j & 98560) != 0) {
                this.T.setMax(i2);
            }
            if ((98368 & j) != 0) {
                seekBar = this.T;
                i8 = i;
                if (i8 != seekBar.getProgress()) {
                    seekBar.setProgress(i8);
                }
            }
            if ((j & 100352) != 0) {
                this.T.setSecondaryProgress(iIntValue);
            }
            if ((98336 & j) != 0) {
                this.X.setHasPreviousEpisode(bool4);
            }
            if ((j & 106496) != 0) {
                nl6.r(this.c0, str5);
            }
            if ((j & 102400) != 0) {
                nl6.r(this.d0, str4);
            }
            if ((j & 98312) != 0) {
                nl6.q(this.e0, str3);
            }
        }
        i4 = i4;
        str7 = str6;
        zEquals = false;
        j3 = j & 99840;
        if (j3 == 0) {
            i6 = 0;
        } else {
            if (!z2) {
                zEquals = false;
            }
            if (j3 != 0) {
                if (zEquals) {
                    j5 = 4194304;
                } else {
                    j5 = 2097152;
                }
                j |= j5;
            }
            if (zEquals) {
                i6 = 0;
            } else {
                i6 = 8;
            }
        }
        j4 = j & 98832;
        if (j4 != 0) {
            if (!z2) {
                i5 = 8;
            }
            if (z2) {
                i9 = i4;
            } else {
                i9 = 8;
            }
            i7 = i9;
        } else {
            i7 = 0;
            i5 = 0;
        }
        if ((j & 65536) != 0) {
            FastForwardRewindButton fastForwardRewindButton5 = this.N;
            nl6.q(fastForwardRewindButton5, fastForwardRewindButton5.getResources().getString(R.string.fastforward_txt));
            FastForwardRewindButton fastForwardRewindButton6 = this.N;
            Boolean bool7 = Boolean.TRUE;
            fastForwardRewindButton6.setIsFastForward(bool7);
            FastForwardRewindButton fastForwardRewindButton7 = this.N;
            mm0 mm0Var2 = this.q0;
            Boolean bool8 = Boolean.FALSE;
            st2.c(fastForwardRewindButton7, mm0Var2, bool8);
            NextPreviousEpisodeButton nextPreviousEpisodeButton3 = this.Q;
            nl6.q(nextPreviousEpisodeButton3, nextPreviousEpisodeButton3.getResources().getString(R.string.next_episode_txt));
            this.Q.setIsNext(bool7);
            st2.c(this.Q, this.m0, bool8);
            st2.c(this.R, this.i0, bool8);
            st2.c(this.S, this.n0, null);
            SeekBar seekBar3 = this.T;
            nl6.q(seekBar3, seekBar3.getResources().getString(R.string.seekbar_txt));
            SimpleDraweeView simpleDraweeView3 = this.U;
            nl6.q(simpleDraweeView3, simpleDraweeView3.getResources().getString(R.string.replay_txt));
            st2.c(this.U, this.k0, bool8);
            NextPreviousEpisodeButton nextPreviousEpisodeButton4 = this.X;
            nl6.q(nextPreviousEpisodeButton4, nextPreviousEpisodeButton4.getResources().getString(R.string.previous_episode_txt));
            this.X.setIsNext(bool8);
            st2.c(this.X, this.j0, bool8);
            FastForwardRewindButton fastForwardRewindButton8 = this.Y;
            nl6.q(fastForwardRewindButton8, fastForwardRewindButton8.getResources().getString(R.string.rewind_txt));
            this.Y.setIsFastForward(bool8);
            st2.c(this.Y, this.l0, bool8);
            SimpleDraweeView simpleDraweeView4 = this.a0;
            nl6.q(simpleDraweeView4, simpleDraweeView4.getResources().getString(R.string.settings_txt));
            st2.c(this.a0, this.o0, null);
            Button button2 = this.b0;
            nl6.r(button2, button2.getResources().getString(R.string.skip_txt));
            st2.c(this.b0, this.p0, bool8);
            st2.c(this.e0, this.r0, bool8);
        }
        if ((j & 98816) != 0) {
            this.N.setInnerEpisodesHidden(bool);
            this.Q.setInnerEpisodesHidden(bool);
            this.X.setInnerEpisodesHidden(bool);
            this.Y.setInnerEpisodesHidden(bool);
            this.a0.setVisibility(i3);
        }
        if ((j & 98308) != 0) {
            this.N.setPlayerReady(bool3);
            this.Q.setPlayerReady(bool3);
            this.T.setEnabled(z);
            this.X.setPlayerReady(bool3);
            this.Y.setPlayerReady(bool3);
            this.b0.setEnabled(z);
            if (ViewDataBinding.G >= 11) {
                this.T.setAlpha(f);
            }
        }
        if ((j & 98305) != 0) {
            fo3.a(this.P, list, null, null);
        }
        if ((j & 98306) != 0) {
            this.Q.setHasNextEpisode(bool2);
        }
        if ((j & 99328) != 0) {
            this.Q.setKind(str7);
            this.X.setKind(str7);
            nl6.r(this.f0, ca1CleanPlayerTitle130(str));
        }
        if (j4 != 0) {
            this.R.setVisibility(i5);
            this.U.setVisibility(i7);
        }
        if ((98432 & j) != 0) {
            nl6.q(this.R, str2);
            oy1.d(this.R, drawable);
        }
        if ((j & 99840) != 0) {
            this.S.setVisibility(i6);
        }
        if ((j & 98560) != 0) {
            this.T.setMax(i2);
        }
        if ((98368 & j) != 0) {
            seekBar = this.T;
            i8 = i;
            if (i8 != seekBar.getProgress()) {
                seekBar.setProgress(i8);
            }
        }
        if ((j & 100352) != 0) {
            this.T.setSecondaryProgress(iIntValue);
        }
        if ((98336 & j) != 0) {
            this.X.setHasPreviousEpisode(bool4);
        }
        if ((j & 106496) != 0) {
            nl6.r(this.c0, str5);
        }
        if ((j & 102400) != 0) {
            nl6.r(this.d0, str4);
        }
        if ((j & 98312) != 0) {
            nl6.q(this.e0, str3);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.s0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.s0 = 65536L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.s0 |= 1;
                    break;
                }
                return true;
            case 1:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.s0 |= 2;
                    break;
                }
                return true;
            case 2:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.s0 |= 4;
                    break;
                }
                return true;
            case 3:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.s0 |= 8;
                    break;
                }
                return true;
            case 4:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.s0 |= 16;
                    break;
                }
                return true;
            case 5:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.s0 |= 32;
                    break;
                }
                return true;
            case 6:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.s0 |= 64;
                    break;
                }
                return true;
            case 7:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.s0 |= 128;
                    break;
                }
                return true;
            case 8:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.s0 |= 256;
                    break;
                }
                return true;
            case 9:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.s0 |= 512;
                    break;
                }
                return true;
            case 10:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.s0 |= 1024;
                    break;
                }
                return true;
            case 11:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.s0 |= 2048;
                    break;
                }
                return true;
            case 12:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.s0 |= 4096;
                    break;
                }
                return true;
            case 13:
                if (i2 != 0) {
                    return false;
                }
                synchronized (this) {
                    this.s0 |= 8192;
                    break;
                }
                return true;
            default:
                return false;
        }
    }
}
