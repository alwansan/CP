package com.shabakaty.cinemana.domain.models.local;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.recyclerview.widget.RecyclerView;
import com.liulishuo.filedownloader.BuildConfig;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import com.shabakaty.cinemana.data.db.videostatus.VideoStatusEntity;
import com.shabakaty.cinemana.features.DownloadIdentity;
import com.shabakaty.cinemana.features.DownloadTitle127;
import com.shabakaty.cinemana.local.LocalRuntime;
import com.shabakaty.downloader.fz0;
import com.shabakaty.downloader.ik4;
import com.shabakaty.downloader.j32;
import com.shabakaty.downloader.j60;
import com.shabakaty.downloader.ne4;
import com.shabakaty.downloader.o84;
import com.shabakaty.downloader.ob4;
import com.shabakaty.downloader.q25;
import com.shabakaty.downloader.qm2;
import com.shabakaty.downloader.s25;
import com.shabakaty.downloader.um3;
import com.shabakaty.downloader.w21;
import com.shabakaty.downloader.xh2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import zendesk.support.request.CellBase;

/* JADX INFO: compiled from: VideoModelLocal.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\bD\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b*\n\u0002\u0010\t\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BÑ\u0005\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u0002\u0012\b\b\u0003\u0010\u001e\u001a\u00020\u0002\u0012\b\b\u0002\u0010!\u001a\u00020\u0002\u0012\b\b\u0002\u0010$\u001a\u00020\u0002\u0012\b\b\u0002\u0010'\u001a\u00020\u0002\u0012\b\b\u0002\u0010*\u001a\u00020\u0002\u0012\b\b\u0002\u0010-\u001a\u00020\u0002\u0012\b\b\u0002\u00100\u001a\u00020\u0002\u0012\b\b\u0002\u00103\u001a\u00020\u0002\u0012\b\b\u0002\u00106\u001a\u00020\u0002\u0012\b\b\u0002\u00108\u001a\u00020\u0002\u0012\b\b\u0002\u0010;\u001a\u00020\u0002\u0012\b\b\u0002\u0010>\u001a\u00020\u0002\u0012\b\b\u0002\u0010A\u001a\u00020\u0002\u0012\b\b\u0002\u0010D\u001a\u00020\u0002\u0012\b\b\u0002\u0010H\u001a\u00020G\u0012\b\b\u0002\u0010N\u001a\u00020\u0002\u0012\b\b\u0002\u0010Q\u001a\u00020\u0002\u0012\b\b\u0002\u0010T\u001a\u00020G\u0012\b\b\u0002\u0010V\u001a\u00020\u0002\u0012\b\b\u0002\u0010Z\u001a\u00020Y\u0012\b\b\u0002\u0010`\u001a\u00020\u0002\u0012\b\b\u0002\u0010d\u001a\u00020c\u0012\b\b\u0002\u0010j\u001a\u00020\u0002\u0012\u000e\b\u0002\u0010o\u001a\b\u0012\u0004\u0012\u00020n0m\u0012\b\b\u0002\u0010u\u001a\u00020G\u0012\u000e\b\u0002\u0010z\u001a\b\u0012\u0004\u0012\u00020y0x\u0012\u000e\b\u0002\u0010~\u001a\b\u0012\u0004\u0012\u00020}0x\u0012\t\b\u0002\u0010\u0081\u0001\u001a\u00020\u0002\u0012\t\b\u0002\u0010\u0084\u0001\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0088\u0001\u001a\u00030\u0087\u0001\u0012\t\b\u0002\u0010\u008e\u0001\u001a\u00020Y\u0012\t\b\u0002\u0010\u0091\u0001\u001a\u00020\u0002\u0012\u0010\b\u0002\u0010\u0095\u0001\u001a\t\u0012\u0005\u0012\u00030\u0094\u00010x\u0012\u0010\b\u0002\u0010\u0098\u0001\u001a\t\u0012\u0005\u0012\u00030\u0094\u00010x\u0012\u0010\b\u0002\u0010\u009b\u0001\u001a\t\u0012\u0005\u0012\u00030\u0094\u00010x\u0012\t\b\u0002\u0010\u009e\u0001\u001a\u00020\u0002\u0012\t\b\u0002\u0010¡\u0001\u001a\u00020\u0002\u0012\t\b\u0002\u0010¤\u0001\u001a\u00020\u0002\u0012\t\b\u0002\u0010§\u0001\u001a\u00020\u0002\u0012\t\b\u0002\u0010ª\u0001\u001a\u00020\u0002\u0012\t\b\u0002\u0010\u00ad\u0001\u001a\u00020\u0002\u0012\t\b\u0002\u0010°\u0001\u001a\u00020\u0002\u0012\t\b\u0002\u0010³\u0001\u001a\u00020\u0002\u0012\t\b\u0002\u0010¶\u0001\u001a\u00020G\u0012\t\b\u0002\u0010¹\u0001\u001a\u00020\u0002\u0012\t\b\u0002\u0010¼\u0001\u001a\u00020Y\u0012\n\b\u0002\u0010À\u0001\u001a\u00030¿\u0001\u0012\t\b\u0002\u0010Æ\u0001\u001a\u00020\u0002\u0012\t\b\u0002\u0010É\u0001\u001a\u00020\u0002\u0012\t\b\u0002\u0010Ì\u0001\u001a\u00020G\u0012\f\b\u0002\u0010ä\u0001\u001a\u0005\u0018\u00010ã\u0001\u0012\u0010\b\u0002\u0010Ï\u0001\u001a\t\u0012\u0005\u0012\u00030Î\u00010m\u0012\f\b\u0002\u0010Ò\u0001\u001a\u0005\u0018\u00010Î\u0001\u0012\t\b\u0002\u0010Ø\u0001\u001a\u00020\u0002\u0012\t\b\u0002\u0010Û\u0001\u001a\u00020G¢\u0006\u0006\bå\u0001\u0010æ\u0001R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\"\u0010\f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\"\u0010\u000f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0004\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\"\u0010\u0012\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\"\u0010\u0015\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0004\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\"\u0010\u0018\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0004\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR\"\u0010\u001b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u0004\u001a\u0004\b\u001c\u0010\u0006\"\u0004\b\u001d\u0010\bR\"\u0010\u001e\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u0004\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\bR\"\u0010!\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\u0004\u001a\u0004\b\"\u0010\u0006\"\u0004\b#\u0010\bR\"\u0010$\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010\u0004\u001a\u0004\b%\u0010\u0006\"\u0004\b&\u0010\bR\"\u0010'\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010\u0004\u001a\u0004\b(\u0010\u0006\"\u0004\b)\u0010\bR\"\u0010*\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010\u0004\u001a\u0004\b+\u0010\u0006\"\u0004\b,\u0010\bR\"\u0010-\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010\u0004\u001a\u0004\b.\u0010\u0006\"\u0004\b/\u0010\bR\"\u00100\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u0010\u0004\u001a\u0004\b1\u0010\u0006\"\u0004\b2\u0010\bR\"\u00103\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u0010\u0004\u001a\u0004\b4\u0010\u0006\"\u0004\b5\u0010\bR\"\u00106\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b6\u0010\u0004\u001a\u0004\b6\u0010\u0006\"\u0004\b7\u0010\bR\"\u00108\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b8\u0010\u0004\u001a\u0004\b9\u0010\u0006\"\u0004\b:\u0010\bR\"\u0010;\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b;\u0010\u0004\u001a\u0004\b<\u0010\u0006\"\u0004\b=\u0010\bR\"\u0010>\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b>\u0010\u0004\u001a\u0004\b?\u0010\u0006\"\u0004\b@\u0010\bR\"\u0010A\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bA\u0010\u0004\u001a\u0004\bB\u0010\u0006\"\u0004\bC\u0010\bR\"\u0010D\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bD\u0010\u0004\u001a\u0004\bE\u0010\u0006\"\u0004\bF\u0010\bR\"\u0010H\u001a\u00020G8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010MR\"\u0010N\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bN\u0010\u0004\u001a\u0004\bO\u0010\u0006\"\u0004\bP\u0010\bR\"\u0010Q\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bQ\u0010\u0004\u001a\u0004\bR\u0010\u0006\"\u0004\bS\u0010\bR\"\u0010T\u001a\u00020G8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bT\u0010I\u001a\u0004\bT\u0010K\"\u0004\bU\u0010MR\"\u0010V\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bV\u0010\u0004\u001a\u0004\bW\u0010\u0006\"\u0004\bX\u0010\bR\"\u0010Z\u001a\u00020Y8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bZ\u0010[\u001a\u0004\b\\\u0010]\"\u0004\b^\u0010_R\"\u0010`\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b`\u0010\u0004\u001a\u0004\ba\u0010\u0006\"\u0004\bb\u0010\bR\"\u0010d\u001a\u00020c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bd\u0010e\u001a\u0004\bf\u0010g\"\u0004\bh\u0010iR\"\u0010j\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bj\u0010\u0004\u001a\u0004\bk\u0010\u0006\"\u0004\bl\u0010\bR(\u0010o\u001a\b\u0012\u0004\u0012\u00020n0m8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bo\u0010p\u001a\u0004\bq\u0010r\"\u0004\bs\u0010tR\"\u0010u\u001a\u00020G8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bu\u0010I\u001a\u0004\bv\u0010K\"\u0004\bw\u0010MR(\u0010z\u001a\b\u0012\u0004\u0012\u00020y0x8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bz\u0010p\u001a\u0004\b{\u0010r\"\u0004\b|\u0010tR)\u0010~\u001a\b\u0012\u0004\u0012\u00020}0x8\u0006@\u0006X\u0086\u000e¢\u0006\u0013\n\u0004\b~\u0010p\u001a\u0004\b\u007f\u0010r\"\u0005\b\u0080\u0001\u0010tR&\u0010\u0081\u0001\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0081\u0001\u0010\u0004\u001a\u0005\b\u0082\u0001\u0010\u0006\"\u0005\b\u0083\u0001\u0010\bR&\u0010\u0084\u0001\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0084\u0001\u0010\u0004\u001a\u0005\b\u0085\u0001\u0010\u0006\"\u0005\b\u0086\u0001\u0010\bR*\u0010\u0088\u0001\u001a\u00030\u0087\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0088\u0001\u0010\u0089\u0001\u001a\u0006\b\u008a\u0001\u0010\u008b\u0001\"\u0006\b\u008c\u0001\u0010\u008d\u0001R&\u0010\u008e\u0001\u001a\u00020Y8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u008e\u0001\u0010[\u001a\u0005\b\u008f\u0001\u0010]\"\u0005\b\u0090\u0001\u0010_R&\u0010\u0091\u0001\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0091\u0001\u0010\u0004\u001a\u0005\b\u0092\u0001\u0010\u0006\"\u0005\b\u0093\u0001\u0010\bR-\u0010\u0095\u0001\u001a\t\u0012\u0005\u0012\u00030\u0094\u00010x8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0095\u0001\u0010p\u001a\u0005\b\u0096\u0001\u0010r\"\u0005\b\u0097\u0001\u0010tR-\u0010\u0098\u0001\u001a\t\u0012\u0005\u0012\u00030\u0094\u00010x8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0098\u0001\u0010p\u001a\u0005\b\u0099\u0001\u0010r\"\u0005\b\u009a\u0001\u0010tR-\u0010\u009b\u0001\u001a\t\u0012\u0005\u0012\u00030\u0094\u00010x8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u009b\u0001\u0010p\u001a\u0005\b\u009c\u0001\u0010r\"\u0005\b\u009d\u0001\u0010tR&\u0010\u009e\u0001\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u009e\u0001\u0010\u0004\u001a\u0005\b\u009f\u0001\u0010\u0006\"\u0005\b \u0001\u0010\bR&\u0010¡\u0001\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b¡\u0001\u0010\u0004\u001a\u0005\b¢\u0001\u0010\u0006\"\u0005\b£\u0001\u0010\bR&\u0010¤\u0001\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b¤\u0001\u0010\u0004\u001a\u0005\b¥\u0001\u0010\u0006\"\u0005\b¦\u0001\u0010\bR&\u0010§\u0001\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b§\u0001\u0010\u0004\u001a\u0005\b¨\u0001\u0010\u0006\"\u0005\b©\u0001\u0010\bR&\u0010ª\u0001\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\bª\u0001\u0010\u0004\u001a\u0005\b«\u0001\u0010\u0006\"\u0005\b¬\u0001\u0010\bR&\u0010\u00ad\u0001\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u00ad\u0001\u0010\u0004\u001a\u0005\b®\u0001\u0010\u0006\"\u0005\b¯\u0001\u0010\bR&\u0010°\u0001\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b°\u0001\u0010\u0004\u001a\u0005\b±\u0001\u0010\u0006\"\u0005\b²\u0001\u0010\bR&\u0010³\u0001\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b³\u0001\u0010\u0004\u001a\u0005\b´\u0001\u0010\u0006\"\u0005\bµ\u0001\u0010\bR&\u0010¶\u0001\u001a\u00020G8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b¶\u0001\u0010I\u001a\u0005\b·\u0001\u0010K\"\u0005\b¸\u0001\u0010MR&\u0010¹\u0001\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b¹\u0001\u0010\u0004\u001a\u0005\bº\u0001\u0010\u0006\"\u0005\b»\u0001\u0010\bR&\u0010¼\u0001\u001a\u00020Y8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b¼\u0001\u0010[\u001a\u0005\b½\u0001\u0010]\"\u0005\b¾\u0001\u0010_R*\u0010À\u0001\u001a\u00030¿\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\bÀ\u0001\u0010Á\u0001\u001a\u0006\bÂ\u0001\u0010Ã\u0001\"\u0006\bÄ\u0001\u0010Å\u0001R&\u0010Æ\u0001\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\bÆ\u0001\u0010\u0004\u001a\u0005\bÇ\u0001\u0010\u0006\"\u0005\bÈ\u0001\u0010\bR&\u0010É\u0001\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\bÉ\u0001\u0010\u0004\u001a\u0005\bÊ\u0001\u0010\u0006\"\u0005\bË\u0001\u0010\bR&\u0010Ì\u0001\u001a\u00020G8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\bÌ\u0001\u0010I\u001a\u0005\bÌ\u0001\u0010K\"\u0005\bÍ\u0001\u0010MR-\u0010Ï\u0001\u001a\t\u0012\u0005\u0012\u00030Î\u00010m8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\bÏ\u0001\u0010p\u001a\u0005\bÐ\u0001\u0010r\"\u0005\bÑ\u0001\u0010tR,\u0010Ò\u0001\u001a\u0005\u0018\u00010Î\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\bÒ\u0001\u0010Ó\u0001\u001a\u0006\bÔ\u0001\u0010Õ\u0001\"\u0006\bÖ\u0001\u0010×\u0001R&\u0010Ø\u0001\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\bØ\u0001\u0010\u0004\u001a\u0005\bÙ\u0001\u0010\u0006\"\u0005\bÚ\u0001\u0010\bR&\u0010Û\u0001\u001a\u00020G8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\bÛ\u0001\u0010I\u001a\u0005\bÛ\u0001\u0010K\"\u0005\bÜ\u0001\u0010MR7\u0010Þ\u0001\u001a\u00020\u00022\u0007\u0010Ý\u0001\u001a\u00020\u00028F@FX\u0086\u000e¢\u0006\u001d\n\u0005\bÞ\u0001\u0010\u0004\u0012\u0006\bá\u0001\u0010â\u0001\u001a\u0005\bß\u0001\u0010\u0006\"\u0005\bà\u0001\u0010\b¨\u0006ç\u0001"}, d2 = {"Lcom/shabakaty/cinemana/domain/models/local/VideoModel;", "Landroid/os/Parcelable;", BuildConfig.FLAVOR, "nb", "Ljava/lang/String;", "getNb", "()Ljava/lang/String;", "l", "(Ljava/lang/String;)V", "enTitle", "getEnTitle", "setEnTitle", "arTitle", "getArTitle", "setArTitle", "stars", "getStars", "setStars", "arContent", "getArContent", "setArContent", "enContent", "getEnContent", "setEnContent", "mDate", "getMDate", "setMDate", "year", "getYear", "setYear", "kind", "getKind", "setKind", "season", "getSeason", "setSeason", "imgObjUrl", "getImgObjUrl", "setImgObjUrl", "imgMediumThumbObjUrl", "getImgMediumThumbObjUrl", "setImgMediumThumbObjUrl", "filmRating", "getFilmRating", "setFilmRating", "seriesRating", "getSeriesRating", "setSeriesRating", "episodeNummer", "getEpisodeNummer", "j", "rate", "getRate", "setRate", "isSpecial", "setSpecial", "itemDate", "getItemDate", "setItemDate", "duration", "getDuration", "setDuration", "imdbUrlRef", "getImdbUrlRef", "setImdbUrlRef", "rootSeries", "getRootSeries", "o", "useParentImg", "getUseParentImg", "setUseParentImg", BuildConfig.FLAVOR, "showComments", "Z", "getShowComments", "()Z", "setShowComments", "(Z)V", "episodeFlag", "getEpisodeFlag", "setEpisodeFlag", "trailer", "getTrailer", "setTrailer", "isMock", "setMock", "parentSkipping", "getParentSkipping", "setParentSkipping", BuildConfig.FLAVOR, "downloadCollectionID", "I", "getDownloadCollectionID", "()I", "setDownloadCollectionID", "(I)V", "imgThumbObjUrl", "getImgThumbObjUrl", "k", "Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;", "skippingDurations", "Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;", "getSkippingDurations", "()Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;", "q", "(Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;)V", "arTranslationFilePath", "getArTranslationFilePath", "g", BuildConfig.FLAVOR, "Lcom/shabakaty/cinemana/domain/models/local/Subtitle;", "subtitles", "Ljava/util/List;", "getSubtitles", "()Ljava/util/List;", "setSubtitles", "(Ljava/util/List;)V", "hasIntroSkipping", "getHasIntroSkipping", "setHasIntroSkipping", BuildConfig.FLAVOR, "Lcom/shabakaty/downloader/o84;", "skippableScenes", "getSkippableScenes", "setSkippableScenes", "Lcom/shabakaty/cinemana/domain/models/local/Category;", "categories", "getCategories", "setCategories", "videoLikesNumber", "getVideoLikesNumber", "setVideoLikesNumber", "videoDisLikesNumber", "getVideoDisLikesNumber", "setVideoDisLikesNumber", "Lcom/shabakaty/cinemana/domain/models/local/VideoLanguages;", "videoLanguages", "Lcom/shabakaty/cinemana/domain/models/local/VideoLanguages;", "getVideoLanguages", "()Lcom/shabakaty/cinemana/domain/models/local/VideoLanguages;", "setVideoLanguages", "(Lcom/shabakaty/cinemana/domain/models/local/VideoLanguages;)V", "videoCommentsNumber", "getVideoCommentsNumber", "setVideoCommentsNumber", "videoViewsNumber", "getVideoViewsNumber", "setVideoViewsNumber", "Lcom/shabakaty/downloader/ob4;", "directorsInfo", "getDirectorsInfo", "setDirectorsInfo", "actorsInfo", "getActorsInfo", "f", "writersInfo", "getWritersInfo", "setWritersInfo", "itemOrderList", "getItemOrderList", "setItemOrderList", "listId", "getListId", "setListId", "listSortOrder", "getListSortOrder", "setListSortOrder", "castable", "getCastable", "setCastable", "publishDate", "getPublishDate", "setPublishDate", "episodeDesc", "getEpisodeDesc", "setEpisodeDesc", "customArTitle", "getCustomArTitle", "setCustomArTitle", "customEnTitle", "getCustomEnTitle", "setCustomEnTitle", "finished", "getFinished", "setFinished", "url", "getUrl", "setUrl", "downloadTaskId", "getDownloadTaskId", "setDownloadTaskId", BuildConfig.FLAVOR, "downloadedTime", "J", "getDownloadedTime", "()J", "setDownloadedTime", "(J)V", "size", "getSize", "setSize", "description", "getDescription", "setDescription", "isAddedToWatchLater", "setAddedToWatchLater", "Lcom/shabakaty/cinemana/domain/models/local/Quality;", "qualities", "getQualities", "m", "wantedQuality", "Lcom/shabakaty/cinemana/domain/models/local/Quality;", "getWantedQuality", "()Lcom/shabakaty/cinemana/domain/models/local/Quality;", "setWantedQuality", "(Lcom/shabakaty/cinemana/domain/models/local/Quality;)V", "arTranslationFilePathVTT", "getArTranslationFilePathVTT", "i", "isDownloading", "setDownloading", "value", "title", "c", "setTitle", "getTitle$annotations", "()V", "Lcom/shabakaty/downloader/q25;", FileDownloadModel.STATUS, "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/cinemana/domain/models/local/VideoLanguages;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJLjava/lang/String;Ljava/lang/String;ZLcom/shabakaty/downloader/q25;Ljava/util/List;Lcom/shabakaty/cinemana/domain/models/local/Quality;Ljava/lang/String;Z)V", "app_productionBetaRelease"}, k = 1, mv = {1, 5, 1})
public final /* data */ class VideoModel implements Parcelable {
    public static final Parcelable.Creator<VideoModel> CREATOR = new a();
    public List<ob4> actorsInfo;
    public String arContent;
    public String arTitle;
    public String arTranslationFilePath;
    public String arTranslationFilePathVTT;
    public String castable;
    public List<Category> categories;
    public String customArTitle;
    public String customEnTitle;
    public String description;
    public List<ob4> directorsInfo;
    public int downloadCollectionID;
    public int downloadTaskId;
    public long downloadedTime;
    public String duration;
    public String enContent;
    public String enTitle;
    public String episodeDesc;
    public String episodeFlag;
    public String episodeNummer;
    public String filmRating;
    public boolean finished;
    public boolean hasIntroSkipping;
    public String imdbUrlRef;
    public String imgMediumThumbObjUrl;
    public String imgObjUrl;
    public String imgThumbObjUrl;
    public boolean isAddedToWatchLater;
    public boolean isDownloading;
    public boolean isMock;
    public String isSpecial;
    public String itemDate;
    public String itemOrderList;
    public String kind;
    public String listId;
    public String listSortOrder;
    public String mDate;
    public String nb;
    public String parentSkipping;
    public String publishDate;
    public List<Quality> qualities;
    public String rate;
    public String rootSeries;
    public String season;
    public String seriesRating;
    public boolean showComments;
    public String size;
    public List<o84> skippableScenes;
    public SkippingDurations skippingDurations;
    public String stars;
    public q25 status;
    public List<Subtitle> subtitles;
    public String title;
    public String trailer;
    public String url;
    public String useParentImg;
    public int videoCommentsNumber;
    public String videoDisLikesNumber;
    public VideoLanguages videoLanguages;
    public String videoLikesNumber;
    public String videoViewsNumber;
    public Quality wantedQuality;
    public List<ob4> writersInfo;
    public String year;

    /* JADX INFO: compiled from: VideoModelLocal.kt */
    public static final class a implements Parcelable.Creator<VideoModel> {
        @Override // android.os.Parcelable.Creator
        public VideoModel createFromParcel(Parcel parcel) {
            j32.e(parcel, "parcel");
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            String string5 = parcel.readString();
            String string6 = parcel.readString();
            String string7 = parcel.readString();
            String string8 = parcel.readString();
            String string9 = parcel.readString();
            String string10 = parcel.readString();
            String string11 = parcel.readString();
            String string12 = parcel.readString();
            String string13 = parcel.readString();
            String string14 = parcel.readString();
            String string15 = parcel.readString();
            String string16 = parcel.readString();
            String string17 = parcel.readString();
            String string18 = parcel.readString();
            String string19 = parcel.readString();
            String string20 = parcel.readString();
            String string21 = parcel.readString();
            String string22 = parcel.readString();
            boolean z = parcel.readInt() != 0;
            String string23 = parcel.readString();
            String string24 = parcel.readString();
            boolean z2 = parcel.readInt() != 0;
            String string25 = parcel.readString();
            int i = parcel.readInt();
            String string26 = parcel.readString();
            SkippingDurations skippingDurationsCreateFromParcel = SkippingDurations.CREATOR.createFromParcel(parcel);
            String string27 = parcel.readString();
            int i2 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i2);
            int iA = 0;
            while (iA != i2) {
                iA = fz0.a(Subtitle.CREATOR, parcel, arrayList, iA, 1);
                i2 = i2;
                string12 = string12;
            }
            String str = string12;
            boolean z3 = parcel.readInt() != 0;
            int i3 = parcel.readInt();
            ArrayList arrayList2 = new ArrayList(i3);
            int iA2 = 0;
            while (iA2 != i3) {
                iA2 = fz0.a(o84.CREATOR, parcel, arrayList2, iA2, 1);
                i3 = i3;
                z3 = z3;
            }
            boolean z4 = z3;
            int i4 = parcel.readInt();
            ArrayList arrayList3 = new ArrayList(i4);
            int iA3 = 0;
            while (iA3 != i4) {
                iA3 = fz0.a(Category.CREATOR, parcel, arrayList3, iA3, 1);
                i4 = i4;
                arrayList2 = arrayList2;
            }
            ArrayList arrayList4 = arrayList2;
            String string28 = parcel.readString();
            String string29 = parcel.readString();
            VideoLanguages videoLanguagesCreateFromParcel = VideoLanguages.CREATOR.createFromParcel(parcel);
            int i5 = parcel.readInt();
            String string30 = parcel.readString();
            int i6 = parcel.readInt();
            ArrayList arrayList5 = new ArrayList(i6);
            int iA4 = 0;
            while (iA4 != i6) {
                iA4 = fz0.a(ob4.CREATOR, parcel, arrayList5, iA4, 1);
                i6 = i6;
                string28 = string28;
            }
            String str2 = string28;
            int i7 = parcel.readInt();
            ArrayList arrayList6 = new ArrayList(i7);
            int iA5 = 0;
            while (iA5 != i7) {
                iA5 = fz0.a(ob4.CREATOR, parcel, arrayList6, iA5, 1);
                i7 = i7;
                arrayList5 = arrayList5;
            }
            ArrayList arrayList7 = arrayList5;
            int i8 = parcel.readInt();
            ArrayList arrayList8 = new ArrayList(i8);
            int iA6 = 0;
            while (iA6 != i8) {
                iA6 = fz0.a(ob4.CREATOR, parcel, arrayList8, iA6, 1);
                i8 = i8;
                arrayList6 = arrayList6;
            }
            ArrayList arrayList9 = arrayList6;
            String string31 = parcel.readString();
            String string32 = parcel.readString();
            String string33 = parcel.readString();
            String string34 = parcel.readString();
            String string35 = parcel.readString();
            String string36 = parcel.readString();
            String string37 = parcel.readString();
            String string38 = parcel.readString();
            boolean z5 = parcel.readInt() != 0;
            String string39 = parcel.readString();
            int i9 = parcel.readInt();
            long j = parcel.readLong();
            String string40 = parcel.readString();
            String string41 = parcel.readString();
            boolean z6 = parcel.readInt() != 0;
            q25 q25VarCreateFromParcel = parcel.readInt() == 0 ? null : q25.CREATOR.createFromParcel(parcel);
            int i10 = parcel.readInt();
            ArrayList arrayList10 = new ArrayList(i10);
            int i11 = 0;
            while (i11 != i10) {
                arrayList10.add(parcel.readSerializable());
                i11++;
                i10 = i10;
            }
            return new VideoModel(string, string2, string3, string4, string5, string6, string7, string8, string9, string10, string11, str, string13, string14, string15, string16, string17, string18, string19, string20, string21, string22, z, string23, string24, z2, string25, i, string26, skippingDurationsCreateFromParcel, string27, arrayList, z4, arrayList4, arrayList3, str2, string29, videoLanguagesCreateFromParcel, i5, string30, arrayList7, arrayList9, arrayList8, string31, string32, string33, string34, string35, string36, string37, string38, z5, string39, i9, j, string40, string41, z6, q25VarCreateFromParcel, arrayList10, (Quality) parcel.readSerializable(), parcel.readString(), parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        public VideoModel[] newArray(int i) {
            return new VideoModel[i];
        }
    }

    public VideoModel() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, false, null, 0, null, null, null, null, false, null, null, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0L, null, null, false, null, null, null, null, false, -1, Integer.MAX_VALUE);
    }

    public VideoModel(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, String str20, String str21, String str22, boolean z, String str23, String str24, boolean z2, String str25, int i, String str26, SkippingDurations skippingDurations, String str27, List<Subtitle> list, boolean z3, List<o84> list2, List<Category> list3, String str28, String str29, VideoLanguages videoLanguages, int i2, String str30, List<ob4> list4, List<ob4> list5, List<ob4> list6, String str31, String str32, String str33, String str34, String str35, String str36, String str37, String str38, boolean z4, String str39, int i3, long j, String str40, String str41, boolean z5, q25 q25Var, List<Quality> list7, Quality quality, String str42, boolean z6) {
        j32.e(str, "nb");
        j32.e(str2, "enTitle");
        j32.e(str3, "arTitle");
        j32.e(str4, "stars");
        j32.e(str5, "arContent");
        j32.e(str6, "enContent");
        j32.e(str7, "mDate");
        j32.e(str8, "year");
        j32.e(str9, "kind");
        j32.e(str10, "season");
        j32.e(str11, "imgObjUrl");
        j32.e(str12, "imgMediumThumbObjUrl");
        j32.e(str13, "filmRating");
        j32.e(str14, "seriesRating");
        j32.e(str15, "episodeNummer");
        j32.e(str16, "rate");
        j32.e(str17, "isSpecial");
        j32.e(str18, "itemDate");
        j32.e(str19, "duration");
        j32.e(str20, "imdbUrlRef");
        j32.e(str21, "rootSeries");
        j32.e(str22, "useParentImg");
        j32.e(str23, "episodeFlag");
        j32.e(str24, "trailer");
        j32.e(str25, "parentSkipping");
        j32.e(str26, "imgThumbObjUrl");
        j32.e(skippingDurations, "skippingDurations");
        j32.e(str27, "arTranslationFilePath");
        j32.e(list, "subtitles");
        j32.e(list2, "skippableScenes");
        j32.e(list3, "categories");
        j32.e(str28, "videoLikesNumber");
        j32.e(str29, "videoDisLikesNumber");
        j32.e(videoLanguages, "videoLanguages");
        j32.e(str30, "videoViewsNumber");
        j32.e(list4, "directorsInfo");
        j32.e(list5, "actorsInfo");
        j32.e(list6, "writersInfo");
        j32.e(str31, "itemOrderList");
        j32.e(str32, "listId");
        j32.e(str33, "listSortOrder");
        j32.e(str34, "castable");
        j32.e(str35, "publishDate");
        j32.e(str36, "episodeDesc");
        j32.e(str37, "customArTitle");
        j32.e(str38, "customEnTitle");
        j32.e(str39, "url");
        j32.e(str40, "size");
        j32.e(str41, "description");
        j32.e(list7, "qualities");
        j32.e(str42, "arTranslationFilePathVTT");
        this.nb = str;
        this.enTitle = str2;
        this.arTitle = str3;
        this.stars = str4;
        this.arContent = str5;
        this.enContent = str6;
        this.mDate = str7;
        this.year = str8;
        this.kind = str9;
        this.season = str10;
        this.imgObjUrl = str11;
        this.imgMediumThumbObjUrl = str12;
        this.filmRating = str13;
        this.seriesRating = str14;
        this.episodeNummer = str15;
        this.rate = str16;
        this.isSpecial = str17;
        this.itemDate = str18;
        this.duration = str19;
        this.imdbUrlRef = str20;
        this.rootSeries = str21;
        this.useParentImg = str22;
        this.showComments = z;
        this.episodeFlag = str23;
        this.trailer = str24;
        this.isMock = z2;
        this.parentSkipping = str25;
        this.downloadCollectionID = i;
        this.imgThumbObjUrl = str26;
        this.skippingDurations = skippingDurations;
        this.arTranslationFilePath = str27;
        this.subtitles = list;
        this.hasIntroSkipping = z3;
        this.skippableScenes = list2;
        this.categories = list3;
        this.videoLikesNumber = str28;
        this.videoDisLikesNumber = str29;
        this.videoLanguages = videoLanguages;
        this.videoCommentsNumber = i2;
        this.videoViewsNumber = str30;
        this.directorsInfo = list4;
        this.actorsInfo = list5;
        this.writersInfo = list6;
        this.itemOrderList = str31;
        this.listId = str32;
        this.listSortOrder = str33;
        this.castable = str34;
        this.publishDate = str35;
        this.episodeDesc = str36;
        this.customArTitle = str37;
        this.customEnTitle = str38;
        this.finished = z4;
        this.url = str39;
        this.downloadTaskId = i3;
        this.downloadedTime = j;
        this.size = str40;
        this.description = str41;
        this.isAddedToWatchLater = z5;
        this.status = q25Var;
        this.qualities = list7;
        this.wantedQuality = quality;
        this.arTranslationFilePathVTT = str42;
        this.isDownloading = z6;
        this.title = BuildConfig.FLAVOR;
    }

    public final void a(s25 s25Var, qm2 qm2Var) {
        j32.e(s25Var, "statusDao");
        j32.e(qm2Var, "mapper");
        VideoStatusEntity videoStatusEntityA = s25Var.a(this.nb);
        if (j32.a(this.kind, "1")) {
            if (videoStatusEntityA != null && j32.a(videoStatusEntityA.videoId, this.nb)) {
                p(qm2Var, videoStatusEntityA);
            }
        } else if (j32.a(this.kind, "2")) {
            if (j32.a(this.rootSeries, this.nb) || videoStatusEntityA == null || !j32.a(videoStatusEntityA.videoId, this.nb)) {
                if (s25Var.p(this.rootSeries) != 0) {
                    this.status = new q25(false, true, false, false, false, null, 0L, 61);
                }
            } else {
                p(qm2Var, videoStatusEntityA);
            }
        }
        LocalRuntime.overlay(this);
    }

    public final String b() {
        return c() + ' ' + (this.season.length() > 1 ? j32.j("S", this.season) : j32.j("S0", this.season)) + ' ' + (this.episodeNummer.length() > 1 ? j32.j("E", this.episodeNummer) : j32.j("E0", this.episodeNummer));
    }

    public final String c() {
        return DownloadTitle127.clean(j32.a(Locale.getDefault(), new Locale("en")) ? this.enTitle : this.arTitle);
    }

    public final String d() {
        return DownloadIdentity.decorateBaseName(this, j32.a(this.kind, "2") ? b() : c());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final int e() {
        q25 q25Var = this.status;
        boolean z = false;
        boolean z2 = q25Var != null && q25Var.s;
        if ((q25Var == null ? null : Long.valueOf(q25Var.x)) != null) {
            q25 q25Var2 = this.status;
            if (!(q25Var2 != null && q25Var2.x == 0)) {
                if (this.duration.length() > 0) {
                    z = true;
                }
            }
        }
        if (j32.a(this.kind, "2")) {
            return (z2 || z) ? 2 : 1;
        }
        if (z2) {
            return 3;
        }
        return z ? 2 : 1;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof VideoModel)) {
            return super.equals(obj);
        }
        VideoModel videoModel = (VideoModel) obj;
        return j32.a(this.nb, videoModel.nb) && j32.a(this.status, videoModel.status) && this.downloadTaskId == videoModel.downloadTaskId && this.downloadedTime == videoModel.downloadedTime && j32.a(this.size, videoModel.size) && this.isDownloading == videoModel.isDownloading;
    }

    public final void f(List<ob4> list) {
        this.actorsInfo = list;
    }

    public final void g(String str) {
        j32.e(str, "<set-?>");
        this.arTranslationFilePath = str;
    }

    public int hashCode() {
        int iA = (ik4.a(this.url, (ik4.a(this.customEnTitle, ik4.a(this.customArTitle, ik4.a(this.episodeDesc, ik4.a(this.publishDate, ik4.a(this.castable, ik4.a(this.listSortOrder, ik4.a(this.listId, ik4.a(this.itemOrderList, j60.a(this.writersInfo, j60.a(this.actorsInfo, j60.a(this.directorsInfo, ik4.a(this.videoViewsNumber, (((this.videoLanguages.hashCode() + ik4.a(this.videoDisLikesNumber, ik4.a(this.videoLikesNumber, j60.a(this.categories, j60.a(this.skippableScenes, (j60.a(this.subtitles, ik4.a(this.arTranslationFilePath, (this.skippingDurations.hashCode() + ik4.a(this.imgThumbObjUrl, (ik4.a(this.parentSkipping, (ik4.a(this.trailer, ik4.a(this.episodeFlag, (ik4.a(this.useParentImg, ik4.a(this.rootSeries, ik4.a(this.imdbUrlRef, ik4.a(this.duration, ik4.a(this.itemDate, ik4.a(this.isSpecial, ik4.a(this.rate, ik4.a(this.episodeNummer, ik4.a(this.seriesRating, ik4.a(this.filmRating, ik4.a(this.imgMediumThumbObjUrl, ik4.a(this.imgObjUrl, ik4.a(this.season, ik4.a(this.kind, ik4.a(this.year, ik4.a(this.mDate, ik4.a(this.enContent, ik4.a(this.arContent, ik4.a(this.stars, ik4.a(this.arTitle, ik4.a(this.enTitle, this.nb.hashCode() * 31, 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31) + (this.showComments ? 1231 : 1237)) * 31, 31), 31) + (this.isMock ? 1231 : 1237)) * 31, 31) + this.downloadCollectionID) * 31, 31)) * 31, 31), 31) + (this.hasIntroSkipping ? 1231 : 1237)) * 31, 31), 31), 31), 31)) * 31) + this.videoCommentsNumber) * 31, 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31) + (this.finished ? 1231 : 1237)) * 31, 31) + this.downloadTaskId) * 31;
        long j = this.downloadedTime;
        int iA2 = (ik4.a(this.description, ik4.a(this.size, (iA + ((int) (j ^ (j >>> 32)))) * 31, 31), 31) + (this.isAddedToWatchLater ? 1231 : 1237)) * 31;
        q25 q25Var = this.status;
        int iA3 = j60.a(this.qualities, (iA2 + (q25Var == null ? 0 : q25Var.hashCode())) * 31, 31);
        Quality quality = this.wantedQuality;
        return ik4.a(this.arTranslationFilePathVTT, (iA3 + (quality != null ? quality.hashCode() : 0)) * 31, 31) + (this.isDownloading ? 1231 : 1237);
    }

    public final void i(String str) {
        j32.e(str, "<set-?>");
        this.arTranslationFilePathVTT = str;
    }

    public final void j(String str) {
        j32.e(str, "<set-?>");
        this.episodeNummer = str;
    }

    public final void k(String str) {
        j32.e(str, "<set-?>");
        this.imgThumbObjUrl = str;
    }

    public final void l(String str) {
        j32.e(str, "<set-?>");
        this.nb = str;
    }

    public final void m(List<Quality> list) {
        this.qualities = list;
    }

    public final void o(String str) {
        j32.e(str, "<set-?>");
        this.rootSeries = str;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0037  */
    public final void p(qm2 qm2Var, VideoStatusEntity videoStatusEntity) {
        boolean z;
        j32.e(qm2Var, "mapper");
        this.status = qm2Var.t.mapDtoToDomain(videoStatusEntity);
        boolean z2 = true;
        if (!ne4.D(this.duration)) {
            q25 q25Var = this.status;
            if ((q25Var == null ? 0.0f : q25Var.x) / (Float.parseFloat(this.duration) * 1000.0f) > 0.95f) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        q25 q25Var2 = this.status;
        if (q25Var2 == null) {
            return;
        }
        if (!(q25Var2.s) && !z) {
            z2 = false;
        }
        q25Var2.s = z2;
    }

    public final void q(SkippingDurations skippingDurations) {
        j32.e(skippingDurations, "<set-?>");
        this.skippingDurations = skippingDurations;
    }

    public String toString() {
        StringBuilder sbA = um3.a("VideoModel(nb=");
        sbA.append(this.nb);
        sbA.append(", enTitle=");
        sbA.append(this.enTitle);
        sbA.append(", arTitle=");
        sbA.append(this.arTitle);
        sbA.append(", stars=");
        sbA.append(this.stars);
        sbA.append(", arContent=");
        sbA.append(this.arContent);
        sbA.append(", enContent=");
        sbA.append(this.enContent);
        sbA.append(", mDate=");
        sbA.append(this.mDate);
        sbA.append(", year=");
        sbA.append(this.year);
        sbA.append(", kind=");
        sbA.append(this.kind);
        sbA.append(", season=");
        sbA.append(this.season);
        sbA.append(", imgObjUrl=");
        sbA.append(this.imgObjUrl);
        sbA.append(", imgMediumThumbObjUrl=");
        sbA.append(this.imgMediumThumbObjUrl);
        sbA.append(", filmRating=");
        sbA.append(this.filmRating);
        sbA.append(", seriesRating=");
        sbA.append(this.seriesRating);
        sbA.append(", episodeNummer=");
        sbA.append(this.episodeNummer);
        sbA.append(", rate=");
        sbA.append(this.rate);
        sbA.append(", isSpecial=");
        sbA.append(this.isSpecial);
        sbA.append(", itemDate=");
        sbA.append(this.itemDate);
        sbA.append(", duration=");
        sbA.append(this.duration);
        sbA.append(", imdbUrlRef=");
        sbA.append(this.imdbUrlRef);
        sbA.append(", rootSeries=");
        sbA.append(this.rootSeries);
        sbA.append(", useParentImg=");
        sbA.append(this.useParentImg);
        sbA.append(", showComments=");
        sbA.append(this.showComments);
        sbA.append(", episodeFlag=");
        sbA.append(this.episodeFlag);
        sbA.append(", trailer=");
        sbA.append(this.trailer);
        sbA.append(", isMock=");
        sbA.append(this.isMock);
        sbA.append(", parentSkipping=");
        sbA.append(this.parentSkipping);
        sbA.append(", downloadCollectionID=");
        sbA.append(this.downloadCollectionID);
        sbA.append(", imgThumbObjUrl=");
        sbA.append(this.imgThumbObjUrl);
        sbA.append(", skippingDurations=");
        sbA.append(this.skippingDurations);
        sbA.append(", arTranslationFilePath=");
        sbA.append(this.arTranslationFilePath);
        sbA.append(", subtitles=");
        sbA.append(this.subtitles);
        sbA.append(", hasIntroSkipping=");
        sbA.append(this.hasIntroSkipping);
        sbA.append(", skippableScenes=");
        sbA.append(this.skippableScenes);
        sbA.append(", categories=");
        sbA.append(this.categories);
        sbA.append(", videoLikesNumber=");
        sbA.append(this.videoLikesNumber);
        sbA.append(", videoDisLikesNumber=");
        sbA.append(this.videoDisLikesNumber);
        sbA.append(", videoLanguages=");
        sbA.append(this.videoLanguages);
        sbA.append(", videoCommentsNumber=");
        sbA.append(this.videoCommentsNumber);
        sbA.append(", videoViewsNumber=");
        sbA.append(this.videoViewsNumber);
        sbA.append(", directorsInfo=");
        sbA.append(this.directorsInfo);
        sbA.append(", actorsInfo=");
        sbA.append(this.actorsInfo);
        sbA.append(", writersInfo=");
        sbA.append(this.writersInfo);
        sbA.append(", itemOrderList=");
        sbA.append(this.itemOrderList);
        sbA.append(", listId=");
        sbA.append(this.listId);
        sbA.append(", listSortOrder=");
        sbA.append(this.listSortOrder);
        sbA.append(", castable=");
        sbA.append(this.castable);
        sbA.append(", publishDate=");
        sbA.append(this.publishDate);
        sbA.append(", episodeDesc=");
        sbA.append(this.episodeDesc);
        sbA.append(", customArTitle=");
        sbA.append(this.customArTitle);
        sbA.append(", customEnTitle=");
        sbA.append(this.customEnTitle);
        sbA.append(", finished=");
        sbA.append(this.finished);
        sbA.append(", url=");
        sbA.append(this.url);
        sbA.append(", downloadTaskId=");
        sbA.append(this.downloadTaskId);
        sbA.append(", downloadedTime=");
        sbA.append(this.downloadedTime);
        sbA.append(", size=");
        sbA.append(this.size);
        sbA.append(", description=");
        sbA.append(this.description);
        sbA.append(", isAddedToWatchLater=");
        sbA.append(this.isAddedToWatchLater);
        sbA.append(", status=");
        sbA.append(this.status);
        sbA.append(", qualities=");
        sbA.append(this.qualities);
        sbA.append(", wantedQuality=");
        sbA.append(this.wantedQuality);
        sbA.append(", arTranslationFilePathVTT=");
        sbA.append(this.arTranslationFilePathVTT);
        sbA.append(", isDownloading=");
        return xh2.a(sbA, this.isDownloading, ')');
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        j32.e(parcel, "out");
        parcel.writeString(this.nb);
        parcel.writeString(this.enTitle);
        parcel.writeString(this.arTitle);
        parcel.writeString(this.stars);
        parcel.writeString(this.arContent);
        parcel.writeString(this.enContent);
        parcel.writeString(this.mDate);
        parcel.writeString(this.year);
        parcel.writeString(this.kind);
        parcel.writeString(this.season);
        parcel.writeString(this.imgObjUrl);
        parcel.writeString(this.imgMediumThumbObjUrl);
        parcel.writeString(this.filmRating);
        parcel.writeString(this.seriesRating);
        parcel.writeString(this.episodeNummer);
        parcel.writeString(this.rate);
        parcel.writeString(this.isSpecial);
        parcel.writeString(this.itemDate);
        parcel.writeString(this.duration);
        parcel.writeString(this.imdbUrlRef);
        parcel.writeString(this.rootSeries);
        parcel.writeString(this.useParentImg);
        parcel.writeInt(this.showComments ? 1 : 0);
        parcel.writeString(this.episodeFlag);
        parcel.writeString(this.trailer);
        parcel.writeInt(this.isMock ? 1 : 0);
        parcel.writeString(this.parentSkipping);
        parcel.writeInt(this.downloadCollectionID);
        parcel.writeString(this.imgThumbObjUrl);
        this.skippingDurations.writeToParcel(parcel, i);
        parcel.writeString(this.arTranslationFilePath);
        List<Subtitle> list = this.subtitles;
        parcel.writeInt(list.size());
        Iterator<Subtitle> it = list.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(parcel, i);
        }
        parcel.writeInt(this.hasIntroSkipping ? 1 : 0);
        List<o84> list2 = this.skippableScenes;
        parcel.writeInt(list2.size());
        Iterator<o84> it2 = list2.iterator();
        while (it2.hasNext()) {
            it2.next().writeToParcel(parcel, i);
        }
        List<Category> list3 = this.categories;
        parcel.writeInt(list3.size());
        Iterator<Category> it3 = list3.iterator();
        while (it3.hasNext()) {
            it3.next().writeToParcel(parcel, i);
        }
        parcel.writeString(this.videoLikesNumber);
        parcel.writeString(this.videoDisLikesNumber);
        this.videoLanguages.writeToParcel(parcel, i);
        parcel.writeInt(this.videoCommentsNumber);
        parcel.writeString(this.videoViewsNumber);
        List<ob4> list4 = this.directorsInfo;
        parcel.writeInt(list4.size());
        Iterator<ob4> it4 = list4.iterator();
        while (it4.hasNext()) {
            it4.next().writeToParcel(parcel, i);
        }
        List<ob4> list5 = this.actorsInfo;
        parcel.writeInt(list5.size());
        Iterator<ob4> it5 = list5.iterator();
        while (it5.hasNext()) {
            it5.next().writeToParcel(parcel, i);
        }
        List<ob4> list6 = this.writersInfo;
        parcel.writeInt(list6.size());
        Iterator<ob4> it6 = list6.iterator();
        while (it6.hasNext()) {
            it6.next().writeToParcel(parcel, i);
        }
        parcel.writeString(this.itemOrderList);
        parcel.writeString(this.listId);
        parcel.writeString(this.listSortOrder);
        parcel.writeString(this.castable);
        parcel.writeString(this.publishDate);
        parcel.writeString(this.episodeDesc);
        parcel.writeString(this.customArTitle);
        parcel.writeString(this.customEnTitle);
        parcel.writeInt(this.finished ? 1 : 0);
        parcel.writeString(this.url);
        parcel.writeInt(this.downloadTaskId);
        parcel.writeLong(this.downloadedTime);
        parcel.writeString(this.size);
        parcel.writeString(this.description);
        parcel.writeInt(this.isAddedToWatchLater ? 1 : 0);
        q25 q25Var = this.status;
        if (q25Var == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            q25Var.writeToParcel(parcel, i);
        }
        List<Quality> list7 = this.qualities;
        parcel.writeInt(list7.size());
        Iterator<Quality> it7 = list7.iterator();
        while (it7.hasNext()) {
            parcel.writeSerializable(it7.next());
        }
        parcel.writeSerializable(this.wantedQuality);
        parcel.writeString(this.arTranslationFilePathVTT);
        parcel.writeInt(this.isDownloading ? 1 : 0);
    }

    public /* synthetic */ VideoModel(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, String str20, String str21, String str22, boolean z, String str23, String str24, boolean z2, String str25, int i, String str26, SkippingDurations skippingDurations, String str27, List list, boolean z3, List list2, List list3, String str28, String str29, VideoLanguages videoLanguages, int i2, String str30, List list4, List list5, List list6, String str31, String str32, String str33, String str34, String str35, String str36, String str37, String str38, boolean z4, String str39, int i3, long j, String str40, String str41, boolean z5, q25 q25Var, List list7, Quality quality, String str42, boolean z6, int i4, int i5) {
        SkippingDurations skippingDurations2;
        String str43 = (i4 & 1) != 0 ? "0" : str;
        String str44 = (i4 & 2) != 0 ? BuildConfig.FLAVOR : str2;
        String str45 = (i4 & 4) != 0 ? BuildConfig.FLAVOR : str3;
        String str46 = (i4 & 8) != 0 ? BuildConfig.FLAVOR : str4;
        String str47 = (i4 & 16) != 0 ? BuildConfig.FLAVOR : null;
        String str48 = (i4 & 32) != 0 ? BuildConfig.FLAVOR : null;
        String str49 = (i4 & 64) != 0 ? BuildConfig.FLAVOR : null;
        String str50 = (i4 & RecyclerView.b0.FLAG_IGNORE) != 0 ? BuildConfig.FLAVOR : str8;
        String str51 = (i4 & RecyclerView.b0.FLAG_TMP_DETACHED) != 0 ? "1" : str9;
        String str52 = (i4 & RecyclerView.b0.FLAG_ADAPTER_POSITION_UNKNOWN) != 0 ? BuildConfig.FLAVOR : str10;
        String str53 = (i4 & RecyclerView.b0.FLAG_ADAPTER_FULLUPDATE) != 0 ? BuildConfig.FLAVOR : str11;
        String str54 = (i4 & 2048) != 0 ? BuildConfig.FLAVOR : str12;
        Object obj = (i4 & 4096) != 0 ? BuildConfig.FLAVOR : null;
        String str55 = (i4 & RecyclerView.b0.FLAG_BOUNCED_FROM_HIDDEN_LIST) != 0 ? BuildConfig.FLAVOR : null;
        String str56 = (i4 & 16384) != 0 ? BuildConfig.FLAVOR : str15;
        String str57 = (i4 & 32768) != 0 ? BuildConfig.FLAVOR : str16;
        String str58 = (i4 & 65536) != 0 ? BuildConfig.FLAVOR : null;
        String str59 = (i4 & 131072) != 0 ? BuildConfig.FLAVOR : null;
        String str60 = (i4 & 262144) != 0 ? BuildConfig.FLAVOR : null;
        String str61 = (i4 & 524288) != 0 ? BuildConfig.FLAVOR : null;
        String str62 = (i4 & 1048576) != 0 ? BuildConfig.FLAVOR : null;
        String str63 = (i4 & 2097152) != 0 ? BuildConfig.FLAVOR : null;
        boolean z7 = (i4 & 4194304) != 0 ? false : z;
        String str64 = (i4 & 8388608) != 0 ? BuildConfig.FLAVOR : null;
        String str65 = (i4 & 16777216) != 0 ? BuildConfig.FLAVOR : null;
        boolean z8 = (i4 & 33554432) != 0 ? false : z2;
        String str66 = (i4 & 67108864) != 0 ? BuildConfig.FLAVOR : null;
        int i6 = (i4 & 134217728) != 0 ? 0 : i;
        String str67 = (i4 & 268435456) != 0 ? BuildConfig.FLAVOR : null;
        if ((i4 & 536870912) != 0) {
            List list8 = null;
            skippingDurations2 = new SkippingDurations(list8, list8, 3);
        } else {
            skippingDurations2 = null;
        }
        this(str43, str44, str45, str46, str47, str48, str49, str50, str51, str52, str53, str54, obj, str55, str56, str57, str58, str59, str60, str61, str62, str63, z7, str64, str65, z8, str66, i6, str67, skippingDurations2, (1073741824 & i4) != 0 ? BuildConfig.FLAVOR : null, (i4 & CellBase.GROUP_ID_SYSTEM_MESSAGE) != 0 ? new ArrayList() : null, (i5 & 1) != 0 ? false : z3, (i5 & 2) != 0 ? w21.r : null, (i5 & 4) != 0 ? w21.r : list3, (i5 & 8) != 0 ? BuildConfig.FLAVOR : null, (i5 & 16) != 0 ? BuildConfig.FLAVOR : null, (i5 & 32) != 0 ? new VideoLanguages(null, null, 3) : null, (i5 & 64) != 0 ? 0 : i2, (i5 & RecyclerView.b0.FLAG_IGNORE) != 0 ? BuildConfig.FLAVOR : null, (i5 & RecyclerView.b0.FLAG_TMP_DETACHED) != 0 ? w21.r : null, (i5 & RecyclerView.b0.FLAG_ADAPTER_POSITION_UNKNOWN) != 0 ? w21.r : null, (i5 & RecyclerView.b0.FLAG_ADAPTER_FULLUPDATE) != 0 ? w21.r : null, (i5 & 2048) != 0 ? BuildConfig.FLAVOR : null, (i5 & 4096) != 0 ? BuildConfig.FLAVOR : null, (i5 & RecyclerView.b0.FLAG_BOUNCED_FROM_HIDDEN_LIST) != 0 ? BuildConfig.FLAVOR : null, (i5 & 16384) != 0 ? BuildConfig.FLAVOR : null, (i5 & 32768) != 0 ? BuildConfig.FLAVOR : null, (i5 & 65536) != 0 ? BuildConfig.FLAVOR : null, (i5 & 131072) != 0 ? BuildConfig.FLAVOR : null, (i5 & 262144) != 0 ? BuildConfig.FLAVOR : null, (i5 & 524288) != 0 ? false : z4, (i5 & 1048576) != 0 ? BuildConfig.FLAVOR : null, (i5 & 2097152) != 0 ? 0 : i3, (i5 & 4194304) != 0 ? 0L : j, (i5 & 8388608) != 0 ? BuildConfig.FLAVOR : null, (i5 & 16777216) != 0 ? BuildConfig.FLAVOR : null, (i5 & 33554432) != 0 ? false : z5, null, (i5 & 134217728) != 0 ? new ArrayList() : null, null, (i5 & 536870912) != 0 ? BuildConfig.FLAVOR : null, (i5 & 1073741824) == 0 ? z6 : false);
    }
}
