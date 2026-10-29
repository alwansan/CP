package com.shabakaty.cinemana.ca1;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.connectsdk.R;
import com.liulishuo.filedownloader.model.FileDownloadStatus;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public final class I18n161 {
    public static void applyDir(View view) {
        if (view != null) {
            view.setLayoutDirection(dir());
        }
    }

    private I18n161() {
    }

    public static boolean en() {
        Locale locale = Locale.getDefault();
        return locale != null && "en".equalsIgnoreCase(locale.getLanguage());
    }

    public static int dir() {
        return !en() ? 1 : 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:675:0x0a6a  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static String t(String str) {
        byte b;
        if (str == null || !en()) {
            return str;
        }
        switch (str.hashCode()) {
            case -2144569262:
                if (!str.equals("العربية")) {
                    b = -1;
                } else {
                    b = 23;
                }
                break;
            case -2132792946:
                if (!str.equals("الموسم ")) {
                    b = -1;
                } else {
                    b = 82;
                }
                break;
            case -2114763974:
                if (!str.equals("أنت تستخدم أحدث إصدار بالفعل.")) {
                    b = -1;
                } else {
                    b = 31;
                }
                break;
            case -2113039751:
                if (!str.equals("تعذر إرسال الحلقة ")) {
                    b = -1;
                } else {
                    b = 69;
                }
                break;
            case -2093225972:
                if (!str.equals("جاري تنظيف الكاش…")) {
                    b = -1;
                } else {
                    b = 122;
                }
                break;
            case -2082879808:
                if (!str.equals(" حلقة مكتملة")) {
                    b = -1;
                } else {
                    b = 127;
                }
                break;
            case -2060622422:
                if (!str.equals("التمرير السريع")) {
                    b = -1;
                } else {
                    b = 142;
                }
                break;
            case -2035618592:
                if (!str.equals("مسار خارج مجلد التطبيق أو رابط رمزي")) {
                    b = -1;
                } else {
                    b = 140;
                }
                break;
            case -2035010264:
                if (!str.equals("هناك تحديث")) {
                    b = -1;
                } else {
                    b = 203;
                }
                break;
            case -1977705411:
                if (!str.equals("الافتراضي")) {
                    b = -1;
                } else {
                    b = 206;
                }
                break;
            case -1916332605:
                if (!str.equals("افتح قائمة الحلقات المكتملة أولًا")) {
                    b = -1;
                } else {
                    b = 152;
                }
                break;
            case -1895453630:
                if (!str.equals("ما زال الملف موجودًا")) {
                    b = -1;
                } else {
                    b = 131;
                }
                break;
            case -1869373023:
                if (!str.equals(" حلقة؟")) {
                    b = -1;
                } else {
                    b = 154;
                }
                break;
            case -1849071885:
                if (!str.equals("سرعة التحميل: ")) {
                    b = -1;
                } else {
                    b = 201;
                }
                break;
            case -1823557405:
                if (!str.equals("التحديد المتعدد والاستثناء")) {
                    b = -1;
                } else {
                    b = 165;
                }
                break;
            case -1814132119:
                if (!str.equals("تحديد الحلقات · اسحب بعد الضغط المطول")) {
                    b = -1;
                } else {
                    b = 167;
                }
                break;
            case -1807943935:
                if (!str.equals("ملف الترجمة غير متاح للقراءة من المسار الحالي.")) {
                    b = -1;
                } else {
                    b = 10;
                }
                break;
            case -1769327619:
                if (!str.equals("جارٍ جلب المواسم والحلقات…")) {
                    b = -1;
                } else {
                    b = 108;
                }
                break;
            case -1752213041:
                if (!str.equals("غير محدود")) {
                    b = -1;
                } else {
                    b = 202;
                }
                break;
            case -1751853609:
                if (!str.equals("غير معروف")) {
                    b = -1;
                } else {
                    b = 111;
                }
                break;
            case -1717654744:
                if (!str.equals("رقم الحلقة بالضبط، مثل 7")) {
                    b = -1;
                } else {
                    b = 104;
                }
                break;
            case -1717146421:
                if (!str.equals("المحدد: ")) {
                    b = -1;
                } else {
                    b = 159;
                }
                break;
            case -1712696469:
                if (!str.equals("المزامنة")) {
                    b = -1;
                } else {
                    b = 24;
                }
                break;
            case -1694053479:
                if (!str.equals("تعذر حذف الملف: ")) {
                    b = -1;
                } else {
                    b = 130;
                }
                break;
            case -1692071048:
                if (!str.equals("الموسم: ")) {
                    b = -1;
                } else {
                    b = 74;
                }
                break;
            case -1665727785:
                if (!str.equals("تعذر جلب بيانات الحلقة")) {
                    b = -1;
                } else {
                    b = 116;
                }
                break;
            case -1630476737:
                if (!str.equals("الجودات: ")) {
                    b = -1;
                } else {
                    b = 71;
                }
                break;
            case -1627046254:
                if (!str.equals("لا توجد جودة تحميل متاحة")) {
                    b = -1;
                } else {
                    b = 75;
                }
                break;
            case -1626857459:
                if (!str.equals("تعذر تجهيز التحديث")) {
                    b = -1;
                } else {
                    b = 34;
                }
                break;
            case -1604092196:
                if (!str.equals("% · حجم ثابت")) {
                    b = -1;
                } else {
                    b = 220;
                }
                break;
            case -1566824207:
                if (!str.equals("لم يتم العثور على مسار ترجمة مضمن قابل للمعاينة داخل ملف MKV المحلي.")) {
                    b = -1;
                } else {
                    b = FileDownloadStatus.toFileDownloadService;
                }
                break;
            case -1547216309:
                if (!str.equals("استثناء الحلقات · اسحب بعد الضغط المطول")) {
                    b = -1;
                } else {
                    b = 166;
                }
                break;
            case -1508246792:
                if (!str.equals("إلغاء تحديد الكل")) {
                    b = -1;
                } else {
                    b = 85;
                }
                break;
            case -1495980741:
                if (!str.equals("اسحب للتمرير السريع بين الحلقات")) {
                    b = -1;
                } else {
                    b = 61;
                }
                break;
            case -1488088991:
                if (!str.equals("تعذر التحقق من التحديث")) {
                    b = -1;
                } else {
                    b = 32;
                }
                break;
            case -1479800054:
                if (!str.equals("تعذر فتح التحميل المتعدد")) {
                    b = -1;
                } else {
                    b = 115;
                }
                break;
            case -1399055763:
                if (!str.equals("تعذر فتح واجهة Android لتثبيت التحديث تلقائيًا.\n\nيمكنك تثبيت ملف APK يدويًا من المسار:\n")) {
                    b = -1;
                } else {
                    b = 41;
                }
                break;
            case -1392055946:
                if (!str.equals("شفافية الشريط السفلي: ")) {
                    b = -1;
                } else {
                    b = 209;
                }
                break;
            case -1299737761:
                if (!str.equals("تعذر فتح التحديد المتعدد")) {
                    b = -1;
                } else {
                    b = 216;
                }
                break;
            case -1279352630:
                if (!str.equals("تم اختيار ")) {
                    b = -1;
                } else {
                    b = 211;
                }
                break;
            case -1246856811:
                if (!str.equals("السحب لليسار يرجع الفيديو، ولليمين يقدمه. القفزة قرب إطار مفتاحي قد تختلف قليلًا عن الوقت المطلوب، وتطبق عند فتح المشغل التالي. المعاينة لا توقف الفيديو؛ معاينة البث تعتمد على استجابة الخادم.")) {
                    b = -1;
                } else {
                    b = 199;
                }
                break;
            case -1165061653:
                if (!str.equals("التخطي المتعدد")) {
                    b = -1;
                } else {
                    b = 3;
                }
                break;
            case -1159469152:
                if (!str.equals("التحميل المتعدد مخصص للمواسم والحلقات")) {
                    b = -1;
                } else {
                    b = 114;
                }
                break;
            case -1155317626:
                if (!str.equals("بيانات الحلقة غير مكتملة")) {
                    b = -1;
                } else {
                    b = 68;
                }
                break;
            case -1128014520:
                if (!str.equals("هناك عملية حذف أخرى قيد التنفيذ")) {
                    b = -1;
                } else {
                    b = 137;
                }
                break;
            case -1113931104:
                if (!str.equals("جارٍ قراءة الحجم")) {
                    b = -1;
                } else {
                    b = 55;
                }
                break;
            case -1113021177:
                if (!str.equals("لم يكتمل تنزيل أو التحقق من ملف التحديث. حاول مرة أخرى.")) {
                    b = -1;
                } else {
                    b = 35;
                }
                break;
            case -1096362132:
                if (!str.equals("تعذر قراءة قائمة الحلقات: ")) {
                    b = -1;
                } else {
                    b = 79;
                }
                break;
            case -1040994352:
                if (!str.equals("جارٍ قراءة الجودات")) {
                    b = -1;
                } else {
                    b = 53;
                }
                break;
            case -1037672353:
                if (!str.equals(" حلقة محددة")) {
                    b = -1;
                } else {
                    b = 88;
                }
                break;
            case -1017456086:
                if (!str.equals(" طلبًا للطابور؛ تابع حالتها في التنزيلات")) {
                    b = -1;
                } else {
                    b = 66;
                }
                break;
            case -966755994:
                if (!str.equals("اكتب نطاقًا صحيحًا، مثل 5 إلى 17")) {
                    b = -1;
                } else {
                    b = 173;
                }
                break;
            case -927741170:
                if (!str.equals("السحب الأفقي لتمرير الفيديو")) {
                    b = -1;
                } else {
                    b = 196;
                }
                break;
            case -907648507:
                if (!str.equals("\n\nلن يُعاد تنزيل الملف عند إعادة المحاولة.")) {
                    b = -1;
                } else {
                    b = 42;
                }
                break;
            case -895158649:
                if (!str.equals("تم حذف ")) {
                    b = -1;
                } else {
                    b = 156;
                }
                break;
            case -860891545:
                if (!str.equals("التحقق من تحديثات التطبيق")) {
                    b = -1;
                } else {
                    b = 40;
                }
                break;
            case -841336443:
                if (!str.equals("الحلقة: \u2066")) {
                    b = -1;
                } else {
                    b = 219;
                }
                break;
            case -829462222:
                if (!str.equals("الموجب يؤخر الترجمة، والسالب يقدمها")) {
                    b = -1;
                } else {
                    b = 19;
                }
                break;
            case -823760576:
                if (!str.equals("حلقة غير محددة")) {
                    b = -1;
                } else {
                    b = 192;
                }
                break;
            case -822613128:
                if (!str.equals("تحديد النطاق")) {
                    b = -1;
                } else {
                    b = 149;
                }
                break;
            case -778460782:
                if (!str.equals("حذف متعدد")) {
                    b = -1;
                } else {
                    b = 188;
                }
                break;
            case -759255374:
                if (!str.equals("موضع الترجمة")) {
                    b = -1;
                } else {
                    b = 8;
                }
                break;
            case -755105355:
                if (!str.equals(" بحجم غير معروف")) {
                    b = -1;
                } else {
                    b = 93;
                }
                break;
            case -727964022:
                if (!str.equals("أُرسل ")) {
                    b = -1;
                } else {
                    b = 65;
                }
                break;
            case -711428656:
                if (!str.equals("فعّل إذن تثبيت التطبيقات غير المعروفة لتطبيق Cinemana، ثم أعد المحاولة. ملف التحديث محفوظ ولن يُنزّل من جديد.")) {
                    b = -1;
                } else {
                    b = 39;
                }
                break;
            case -706686634:
                if (!str.equals("استثناء النطاق")) {
                    b = -1;
                } else {
                    b = 150;
                }
                break;
            case -660453271:
                if (!str.equals("لم تصل الحلقات بعد")) {
                    b = -1;
                } else {
                    b = 215;
                }
                break;
            case -641664012:
                if (!str.equals(" · فردي")) {
                    b = -1;
                } else {
                    b = 56;
                }
                break;
            case -623707493:
                if (!str.equals("الحلقة")) {
                    b = -1;
                } else {
                    b = 182;
                }
                break;
            case -623003878:
                if (!str.equals("المظهر")) {
                    b = -1;
                } else {
                    b = 212;
                }
                break;
            case -622989102:
                if (!str.equals("الموسم")) {
                    b = -1;
                } else {
                    b = 101;
                }
                break;
            case -596941650:
                if (!str.equals("جارٍ الحذف…")) {
                    b = -1;
                } else {
                    b = 160;
                }
                break;
            case -547034978:
                if (!str.equals("تم حفظ الثيم المخصص")) {
                    b = -1;
                } else {
                    b = 214;
                }
                break;
            case -479076204:
                if (!str.equals("ابدأ التحميل")) {
                    b = -1;
                } else {
                    b = 99;
                }
                break;
            case -476367673:
                if (!str.equals("استثناء نطاق حلقات")) {
                    b = -1;
                } else {
                    b = 176;
                }
                break;
            case -456245439:
                if (!str.equals("تلقائي حسب الجودة العامة")) {
                    b = -1;
                } else {
                    b = 81;
                }
                break;
            case -417960151:
                if (!str.equals("خيارات")) {
                    b = -1;
                } else {
                    b = 143;
                }
                break;
            case -403150876:
                if (!str.equals("اختيار متقدم")) {
                    b = -1;
                } else {
                    b = 186;
                }
                break;
            case -389106630:
                if (!str.equals("مزامنة الترجمة")) {
                    b = -1;
                } else {
                    b = 21;
                }
                break;
            case -382805467:
                if (!str.equals("عدد التحميلات     ")) {
                    b = -1;
                } else {
                    b = 189;
                }
                break;
            case -378245655:
                if (!str.equals("تحديد نطاق حلقات")) {
                    b = -1;
                } else {
                    b = 177;
                }
                break;
            case -373422304:
                if (!str.equals("تم العثور على ملف التحديث المحمّل")) {
                    b = -1;
                } else {
                    b = 36;
                }
                break;
            case -258435352:
                if (!str.equals("تم تنظيف الكاش والملفات المؤقتة — تم تحرير ")) {
                    b = -1;
                } else {
                    b = 119;
                }
                break;
            case -254775232:
                if (!str.equals("الجودة: 1080p")) {
                    b = -1;
                } else {
                    b = 106;
                }
                break;
            case -176766406:
                if (!str.equals("تعذر الجلب؛ أعد المحاولة")) {
                    b = -1;
                } else {
                    b = 52;
                }
                break;
            case -142453364:
                if (!str.equals("تعذر حفظ عملية الحذف")) {
                    b = -1;
                } else {
                    b = 133;
                }
                break;
            case -120463170:
                if (!str.equals("جاري التحقق من التحديثات…")) {
                    b = -1;
                } else {
                    b = 26;
                }
                break;
            case -113555819:
                if (!str.equals("لم تصل بيانات من الخادم")) {
                    b = -1;
                } else {
                    b = 109;
                }
                break;
            case -86183564:
                if (!str.equals(" ثانية لعرض الشاشة")) {
                    b = -1;
                } else {
                    b = 195;
                }
                break;
            case -85431575:
                if (!str.equals("إلغاء التحديد")) {
                    b = -1;
                } else {
                    b = 107;
                }
                break;
            case -84586424:
                if (!str.equals("انتهت مهلة قراءة البيانات")) {
                    b = -1;
                } else {
                    b = 110;
                }
                break;
            case -83435205:
                if (!str.equals("تعذر تحميل أو قراءة ملف الترجمة للمعاينة.")) {
                    b = -1;
                } else {
                    b = 18;
                }
                break;
            case -60286971:
                if (!str.equals("مسار غير مدعوم")) {
                    b = -1;
                } else {
                    b = 141;
                }
                break;
            case 1605:
                if (!str.equals("م")) {
                    b = -1;
                } else {
                    b = 49;
                }
                break;
            case 50523:
                if (!str.equals("تم")) {
                    b = -1;
                } else {
                    b = 22;
                }
                break;
            case 51361:
                if (!str.equals("من")) {
                    b = -1;
                } else {
                    b = 147;
                }
                break;
            case 1562986:
                if (!str.equals("إلى")) {
                    b = -1;
                } else {
                    b = 148;
                }
                break;
            case 1570046:
                if (!str.equals("حذف")) {
                    b = -1;
                } else {
                    b = 151;
                }
                break;
            case 1570564:
                if (!str.equals("حفظ")) {
                    b = -1;
                } else {
                    b = 4;
                }
                break;
            case 1570716:
                if (!str.equals("خاص")) {
                    b = -1;
                } else {
                    b = 180;
                }
                break;
            case 1582153:
                if (!str.equals("عكس")) {
                    b = -1;
                } else {
                    b = 145;
                }
                break;
            case 13862408:
                if (!str.equals(" خارج العرض الحالي")) {
                    b = -1;
                } else {
                    b = 89;
                }
                break;
            case 13889999:
                if (!str.equals("لا توجد ترجمة قابلة للمعاينة للحلقة الحالية.")) {
                    b = -1;
                } else {
                    b = 12;
                }
                break;
            case 20550303:
                if (!str.equals(" · الأعلى ")) {
                    b = -1;
                } else {
                    b = 51;
                }
                break;
            case 30110300:
                if (!str.equals(" · الحلقة ")) {
                    b = -1;
                } else {
                    b = 50;
                }
                break;
            case 48513566:
                if (!str.equals("الكل")) {
                    b = -1;
                } else {
                    b = 144;
                }
                break;
            case 48671458:
                if (!str.equals("حذف ")) {
                    b = -1;
                } else {
                    b = 153;
                }
                break;
            case 48788556:
                if (!str.equals("رجوع")) {
                    b = -1;
                } else {
                    b = 213;
                }
                break;
            case 49049224:
                if (!str.equals("عمل ")) {
                    b = -1;
                } else {
                    b = 162;
                }
                break;
            case 68434024:
                if (!str.equals("حساسية السحب: ")) {
                    b = -1;
                } else {
                    b = 194;
                }
                break;
            case 73739995:
                if (!str.equals("عدد التحميلات")) {
                    b = -1;
                } else {
                    b = 190;
                }
                break;
            case 78244926:
                if (!str.equals(" حلقة")) {
                    b = -1;
                } else {
                    b = 95;
                }
                break;
            case 97308068:
                if (!str.equals("جارٍ قراءة جودات الحلقات: ")) {
                    b = -1;
                } else {
                    b = 77;
                }
                break;
            case 116507611:
                if (!str.equals("تغيرت بيانات الحلقة؛ أعد تحديدها")) {
                    b = -1;
                } else {
                    b = 135;
                }
                break;
            case 131381918:
                if (!str.equals("إعادة المحاولة")) {
                    b = -1;
                } else {
                    b = 44;
                }
                break;
            case 159461073:
                if (!str.equals("، الحلقة ")) {
                    b = -1;
                } else {
                    b = 124;
                }
                break;
            case 171945094:
                if (!str.equals("تنظيف الكاش")) {
                    b = -1;
                } else {
                    b = 117;
                }
                break;
            case 179754132:
                if (!str.equals("لاحقًا")) {
                    b = -1;
                } else {
                    b = 205;
                }
                break;
            case 197410934:
                if (!str.equals("التحميل المتعدد")) {
                    b = -1;
                } else {
                    b = 102;
                }
                break;
            case 219511450:
                if (!str.equals("تمت إعادة Cinemana Classic")) {
                    b = -1;
                } else {
                    b = 210;
                }
                break;
            case 219670458:
                if (!str.equals("اسمح للتطبيق بتثبيت التحديثات. ملف APK محفوظ ولن يعاد تنزيله.")) {
                    b = -1;
                } else {
                    b = 37;
                }
                break;
            case 246121270:
                if (!str.equals("تحديد الحلقة ")) {
                    b = -1;
                } else {
                    b = 48;
                }
                break;
            case 283348762:
                if (!str.equals("لا توجد حلقات بهذا الرقم في المواسم المختارة")) {
                    b = -1;
                } else {
                    b = 84;
                }
                break;
            case 294303610:
                if (!str.equals("لا تعرض ثانية")) {
                    b = -1;
                } else {
                    b = 204;
                }
                break;
            case 297354414:
                if (!str.equals("تعذر قراءة أحدث إصدار من GitHub Releases. تحقق من الإنترنت وحاول مرة أخرى.")) {
                    b = -1;
                } else {
                    b = 33;
                }
                break;
            case 311992685:
                if (!str.equals("تحديد الكل")) {
                    b = -1;
                } else {
                    b = 86;
                }
                break;
            case 342420421:
                if (!str.equals("تعذر حذف بيانات الحلقة")) {
                    b = -1;
                } else {
                    b = 132;
                }
                break;
            case 359118919:
                if (!str.equals("غير محدد")) {
                    b = -1;
                } else {
                    b = 83;
                }
                break;
            case 370221461:
                if (!str.equals("تعذر تجهيز الحلقة؛ أعد المحاولة")) {
                    b = -1;
                } else {
                    b = 70;
                }
                break;
            case 377473227:
                if (!str.equals("التحديد المتعدد")) {
                    b = -1;
                } else {
                    b = 168;
                }
                break;
            case 398922601:
                if (!str.equals("استثناء الحلقات بالمربعات")) {
                    b = -1;
                } else {
                    b = 170;
                }
                break;
            case 402738439:
                if (!str.equals("أكمل المشاهدة")) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            case 405782897:
                if (!str.equals("تعذر فتح المثبت")) {
                    b = -1;
                } else {
                    b = 43;
                }
                break;
            case 407434445:
                if (!str.equals("السماح بالتثبيت")) {
                    b = -1;
                } else {
                    b = 38;
                }
                break;
            case 412630935:
                if (!str.equals("لم تُحدد حلقات")) {
                    b = -1;
                } else {
                    b = 87;
                }
                break;
            case 482534480:
                if (!str.equals("حد الجودة العام · الاختيارات الفردية محفوظة")) {
                    b = -1;
                } else {
                    b = 80;
                }
                break;
            case 496927491:
                if (!str.equals("لم يُعرف بعد")) {
                    b = -1;
                } else {
                    b = 92;
                }
                break;
            case 529634380:
                if (!str.equals("تحديد نطاق الحلقات")) {
                    b = -1;
                } else {
                    b = 171;
                }
                break;
            case 533131824:
                if (!str.equals("كل الأعمال")) {
                    b = -1;
                } else {
                    b = 163;
                }
                break;
            case 542094139:
                if (!str.equals("جودة الحلقة ")) {
                    b = -1;
                } else {
                    b = 60;
                }
                break;
            case 564949946:
                if (!str.equals("كل المواسم")) {
                    b = -1;
                } else {
                    b = 100;
                }
                break;
            case 599466169:
                if (!str.equals("جارٍ إرسال الحلقات للطابور…")) {
                    b = -1;
                } else {
                    b = 98;
                }
                break;
            case 607749745:
                if (!str.equals("جاري تجهيز التحديث")) {
                    b = -1;
                } else {
                    b = 27;
                }
                break;
            case 630196287:
                if (!str.equals("حلقة محددة")) {
                    b = -1;
                } else {
                    b = 191;
                }
                break;
            case 657396776:
                if (!str.equals("تغير مسار الحلقة أو لم يكتمل التحويل")) {
                    b = -1;
                } else {
                    b = 134;
                }
                break;
            case 664722595:
                if (!str.equals("يتوفر تحديث جديد")) {
                    b = -1;
                } else {
                    b = 46;
                }
                break;
            case 674831814:
                if (!str.equals("سيتم حذف ملفات الحلقات المحددة من الجهاز. هذه العملية لا يمكن التراجع عنها.")) {
                    b = -1;
                } else {
                    b = 155;
                }
                break;
            case 679002887:
                if (!str.equals("إعدادات الترجمة SRT")) {
                    b = -1;
                } else {
                    b = 7;
                }
                break;
            case 687774188:
                if (!str.equals("حجم الفيديو المعروف: ")) {
                    b = -1;
                } else {
                    b = 91;
                }
                break;
            case 694990178:
                if (!str.equals(" — الموسم ")) {
                    b = -1;
                } else {
                    b = 123;
                }
                break;
            case 703045946:
                if (!str.equals("↓ تنازلي")) {
                    b = -1;
                } else {
                    b = 184;
                }
                break;
            case 723655594:
                if (!str.equals("استثناء نطاق الحلقات")) {
                    b = -1;
                } else {
                    b = 169;
                }
                break;
            case 725311537:
                if (!str.equals("الكاش نظيف بالفعل")) {
                    b = -1;
                } else {
                    b = 120;
                }
                break;
            case 748903243:
                if (!str.equals("التحميل غير مكتمل")) {
                    b = -1;
                } else {
                    b = 128;
                }
                break;
            case 792353417:
                if (!str.equals("التمرير ومعاينة الفيديو")) {
                    b = -1;
                } else {
                    b = 200;
                }
                break;
            case 823109529:
                if (!str.equals("حدد الحلقات أولًا")) {
                    b = -1;
                } else {
                    b = 217;
                }
                break;
            case 875683465:
                if (!str.equals("تعذر بدء التحميل")) {
                    b = -1;
                } else {
                    b = 64;
                }
                break;
            case 881692176:
                if (!str.equals("')));function ms(t){t=(t||'').trim().replace(',', '.');let a=t.split(':');if(a.length===2)return Math.round(parseFloat(a[0])*60000+parseFloat(a[1])*1000);if(a.length>=3)return Math.round(parseFloat(a[a.length-3])*3600000+parseFloat(a[a.length-2])*60000+parseFloat(a[a.length-1])*1000);return 0}function clean(s){return(s||'').replace(/\\{[^}]*\\}/g,'').replace(/\\\\N/g,'\\\n').replace(/\\\\\n/g,'\\\n').replace(/<br[^>]*>/gi,'\\\n').replace(/<[^>]+>/g,'').trim()}let blocks=[];function addCue(a,b,text){text=clean(text);if(!(b>a)||!text)return;let d=document.createElement('div');d.className='cue';d.textContent=text;document.getElementById('list').appendChild(d);blocks.push({a:a,b:b,e:d})}let src=raw.replace(/\\\r/g,'');let re=/((?:\\d{2}:)?\\d{2}:\\d{2}[.,]\\d{3})\\s+-->\\s+((?:\\d{2}:)?\\d{2}:\\d{2}[.,]\\d{3})(?:[^\\\n]*)\\\n([\\s\\S]*?)(?=\\\n\\s*\\\n|$)/g;let m;while((m=re.exec(src))!==null)addCue(ms(m[1]),ms(m[2]),m[3]);if(!blocks.length){let lines=src.split('\\\n');for(let k=0;k<lines.length;k++){let line=lines[k];if(/^\\s*Dialogue\\s*:/i.test(line)){let p=line.replace(/^\\s*Dialogue\\s*:\\s*/i,'').split(',');if(p.length>=10)addCue(ms(p[1]),ms(p[2]),p.slice(9).join(','))}}}let last=-1;function fmt(msv){let sec=Math.max(0,Math.floor(msv/1000));let h=Math.floor(sec/3600);let m=Math.floor((sec%3600)/60);let x=sec%60;return String(h).padStart(2,'0')+':'+String(m).padStart(2,'0')+':'+String(x).padStart(2,'0')}window.setCurrent=function(t){document.getElementById('now').textContent='الوقت الحالي: '+fmt(t);let i=-1;for(let k=0;k<blocks.length;k++){if(t>=blocks[k].a&&t<=blocks[k].b){i=k;break}}if(i<0&&blocks.length){let best=0,dist=Infinity;for(let k=0;k<blocks.length;k++){let c=t<blocks[k].a?blocks[k].a-t:t>blocks[k].b?t-blocks[k].b:0;if(c<dist){dist=c;best=k}}if(dist<4000)i=best}if(i!==last){if(last>=0)blocks[last].e.classList.remove('active');if(i>=0){blocks[i].e.classList.add('active');blocks[i].e.scrollIntoView({block:'center',behavior:'smooth'})}last=i}};</script></body></html>")) {
                    b = -1;
                } else {
                    b = 221;
                }
                break;
            case 889162983:
                if (!str.equals("تعذر التحقق من التنزيلات")) {
                    b = -1;
                } else {
                    b = 113;
                }
                break;
            case 951214047:
                if (!str.equals("أدخل نطاق حلقات صحيحًا")) {
                    b = -1;
                } else {
                    b = 158;
                }
                break;
            case 972358175:
                if (!str.equals("التحويل ما زال يعمل")) {
                    b = -1;
                } else {
                    b = 136;
                }
                break;
            case 989977597:
                if (!str.equals("المسار مجلد")) {
                    b = -1;
                } else {
                    b = 139;
                }
                break;
            case 1009136777:
                if (!str.equals("جاري التحقق من الملفات…")) {
                    b = -1;
                } else {
                    b = 28;
                }
                break;
            case 1028722266:
                if (!str.equals("تعذر إكمال تنظيف الكاش")) {
                    b = -1;
                } else {
                    b = 118;
                }
                break;
            case 1048276699:
                if (!str.equals("معاينة مصغرة أثناء سحب شريط الوقت")) {
                    b = -1;
                } else {
                    b = 197;
                }
                break;
            case 1068349546:
                if (!str.equals("الحلقات المكتملة")) {
                    b = -1;
                } else {
                    b = 125;
                }
                break;
            case 1068464345:
                if (!str.equals("\nتعذر تجهيز ")) {
                    b = -1;
                } else {
                    b = 96;
                }
                break;
            case 1115359767:
                if (!str.equals("ترتيب التنزيلات")) {
                    b = -1;
                } else {
                    b = 179;
                }
                break;
            case 1147329112:
                if (!str.equals("لا توجد جودة")) {
                    b = -1;
                } else {
                    b = 54;
                }
                break;
            case 1221762422:
                if (!str.equals(" · الظاهرة ")) {
                    b = -1;
                } else {
                    b = 72;
                }
                break;
            case 1238256358:
                if (!str.equals("من رقم الحلقة")) {
                    b = -1;
                } else {
                    b = 174;
                }
                break;
            case 1244140157:
                if (!str.equals("إلى رقم الحلقة")) {
                    b = -1;
                } else {
                    b = 175;
                }
                break;
            case 1267997660:
                if (!str.equals("}</style></head><body><div id='now' class='bar'>الوقت الحالي: 00:00</div><div id='list'></div><script>const raw=decodeURIComponent(escape(atob('")) {
                    b = -1;
                } else {
                    b = 15;
                }
                break;
            case 1289973358:
                if (!str.equals("تدوير الحواف: ")) {
                    b = -1;
                } else {
                    b = 208;
                }
                break;
            case 1327853229:
                if (!str.equals("تغيير الترجمة")) {
                    b = -1;
                } else {
                    b = 17;
                }
                break;
            case 1334025387:
                if (!str.equals("لم تصل قائمة الحلقات؛ اضغط هنا لإعادة المحاولة")) {
                    b = -1;
                } else {
                    b = 78;
                }
                break;
            case 1338910292:
                if (!str.equals("ملف التحديث محفوظ في: ")) {
                    b = -1;
                } else {
                    b = 45;
                }
                break;
            case 1351083619:
                if (!str.equals("تمرير سريع قرب إطار مفتاحي")) {
                    b = -1;
                } else {
                    b = 198;
                }
                break;
            case 1373936778:
                if (!str.equals("جارٍ تجهيز معاينة ")) {
                    b = -1;
                } else {
                    b = 193;
                }
                break;
            case 1440601676:
                if (!str.equals("يطبق التغيير فورياً ويحفظ تلقائياً")) {
                    b = -1;
                } else {
                    b = 9;
                }
                break;
            case 1449123615:
                if (!str.equals("\nجارٍ قراءة ")) {
                    b = -1;
                } else {
                    b = 94;
                }
                break;
            case 1457217414:
                if (!str.equals("معاينة الترجمة")) {
                    b = -1;
                } else {
                    b = 16;
                }
                break;
            case 1467608214:
                if (!str.equals("تنظيف الكاش جارٍ بالفعل")) {
                    b = -1;
                } else {
                    b = 121;
                }
                break;
            case 1496698791:
                if (!str.equals("↑ تصاعدي")) {
                    b = -1;
                } else {
                    b = 185;
                }
                break;
            case 1501416850:
                if (!str.equals("إخفاء")) {
                    b = -1;
                } else {
                    b = 29;
                }
                break;
            case 1501719821:
                if (!str.equals("إعادة")) {
                    b = -1;
                } else {
                    b = 59;
                }
                break;
            case 1501777258:
                if (!str.equals("إغلاق")) {
                    b = -1;
                } else {
                    b = 0;
                }
                break;
            case 1502065525:
                if (!str.equals("إلغاء")) {
                    b = -1;
                } else {
                    b = 5;
                }
                break;
            case 1502862184:
                if (!str.equals("البحث برقم الحلقة بالضبط")) {
                    b = -1;
                } else {
                    b = 164;
                }
                break;
            case 1503912571:
                if (!str.equals("العمل")) {
                    b = -1;
                } else {
                    b = 146;
                }
                break;
            case 1505988461:
                if (!str.equals("تحديث")) {
                    b = -1;
                } else {
                    b = 47;
                }
                break;
            case 1506104585:
                if (!str.equals("ترجمة")) {
                    b = -1;
                } else {
                    b = 13;
                }
                break;
            case 1506750539:
                if (!str.equals("تنفيذ")) {
                    b = -1;
                } else {
                    b = 178;
                }
                break;
            case 1508815238:
                if (!str.equals("حذف (")) {
                    b = -1;
                } else {
                    b = 161;
                }
                break;
            case 1508959900:
                if (!str.equals("حسنًا")) {
                    b = -1;
                } else {
                    b = 157;
                }
                break;
            case 1526055174:
                if (!str.equals("امنح صلاحية التخزين ثم اضغط ابدأ التحميل")) {
                    b = -1;
                } else {
                    b = 62;
                }
                break;
            case 1556443021:
                if (!str.equals(" · أُرسل")) {
                    b = -1;
                } else {
                    b = 58;
                }
                break;
            case 1562249671:
                if (!str.equals(" · تعذر ")) {
                    b = -1;
                } else {
                    b = 67;
                }
                break;
            case 1587630023:
                if (!str.equals(" · موجود")) {
                    b = -1;
                } else {
                    b = 57;
                }
                break;
            case 1624603608:
                if (!str.equals("شفافية السطح: ")) {
                    b = -1;
                } else {
                    b = 207;
                }
                break;
            case 1637912180:
                if (!str.equals("اسم العمل")) {
                    b = -1;
                } else {
                    b = 181;
                }
                break;
            case 1645732663:
                if (!str.equals("اكتمل تحميل ")) {
                    b = -1;
                } else {
                    b = 126;
                }
                break;
            case 1650314599:
                if (!str.equals("معاينة الترجمة - اختر الترجمة")) {
                    b = -1;
                } else {
                    b = 14;
                }
                break;
            case 1676702475:
                if (!str.equals("عملية التحديث جارية بالفعل")) {
                    b = -1;
                } else {
                    b = 25;
                }
                break;
            case 1683093035:
                if (!str.equals("الملف مرتبط بحلقة أخرى")) {
                    b = -1;
                } else {
                    b = 129;
                }
                break;
            case 1702266926:
                if (!str.equals("التطبيق محدث")) {
                    b = -1;
                } else {
                    b = 30;
                }
                break;
            case 1753382354:
                if (!str.equals("تعذر فتح التحميل المحدد")) {
                    b = -1;
                } else {
                    b = 218;
                }
                break;
            case 1790160903:
                if (!str.equals("تحديد الحلقات بالمربعات")) {
                    b = -1;
                } else {
                    b = 172;
                }
                break;
            case 1801850021:
                if (!str.equals("حجم الفيديو الإجمالي: ")) {
                    b = -1;
                } else {
                    b = 90;
                }
                break;
            case 1844957289:
                if (!str.equals("عملية حذف الحلقة لم تكتمل بعد")) {
                    b = -1;
                } else {
                    b = 138;
                }
                break;
            case 1881943768:
                if (!str.equals("فرز التنزيلات")) {
                    b = -1;
                } else {
                    b = 187;
                }
                break;
            case 1887021401:
                if (!str.equals("الجودة: ")) {
                    b = -1;
                } else {
                    b = 73;
                }
                break;
            case 1901050108:
                if (!str.equals("تعذر قراءة الجودات؛ اضغط لإعادة المحاولة")) {
                    b = -1;
                } else {
                    b = 76;
                }
                break;
            case 1903397170:
                if (!str.equals("الموسم: كل المواسم")) {
                    b = -1;
                } else {
                    b = 105;
                }
                break;
            case 1953230542:
                if (!str.equals("القيمة تحفظ تلقائيًا")) {
                    b = -1;
                } else {
                    b = 20;
                }
                break;
            case 1972567462:
                if (!str.equals("الحلقات المحددة أُرسلت مسبقًا للطابور")) {
                    b = -1;
                } else {
                    b = 63;
                }
                break;
            case 1981408853:
                if (!str.equals(" حلقة؛ أعد المحاولة")) {
                    b = -1;
                } else {
                    b = 97;
                }
                break;
            case 1981432888:
                if (!str.equals("البحث برقم الحلقة")) {
                    b = -1;
                } else {
                    b = 103;
                }
                break;
            case 2017951778:
                if (!str.equals("تفعيل زر ⏩︎")) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            case 2118446598:
                if (!str.equals("حجم الخط: ")) {
                    b = -1;
                } else {
                    b = 6;
                }
                break;
            case 2136255963:
                if (!str.equals("التاريخ")) {
                    b = -1;
                } else {
                    b = 183;
                }
                break;
            case 2139904229:
                if (!str.equals("الحلقة ")) {
                    b = -1;
                } else {
                    b = 112;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                return "Close";
            case 1:
                return "Continue Watching";
            case 2:
                return "Enable ⏩︎ button";
            case 3:
                return "Multi-seek";
            case 4:
                return "Save";
            case 5:
                return "Cancel";
            case 6:
                return "Font size: ";
            case 7:
                return "SRT subtitle settings";
            case 8:
                return "Subtitle position";
            case 9:
                return "Changes apply instantly and are saved automatically";
            case 10:
                return "The subtitle file cannot be read from the current path.";
            case 11:
                return "No previewable embedded subtitle track was found in the local MKV file.";
            case 12:
                return "No subtitle is available to preview for this episode.";
            case 13:
                return "Subtitle";
            case 14:
                return "Subtitle preview - Choose subtitle";
            case 15:
                return "}</style></head><body><div id='now' class='bar'>Current time: 00:00</div><div id='list'></div><script>const raw=decodeURIComponent(escape(atob('";
            case 16:
                return "Subtitle preview";
            case 17:
                return "Change subtitle";
            case 18:
                return "Could not load or read the subtitle file for preview.";
            case 19:
                return "Positive values delay subtitles; negative values advance them";
            case 20:
                return "The value is saved automatically";
            case 21:
                return "Subtitle sync";
            case 22:
                return "Done";
            case 23:
                return "Arabic";
            case 24:
                return "Sync";
            case 25:
                return "An update operation is already in progress";
            case 26:
                return "Checking for updates…";
            case 27:
                return "Preparing update";
            case 28:
                return "Checking files…";
            case 29:
                return "Hide";
            case R.styleable.AppCompatTheme_actionModeTheme /* 30 */:
                return "App is up to date";
            case R.styleable.AppCompatTheme_actionModeWebSearchDrawable /* 31 */:
                return "You are already using the latest version.";
            case 32:
                return "Could not check for updates";
            case R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                return "Could not read the latest release from GitHub Releases. Check your internet connection and try again.";
            case R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                return "Could not prepare update";
            case R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                return "The update download or verification did not complete. Try again.";
            case R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                return "Downloaded update file found";
            case R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                return "Allow the app to install updates. The APK is saved and will not be downloaded again.";
            case R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                return "Allow installation";
            case R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                return "Enable permission to install unknown apps for Cinemana Pro, then try again. The update file is saved and will not be downloaded again.";
            case R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                return "Check for app updates";
            case R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                return "Could not open the Android installer automatically.\n\nYou can install the APK manually from:\n";
            case R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                return "\n\nThe file will not be downloaded again when you retry.";
            case R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                return "Could not open installer";
            case R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                return "Retry";
            case R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                return "Update file saved at: ";
            case R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                return "A new update is available";
            case R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                return "Update";
            case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                return "Select episode ";
            case R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                return "S";
            case R.styleable.AppCompatTheme_colorAccent /* 50 */:
                return " · Episode ";
            case 51:
                return " · Highest ";
            case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                return "Could not load; try again";
            case 53:
                return "Reading qualities";
            case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                return "No quality";
            case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                return "Reading size";
            case R.styleable.AppCompatTheme_colorError /* 56 */:
                return " · Custom";
            case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                return " · Existing";
            case R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                return " · Queued";
            case R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                return "Retry";
            case R.styleable.AppCompatTheme_controlBackground /* 60 */:
                return "Episode quality ";
            case R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                return "Drag to quickly scroll through episodes";
            case R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                return "Allow storage access, then tap Start download";
            case R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                return "The selected episodes were already added to the queue";
            case R.styleable.AppCompatTheme_dividerHorizontal /* 64 */:
                return "Could not start download";
            case R.styleable.AppCompatTheme_dividerVertical /* 65 */:
                return "Queued ";
            case R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                return " requests; track them in Downloads";
            case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                return " · Failed ";
            case R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                return "Episode data is incomplete";
            case R.styleable.AppCompatTheme_editTextColor /* 69 */:
                return "Could not queue episode ";
            case R.styleable.AppCompatTheme_editTextStyle /* 70 */:
                return "Could not prepare episode; try again";
            case R.styleable.AppCompatTheme_homeAsUpIndicator /* 71 */:
                return "Qualities: ";
            case R.styleable.AppCompatTheme_imageButtonStyle /* 72 */:
                return " · visible ";
            case R.styleable.AppCompatTheme_listChoiceBackgroundIndicator /* 73 */:
                return "Quality: ";
            case R.styleable.AppCompatTheme_listChoiceIndicatorMultipleAnimated /* 74 */:
                return "Season: ";
            case R.styleable.AppCompatTheme_listChoiceIndicatorSingleAnimated /* 75 */:
                return "No download quality is available";
            case R.styleable.AppCompatTheme_listDividerAlertDialog /* 76 */:
                return "Could not read qualities; tap to retry";
            case R.styleable.AppCompatTheme_listMenuViewStyle /* 77 */:
                return "Reading episode qualities: ";
            case R.styleable.AppCompatTheme_listPopupWindowStyle /* 78 */:
                return "Episode list did not load; tap here to retry";
            case R.styleable.AppCompatTheme_listPreferredItemHeight /* 79 */:
                return "Could not read episode list: ";
            case R.styleable.AppCompatTheme_listPreferredItemHeightLarge /* 80 */:
                return "Global quality limit · individual choices are preserved";
            case R.styleable.AppCompatTheme_listPreferredItemHeightSmall /* 81 */:
                return "Automatic from global quality";
            case R.styleable.AppCompatTheme_listPreferredItemPaddingEnd /* 82 */:
                return "Season ";
            case R.styleable.AppCompatTheme_listPreferredItemPaddingLeft /* 83 */:
                return "Not selected";
            case R.styleable.AppCompatTheme_listPreferredItemPaddingRight /* 84 */:
                return "No episode with this number exists in the selected seasons";
            case R.styleable.AppCompatTheme_listPreferredItemPaddingStart /* 85 */:
                return "Deselect all";
            case R.styleable.AppCompatTheme_panelBackground /* 86 */:
                return "Select all";
            case R.styleable.AppCompatTheme_panelMenuListTheme /* 87 */:
                return "No episodes selected";
            case R.styleable.AppCompatTheme_panelMenuListWidth /* 88 */:
                return " episode(s) selected";
            case R.styleable.AppCompatTheme_popupMenuStyle /* 89 */:
                return " outside current view";
            case R.styleable.AppCompatTheme_popupWindowStyle /* 90 */:
                return "Total video size: ";
            case R.styleable.AppCompatTheme_radioButtonStyle /* 91 */:
                return "Known video size: ";
            case R.styleable.AppCompatTheme_ratingBarStyle /* 92 */:
                return "Not known yet";
            case R.styleable.AppCompatTheme_ratingBarStyleIndicator /* 93 */:
                return " with unknown size";
            case R.styleable.AppCompatTheme_ratingBarStyleSmall /* 94 */:
                return "\nReading ";
            case R.styleable.AppCompatTheme_searchViewStyle /* 95 */:
                return " episode(s)";
            case R.styleable.AppCompatTheme_seekBarStyle /* 96 */:
                return "\nCould not prepare ";
            case R.styleable.AppCompatTheme_selectableItemBackground /* 97 */:
                return " episode(s); try again";
            case R.styleable.AppCompatTheme_selectableItemBackgroundBorderless /* 98 */:
                return "Adding episodes to queue…";
            case R.styleable.AppCompatTheme_spinnerDropDownItemStyle /* 99 */:
                return "Start download";
            case 100:
                return "All seasons";
            case R.styleable.AppCompatTheme_switchStyle /* 101 */:
                return "Season";
            case R.styleable.AppCompatTheme_textAppearanceLargePopupMenu /* 102 */:
                return "Multi-download";
            case R.styleable.AppCompatTheme_textAppearanceListItem /* 103 */:
                return "Search by episode number";
            case R.styleable.AppCompatTheme_textAppearanceListItemSecondary /* 104 */:
                return "Exact episode number, e.g. 7";
            case R.styleable.AppCompatTheme_textAppearanceListItemSmall /* 105 */:
                return "Season: All seasons";
            case R.styleable.AppCompatTheme_textAppearancePopupMenuHeader /* 106 */:
                return "Quality: 1080p";
            case R.styleable.AppCompatTheme_textAppearanceSearchResultSubtitle /* 107 */:
                return "Deselect";
            case R.styleable.AppCompatTheme_textAppearanceSearchResultTitle /* 108 */:
                return "Loading seasons and episodes…";
            case R.styleable.AppCompatTheme_textAppearanceSmallPopupMenu /* 109 */:
                return "No data received from server";
            case R.styleable.AppCompatTheme_textColorAlertDialogListItem /* 110 */:
                return "Data request timed out";
            case R.styleable.AppCompatTheme_textColorSearchUrl /* 111 */:
                return "Unknown";
            case R.styleable.AppCompatTheme_toolbarNavigationButtonStyle /* 112 */:
                return "Episode ";
            case R.styleable.AppCompatTheme_toolbarStyle /* 113 */:
                return "Could not verify downloads";
            case R.styleable.AppCompatTheme_tooltipForegroundColor /* 114 */:
                return "Multi-download is available for seasons and episodes only";
            case R.styleable.AppCompatTheme_tooltipFrameBackground /* 115 */:
                return "Could not open multi-download";
            case R.styleable.AppCompatTheme_viewInflaterClass /* 116 */:
                return "Could not load episode data";
            case R.styleable.AppCompatTheme_windowActionBar /* 117 */:
                return "Clear cache";
            case R.styleable.AppCompatTheme_windowActionBarOverlay /* 118 */:
                return "Could not complete cache cleanup";
            case R.styleable.AppCompatTheme_windowActionModeOverlay /* 119 */:
                return "Cache and temporary files cleared — freed ";
            case R.styleable.AppCompatTheme_windowFixedHeightMajor /* 120 */:
                return "Cache is already clean";
            case R.styleable.AppCompatTheme_windowFixedHeightMinor /* 121 */:
                return "Cache cleanup is already running";
            case R.styleable.AppCompatTheme_windowFixedWidthMajor /* 122 */:
                return "Clearing cache…";
            case R.styleable.AppCompatTheme_windowFixedWidthMinor /* 123 */:
                return " — Season ";
            case R.styleable.AppCompatTheme_windowMinWidthMajor /* 124 */:
                return ", Episode ";
            case R.styleable.AppCompatTheme_windowMinWidthMinor /* 125 */:
                return "Completed episodes";
            case R.styleable.AppCompatTheme_windowNoTitle /* 126 */:
                return "Downloaded ";
            case 127:
                return " completed episode(s)";
            case RecyclerView.b0.FLAG_IGNORE /* 128 */:
                return "Download is incomplete";
            case 129:
                return "The file is linked to another episode";
            case 130:
                return "Could not delete file: ";
            case 131:
                return "The file still exists";
            case 132:
                return "Could not delete episode data";
            case 133:
                return "Could not save delete operation";
            case 134:
                return "Episode path changed or conversion is incomplete";
            case 135:
                return "Episode data changed; select it again";
            case 136:
                return "Conversion is still running";
            case 137:
                return "Another delete operation is already running";
            case 138:
                return "Episode deletion has not completed yet";
            case 139:
                return "Path is a directory";
            case 140:
                return "Path is outside the app folder or is a symbolic link";
            case 141:
                return "Unsupported path";
            case 142:
                return "Fast scroll";
            case 143:
                return "Options";
            case 144:
                return "All";
            case 145:
                return "Invert";
            case 146:
                return "Title";
            case 147:
                return "From";
            case 148:
                return "To";
            case 149:
                return "Select range";
            case 150:
                return "Exclude range";
            case 151:
                return "Delete";
            case 152:
                return "Open the completed episodes list first";
            case 153:
                return "Delete ";
            case 154:
                return " episode(s)?";
            case 155:
                return "The selected episode files will be deleted from the device. This action cannot be undone.";
            case 156:
                return "Deleted ";
            case 157:
                return "OK";
            case 158:
                return "Enter a valid episode range";
            case 159:
                return "Selected: ";
            case 160:
                return "Deleting…";
            case 161:
                return "Delete (";
            case 162:
                return "Title ";
            case 163:
                return "All titles";
            case 164:
                return "Search exact episode number";
            case 165:
                return "Multi-select and exclude";
            case 166:
                return "Exclude episodes · long-press and drag";
            case 167:
                return "Select episodes · long-press and drag";
            case 168:
                return "Multi-select";
            case 169:
                return "Exclude episode range";
            case 170:
                return "Exclude episodes by grid";
            case 171:
                return "Select episode range";
            case 172:
                return "Select episodes by grid";
            case 173:
                return "Enter a valid range, such as 5 to 17";
            case 174:
                return "From episode";
            case 175:
                return "To episode";
            case 176:
                return "Exclude episode range";
            case 177:
                return "Select episode range";
            case 178:
                return "Apply";
            case 179:
                return "Sort downloads";
            case 180:
                return "Custom";
            case 181:
                return "Title";
            case 182:
                return "Episode";
            case 183:
                return "Date";
            case 184:
                return "↓ Descending";
            case 185:
                return "↑ Ascending";
            case 186:
                return "Advanced selection";
            case 187:
                return "Sort downloads";
            case 188:
                return "Multi-delete";
            case 189:
                return "Concurrent downloads     ";
            case 190:
                return "Concurrent downloads";
            case 191:
                return "Episode selected";
            case 192:
                return "Episode not selected";
            case 193:
                return "Preparing preview ";
            case 194:
                return "Swipe sensitivity: ";
            case 195:
                return " seconds across screen";
            case 196:
                return "Horizontal swipe to seek";
            case 197:
                return "Thumbnail preview while scrubbing";
            case 198:
                return "Fast seek near keyframe";
            case 199:
                return "Swipe left to rewind and right to fast-forward. Seeking near a keyframe may differ slightly from the requested time and applies the next time the player is opened. Preview does not pause playback; streaming preview depends on server response.";
            case 200:
                return "Seeking and video preview";
            case 201:
                return "Download speed: ";
            case 202:
                return "Unlimited";
            case 203:
                return "Update available";
            case 204:
                return "Don't show again";
            case 205:
                return "Later";
            case 206:
                return "Default";
            case 207:
                return "Surface opacity: ";
            case 208:
                return "Corner radius: ";
            case 209:
                return "Bottom bar opacity: ";
            case 210:
                return "Cinemana Classic restored";
            case 211:
                return "Selected ";
            case 212:
                return "Appearance";
            case 213:
                return "Back";
            case 214:
                return "Custom theme saved";
            case 215:
                return "Episodes haven't loaded yet";
            case 216:
                return "Could not open multi-select";
            case 217:
                return "Select episodes first";
            case 218:
                return "Could not open selected downloads";
            case 219:
                return "Episode: \u2066";
            case 220:
                return "% · Fixed size";
            case 221:
                return "')));function ms(t){t=(t||'').trim().replace(',', '.');let a=t.split(':');if(a.length===2)return Math.round(parseFloat(a[0])*60000+parseFloat(a[1])*1000);if(a.length>=3)return Math.round(parseFloat(a[a.length-3])*3600000+parseFloat(a[a.length-2])*60000+parseFloat(a[a.length-1])*1000);return 0}function clean(s){return(s||'').replace(/\\{[^}]*\\}/g,'').replace(/\\\\N/g,'\\\n').replace(/\\\\\n/g,'\\\n').replace(/<br[^>]*>/gi,'\\\n').replace(/<[^>]+>/g,'').trim()}let blocks=[];function addCue(a,b,text){text=clean(text);if(!(b>a)||!text)return;let d=document.createElement('div');d.className='cue';d.textContent=text;document.getElementById('list').appendChild(d);blocks.push({a:a,b:b,e:d})}let src=raw.replace(/\\\r/g,'');let re=/((?:\\d{2}:)?\\d{2}:\\d{2}[.,]\\d{3})\\s+-->\\s+((?:\\d{2}:)?\\d{2}:\\d{2}[.,]\\d{3})(?:[^\\\n]*)\\\n([\\s\\S]*?)(?=\\\n\\s*\\\n|$)/g;let m;while((m=re.exec(src))!==null)addCue(ms(m[1]),ms(m[2]),m[3]);if(!blocks.length){let lines=src.split('\\\n');for(let k=0;k<lines.length;k++){let line=lines[k];if(/^\\s*Dialogue\\s*:/i.test(line)){let p=line.replace(/^\\s*Dialogue\\s*:\\s*/i,'').split(',');if(p.length>=10)addCue(ms(p[1]),ms(p[2]),p.slice(9).join(','))}}}let last=-1;function fmt(msv){let sec=Math.max(0,Math.floor(msv/1000));let h=Math.floor(sec/3600);let m=Math.floor((sec%3600)/60);let x=sec%60;return String(h).padStart(2,'0')+':'+String(m).padStart(2,'0')+':'+String(x).padStart(2,'0')}window.setCurrent=function(t){document.getElementById('now').textContent='Current time: '+fmt(t);let i=-1;for(let k=0;k<blocks.length;k++){if(t>=blocks[k].a&&t<=blocks[k].b){i=k;break}}if(i<0&&blocks.length){let best=0,dist=Infinity;for(let k=0;k<blocks.length;k++){let c=t<blocks[k].a?blocks[k].a-t:t>blocks[k].b?t-blocks[k].b:0;if(c<dist){dist=c;best=k}}if(dist<4000)i=best}if(i!==last){if(last>=0)blocks[last].e.classList.remove('active');if(i>=0){blocks[i].e.classList.add('active');blocks[i].e.scrollIntoView({block:'center',behavior:'smooth'})}last=i}};</script></body></html>";
            default:
                return str;
        }
    }
}
