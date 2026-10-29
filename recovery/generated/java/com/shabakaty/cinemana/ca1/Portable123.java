package com.shabakaty.cinemana.ca1;

import androidx.recyclerview.widget.RecyclerView;
import com.liulishuo.filedownloader.BuildConfig;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
final class Portable123 {
    static final int MAGIC = 1129205115;
    static final int MAX = 67108864;
    static final int MAX_ROWS = 50000;
    static final int VERSION = 1;
    static final Set<String> LOCAL = new LinkedHashSet(Arrays.asList("video_model", "video_status", "DownloadsCollectionItem", "CinemanaDownloadItem", "SubtitleDb", "SkippableSceneDB", "settings"));
    static final Set<String> PREFS = new LinkedHashSet(Arrays.asList("ca1_continue106", "ca1_episode_context107", "ca1_work_names", "ca1_sort", "ca1_94", "ca1_downloads", "ca1_player94", "ca1_log94", "com.shabakaty.cinemana_preferences"));
    static final Set<String> DEFAULT_KEYS = new HashSet(Arrays.asList("user_identifier", "key_preferred_subtitle_language"));

    static final class Table {
        String[] columns;
        String db;
        String name;
        final List<Object[]> rows = new ArrayList();

        Table(String str, String str2, String[] strArr) {
            this.db = str;
            this.name = str2;
            this.columns = strArr;
        }
    }

    static final class Snapshot {
        long time;
        final List<Table> tables = new ArrayList();
        final Map<String, Map<String, Object>> prefs = new LinkedHashMap();
        int speed = -1;

        Snapshot() {
        }
    }

    static boolean allowed(String str, String str2) {
        return ("local".equals(str) && LOCAL.contains(str2)) || ("downloads".equals(str) && "Downloads".equals(str2));
    }

    static String identifier(String str) throws IOException {
        if (str == null || !str.matches("[A-Za-z_][A-Za-z0-9_]{0,100}")) {
            throw new IOException("invalid column");
        }
        return '\"' + str + '\"';
    }

    static void string(DataOutputStream dataOutputStream, String str) throws IOException {
        byte[] bytes = str.getBytes("UTF-8");
        if (bytes.length > 8388608) {
            throw new IOException("value too large");
        }
        dataOutputStream.writeInt(bytes.length);
        dataOutputStream.write(bytes);
    }

    static int bound(int i, int i2) throws IOException {
        if (i < 0 || i > i2) {
            throw new IOException("invalid length");
        }
        return i;
    }

    static String string(DataInputStream dataInputStream) throws IOException {
        byte[] bArr = new byte[bound(dataInputStream.readInt(), 8388608)];
        dataInputStream.readFully(bArr);
        return new String(bArr, "UTF-8");
    }

    static void value(DataOutputStream dataOutputStream, Object obj) throws IOException {
        if (obj == null) {
            dataOutputStream.writeByte(0);
            return;
        }
        if (obj instanceof Long) {
            dataOutputStream.writeByte(1);
            dataOutputStream.writeLong(((Long) obj).longValue());
            return;
        }
        if (obj instanceof Double) {
            dataOutputStream.writeByte(2);
            dataOutputStream.writeDouble(((Double) obj).doubleValue());
            return;
        }
        if (obj instanceof String) {
            dataOutputStream.writeByte(3);
            string(dataOutputStream, (String) obj);
            return;
        }
        if (obj instanceof byte[]) {
            dataOutputStream.writeByte(4);
            byte[] bArr = (byte[]) obj;
            if (bArr.length > 8388608) {
                throw new IOException("blob too large");
            }
            dataOutputStream.writeInt(bArr.length);
            dataOutputStream.write(bArr);
            return;
        }
        if (obj instanceof Boolean) {
            dataOutputStream.writeByte(5);
            dataOutputStream.writeBoolean(((Boolean) obj).booleanValue());
            return;
        }
        if (obj instanceof Integer) {
            dataOutputStream.writeByte(6);
            dataOutputStream.writeInt(((Integer) obj).intValue());
            return;
        }
        if (obj instanceof Float) {
            dataOutputStream.writeByte(7);
            dataOutputStream.writeFloat(((Float) obj).floatValue());
        } else {
            if (!(obj instanceof Set)) {
                throw new IOException("unsupported value");
            }
            dataOutputStream.writeByte(8);
            Set set = (Set) obj;
            dataOutputStream.writeInt(set.size());
            Iterator it = set.iterator();
            while (it.hasNext()) {
                string(dataOutputStream, (String) it.next());
            }
        }
    }

    static Object value(DataInputStream dataInputStream) throws IOException {
        switch (dataInputStream.readUnsignedByte()) {
            case 0:
                return null;
            case 1:
                return Long.valueOf(dataInputStream.readLong());
            case 2:
                return Double.valueOf(dataInputStream.readDouble());
            case 3:
                return string(dataInputStream);
            case 4:
                byte[] bArr = new byte[bound(dataInputStream.readInt(), 8388608)];
                dataInputStream.readFully(bArr);
                return bArr;
            case 5:
                return Boolean.valueOf(dataInputStream.readBoolean());
            case 6:
                return Integer.valueOf(dataInputStream.readInt());
            case 7:
                return Float.valueOf(dataInputStream.readFloat());
            case 8:
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                for (int iBound = bound(dataInputStream.readInt(), 10000); iBound > 0; iBound--) {
                    linkedHashSet.add(string(dataInputStream));
                }
                return linkedHashSet;
            default:
                throw new IOException("unknown value type");
        }
    }

    static byte[] encode(Snapshot snapshot) throws Exception {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        dataOutputStream.writeLong(snapshot.time);
        dataOutputStream.writeInt(snapshot.speed);
        dataOutputStream.writeInt(snapshot.tables.size());
        for (Table table : snapshot.tables) {
            if (!allowed(table.db, table.name)) {
                throw new IOException("unknown table");
            }
            string(dataOutputStream, table.db);
            string(dataOutputStream, table.name);
            dataOutputStream.writeInt(table.columns.length);
            for (String str : table.columns) {
                identifier(str);
                string(dataOutputStream, str);
            }
            dataOutputStream.writeInt(table.rows.size());
            for (Object[] objArr : table.rows) {
                if (objArr.length != table.columns.length) {
                    throw new IOException("row width");
                }
                for (Object obj : objArr) {
                    value(dataOutputStream, obj);
                }
            }
        }
        dataOutputStream.writeInt(snapshot.prefs.size());
        for (Map.Entry<String, Map<String, Object>> entry : snapshot.prefs.entrySet()) {
            if (!PREFS.contains(entry.getKey())) {
                throw new IOException("unknown preferences");
            }
            string(dataOutputStream, entry.getKey());
            dataOutputStream.writeInt(entry.getValue().size());
            for (Map.Entry<String, Object> entry2 : entry.getValue().entrySet()) {
                if ("com.shabakaty.cinemana_preferences".equals(entry.getKey()) && !DEFAULT_KEYS.contains(entry2.getKey())) {
                    throw new IOException("private preference");
                }
                string(dataOutputStream, entry2.getKey());
                value(dataOutputStream, entry2.getValue());
            }
        }
        dataOutputStream.flush();
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (byteArray.length > MAX) {
            throw new IOException("archive limit");
        }
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream2 = new DataOutputStream(byteArrayOutputStream2);
        dataOutputStream2.writeInt(MAGIC);
        dataOutputStream2.writeInt(1);
        dataOutputStream2.writeInt(byteArray.length);
        dataOutputStream2.write(MessageDigest.getInstance("SHA-256").digest(byteArray));
        dataOutputStream2.write(byteArray);
        dataOutputStream2.close();
        return byteArrayOutputStream2.toByteArray();
    }

    static Snapshot decode(byte[] bArr) throws Exception {
        if (bArr.length > 67108908) {
            throw new IOException("archive limit");
        }
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        if (dataInputStream.readInt() != MAGIC || dataInputStream.readInt() != 1) {
            throw new IOException("unsupported archive");
        }
        byte[] bArr2 = new byte[32];
        byte[] bArr3 = new byte[bound(dataInputStream.readInt(), MAX)];
        dataInputStream.readFully(bArr2);
        dataInputStream.readFully(bArr3);
        if (dataInputStream.read() != -1 || !MessageDigest.isEqual(bArr2, MessageDigest.getInstance("SHA-256").digest(bArr3))) {
            throw new IOException("incomplete archive");
        }
        DataInputStream dataInputStream2 = new DataInputStream(new ByteArrayInputStream(bArr3));
        Snapshot snapshot = new Snapshot();
        snapshot.time = dataInputStream2.readLong();
        snapshot.speed = dataInputStream2.readInt();
        if (snapshot.speed < -1 || snapshot.speed > 100) {
            throw new IOException("invalid speed");
        }
        HashSet hashSet = new HashSet();
        for (int iBound = bound(dataInputStream2.readInt(), 8); iBound > 0; iBound--) {
            String strString = string(dataInputStream2);
            String strString2 = string(dataInputStream2);
            if (!allowed(strString, strString2) || !hashSet.add(strString + "/" + strString2)) {
                throw new IOException("unknown/duplicate table");
            }
            int iBound2 = bound(dataInputStream2.readInt(), RecyclerView.b0.FLAG_IGNORE);
            String[] strArr = new String[iBound2];
            HashSet hashSet2 = new HashSet();
            for (int i = 0; i < iBound2; i++) {
                String strString3 = string(dataInputStream2);
                strArr[i] = strString3;
                identifier(strString3);
                if (!hashSet2.add(strArr[i])) {
                    throw new IOException("duplicate column");
                }
            }
            if (iBound2 == 0) {
                throw new IOException("empty table");
            }
            Table table = new Table(strString, strString2, strArr);
            for (int iBound3 = bound(dataInputStream2.readInt(), MAX_ROWS); iBound3 > 0; iBound3--) {
                Object[] objArr = new Object[iBound2];
                for (int i2 = 0; i2 < iBound2; i2++) {
                    objArr[i2] = value(dataInputStream2);
                }
                table.rows.add(objArr);
            }
            snapshot.tables.add(table);
        }
        for (int iBound4 = bound(dataInputStream2.readInt(), PREFS.size()); iBound4 > 0; iBound4--) {
            String strString4 = string(dataInputStream2);
            if (!PREFS.contains(strString4) || snapshot.prefs.containsKey(strString4)) {
                throw new IOException("unknown preferences");
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (int iBound5 = bound(dataInputStream2.readInt(), MAX_ROWS); iBound5 > 0; iBound5--) {
                String strString5 = string(dataInputStream2);
                Object objValue = value(dataInputStream2);
                if ("com.shabakaty.cinemana_preferences".equals(strString4) && !DEFAULT_KEYS.contains(strString5)) {
                    throw new IOException("private preference");
                }
                if (linkedHashMap.put(strString5, objValue) != null) {
                    throw new IOException("duplicate preference");
                }
            }
            snapshot.prefs.put(strString4, linkedHashMap);
        }
        if (dataInputStream2.read() == -1) {
            return snapshot;
        }
        throw new IOException("trailing data");
    }

    static byte[] bytes(File file) throws IOException {
        if (file.length() > 67108908) {
            throw new IOException("archive limit");
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                byte[] bArr = new byte[65536];
                while (true) {
                    int i = fileInputStream.read(bArr);
                    if (i == -1) {
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        byteArrayOutputStream.close();
                        fileInputStream.close();
                        return byteArray;
                    }
                    if (byteArrayOutputStream.size() + i > 67108908) {
                        throw new IOException("archive limit");
                    }
                    byteArrayOutputStream.write(bArr, 0, i);
                }
            } catch (Throwable th) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            try {
                fileInputStream.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }

    static Snapshot read(File file) throws Exception {
        return decode(bytes(file));
    }

    static Snapshot best(File file) throws Exception {
        File file2 = new File(file + ".previous");
        if (!file.exists() && !file2.exists()) {
            return null;
        }
        try {
            return read(file);
        } catch (Exception e) {
            if (file2.exists()) {
                return read(file2);
            }
            throw e;
        }
    }

    static void rename(File file, File file2) throws Exception {
        Continue106.call(Class.forName("android.system.Os"), "rename", file.getPath(), file2.getPath());
    }

    static void atomic(File file, byte[] bArr) throws Exception {
        File parentFile = file.getParentFile();
        if (!parentFile.isDirectory() && !parentFile.mkdirs()) {
            throw new IOException("storage unavailable");
        }
        File file2 = new File(parentFile, file.getName() + ".writing");
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            try {
                fileOutputStream.write(bArr);
                fileOutputStream.getFD().sync();
                fileOutputStream.close();
                rename(file2, file);
                file2.delete();
            } catch (Throwable th) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            file2.delete();
            throw th3;
        }
    }

    static void save(File file, Snapshot snapshot) throws Exception {
        byte[] bArrEncode = encode(snapshot);
        decode(bArrEncode);
        byte[] bArr = null;
        if (file.exists()) {
            try {
                byte[] bArrBytes = bytes(file);
                decode(bArrBytes);
                bArr = bArrBytes;
            } catch (IOException e) {
            }
        }
        if (bArr != null) {
            atomic(new File(file + ".previous"), bArr);
        }
        atomic(file, bArrEncode);
    }

    static int index(Table table, String str) throws IOException {
        for (int i = 0; i < table.columns.length; i++) {
            if (str.equals(table.columns[i])) {
                return i;
            }
        }
        throw new IOException("missing column " + str);
    }

    static Object get(Table table, Object[] objArr, String str) throws IOException {
        return objArr[index(table, str)];
    }

    static String text(Table table, Object[] objArr, String str) throws IOException {
        Object obj = get(table, objArr, str);
        return obj == null ? BuildConfig.FLAVOR : obj.toString();
    }

    static long number(Table table, Object[] objArr, String str) throws IOException {
        Object obj = get(table, objArr, str);
        if (obj instanceof Number) {
            return ((Number) obj).longValue();
        }
        throw new IOException("invalid number");
    }

    static Table table(Snapshot snapshot, String str) {
        for (Table table : snapshot.tables) {
            if (str.equals(table.name)) {
                return table;
            }
        }
        return null;
    }

    static boolean publicFile(File file, String str, long j) throws IOException {
        File canonicalFile = new File(str).getCanonicalFile();
        return canonicalFile.getPath().startsWith(new StringBuilder().append(file.getCanonicalPath()).append(File.separator).toString()) && canonicalFile.isFile() && canonicalFile.length() > 1024 && (j <= 0 || canonicalFile.length() == j);
    }

    static boolean matroska(String str) throws IOException {
        DataInputStream dataInputStream = new DataInputStream(new FileInputStream(str));
        try {
            boolean z = dataInputStream.readInt() == 440786851;
            dataInputStream.close();
            return z;
        } catch (Throwable th) {
            try {
                dataInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static void finalInventory(Snapshot snapshot, File file) throws Exception {
        HashMap map;
        Table table = table(snapshot, "CinemanaDownloadItem");
        Table table2 = table(snapshot, "Downloads");
        if (table == null || table2 == null) {
            throw new IOException("missing inventory");
        }
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        for (Object[] objArr : table2.rows) {
            String strText = text(table2, objArr, "external_id");
            List arrayList = (List) map3.get(strText);
            if (arrayList == null) {
                arrayList = new ArrayList();
                map3.put(strText, arrayList);
            }
            arrayList.add(objArr);
        }
        Iterator<Object[]> it = table.rows.iterator();
        while (it.hasNext()) {
            Object[] next = it.next();
            String strText2 = text(table, next, "id");
            String strText3 = text(table, next, FileDownloadModel.PATH);
            long jNumber = number(table, next, "downloadTaskId");
            if (strText3.toLowerCase(Locale.ROOT).endsWith(".mkv")) {
                Iterator<Object[]> it2 = it;
                if (publicFile(file, strText3, 0L) && matroska(strText3)) {
                    List list = (List) map3.get(strText2);
                    if (list == null) {
                        it = it2;
                    } else {
                        Iterator it3 = list.iterator();
                        while (true) {
                            if (!it3.hasNext()) {
                                map = map3;
                                break;
                            }
                            Object[] objArr2 = (Object[]) it3.next();
                            if (jNumber == number(table2, objArr2, "task_id")) {
                                map = map3;
                                if (strText3.equals(text(table2, objArr2, FileDownloadModel.PATH)) && number(table2, objArr2, FileDownloadModel.STATUS) == -3 && number(table2, objArr2, "size_bytes") > 1024) {
                                    if (publicFile(file, strText3, number(table2, objArr2, "size_bytes"))) {
                                        map2.put(strText2, Long.valueOf(jNumber));
                                        break;
                                    }
                                }
                                map3 = map;
                                it3 = it3;
                            } else {
                                map = map3;
                            }
                            map3 = map;
                            it3 = it3;
                        }
                        it = it2;
                        map3 = map;
                    }
                } else {
                    it = it2;
                }
            }
        }
        Iterator<Object[]> it4 = table.rows.iterator();
        while (it4.hasNext()) {
            if (!map2.containsKey(text(table, it4.next(), "id"))) {
                it4.remove();
            }
        }
        Iterator<Object[]> it5 = table2.rows.iterator();
        while (it5.hasNext()) {
            Object[] next2 = it5.next();
            Long l = (Long) map2.get(text(table2, next2, "external_id"));
            if (l == null || l.longValue() != number(table2, next2, "task_id")) {
                it5.remove();
            }
        }
        Iterator it6 = Arrays.asList("SubtitleDb", "SkippableSceneDB").iterator();
        while (it6.hasNext()) {
            Table table3 = table(snapshot, (String) it6.next());
            if (table3 != null) {
                Iterator<Object[]> it7 = table3.rows.iterator();
                while (it7.hasNext()) {
                    if (!map2.containsKey(text(table3, it7.next(), "parentId"))) {
                        it7.remove();
                    }
                }
            }
        }
    }

    private Portable123() {
    }
}
