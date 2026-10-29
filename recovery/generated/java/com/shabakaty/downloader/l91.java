package com.shabakaty.downloader;

import android.content.Context;
import androidx.core.widget.NestedScrollView;
import androidx.viewpager2.widget.ViewPager2;
import com.cinemana.pro.R;
import com.connectsdk.service.DLNAService;
import com.google.android.material.chip.Chip;
import com.google.android.material.chip.ChipGroup;
import com.google.android.material.tabs.TabLayout;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.domain.models.local.Quality;
import com.shabakaty.cinemana.domain.models.local.TranscodeFile;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class l91 implements wl, NestedScrollView.b, ChipGroup.d, com.google.android.material.tabs.c.b, wa3 {
    public final /* synthetic */ int r = 8;
    public final /* synthetic */ Object s;

    public /* synthetic */ l91(Context context) {
        this.s = context;
    }

    public /* synthetic */ l91(d15 d15Var) {
        this.s = d15Var;
    }

    public /* synthetic */ l91(m91 m91Var) {
        this.s = m91Var;
    }

    public /* synthetic */ l91(u15 u15Var) {
        this.s = u15Var;
    }

    @Override // androidx.core.widget.NestedScrollView.b
    public void a(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4) {
        d15 d15Var = (d15) this.s;
        boolean z = d15.A;
        j32.e(d15Var, "this$0");
        if (d15Var.b2(d15Var)) {
            if (i4 > i2) {
                float f = i2;
                T t = d15Var.t;
                j32.c(t);
                if (f > ((jl1) t).g0.M.getY() + 300) {
                    T t2 = d15Var.t;
                    j32.c(t2);
                    ((jl1) t2).P.p();
                    return;
                }
            }
            T t3 = d15Var.t;
            j32.c(t3);
            ((jl1) t3).P.i();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.shabakaty.downloader.wl
    public Object apply(Object obj, Object obj2) {
        List<Quality> listZ0;
        m91 m91Var = (m91) this.s;
        tj tjVar = (tj) obj;
        tj tjVar2 = (tj) obj2;
        j32.e(m91Var, "this$0");
        j32.e(tjVar, "videoModel");
        j32.e(tjVar2, "transcodeFiles");
        VideoModel videoModel = (VideoModel) tjVar.b;
        if (videoModel != null) {
            videoModel.g(m91Var.l(DLNAService.DEFAULT_SUBTITLE_TYPE, videoModel));
            videoModel.i(m91Var.l("vtt", (VideoModel) tjVar.b));
            List<TranscodeFile> list = (List) tjVar2.b;
            if (list == null) {
                listZ0 = null;
            } else {
                ArrayList arrayList = new ArrayList(i50.O(list, 10));
                for (TranscodeFile transcodeFile : list) {
                    arrayList.add(new Quality(transcodeFile.resolution, transcodeFile.name, transcodeFile.videoUrl));
                }
                listZ0 = m50.z0(arrayList);
            }
            if (listZ0 == null) {
                listZ0 = new ArrayList<>();
            }
            videoModel.m(listZ0);
            ob4 ob4Var = (ob4) m50.b0(videoModel.actorsInfo);
            if (j32.a(ob4Var != null ? ob4Var.s : null, "nostaff")) {
                videoModel.f(w21.r);
            }
        }
        tj tjVar3 = new tj(tj.a.SUCCESS, tjVar.b, null, null, 12);
        m91Var.i = (VideoModel) tjVar3.b;
        return tjVar3;
    }

    @Override // com.google.android.material.chip.ChipGroup.d
    public void b(ChipGroup chipGroup, int i) {
        switch (this.r) {
            case 3:
                nm4 nm4Var = (nm4) this.s;
                if (i != -1) {
                    ky4 ky4Var = i == R.id.theme_chip_dark ? ky4.a.b : ky4.b.b;
                    if (nm4Var != null) {
                        rb rbVar = ((li1.b) nm4Var).a;
                        Objects.requireNonNull(rbVar);
                        rbVar.h(new pb(ky4Var, rbVar, null));
                        break;
                    }
                }
                break;
            case 4:
                so1 so1Var = (so1) this.s;
                if (i != -1 && so1Var != null) {
                    String str = i == R.id.gender_chip_male ? "MALE" : "FEMALE";
                    g21 g21Var = ((jj1.a) so1Var).a;
                    Objects.requireNonNull(g21Var);
                    g21Var.n.setValue(str);
                    break;
                }
                break;
            case 5:
                ha3 ha3Var = (ha3) this.s;
                if (i != -1) {
                    Chip chip = (Chip) chipGroup.findViewById(i);
                    if (ha3Var != null) {
                        Object tag = chip == null ? null : chip.getTag();
                        String str2 = tag instanceof String ? (String) tag : null;
                        if (str2 == null) {
                            str2 = "0";
                        }
                        kb1 kb1Var = ((nj1.a) ha3Var).a;
                        Objects.requireNonNull(kb1Var);
                        kb1Var.h(new hb1(kb1Var, str2, null));
                        break;
                    }
                }
                break;
            default:
                df2 df2Var = (df2) this.s;
                if (i != -1) {
                    tx4 tx4Var = i == R.id.language_chip_arabic ? tx4.a.b : tx4.b.b;
                    if (df2Var != null) {
                        rb rbVar2 = ((li1.a) df2Var).a;
                        Objects.requireNonNull(rbVar2);
                        if (!j32.a(tx4Var.a, rbVar2.f.c().language.a)) {
                            n24 n24Var = rbVar2.f;
                            Objects.requireNonNull(n24Var);
                            ff3 ff3Var = n24Var.c;
                            String str3 = tx4Var.a;
                            Objects.requireNonNull(ff3Var);
                            j32.e(str3, "language");
                            String string = ff3Var.a.getString("key_app_language", "ar");
                            if (!j32.a(string != null ? string : "ar", str3)) {
                                ff3Var.b.putString("key_app_language", str3).apply();
                            }
                            uj2.c.a().b(tx4Var.a);
                            nh3.y(iq1.r, null, 0, new p24(n24Var, tx4Var, null), 3, null);
                            rbVar2.f().w0();
                        }
                        break;
                    }
                }
                break;
        }
    }

    @Override // com.google.android.material.tabs.c.b
    public void c(TabLayout.f fVar, int i) {
        ViewPager2 viewPager2 = (ViewPager2) this.s;
        j32.e(viewPager2, "$this_setSeasonsFragments");
        StringBuilder sb = new StringBuilder();
        Context context = viewPager2.getContext();
        sb.append((Object) (context == null ? null : context.getString(R.string.txt_season)));
        sb.append(' ');
        sb.append(i + 1);
        fVar.b(sb.toString());
    }

    @Override // com.shabakaty.downloader.wa3
    public String create(String str) {
        Object objB;
        Context context = (Context) this.s;
        j32.e(context, "$context");
        StringBuilder sb = new StringBuilder();
        sb.append(context.getFilesDir().getAbsolutePath());
        sb.append('/');
        String strJ = j32.j(str, Double.valueOf(Math.random()));
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("md5");
            j32.d(messageDigest, "getInstance(\"md5\")");
            Charset charset = hz.b;
            if (strJ == null) {
                throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
            }
            byte[] bytes = strJ.getBytes(charset);
            j32.d(bytes, "(this as java.lang.String).getBytes(charset)");
            messageDigest.update(bytes);
            byte[] bArrDigest = messageDigest.digest();
            j32.d(bArrDigest, "digest.digest()");
            StringBuilder sb2 = new StringBuilder();
            int length = bArrDigest.length - 1;
            if (length >= 0) {
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    String str2 = String.format("%02X", Arrays.copyOf(new Object[]{Byte.valueOf(bArrDigest[i])}, 1));
                    j32.d(str2, "java.lang.String.format(format, *args)");
                    sb2.append(str2);
                    if (i2 > length) {
                        break;
                    }
                    i = i2;
                }
            }
            String string = sb2.toString();
            j32.d(string, "sb.toString()");
            Locale locale = Locale.ENGLISH;
            j32.d(locale, "ENGLISH");
            objB = string.toLowerCase(locale);
            j32.d(objB, "(this as java.lang.String).toLowerCase(locale)");
            dt3.a(objB);
            if (objB instanceof dt3.a) {
                objB = BuildConfig.FLAVOR;
            }
            sb.append((String) objB);
            return sb.toString();
        } catch (Throwable th) {
            objB = j96.b(th);
        }
    }
}
