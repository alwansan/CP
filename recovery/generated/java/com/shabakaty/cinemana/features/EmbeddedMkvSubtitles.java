package com.shabakaty.cinemana.features;

import androidx.recyclerview.widget.RecyclerView;
import com.connectsdk.service.DLNAService;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.ca1.I18n161;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileWriter;
import java.io.InputStreamReader;
import java.io.RandomAccessFile;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.net.URI;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public final class EmbeddedMkvSubtitles {
    private static final int CACHE_LIMIT = 48;
    private static final long ID_CODEC_ID = 134;
    private static final long ID_LANGUAGE = 2274716;
    private static final long ID_LANGUAGE_IETF = 2274717;
    private static final long ID_NAME = 21358;
    private static final long ID_SEGMENT = 408125543;
    private static final long ID_TRACKS = 374648427;
    private static final long ID_TRACK_ENTRY = 174;
    private static final long ID_TRACK_NUMBER = 215;
    private static final long ID_TRACK_TYPE = 131;
    private static final String LABEL_PREFIX = "embedded_label:";
    private static final String SUBTITLE_CLASS = "com.shabakaty.cinemana.domain.models.local.Subtitle";
    private static final long TRACK_TYPE_SUBTITLE = 17;
    private static final Pattern STREAM = Pattern.compile("Stream #\\d+:\\d+(?:\\(([^)]+)\\))?(?:\\[[^]]+\\])?:\\s*Subtitle:\\s*([^,\\s]+)", 2);
    private static final Pattern META_TITLE = Pattern.compile("^\\s*title\\s*:\\s*(.+?)\\s*$", 2);
    private static final Map<String, List<Track>> CACHE = new LinkedHashMap<String, List<Track>>(49, 0.75f, true) { // from class: com.shabakaty.cinemana.features.EmbeddedMkvSubtitles.1
        @Override // java.util.LinkedHashMap
        protected boolean removeEldestEntry(Map.Entry<String, List<Track>> entry) {
            return size() > 48;
        }
    };

    static final class Track {
        String codec;
        final int index;
        String language;
        String source;
        String title;

        Track(int i, String str, String str2, String str3) {
            this(i, str, str2, str3, BuildConfig.FLAVOR);
        }

        Track(int i, String str, String str2, String str3, String str4) {
            this.index = i;
            this.language = EmbeddedMkvSubtitles.safe(str);
            this.title = EmbeddedMkvSubtitles.safe(str2);
            this.codec = EmbeddedMkvSubtitles.safe(str3);
            this.source = EmbeddedMkvSubtitles.safe(str4);
        }

        String normalizedLanguage() {
            return EmbeddedMkvSubtitles.normalizeLanguage(this.language, this.title);
        }

        String selectorLanguage() {
            String strNormalizedLanguage = normalizedLanguage();
            return "und".equals(strNormalizedLanguage) ? "#" + this.index : strNormalizedLanguage;
        }

        String extension() {
            String lowerCase = this.codec.toLowerCase(Locale.US);
            if (lowerCase.contains("ass") || lowerCase.contains("ssa")) {
                return "ass";
            }
            if (lowerCase.contains("vtt")) {
                return "vtt";
            }
            return DLNAService.DEFAULT_SUBTITLE_TYPE;
        }
    }

    private static final class EbmlElement {
        final long data;
        final long end;
        final long id;
        final long size;
        final boolean unknown;

        EbmlElement(long j, long j2, long j3, long j4, boolean z) {
            this.id = j;
            this.size = j2;
            this.data = j3;
            this.end = j4;
            this.unknown = z;
        }
    }

    private EmbeddedMkvSubtitles() {
    }

    public static List append(Object obj, Object obj2, List list) {
        return appendWithPlayer(obj, obj2, list, null);
    }

    public static List appendWithPlayer(Object obj, Object obj2, List list, Object obj3) {
        if (list == null) {
            list = new ArrayList();
        }
        if (obj2 == null) {
            return list;
        }
        try {
            List<Track> listScanPlayer = scanPlayer(obj3);
            String strResolve = BuildConfig.FLAVOR;
            File file = null;
            if (!listScanPlayer.isEmpty()) {
                log("PROBE128 chosen=player tracks=" + describe(listScanPlayer));
            } else if (obj != null) {
                strResolve = resolve(obj, obj2);
                File fileUriFile = uriFile(strResolve);
                if (fileUriFile != null && fileUriFile.isFile() && fileUriFile.length() > 1024) {
                    listScanPlayer = tracks(fileUriFile, obj, null);
                    file = fileUriFile;
                } else {
                    file = fileUriFile;
                }
            }
            if (listScanPlayer != null && !listScanPlayer.isEmpty()) {
                ArrayList arrayList = new ArrayList();
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                for (Track track : listScanPlayer) {
                    String strNormalizedLanguage = track.normalizedLanguage();
                    if (linkedHashSet.add(strNormalizedLanguage)) {
                        Object objNewSubtitle = newSubtitle("embedded_" + track.index + "_" + strNormalizedLanguage, nameFor(track, strNormalizedLanguage), strNormalizedLanguage, track.extension(), "embedded://mkv/" + track.selectorLanguage());
                        if (objNewSubtitle != null) {
                            arrayList.add(objNewSubtitle);
                        }
                    }
                }
                if (!arrayList.isEmpty()) {
                    log("CATALOG128 source=verified path=" + (file == null ? "player" : file.getAbsolutePath()) + " tracks=" + describe(listScanPlayer) + " exposed=" + arrayList.size());
                    return arrayList;
                }
                return list;
            }
            log("CATALOG128 empty path=" + strResolve);
            return list;
        } catch (Throwable th) {
            log("CATALOG128 error=" + th.getClass().getSimpleName() + ":" + safe(th.getMessage()));
        }
    }

    public static String displayName(Object obj, Object obj2) {
        try {
            String strStringField = stringField(obj2, "name");
            if (strStringField != null && strStringField.startsWith(LABEL_PREFIX) && strStringField.length() > LABEL_PREFIX.length()) {
                return strStringField.substring(LABEL_PREFIX.length());
            }
            return null;
        } catch (Throwable th) {
            return null;
        }
    }

    static String nameFor(Track track, String str) {
        if ("ar".equals(str)) {
            return "arabic";
        }
        if ("sp".equals(str)) {
            return "special";
        }
        return "en".equals(str) ? "english" : LABEL_PREFIX + languageLabel(str, track.title);
    }

    static String languageLabel(String str, String str2) {
        String strTrim = safe(str2).trim();
        if (strTrim.length() > 0) {
            int iIndexOf = strTrim.toLowerCase(Locale.US).indexOf(" subtitle for ");
            if (iIndexOf > 0) {
                strTrim = strTrim.substring(0, iIndexOf).trim();
            }
            String strClean = DownloadTitle127.clean(strTrim);
            if (strClean.length() > 0 && strClean.length() <= 40) {
                return strClean;
            }
        }
        if (str == null || str.length() == 0 || "und".equals(str)) {
            return I18n161.t("ترجمة");
        }
        return str.toUpperCase(Locale.US);
    }

    static String normalizeLanguage(String str, String str2) {
        String strReplace = safe(str).trim().toLowerCase(Locale.US).replace('_', '-');
        String lowerCase = safe(str2).toLowerCase(Locale.US);
        if (lowerCase.contains("special subtitle") || lowerCase.contains("enhanced subtitle") || lowerCase.contains("improved subtitle") || lowerCase.contains("ترجمة محسنة")) {
            return "sp";
        }
        if (lowerCase.startsWith("english subtitle") || lowerCase.equals("english")) {
            return "en";
        }
        if (lowerCase.startsWith("arabic subtitle") || lowerCase.equals("arabic") || strReplace.equals("ar") || strReplace.equals("ara") || strReplace.equals("arb") || strReplace.startsWith("ar-")) {
            return "ar";
        }
        if (strReplace.equals("en") || strReplace.equals("eng") || strReplace.startsWith("en-")) {
            return "en";
        }
        if (strReplace.equals("sp") || strReplace.equals("special")) {
            return "sp";
        }
        if (strReplace.length() == 0 || strReplace.equals("und") || strReplace.equals("unknown")) {
            return "und";
        }
        int iIndexOf = strReplace.indexOf(45);
        return iIndexOf > 0 ? strReplace.substring(0, iIndexOf) : strReplace;
    }

    private static List<Track> tracks(File file, Object obj, Object obj2) {
        String str;
        try {
            str = file.getCanonicalPath() + "|" + file.length() + "|" + file.lastModified();
        } catch (Exception e) {
            str = file.getAbsolutePath() + "|" + file.length() + "|" + file.lastModified();
        }
        List<Track> listScanPlayer = scanPlayer(obj2);
        if (!listScanPlayer.isEmpty()) {
            log("PROBE128 path=" + file.getAbsolutePath() + " player=" + describe(listScanPlayer) + " chosen=player");
            return listScanPlayer;
        }
        Map<String, List<Track>> map = CACHE;
        synchronized (map) {
            List<Track> list = map.get(str);
            if (list != null) {
                return copy(list);
            }
            List<Track> listScanEbml = scanEbml(file);
            List arrayList = new ArrayList();
            List arrayList2 = new ArrayList();
            if (needsFallback(listScanEbml)) {
                arrayList = scanMediaExtractor(file);
            }
            List<Track> listChoose = choose(listScanEbml, arrayList);
            if (needsFallback(listChoose)) {
                arrayList2 = scanFfmpeg(file, obj);
            }
            List<Track> listChoose2 = choose(listChoose, arrayList2);
            synchronized (map) {
                map.put(str, copy(listChoose2));
            }
            log("PROBE128 path=" + file.getAbsolutePath() + " ebml=" + describe(listScanEbml) + " media=" + describe(arrayList) + " ffmpeg=" + describe(arrayList2) + " chosen=" + describe(listChoose2));
            return listChoose2;
        }
    }

    private static List<Track> scanPlayer(Object obj) {
        ArrayList arrayList = new ArrayList();
        if (obj == null) {
            return arrayList;
        }
        try {
            Method methodFindMethod = findMethod(obj.getClass(), "J", 0);
            if (methodFindMethod == null) {
                return arrayList;
            }
            methodFindMethod.setAccessible(true);
            Object[] objArrObjectArray = objectArray(fieldValue(methodFindMethod.invoke(obj, new Object[0]), "s"));
            int length = objArrObjectArray.length;
            int i = 0;
            int i2 = 0;
            while (i < length) {
                int i3 = i2;
                for (Object obj2 : objectArray(fieldValue(objArrObjectArray[i], "s"))) {
                    String strFirst = first(strField(obj2, "C"), strField(obj2, "B"));
                    if (isSubtitleMime(strFirst)) {
                        int i4 = i3 + 1;
                        arrayList.add(new Track(i3, strField(obj2, "t"), strField(obj2, "s"), strFirst, "player"));
                        i3 = i4;
                    }
                }
                i++;
                i2 = i3;
            }
        } catch (Throwable th) {
            arrayList.clear();
            log("PLAYER128 error=" + th.getClass().getSimpleName() + ":" + safe(th.getMessage()));
        }
        return dedupeExact(arrayList);
    }

    private static List<Track> scanEbml(File file) {
        EbmlElement element;
        ArrayList<Track> arrayList = new ArrayList<>();
        RandomAccessFile randomAccessFile = null;
        try {
            try {
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "r");
                try {
                    long length = randomAccessFile2.length();
                    while (randomAccessFile2.getFilePointer() < length && (element = readElement(randomAccessFile2, length)) != null) {
                        if (element.id == ID_SEGMENT) {
                            if (!element.unknown) {
                                length = Math.min(length, element.end);
                            }
                            arrayList = parseSegmentTracks(randomAccessFile2, length);
                            break;
                        }
                        if (element.unknown) {
                            break;
                        }
                        seekSafe(randomAccessFile2, element.end, length);
                    }
                    randomAccessFile2.close();
                } catch (Throwable th) {
                    th = th;
                    randomAccessFile = randomAccessFile2;
                    try {
                        arrayList.clear();
                        log("EBML128 error=" + th.getClass().getSimpleName() + ":" + safe(th.getMessage()));
                        if (randomAccessFile != null) {
                            randomAccessFile.close();
                        }
                        return arrayList;
                    } catch (Throwable th2) {
                        if (randomAccessFile != null) {
                            try {
                                randomAccessFile.close();
                            } catch (Throwable th3) {
                            }
                        }
                        throw th2;
                    }
                }
            } catch (Throwable th4) {
            }
        } catch (Throwable th5) {
            th = th5;
        }
        return arrayList;
    }

    private static ArrayList<Track> parseSegmentTracks(RandomAccessFile randomAccessFile, long j) throws Exception {
        EbmlElement element;
        while (randomAccessFile.getFilePointer() < j && (element = readElement(randomAccessFile, j)) != null) {
            if (element.id == ID_TRACKS) {
                if (!element.unknown) {
                    j = Math.min(j, element.end);
                }
                return parseTracks(randomAccessFile, j);
            }
            if (element.unknown) {
                break;
            }
            seekSafe(randomAccessFile, element.end, j);
        }
        return new ArrayList<>();
    }

    private static ArrayList<Track> parseTracks(RandomAccessFile randomAccessFile, long j) throws Exception {
        EbmlElement element;
        ArrayList<Track> arrayList = new ArrayList<>();
        int i = 0;
        while (randomAccessFile.getFilePointer() < j && (element = readElement(randomAccessFile, j)) != null) {
            if (element.id == ID_TRACK_ENTRY) {
                Track trackEntry = parseTrackEntry(randomAccessFile, element.unknown ? j : Math.min(j, element.end), i);
                if (trackEntry != null) {
                    arrayList.add(trackEntry);
                    i++;
                }
            }
            if (element.unknown) {
                break;
            }
            seekSafe(randomAccessFile, element.end, j);
        }
        return arrayList;
    }

    private static Track parseTrackEntry(RandomAccessFile randomAccessFile, long j, int i) throws Exception {
        String str;
        String str2;
        EbmlElement element;
        long uInt = -1;
        String utf8 = BuildConfig.FLAVOR;
        String utf9 = BuildConfig.FLAVOR;
        String utf10 = utf9;
        String utf11 = utf10;
        while (true) {
            if (randomAccessFile.getFilePointer() < j && (element = readElement(randomAccessFile, j)) != null) {
                long j2 = element.unknown ? 0L : element.size;
                if (element.id == ID_TRACK_TYPE && j2 <= 8) {
                    uInt = readUInt(randomAccessFile, (int) j2);
                } else if (element.id == ID_TRACK_NUMBER && j2 <= 8) {
                    readUInt(randomAccessFile, (int) j2);
                } else if (element.id == ID_LANGUAGE && j2 <= 256) {
                    utf8 = readUtf8(randomAccessFile, (int) j2);
                } else if (element.id == ID_LANGUAGE_IETF && j2 <= 256) {
                    utf9 = readUtf8(randomAccessFile, (int) j2);
                } else if (element.id == ID_NAME && j2 <= 4096) {
                    utf10 = readUtf8(randomAccessFile, (int) j2);
                } else if (element.id == ID_CODEC_ID && j2 <= 256) {
                    utf11 = readUtf8(randomAccessFile, (int) j2);
                }
                if (element.unknown) {
                    str = utf10;
                    str2 = utf11;
                    break;
                }
                seekSafe(randomAccessFile, element.end, j);
            } else {
                str = utf10;
                str2 = utf11;
                break;
            }
        }
        if (uInt != TRACK_TYPE_SUBTITLE) {
            return null;
        }
        return new Track(i, utf9.length() > 0 ? utf9 : utf8, str, str2, "ebml");
    }

    private static EbmlElement readElement(RandomAccessFile randomAccessFile, long j) throws Exception {
        int i;
        int iVintLength;
        int iVintLength2;
        if (randomAccessFile.getFilePointer() >= j || (i = randomAccessFile.read()) < 0 || (iVintLength = vintLength(i, 4)) < 1) {
            return null;
        }
        long j2 = ((long) i) & 255;
        for (int i2 = 1; i2 < iVintLength; i2++) {
            int i3 = randomAccessFile.read();
            if (i3 < 0) {
                return null;
            }
            j2 = (j2 << 8) | (((long) i3) & 255);
        }
        int i4 = randomAccessFile.read();
        if (i4 < 0 || (iVintLength2 = vintLength(i4, 8)) < 1) {
            return null;
        }
        int i5 = (1 << (8 - iVintLength2)) - 1;
        long j3 = i4 & i5;
        boolean z = j3 == ((long) i5);
        for (int i6 = 1; i6 < iVintLength2; i6++) {
            int i7 = randomAccessFile.read();
            if (i7 < 0) {
                return null;
            }
            j3 = (j3 << 8) | (((long) i7) & 255);
            z &= i7 == 255;
        }
        long filePointer = randomAccessFile.getFilePointer();
        long jSafeAdd = z ? j : safeAdd(filePointer, j3, j);
        return new EbmlElement(j2, j3, filePointer, (jSafeAdd < filePointer || jSafeAdd > j) ? j : jSafeAdd, z);
    }

    private static int vintLength(int i, int i2) {
        int i3 = RecyclerView.b0.FLAG_IGNORE;
        int i4 = 1;
        while (i4 <= i2) {
            if ((i & i3) != 0) {
                return i4;
            }
            i4++;
            i3 >>= 1;
        }
        return -1;
    }

    private static long safeAdd(long j, long j2, long j3) {
        return (j2 < 0 || j > j3 - j2) ? j3 : j + j2;
    }

    private static void seekSafe(RandomAccessFile randomAccessFile, long j, long j2) throws Exception {
        randomAccessFile.seek(Math.max(0L, Math.min(j, j2)));
    }

    private static long readUInt(RandomAccessFile randomAccessFile, int i) throws Exception {
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = randomAccessFile.read();
            if (i3 < 0) {
                break;
            }
            j = (j << 8) | (((long) i3) & 255);
        }
        return j;
    }

    private static String readUtf8(RandomAccessFile randomAccessFile, int i) throws Exception {
        byte[] bArr = new byte[i];
        randomAccessFile.readFully(bArr);
        return new String(bArr, Charset.forName("UTF-8")).replace("\u0000", BuildConfig.FLAVOR).trim();
    }

    static boolean needsFallback(List<Track> list) {
        if (list == null || list.isEmpty()) {
            return true;
        }
        Iterator<Track> it = list.iterator();
        while (it.hasNext()) {
            if ("und".equals(it.next().normalizedLanguage())) {
                return true;
            }
        }
        return false;
    }

    static List<Track> choose(List<Track> list, List<Track> list2) {
        int iQuality;
        int iQuality2;
        if (list2 == null || list2.isEmpty()) {
            return list == null ? new ArrayList() : list;
        }
        if (list == null || list.isEmpty() || (iQuality2 = quality(list2)) > (iQuality = quality(list))) {
            return list2;
        }
        return (iQuality2 != iQuality || list2.size() <= list.size()) ? list : list2;
    }

    static int quality(List<Track> list) {
        int i = 0;
        if (list != null) {
            Iterator<Track> it = list.iterator();
            while (it.hasNext()) {
                if (!"und".equals(it.next().normalizedLanguage())) {
                    i++;
                }
            }
        }
        return i;
    }

    private static List<Track> scanMediaExtractor(File file) {
        ArrayList arrayList = new ArrayList();
        Object objNewInstance = null;
        try {
            try {
                Class<?> cls = Class.forName("android.media.MediaExtractor");
                objNewInstance = cls.newInstance();
                cls.getMethod("setDataSource", String.class).invoke(objNewInstance, file.getAbsolutePath());
                int iIntValue = ((Number) cls.getMethod("getTrackCount", new Class[0]).invoke(objNewInstance, new Object[0])).intValue();
                Method method = cls.getMethod("getTrackFormat", Integer.TYPE);
                int i = 0;
                for (int i2 = 0; i2 < iIntValue; i2++) {
                    Object objInvoke = method.invoke(objNewInstance, Integer.valueOf(i2));
                    String string = formatString(objInvoke, "mime");
                    if (isSubtitleMime(string)) {
                        int i3 = i + 1;
                        arrayList.add(new Track(i, formatString(objInvoke, "language"), first(formatString(objInvoke, "label"), formatString(objInvoke, "title")), string, "media"));
                        i = i3;
                    }
                }
                if (objNewInstance != null) {
                    objNewInstance.getClass().getMethod("release", new Class[0]).invoke(objNewInstance, new Object[0]);
                }
            } catch (Throwable th) {
                try {
                    arrayList.clear();
                    if (objNewInstance != null) {
                        objNewInstance.getClass().getMethod("release", new Class[0]).invoke(objNewInstance, new Object[0]);
                    }
                } catch (Throwable th2) {
                    if (objNewInstance != null) {
                        try {
                            objNewInstance.getClass().getMethod("release", new Class[0]).invoke(objNewInstance, new Object[0]);
                        } catch (Throwable th3) {
                        }
                    }
                    throw th2;
                }
            }
        } catch (Throwable th4) {
        }
        return arrayList;
    }

    private static String formatString(Object obj, String str) {
        if (obj == null) {
            return BuildConfig.FLAVOR;
        }
        try {
            Object objInvoke = obj.getClass().getMethod("getString", String.class).invoke(obj, str);
            return objInvoke == null ? BuildConfig.FLAVOR : String.valueOf(objInvoke);
        } catch (Throwable th) {
            return BuildConfig.FLAVOR;
        }
    }

    private static boolean isSubtitleMime(String str) {
        String lowerCase = safe(str).toLowerCase(Locale.US);
        return lowerCase.startsWith("text/") || lowerCase.contains("subrip") || lowerCase.contains("subtitle") || lowerCase.contains("ssa") || lowerCase.contains("ass") || lowerCase.contains("vtt") || lowerCase.contains("ttml") || lowerCase.contains("cea-") || lowerCase.contains("pgs") || lowerCase.contains("vobsub") || lowerCase.contains("dvbsub") || lowerCase.contains("tx3g");
    }

    /* JADX WARN: Type inference failed for: r13v1, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r13v2, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r14v1, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r14v14, types: [java.lang.Throwable] */
    private static List<Track> scanFfmpeg(File file, Object obj) {
        ArrayList arrayList = new ArrayList();
        Process process = null;
        Track track = null;
        try {
            try {
                File fileFindFfmpeg = findFfmpeg(obj);
                if (fileFindFfmpeg != null && fileFindFfmpeg.isFile()) {
                    ProcessBuilder processBuilder = new ProcessBuilder(fileFindFfmpeg.getAbsolutePath(), "-nostdin", "-hide_banner", "-loglevel", "info", "-analyzeduration", "1500000", "-probesize", "2097152", "-i", file.getAbsolutePath());
                    processBuilder.redirectErrorStream(true);
                    Process processStart = processBuilder.start();
                    try {
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(processStart.getInputStream()));
                        int i = 0;
                        while (true) {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                break;
                            }
                            Matcher matcher = STREAM.matcher(line);
                            if (matcher.find()) {
                                track = new Track(i, matcher.group(1), BuildConfig.FLAVOR, matcher.group(2), "ffmpeg");
                                arrayList.add(track);
                                i++;
                            } else if (track != null) {
                                Matcher matcher2 = META_TITLE.matcher(line);
                                if (matcher2.find() && track.title.length() == 0) {
                                    track.title = matcher2.group(1).trim();
                                }
                            }
                        }
                        if (processStart != null) {
                            processStart.destroy();
                        }
                    } catch (Throwable th) {
                        process = processStart;
                        try {
                            arrayList.clear();
                            if (process != null) {
                                process.destroy();
                            }
                            return arrayList;
                        } catch (Throwable th2) {
                            if (process != null) {
                                try {
                                    process.destroy();
                                } catch (Throwable th3) {
                                }
                            }
                            throw th2;
                        }
                    }
                    return arrayList;
                }
                return arrayList;
            } catch (Throwable th4) {
            }
        } catch (Throwable th5) {
        }
    }

    private static File findFfmpeg(Object obj) {
        try {
            Object objInvoke = obj.getClass().getMethod("getApplicationInfo", new Class[0]).invoke(obj, new Object[0]);
            File file = new File(String.valueOf(objInvoke.getClass().getField("nativeLibraryDir").get(objInvoke)), "libffmpeg.so");
            if (file.isFile()) {
                return file;
            }
            return null;
        } catch (Throwable th) {
            return null;
        }
    }

    private static String resolve(Object obj, Object obj2) throws Exception {
        for (Method method : Class.forName("com.shabakaty.cinemana.features.LocalMkvResolver").getMethods()) {
            if (method.getName().equals("resolve") && method.getParameterTypes().length == 2) {
                Object objInvoke = method.invoke(null, obj, obj2);
                return objInvoke == null ? BuildConfig.FLAVOR : String.valueOf(objInvoke);
            }
        }
        return BuildConfig.FLAVOR;
    }

    private static File uriFile(String str) {
        try {
            return str.startsWith("file:") ? new File(new URI(str)) : new File(str);
        } catch (Throwable th) {
            return null;
        }
    }

    private static Object newSubtitle(String str, String str2, String str3, String str4, String str5) throws Exception {
        return Class.forName(SUBTITLE_CLASS).getConstructor(String.class, String.class, String.class, String.class, String.class).newInstance(str, str2, str3, str4, str5);
    }

    private static String stringField(Object obj, String str) {
        if (obj == null) {
            return null;
        }
        try {
            Object obj2 = obj.getClass().getField(str).get(obj);
            if (obj2 == null) {
                return null;
            }
            return String.valueOf(obj2);
        } catch (Throwable th) {
            return null;
        }
    }

    private static Object fieldValue(Object obj, String str) throws Exception {
        Field fieldFindField;
        if (obj == null || (fieldFindField = findField(obj.getClass(), str)) == null) {
            return null;
        }
        fieldFindField.setAccessible(true);
        return fieldFindField.get(obj);
    }

    private static String strField(Object obj, String str) {
        try {
            Object objFieldValue = fieldValue(obj, str);
            return objFieldValue == null ? BuildConfig.FLAVOR : String.valueOf(objFieldValue);
        } catch (Throwable th) {
            return BuildConfig.FLAVOR;
        }
    }

    private static Field findField(Class<?> cls, String str) {
        while (cls != null) {
            try {
                return cls.getDeclaredField(str);
            } catch (Throwable th) {
                cls = cls.getSuperclass();
            }
        }
        return null;
    }

    private static Method findMethod(Class<?> cls, String str, int i) {
        while (cls != null) {
            for (Method method : cls.getDeclaredMethods()) {
                if (method.getName().equals(str) && method.getParameterTypes().length == i) {
                    return method;
                }
            }
            cls = cls.getSuperclass();
        }
        return null;
    }

    private static Object[] objectArray(Object obj) {
        return obj instanceof Object[] ? (Object[]) obj : new Object[0];
    }

    private static String first(String str, String str2) {
        return safe(str).length() > 0 ? str : safe(str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String safe(String str) {
        return str == null ? BuildConfig.FLAVOR : str;
    }

    private static List<Track> copy(List<Track> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            for (Track track : list) {
                arrayList.add(new Track(track.index, track.language, track.title, track.codec, track.source));
            }
        }
        return arrayList;
    }

    private static List<Track> dedupeExact(List<Track> list) {
        ArrayList arrayList = new ArrayList();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Track track : list) {
            if (linkedHashSet.add(track.index + "|" + track.normalizedLanguage() + "|" + track.codec)) {
                arrayList.add(track);
            }
        }
        return arrayList;
    }

    private static String describe(List<Track> list) {
        if (list == null || list.isEmpty()) {
            return "[]";
        }
        StringBuilder sb = new StringBuilder("[");
        for (int i = 0; i < list.size(); i++) {
            if (i > 0) {
                sb.append(',');
            }
            Track track = list.get(i);
            sb.append(track.index).append(':').append(track.normalizedLanguage()).append('/').append(track.codec).append('@').append(track.source);
        }
        return sb.append(']').toString();
    }

    private static void log(String str) {
        try {
            File file = new File("/storage/emulated/0/Cinemana/work/log");
            if (!file.exists()) {
                file.mkdirs();
            }
            FileWriter fileWriter = new FileWriter(new File(file, ".mkv_subtitle_catalog.log"), true);
            fileWriter.append((CharSequence) String.valueOf(System.currentTimeMillis())).append(' ').append((CharSequence) str).append('\n');
            fileWriter.close();
        } catch (Throwable th) {
        }
    }

    public static List<String> inspectPlayerLanguages(Object obj) {
        ArrayList arrayList = new ArrayList();
        Iterator<Track> it = scanPlayer(obj).iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().normalizedLanguage());
        }
        return arrayList;
    }

    public static List<String> parseProbeLanguages(String str) {
        ArrayList arrayList = new ArrayList();
        if (str == null) {
            return arrayList;
        }
        int i = 0;
        for (String str2 : str.split("\\r?\\n")) {
            Matcher matcher = STREAM.matcher(str2);
            if (matcher.find()) {
                arrayList.add(new Track(i, matcher.group(1), BuildConfig.FLAVOR, matcher.group(2)).normalizedLanguage());
                i++;
            }
        }
        return arrayList;
    }

    public static List<String> inspectMatroskaLanguages(String str) {
        ArrayList arrayList = new ArrayList();
        Iterator<Track> it = scanEbml(new File(str)).iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().normalizedLanguage());
        }
        return arrayList;
    }

    public static List<String> inspectMatroskaTitles(String str) {
        ArrayList arrayList = new ArrayList();
        Iterator<Track> it = scanEbml(new File(str)).iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().title);
        }
        return arrayList;
    }
}
