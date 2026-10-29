package com.shabakaty.cinemana.mod;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.util.Base64;
import android.webkit.WebView;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.ca1.I18n161;
import com.shabakaty.cinemana.ca1.ThemeEngine142;
import com.shabakaty.cinemana.ca1.Ui7;
import com.shabakaty.cinemana.domain.models.local.Subtitle;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import com.shabakaty.cinemana.features.EmbeddedMkvSubtitles;
import com.shabakaty.cinemana.features.LocalMkvResolver;
import com.shabakaty.cinemana.features.SubtitleCompat131;
import com.shabakaty.cinemana.player.CinemanaPlayerControllerView;
import com.shabakaty.downloader.df3;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class SubtitlePreviewHelper {
    private SubtitlePreviewHelper() {
    }

    private static String base64(String str, String str2) {
        try {
            return Base64.encodeToString(str.getBytes(str2), 2);
        } catch (UnsupportedEncodingException unused) {
            return BuildConfig.FLAVOR;
        }
    }

    private static Subtitle getDefaultSubtitle(Context context, List list) {
        Subtitle subtitle;
        String str;
        Subtitle subtitle2;
        String str2;
        SharedPreferences sharedPreferencesA = df3.a(context);
        String string = sharedPreferencesA.getString("cinemana_preview_subtitle_language", null);
        if (string != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                Object obj = list.get(i);
                if (obj != null && (str2 = (subtitle2 = (Subtitle) obj).type) != null && string.equalsIgnoreCase(str2)) {
                    return subtitle2;
                }
            }
        }
        String string2 = sharedPreferencesA.getString("key_preferred_subtitle_language", null);
        if (string2 != null) {
            int size2 = list.size();
            for (int i2 = 0; i2 < size2; i2++) {
                Object obj2 = list.get(i2);
                if (obj2 != null && (str = (subtitle = (Subtitle) obj2).type) != null && string2.equalsIgnoreCase(str)) {
                    return subtitle;
                }
            }
        }
        if (list.isEmpty()) {
            return null;
        }
        return (Subtitle) list.get(0);
    }

    public static void showCurrentSubtitleChooser(CinemanaPlayerControllerView cinemanaPlayerControllerView) {
        VideoModel videoModel;
        List listAppend;
        Context context = cinemanaPlayerControllerView.getContext();
        if (context == null || (videoModel = cinemanaPlayerControllerView.getVideoModel()) == null) {
            return;
        }
        if (LocalMkvResolver.resolve(context, videoModel) != null) {
            List arrayList = videoModel.subtitles;
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            listAppend = SubtitleCompat131.appendPreservingImported(context, videoModel, SubtitleCompat131.importedOnly(arrayList), cinemanaPlayerControllerView.getPlayer());
        } else {
            List arrayList2 = videoModel.subtitles;
            if (arrayList2 == null) {
                arrayList2 = new ArrayList();
            }
            listAppend = EmbeddedMkvSubtitles.append(context, videoModel, arrayList2);
        }
        if (listAppend == null || listAppend.isEmpty()) {
            return;
        }
        showSubtitleChooser(context, cinemanaPlayerControllerView, listAppend);
    }

    public static void showDialog(Context context, String str, CinemanaPlayerControllerView cinemanaPlayerControllerView) {
        WebView webView = new WebView(context);
        webView.getSettings().setJavaScriptEnabled(true);
        String strBase64 = base64(str, "utf-8");
        String strHex = ThemeEngine142.hex(ThemeEngine142.playerSurface(context));
        String strHex2 = ThemeEngine142.hex(ThemeEngine142.ink(context));
        String strHex3 = ThemeEngine142.hex(ThemeEngine142.elevated(context));
        String strHex4 = ThemeEngine142.hex(ThemeEngine142.edge(context));
        String strHex5 = ThemeEngine142.hex(ThemeEngine142.accent(context));
        StringBuilder sb = new StringBuilder();
        sb.append("<html><head><meta charset='utf-8'><meta name='viewport' content='width=device-width,initial-scale=1'><style>body{margin:0;background:");
        sb.append(strHex);
        sb.append(";color:");
        sb.append(strHex2);
        sb.append(";font-family:sans-serif}.bar{position:sticky;top:0;background:");
        sb.append(strHex3);
        sb.append(";padding:12px 16px;font-size:16px;font-weight:bold;border-bottom:1px solid ");
        sb.append(strHex4);
        sb.append(";z-index:5}.cue{padding:10px 14px;margin:4px 8px;border-radius:8px;line-height:1.55;font-size:17px}.cue.active{background:");
        sb.append(strHex3);
        sb.append(";outline:1px solid ");
        sb.append(strHex5);
        sb.append(I18n161.t("}</style></head><body><div id='now' class='bar'>الوقت الحالي: 00:00</div><div id='list'></div><script>const raw=decodeURIComponent(escape(atob('"));
        sb.append(strBase64);
        webView.loadDataWithBaseURL(BuildConfig.FLAVOR, sb.append(I18n161.t("')));function ms(t){t=(t||'').trim().replace(',', '.');let a=t.split(':');if(a.length===2)return Math.round(parseFloat(a[0])*60000+parseFloat(a[1])*1000);if(a.length>=3)return Math.round(parseFloat(a[a.length-3])*3600000+parseFloat(a[a.length-2])*60000+parseFloat(a[a.length-1])*1000);return 0}function clean(s){return(s||'').replace(/\\{[^}]*\\}/g,'').replace(/\\\\N/g,'\\n').replace(/\\\\n/g,'\\n').replace(/<br[^>]*>/gi,'\\n').replace(/<[^>]+>/g,'').trim()}let blocks=[];function addCue(a,b,text){text=clean(text);if(!(b>a)||!text)return;let d=document.createElement('div');d.className='cue';d.textContent=text;document.getElementById('list').appendChild(d);blocks.push({a:a,b:b,e:d})}let src=raw.replace(/\\r/g,'');let re=/((?:\\d{2}:)?\\d{2}:\\d{2}[.,]\\d{3})\\s+-->\\s+((?:\\d{2}:)?\\d{2}:\\d{2}[.,]\\d{3})(?:[^\\n]*)\\n([\\s\\S]*?)(?=\\n\\s*\\n|$)/g;let m;while((m=re.exec(src))!==null)addCue(ms(m[1]),ms(m[2]),m[3]);if(!blocks.length){let lines=src.split('\\n');for(let k=0;k<lines.length;k++){let line=lines[k];if(/^\\s*Dialogue\\s*:/i.test(line)){let p=line.replace(/^\\s*Dialogue\\s*:\\s*/i,'').split(',');if(p.length>=10)addCue(ms(p[1]),ms(p[2]),p.slice(9).join(','))}}}let last=-1;function fmt(msv){let sec=Math.max(0,Math.floor(msv/1000));let h=Math.floor(sec/3600);let m=Math.floor((sec%3600)/60);let x=sec%60;return String(h).padStart(2,'0')+':'+String(m).padStart(2,'0')+':'+String(x).padStart(2,'0')}window.setCurrent=function(t){document.getElementById('now').textContent='الوقت الحالي: '+fmt(t);let i=-1;for(let k=0;k<blocks.length;k++){if(t>=blocks[k].a&&t<=blocks[k].b){i=k;break}}if(i<0&&blocks.length){let best=0,dist=Infinity;for(let k=0;k<blocks.length;k++){let c=t<blocks[k].a?blocks[k].a-t:t>blocks[k].b?t-blocks[k].b:0;if(c<dist){dist=c;best=k}}if(dist<4000)i=best}if(i!==last){if(last>=0)blocks[last].e.classList.remove('active');if(i>=0){blocks[i].e.classList.add('active');blocks[i].e.scrollIntoView({block:'center',behavior:'smooth'})}last=i}};</script></body></html>")).append(BuildConfig.FLAVOR).toString(), "text/html", "UTF-8", BuildConfig.FLAVOR);
        new Handler(Looper.getMainLooper()).postDelayed(new SubtitlePreviewUpdater(webView, cinemanaPlayerControllerView, Ui7.show(new AlertDialog.Builder(context).setTitle(I18n161.t("معاينة الترجمة")).setView(webView).setPositiveButton(I18n161.t("إغلاق"), (DialogInterface.OnClickListener) null).setNeutralButton(I18n161.t("تغيير الترجمة"), new SubtitlePreviewChooserClickListener(context, cinemanaPlayerControllerView)))), 400L);
    }

    public static void showPreview(CinemanaPlayerControllerView cinemanaPlayerControllerView) {
        Subtitle defaultSubtitle;
        String str;
        Subtitle defaultSubtitle2;
        String str2;
        Context context = cinemanaPlayerControllerView.getContext();
        if (context == null) {
            return;
        }
        VideoModel videoModel = cinemanaPlayerControllerView.getVideoModel();
        if (videoModel == null) {
            showDialog(context, I18n161.t("ملف الترجمة غير متاح للقراءة من المسار الحالي."), cinemanaPlayerControllerView);
            return;
        }
        if (LocalMkvResolver.resolve(context, videoModel) != null) {
            List arrayList = videoModel.subtitles;
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            List listAppendPreservingImported = SubtitleCompat131.appendPreservingImported(context, videoModel, SubtitleCompat131.importedOnly(arrayList), cinemanaPlayerControllerView.getPlayer());
            if (listAppendPreservingImported == null || listAppendPreservingImported.isEmpty() || (defaultSubtitle2 = getDefaultSubtitle(context, listAppendPreservingImported)) == null || (str2 = defaultSubtitle2.file) == null) {
                showDialog(context, I18n161.t("لم يتم العثور على مسار ترجمة مضمن قابل للمعاينة داخل ملف MKV المحلي."), cinemanaPlayerControllerView);
                return;
            } else {
                startSourcePreview(context, cinemanaPlayerControllerView, str2);
                return;
            }
        }
        List arrayList2 = videoModel.subtitles;
        if (arrayList2 == null) {
            arrayList2 = new ArrayList();
        }
        List listAppend = EmbeddedMkvSubtitles.append(context, videoModel, arrayList2);
        if (listAppend == null || listAppend.isEmpty() || (defaultSubtitle = getDefaultSubtitle(context, listAppend)) == null || (str = defaultSubtitle.file) == null) {
            showDialog(context, I18n161.t("لا توجد ترجمة قابلة للمعاينة للحلقة الحالية."), cinemanaPlayerControllerView);
        } else {
            startSourcePreview(context, cinemanaPlayerControllerView, str);
        }
    }

    public static void showSubtitleChooser(Context context, CinemanaPlayerControllerView cinemanaPlayerControllerView, List list) {
        String str;
        String str2;
        int size = list.size();
        CharSequence[] charSequenceArr = new CharSequence[size];
        for (int i = 0; i < size; i++) {
            Object obj = list.get(i);
            if (obj != null) {
                Subtitle subtitle = (Subtitle) obj;
                str = subtitle.name;
                str2 = subtitle.extention;
            } else {
                str = null;
                str2 = null;
            }
            StringBuilder sb = new StringBuilder();
            if (str != null) {
                sb.append(str);
            }
            sb.append(" [");
            if (str2 != null) {
                sb.append(str2);
            }
            sb.append("]");
            if (sb.length() > 0) {
                charSequenceArr[i] = sb.toString();
            } else {
                charSequenceArr[i] = I18n161.t("ترجمة");
            }
        }
        int i2 = -1;
        String string = df3.a(context).getString("key_preferred_subtitle_language", null);
        if (string != null) {
            for (int i3 = 0; i3 < size; i3++) {
                Object obj2 = list.get(i3);
                if (obj2 != null && string.equals(((Subtitle) obj2).type)) {
                    i2 = i3;
                    break;
                }
            }
        }
        AlertDialog.Builder singleChoiceItems = new AlertDialog.Builder(context).setTitle(I18n161.t("معاينة الترجمة - اختر الترجمة")).setSingleChoiceItems(charSequenceArr, i2, new SubtitlePreviewChoiceListener(context, cinemanaPlayerControllerView, list));
        singleChoiceItems.setNegativeButton(I18n161.t("إلغاء"), (DialogInterface.OnClickListener) null);
        Ui7.show(singleChoiceItems);
    }

    public static void startSourcePreview(Context context, CinemanaPlayerControllerView cinemanaPlayerControllerView, String str) {
        new Thread(new SubtitlePreviewTask(context, str, cinemanaPlayerControllerView)).start();
    }
}
