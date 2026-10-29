package com.shabakaty.cinemana.utils;

import android.content.Context;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.cinemana.pro.R;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.downloader.af2;
import com.shabakaty.downloader.ck;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.kf2;
import com.shabakaty.downloader.ng2;
import com.shabakaty.downloader.rm1;
import com.shabakaty.downloader.wt2;
import kotlin.Metadata;

/* JADX INFO: compiled from: ExpandableTextView.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001d¢\u0006\u0004\b\u001f\u0010 J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002R(\u0010\t\u001a\u0004\u0018\u00010\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bR*\u0010\u0012\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001d\u0010\u0018\u001a\u00020\u00138B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00028B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\b¨\u0006!"}, d2 = {"Lcom/shabakaty/cinemana/utils/ExpandableTextView;", "Landroidx/appcompat/widget/AppCompatTextView;", BuildConfig.FLAVOR, "getTrimmedText", "<set-?>", "s", "Ljava/lang/CharSequence;", "getOriginalText", "()Ljava/lang/CharSequence;", "originalText", BuildConfig.FLAVOR, "value", "v", "I", "getTrimLength", "()I", "setTrimLength", "(I)V", "trimLength", "Landroid/text/Spannable;", "ellipsis$delegate", "Lcom/shabakaty/downloader/kf2;", "getEllipsis", "()Landroid/text/Spannable;", "ellipsis", "getDisplayableText", "displayableText", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final class ExpandableTextView extends AppCompatTextView {
    public static final /* synthetic */ int w = 0;
    public final kf2 r;

    /* JADX INFO: renamed from: s, reason: from kotlin metadata */
    public CharSequence originalText;
    public CharSequence t;
    public boolean u;

    /* JADX INFO: renamed from: v, reason: from kotlin metadata */
    public int trimLength;

    /* JADX INFO: compiled from: ExpandableTextView.kt */
    public static final class a extends af2 implements rm1<Spannable> {
        public final /* synthetic */ Context r;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Context context) {
            super(0);
            this.r = context;
        }

        @Override // com.shabakaty.downloader.rm1
        public Spannable invoke() {
            SpannableString spannableString = new SpannableString(this.r.getString(R.string.expand_more_ellipsis_txt));
            spannableString.setSpan(new ForegroundColorSpan(wt2.f(this.r, R.color.secondaryTextColor)), 2, spannableString.length(), 33);
            return spannableString;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExpandableTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        j32.e(context, "context");
        this.r = ng2.a(new a(context));
        TextView.BufferType bufferType = TextView.BufferType.SPANNABLE;
        this.u = true;
        this.trimLength = Integer.MAX_VALUE;
    }

    private final CharSequence getDisplayableText() {
        return this.u ? this.t : this.originalText;
    }

    private final Spannable getEllipsis() {
        return (Spannable) this.r.getValue();
    }

    /* JADX WARN: Code duplicated, block: B:6:0x0008  */
    private final CharSequence getTrimmedText() {
        CharSequence charSequenceSubSequence;
        int length;
        CharSequence charSequence = this.originalText;
        if (charSequence != null) {
            if (charSequence == null) {
                length = 0;
            } else {
                char[] cArr = {'.'};
                j32.e(charSequence, "<this>");
                j32.e(cArr, "chars");
                int length2 = charSequence.length() - 1;
                if (length2 < 0) {
                    charSequenceSubSequence = BuildConfig.FLAVOR;
                    break;
                }
                while (true) {
                    int i = length2 - 1;
                    char cCharAt = charSequence.charAt(length2);
                    j32.e(cArr, "<this>");
                    j32.e(cArr, "<this>");
                    int i2 = 0;
                    while (true) {
                        if (i2 >= 1) {
                            i2 = -1;
                            break;
                        }
                        int i3 = i2 + 1;
                        if (cCharAt == cArr[i2]) {
                            break;
                        }
                        i2 = i3;
                    }
                    if (!(i2 >= 0)) {
                        charSequenceSubSequence = charSequence.subSequence(0, length2 + 1);
                        break;
                    }
                    if (i < 0) {
                        charSequenceSubSequence = BuildConfig.FLAVOR;
                        break;
                    }
                    length2 = i;
                }
                if (charSequenceSubSequence == null) {
                    length = 0;
                } else {
                    length = charSequenceSubSequence.length();
                }
            }
            if (length > this.trimLength) {
                return new SpannableStringBuilder(this.originalText, 0, this.trimLength + 1).append((CharSequence) getEllipsis());
            }
        }
        return this.originalText;
    }

    public final void e() {
        super.setText(getDisplayableText(), TextView.BufferType.SPANNABLE);
    }

    public final CharSequence getOriginalText() {
        return this.originalText;
    }

    public final int getTrimLength() {
        return this.trimLength;
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        j32.e(bufferType, "type");
        this.originalText = charSequence;
        this.t = getTrimmedText();
        TextView.BufferType bufferType2 = TextView.BufferType.SPANNABLE;
        e();
    }

    public final void setTrimLength(int i) {
        this.trimLength = i;
        this.t = getTrimmedText();
        e();
        if (hasOnClickListeners()) {
            return;
        }
        setOnClickListener(new ck(this));
    }
}
