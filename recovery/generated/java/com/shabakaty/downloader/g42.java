package com.shabakaty.downloader;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.cinemana.pro.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.shabakaty.cinemana.ca1.Continue106;
import com.shabakaty.cinemana.domain.models.local.Category;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import java.util.List;

/* JADX INFO: compiled from: ItemBaseVideoHorizontalBindingImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class g42 extends f42 implements lm0.a {
    public static final SparseIntArray a0;
    public final ConstraintLayout V;
    public final SimpleDraweeView W;
    public final TextView X;
    public final mm0 Y;
    public long Z;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        a0 = sparseIntArray;
        sparseIntArray.put(R.id.cardView, 10);
        sparseIntArray.put(R.id.linear_layout, 11);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public g42(gl0 gl0Var, View view) {
        Object[] objArrS = ViewDataBinding.s(gl0Var, view, 12, null, a0);
        super(gl0Var, view, 0, (CardView) objArrS[10], (LinearLayout) objArrS[11], (TextView) objArrS[8], (TextView) objArrS[5], (SimpleDraweeView) objArrS[1], (TextView) objArrS[4], (TextView) objArrS[6], (TextView) objArrS[9], (ProgressBar) objArrS[7]);
        this.Z = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArrS[0];
        this.V = constraintLayout;
        constraintLayout.setTag(null);
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) objArrS[2];
        this.W = simpleDraweeView;
        simpleDraweeView.setTag(null);
        TextView textView = (TextView) objArrS[3];
        this.X = textView;
        textView.setTag(null);
        this.M.setTag("text_color|secondary_text,text_size|subheading");
        this.N.setTag(null);
        this.O.setTag("VideoThumb");
        this.P.setTag(null);
        this.Q.setTag(null);
        this.R.setTag("text_color|secondary_text,text_size|subheading");
        this.S.setTag(null);
        view.setTag(R.id.dataBinding, this);
        this.Y = new lm0(this, 1);
        p();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean D(int i, Object obj) {
        if (11 == i) {
            this.U = (VideoModel) obj;
            synchronized (this) {
                this.Z |= 1;
            }
            f(11);
            x();
        } else {
            if (3 != i) {
                return false;
            }
            this.T = (pk) obj;
            synchronized (this) {
                this.Z |= 2;
            }
            f(3);
            x();
        }
        return true;
    }

    @Override // com.shabakaty.downloader.lm0.a
    public final void d(int i, View view) {
        pk pkVar = this.T;
        VideoModel videoModel = this.U;
        if (pkVar != null) {
            pkVar.a(videoModel, view);
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x019e  */
    /* JADX WARN: Code duplicated, block: B:105:0x01aa A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:106:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:108:0x01af A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:109:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:110:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:113:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:114:0x01bd A[PHI: r2
      0x01bd: PHI (r2v5 long) = (r2v4 long), (r2v12 long) binds: [B:104:0x01a8, B:112:0x01b8] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:117:0x01c8  */
    /* JADX WARN: Code duplicated, block: B:119:0x0219  */
    /* JADX WARN: Code duplicated, block: B:122:0x0229  */
    /* JADX WARN: Code duplicated, block: B:56:0x0118 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:57:0x011a  */
    /* JADX WARN: Code duplicated, block: B:58:0x011c  */
    /* JADX WARN: Code duplicated, block: B:60:0x011f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:61:0x0121  */
    /* JADX WARN: Code duplicated, block: B:62:0x0126  */
    /* JADX WARN: Code duplicated, block: B:63:0x0129  */
    /* JADX WARN: Code duplicated, block: B:68:0x0139  */
    /* JADX WARN: Code duplicated, block: B:71:0x0144 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:72:0x0146  */
    /* JADX WARN: Code duplicated, block: B:73:0x014b  */
    /* JADX WARN: Code duplicated, block: B:75:0x0151  */
    /* JADX WARN: Code duplicated, block: B:76:0x0156  */
    /* JADX WARN: Code duplicated, block: B:79:0x0164 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:80:0x0166  */
    /* JADX WARN: Code duplicated, block: B:81:0x0168  */
    /* JADX WARN: Code duplicated, block: B:83:0x016c  */
    /* JADX WARN: Code duplicated, block: B:85:0x016f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:86:0x0171  */
    /* JADX WARN: Code duplicated, block: B:87:0x0174  */
    /* JADX WARN: Code duplicated, block: B:91:0x0180 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:92:0x0182  */
    /* JADX WARN: Code duplicated, block: B:93:0x0186  */
    /* JADX WARN: Code duplicated, block: B:95:0x018a  */
    /* JADX WARN: Code duplicated, block: B:96:0x018c  */
    /* JADX WARN: Code duplicated, block: B:97:0x018f  */
    @Override // androidx.databinding.ViewDataBinding
    public void i() {
        long j;
        boolean z;
        String str;
        String str2;
        String str3;
        q25 q25Var;
        List<Category> list;
        String str4;
        boolean z2;
        String str5;
        String str6;
        String string;
        String str7;
        boolean z3;
        String str8;
        boolean zIsEmpty;
        long j2;
        boolean z4;
        boolean z5;
        long j3;
        int i;
        boolean z6;
        long j4;
        int i2;
        long j5;
        boolean z7;
        long j6;
        String str9;
        String str10;
        String str11;
        String str12;
        String str13;
        String str14;
        String str15;
        String str16;
        q25 q25Var2;
        List<Category> list2;
        String str17;
        synchronized (this) {
            j = this.Z;
            this.Z = 0L;
        }
        VideoModel videoModel = this.U;
        long j7 = 5;
        long j8 = j & 5;
        if (j8 != 0) {
            if (videoModel != null) {
                str14 = videoModel.rate;
                str15 = videoModel.arTitle;
                str17 = videoModel.enTitle;
                str16 = videoModel.year;
                q25Var2 = videoModel.status;
                str12 = videoModel.stars;
                str13 = videoModel.nb;
                str10 = videoModel.kind;
                str11 = videoModel.imgMediumThumbObjUrl;
                list2 = videoModel.categories;
            } else {
                str10 = null;
                str11 = null;
                str12 = null;
                str13 = null;
                str14 = null;
                str15 = null;
                str16 = null;
                q25Var2 = null;
                list2 = null;
                str17 = null;
            }
            String str18 = str15;
            String string2 = this.Q.getResources().getString(R.string.video_views_description_txt, str14);
            String strA = el3.a(str16, ", ");
            string = this.N.getResources().getString(R.string.video_rating_description_txt, str12);
            long j9 = q25Var2 != null ? q25Var2.x : 0L;
            boolean zEquals = str10 != null ? str10.equals("2") : false;
            if (j8 != 0) {
                j |= zEquals ? 256L : 128L;
            }
            z = j9 == 0;
            if ((j & 5) != 0) {
                j |= z ? 65536L : 32768L;
            }
            str3 = str12;
            list = list2;
            str2 = str18;
            z2 = zEquals;
            str5 = str13;
            str7 = str11;
            str6 = str17;
            str4 = strA;
            q25Var = q25Var2;
            str = string2;
            j7 = 5;
        } else {
            z = false;
            str = null;
            str2 = null;
            str3 = null;
            q25Var = null;
            list = null;
            str4 = null;
            z2 = false;
            str5 = null;
            str6 = null;
            string = null;
            str7 = null;
        }
        long j10 = j7 & j;
        if (j10 != 0) {
            z3 = z2 ? true : z;
            if (j10 != 0) {
                j = z3 ? j | 1024 : j | 512;
            }
        } else {
            z3 = false;
        }
        if ((j & 32768) != 0) {
            str8 = videoModel != null ? videoModel.duration : null;
            zIsEmpty = str8 != null ? str8.isEmpty() : false;
            j2 = j & 5;
            if (j2 != 0) {
                if (z) {
                    z4 = true;
                } else {
                    z4 = zIsEmpty;
                }
                if (j2 != 0) {
                    if (z4) {
                        j |= 64;
                    } else {
                        j |= 32;
                    }
                }
            } else {
                z4 = false;
            }
            if ((j & 32) != 0 || q25Var == null) {
                z5 = false;
            } else {
                z5 = q25Var.s;
            }
            if ((j & 512) != 0) {
                if (videoModel != null) {
                    str9 = videoModel.duration;
                }
                if (str9 != null) {
                    str9 = str8;
                    zIsEmpty = str9.isEmpty();
                }
            } else {
                z5 = z5;
            }
            str9 = str8;
            j3 = j & 5;
            if (j3 != 0) {
                if (z4) {
                    z7 = true;
                } else {
                    z7 = z5;
                }
                if (z3) {
                    zIsEmpty = true;
                }
                if (j3 != 0) {
                    if (z7) {
                        j6 = 4096;
                    } else {
                        j6 = 2048;
                    }
                    j |= j6;
                }
                if ((5 & j) != 0) {
                    if (zIsEmpty) {
                        j |= 16;
                    } else {
                        j |= 8;
                    }
                }
                if (z7) {
                    i = 0;
                } else {
                    i = 8;
                }
            } else {
                i = 0;
                zIsEmpty = false;
            }
            if ((j & 8) != 0 || q25Var == null) {
                z6 = z5;
            } else {
                z6 = q25Var.s;
            }
            j4 = j & 5;
            if (j4 == 0) {
                i2 = 0;
            } else {
                if (zIsEmpty) {
                    z6 = true;
                }
                if (j4 != 0) {
                    if (z6) {
                        j5 = 16384;
                    } else {
                        j5 = 8192;
                    }
                    j |= j5;
                }
                if (z6) {
                    i2 = 8;
                } else {
                    i2 = 0;
                }
            }
            if ((j & 5) != 0) {
                nl6.w(this.V, videoModel);
                oy1.a(this.W, videoModel);
                gm4.f(this.X, videoModel);
                gm4.b(this.M, list, Boolean.TRUE);
                this.N.setVisibility(i);
                nl6.q(this.N, string);
                nl6.r(this.N, str3);
                oy1.c(this.O, str7, null, null, null);
                gm4.e(this.P, str6, str2);
                nl6.q(this.Q, str);
                gm4.h(this.Q, videoModel);
                nl6.r(this.R, str4);
                this.S.setVisibility(i2);
                st2.j(this.S, videoModel);
                if (ViewDataBinding.G >= 21) {
                    this.O.setTransitionName(str5);
                }
            }
            if ((j & 4) != 0) {
                st2.b(this.V, Boolean.TRUE);
                st2.c(this.V, this.Y, null);
                this.P.setSelected(false);
                ProgressBar progressBar = this.S;
                nl6.q(progressBar, progressBar.getResources().getString(R.string.watching_progress_txt, String.valueOf(this.S.getProgress())));
            }
            Continue106.card(this);
        }
        str8 = null;
        j2 = j & 5;
        if (j2 != 0) {
            if (z) {
                z4 = true;
            } else {
                z4 = zIsEmpty;
            }
            if (j2 != 0) {
                if (z4) {
                    j |= 64;
                } else {
                    j |= 32;
                }
            }
        } else {
            z4 = false;
        }
        if ((j & 32) != 0) {
            z5 = false;
        } else {
            z5 = false;
        }
        if ((j & 512) != 0) {
            if (videoModel != null) {
                str9 = videoModel.duration;
            }
            if (str9 != null) {
                str9 = str8;
                zIsEmpty = str9.isEmpty();
            }
        } else {
            z5 = z5;
        }
        str9 = str8;
        j3 = j & 5;
        if (j3 != 0) {
            if (z4) {
                z7 = true;
            } else {
                z7 = z5;
            }
            if (z3) {
                zIsEmpty = true;
            }
            if (j3 != 0) {
                if (z7) {
                    j6 = 4096;
                } else {
                    j6 = 2048;
                }
                j |= j6;
            }
            if ((5 & j) != 0) {
                if (zIsEmpty) {
                    j |= 16;
                } else {
                    j |= 8;
                }
            }
            if (z7) {
                i = 0;
            } else {
                i = 8;
            }
        } else {
            i = 0;
            zIsEmpty = false;
        }
        if ((j & 8) != 0) {
            z6 = z5;
        } else {
            z6 = z5;
        }
        j4 = j & 5;
        if (j4 == 0) {
            i2 = 0;
        } else {
            if (zIsEmpty) {
                z6 = true;
            }
            if (j4 != 0) {
                if (z6) {
                    j5 = 16384;
                } else {
                    j5 = 8192;
                }
                j |= j5;
            }
            if (z6) {
                i2 = 8;
            } else {
                i2 = 0;
            }
        }
        if ((j & 5) != 0) {
            nl6.w(this.V, videoModel);
            oy1.a(this.W, videoModel);
            gm4.f(this.X, videoModel);
            gm4.b(this.M, list, Boolean.TRUE);
            this.N.setVisibility(i);
            nl6.q(this.N, string);
            nl6.r(this.N, str3);
            oy1.c(this.O, str7, null, null, null);
            gm4.e(this.P, str6, str2);
            nl6.q(this.Q, str);
            gm4.h(this.Q, videoModel);
            nl6.r(this.R, str4);
            this.S.setVisibility(i2);
            st2.j(this.S, videoModel);
            if (ViewDataBinding.G >= 21) {
                this.O.setTransitionName(str5);
            }
        }
        if ((j & 4) != 0) {
            st2.b(this.V, Boolean.TRUE);
            st2.c(this.V, this.Y, null);
            this.P.setSelected(false);
            ProgressBar progressBar2 = this.S;
            nl6.q(progressBar2, progressBar2.getResources().getString(R.string.watching_progress_txt, String.valueOf(this.S.getProgress())));
        }
        Continue106.card(this);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean o() {
        synchronized (this) {
            return this.Z != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void p() {
        synchronized (this) {
            this.Z = 4L;
        }
        x();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean u(int i, Object obj, int i2) {
        return false;
    }
}
