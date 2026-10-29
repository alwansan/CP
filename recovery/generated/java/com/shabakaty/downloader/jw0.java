package com.shabakaty.downloader;

import androidx.lifecycle.LiveData;
import com.shabakaty.cinemana.data.db.downloads.CinemanaDownloadItem;
import com.shabakaty.cinemana.data.db.downloads.CombinedDownloadItem;
import com.shabakaty.cinemana.data.db.downloads.SubtitleDb;
import java.util.List;

/* JADX INFO: compiled from: DownloadDao.kt */
/* JADX INFO: loaded from: classes.dex */
public interface jw0 extends cj<CinemanaDownloadItem> {
    Object A(Integer num, ud0<? super gz0> ud0Var);

    Object B(SubtitleDb subtitleDb, ud0<? super qv4> ud0Var);

    t43<List<CinemanaDownloadItem>> C();

    LiveData<List<CinemanaDownloadItem>> H();

    LiveData<List<d50>> I();

    List<d50> J();

    Object K(Integer num, ud0<? super qv4> ud0Var);

    Object g(gz0 gz0Var, ud0<? super Long> ud0Var);

    Object h(String str, ud0<? super qv4> ud0Var);

    Object i(gz0 gz0Var, ud0<? super qv4> ud0Var);

    List<CinemanaDownloadItem> j();

    Object l(CinemanaDownloadItem cinemanaDownloadItem, ud0<? super qv4> ud0Var);

    Object n(String str, ud0<? super CombinedDownloadItem> ud0Var);

    List<CombinedDownloadItem> o(int i);

    Object r(CinemanaDownloadItem cinemanaDownloadItem, ud0<? super qv4> ud0Var);

    Object u(p84 p84Var, ud0<? super qv4> ud0Var);
}
