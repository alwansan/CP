package com.shabakaty.cinemana.local;

import androidx.recyclerview.widget.RecyclerView;
import com.liulishuo.filedownloader.BuildConfig;
import com.liulishuo.filedownloader.model.FileDownloadStatus;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;

/* JADX INFO: loaded from: classes11.dex */
public final class LocalAccountStore {
    private static final long MAX_ARCHIVE = 25165824;
    private static final int MAX_IMAGE = 2097152;
    private static final int MAX_ROWS = 100000;
    private static final int VERSION = 3;
    private final File directory;
    private final Events events;
    private State state;

    public interface Events {
        void record(String str, int i);
    }

    public static final class Item {
        public final String id;
        public final String payload;
        public final long positionMs;
        public final String title;

        public Item(String str, String str2, long j) {
            this(str, str2, j, BuildConfig.FLAVOR);
        }

        public Item(String str, String str2, long j, String str3) {
            this.id = LocalAccountStore.validId(str);
            this.title = LocalAccountStore.validText(str2, RecyclerView.b0.FLAG_ADAPTER_FULLUPDATE);
            this.positionMs = Math.max(0L, j);
            this.payload = LocalAccountStore.validText(str3, 20000);
        }
    }

    public enum ListKind {
        FAVORITE,
        WATCH_LATER,
        WATCHED,
        SUBSCRIPTION,
        PROGRESS,
        STATE
    }

    private static final class State {
        String name = "حسابي";
        byte[] avatar = new byte[0];
        EnumMap<ListKind, LinkedHashMap<String, Item>> lists = new EnumMap<>(ListKind.class);
        Map<String, String> config = new LinkedHashMap();
        Map<String, LinkedHashSet<String>> known = new LinkedHashMap();
        LinkedHashMap<String, Item> inbox = new LinkedHashMap<>();

        State() {
            for (ListKind listKind : ListKind.values()) {
                this.lists.put(listKind, new LinkedHashMap<>());
            }
        }
    }

    public LocalAccountStore(File file, Events events) throws IOException {
        this.directory = file;
        this.events = events;
        if (!file.isDirectory() && !file.mkdirs()) {
            throw new IOException("data directory unavailable");
        }
        File file2 = new File(file, "account.bin");
        File file3 = new File(file, "account.bin.bak");
        if (file3.exists()) {
            if (file2.exists() && !file2.delete()) {
                throw new IOException("recovery failed");
            }
            if (!file3.renameTo(file2)) {
                throw new IOException("recovery failed");
            }
        }
        this.state = file2.exists() ? decode(read(file2)) : new State();
    }

    private void commit(State state) throws IOException {
        byte[] bArrEncode = encode(state);
        File file = new File(this.directory, "account.bin.pending");
        File file2 = new File(this.directory, "account.bin");
        File file3 = new File(this.directory, "account.bin.bak");
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            fileOutputStream.write(bArrEncode);
            fileOutputStream.getFD().sync();
            fileOutputStream.close();
            if (file3.exists()) {
                throw new IOException("unresolved backup");
            }
            boolean zExists = file2.exists();
            if (zExists && !file2.renameTo(file3)) {
                throw new IOException("backup failed");
            }
            if (!file.renameTo(file2)) {
                if (zExists && !file3.renameTo(file2)) {
                    throw new IOException("restore failed");
                }
                throw new IOException("commit failed");
            }
            if (!zExists || file3.delete()) {
                this.state = state;
            } else {
                file2.delete();
                file3.renameTo(file2);
                throw new IOException("commit finalization failed");
            }
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private State copy() throws IOException {
        return decode(encode(this.state));
    }

    private static int count(DataInputStream dataInputStream) throws IOException {
        int i = dataInputStream.readInt();
        if (i < 0 || i > MAX_ROWS) {
            throw new IOException("invalid count");
        }
        return i;
    }

    private static State decode(byte[] bArr) throws IOException {
        if (bArr.length > MAX_ARCHIVE) {
            throw new IOException("account limit");
        }
        try {
            DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
            if (dataInputStream.readInt() != 1129205068) {
                throw new IOException("unsupported schema");
            }
            int i = dataInputStream.readInt();
            if (i < 1 || i > 3) {
                throw new IOException("unsupported schema");
            }
            State state = new State();
            state.name = validText(dataInputStream.readUTF(), 80);
            int i2 = dataInputStream.readInt();
            if (i2 < 0 || i2 > MAX_IMAGE) {
                throw new IOException("image limit");
            }
            state.avatar = new byte[i2];
            dataInputStream.readFully(state.avatar);
            for (ListKind listKind : ListKind.values()) {
                if ((i != 1 || listKind != ListKind.PROGRESS) && (i >= 3 || listKind != ListKind.STATE)) {
                    for (int iCount = count(dataInputStream); iCount > 0; iCount--) {
                        Item item = item(dataInputStream, i);
                        if (state.lists.get(listKind).put(item.id, item) != null) {
                            throw new IOException("duplicate item");
                        }
                    }
                }
            }
            for (int iCount2 = count(dataInputStream); iCount2 > 0; iCount2--) {
                String strValidId = validId(dataInputStream.readUTF());
                LinkedHashSet<String> linkedHashSet = new LinkedHashSet<>();
                for (int iCount3 = count(dataInputStream); iCount3 > 0; iCount3--) {
                    linkedHashSet.add(validId(dataInputStream.readUTF()));
                }
                if (state.known.put(strValidId, linkedHashSet) != null) {
                    throw new IOException("duplicate baseline");
                }
            }
            for (int iCount4 = count(dataInputStream); iCount4 > 0; iCount4--) {
                String utf = dataInputStream.readUTF();
                Item item2 = item(dataInputStream, i);
                if (!utf.matches("[A-Za-z0-9_-]{1,100}:[A-Za-z0-9_-]{1,100}") || state.inbox.put(utf, item2) != null) {
                    throw new IOException("invalid inbox");
                }
            }
            if (i >= 2) {
                for (int iCount5 = count(dataInputStream); iCount5 > 0; iCount5--) {
                    if (state.config.put(validId(dataInputStream.readUTF()), validText(dataInputStream.readUTF(), 4096)) != null) {
                        throw new IOException("duplicate config");
                    }
                }
            }
            if (dataInputStream.read() == -1) {
                return state;
            }
            throw new IOException("trailing data");
        } catch (IllegalArgumentException e) {
            throw new IOException("invalid account", e);
        }
    }

    private static byte[] encode(State state) throws IOException {
        for (ListKind listKind : ListKind.values()) {
            if (state.lists.get(listKind).size() > MAX_ROWS) {
                throw new IOException("list limit");
            }
        }
        if (state.known.size() > MAX_ROWS || state.inbox.size() > MAX_ROWS) {
            throw new IOException("state limit");
        }
        Iterator<LinkedHashSet<String>> it = state.known.values().iterator();
        while (it.hasNext()) {
            if (it.next().size() > MAX_ROWS) {
                throw new IOException("episode limit");
            }
        }
        final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream = new DataOutputStream(new OutputStream() { // from class: com.shabakaty.cinemana.local.LocalAccountStore.1
            @Override // java.io.OutputStream
            public void write(int i) throws IOException {
                if (byteArrayOutputStream.size() + 1 > LocalAccountStore.MAX_ARCHIVE) {
                    throw new IOException("account limit");
                }
                byteArrayOutputStream.write(i);
            }

            @Override // java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) throws IOException {
                if (((long) byteArrayOutputStream.size()) + ((long) i2) > LocalAccountStore.MAX_ARCHIVE) {
                    throw new IOException("account limit");
                }
                byteArrayOutputStream.write(bArr, i, i2);
            }
        });
        dataOutputStream.writeInt(1129205068);
        dataOutputStream.writeInt(3);
        dataOutputStream.writeUTF(state.name);
        dataOutputStream.writeInt(state.avatar.length);
        dataOutputStream.write(state.avatar);
        for (ListKind listKind2 : ListKind.values()) {
            dataOutputStream.writeInt(state.lists.get(listKind2).size());
            Iterator<Item> it2 = state.lists.get(listKind2).values().iterator();
            while (it2.hasNext()) {
                item(dataOutputStream, it2.next());
            }
        }
        dataOutputStream.writeInt(state.known.size());
        for (Map.Entry<String, LinkedHashSet<String>> entry : state.known.entrySet()) {
            dataOutputStream.writeUTF(entry.getKey());
            dataOutputStream.writeInt(entry.getValue().size());
            Iterator<String> it3 = entry.getValue().iterator();
            while (it3.hasNext()) {
                dataOutputStream.writeUTF(it3.next());
            }
        }
        dataOutputStream.writeInt(state.inbox.size());
        for (Map.Entry<String, Item> entry2 : state.inbox.entrySet()) {
            dataOutputStream.writeUTF(entry2.getKey());
            item(dataOutputStream, entry2.getValue());
        }
        dataOutputStream.writeInt(state.config.size());
        for (Map.Entry<String, String> entry3 : state.config.entrySet()) {
            dataOutputStream.writeUTF(entry3.getKey());
            dataOutputStream.writeUTF(entry3.getValue());
        }
        dataOutputStream.flush();
        if (byteArrayOutputStream.size() <= MAX_ARCHIVE) {
            return byteArrayOutputStream.toByteArray();
        }
        throw new IOException("account limit");
    }

    private void event(String str, int i) {
        Events events = this.events;
        if (events != null) {
            try {
                events.record(str, i);
            } catch (RuntimeException unused) {
            }
        }
    }

    private static Item item(DataInputStream dataInputStream, int i) throws IOException {
        return new Item(dataInputStream.readUTF(), dataInputStream.readUTF(), dataInputStream.readLong(), i >= 2 ? dataInputStream.readUTF() : BuildConfig.FLAVOR);
    }

    private static void item(DataOutputStream dataOutputStream, Item item) throws IOException {
        dataOutputStream.writeUTF(item.id);
        dataOutputStream.writeUTF(item.title);
        dataOutputStream.writeLong(item.positionMs);
        dataOutputStream.writeUTF(item.payload);
    }

    private static byte[] read(File file) throws IOException {
        if (file.length() > MAX_ARCHIVE) {
            throw new IOException("account limit");
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                byte[] bArr = new byte[RecyclerView.b0.FLAG_BOUNCED_FROM_HIDDEN_LIST];
                while (true) {
                    int i = fileInputStream.read(bArr);
                    if (i == -1) {
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        byteArrayOutputStream.close();
                        fileInputStream.close();
                        return byteArray;
                    }
                    if (byteArrayOutputStream.size() + i > MAX_ARCHIVE) {
                        throw new IOException("account limit");
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

    /* JADX INFO: Access modifiers changed from: private */
    public static String validId(String str) {
        if (str == null || !str.matches("[A-Za-z0-9_-]{1,100}")) {
            throw new IllegalArgumentException("invalid id");
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String validText(String str, int i) {
        if (str == null || str.length() > i) {
            throw new IllegalArgumentException("invalid text");
        }
        return str;
    }

    public synchronized byte[] avatar() {
        return (byte[]) this.state.avatar.clone();
    }

    public synchronized int baselineSize(String str) {
        LinkedHashSet<String> linkedHashSet;
        linkedHashSet = this.state.known.get(str);
        return linkedHashSet == null ? 0 : linkedHashSet.size();
    }

    public synchronized void clearInbox() throws IOException {
        State stateCopy = copy();
        stateCopy.inbox.clear();
        for (String str : new ArrayList(stateCopy.config.keySet())) {
            if (str.startsWith("delivered_")) {
                stateCopy.config.remove(str);
            }
        }
        commit(stateCopy);
    }

    public synchronized String config(String str, String str2) {
        String str3 = this.state.config.get(str);
        if (str3 != null) {
            str2 = str3;
        }
        return str2;
    }

    public synchronized File directory() {
        return this.directory;
    }

    public synchronized void exportZip(OutputStream outputStream) throws IOException {
        ZipOutputStream zipOutputStream = new ZipOutputStream(outputStream);
        zipOutputStream.putNextEntry(new ZipEntry("account.bin"));
        zipOutputStream.write(encode(this.state));
        zipOutputStream.closeEntry();
        zipOutputStream.finish();
        event("backup_exported", 1);
    }

    public synchronized Item find(ListKind listKind, String str) {
        return this.state.lists.get(listKind).get(str);
    }

    public synchronized boolean hasBaseline(String str) {
        return this.state.known.containsKey(str);
    }

    public synchronized void importZip(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[RecyclerView.b0.FLAG_BOUNCED_FROM_HIDDEN_LIST];
        while (true) {
            int i = inputStream.read(bArr);
            if (i == -1) {
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                for (int length = byteArray.length - 22; length >= Math.max(0, byteArray.length - 65557); length--) {
                    if (byteArray[length] == 80 && byteArray[length + 1] == 75 && byteArray[length + 2] == 5 && byteArray[length + 3] == 6) {
                        if (length + 22 + ((byteArray[length + 20] & FileDownloadStatus.error) | ((byteArray[length + 21] & FileDownloadStatus.error) << 8)) == byteArray.length) {
                            ZipInputStream zipInputStream = new ZipInputStream(new ByteArrayInputStream(byteArray));
                            byte[] bArr2 = new byte[RecyclerView.b0.FLAG_BOUNCED_FROM_HIDDEN_LIST];
                            byte[] byteArray2 = null;
                            long j = 0;
                            while (true) {
                                ZipEntry nextEntry = zipInputStream.getNextEntry();
                                if (nextEntry != null) {
                                    if (!"account.bin".equals(nextEntry.getName()) || byteArray2 != null || nextEntry.isDirectory()) {
                                        throw new IOException("unsupported backup entry");
                                    }
                                    ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                                    while (true) {
                                        int i2 = zipInputStream.read(bArr2);
                                        if (i2 != -1) {
                                            j += (long) i2;
                                            if (j > MAX_ARCHIVE) {
                                                throw new IOException("backup limit");
                                            }
                                            byteArrayOutputStream2.write(bArr2, 0, i2);
                                        }
                                    }
                                    byteArray2 = byteArrayOutputStream2.toByteArray();
                                    zipInputStream.closeEntry();
                                } else {
                                    if (byteArray2 == null) {
                                        throw new IOException("empty backup");
                                    }
                                    State stateDecode = decode(byteArray2);
                                    stateDecode.config.put("last_scan", "0");
                                    stateDecode.config.put("scan_cursor", "0");
                                    stateDecode.config.put("legacy_seeded", "1");
                                    commit(stateDecode);
                                    event("backup_imported", 1);
                                }
                            }
                        }
                    }
                }
                throw new IOException("incomplete ZIP");
            }
            if (byteArrayOutputStream.size() + i > 33554432) {
                throw new IOException("archive limit");
            }
            byteArrayOutputStream.write(bArr, 0, i);
        }
    }

    public synchronized List<Item> inbox() {
        return new ArrayList(this.state.inbox.values());
    }

    public synchronized List<Item> list(ListKind listKind) {
        return new ArrayList(this.state.lists.get(listKind).values());
    }

    public synchronized void merge(Map<ListKind, List<Item>> map) throws IOException {
        State stateCopy = copy();
        for (Map.Entry<ListKind, List<Item>> entry : map.entrySet()) {
            for (Item item : entry.getValue()) {
                stateCopy.lists.get(entry.getKey()).put(item.id, item);
            }
        }
        commit(stateCopy);
    }

    public synchronized String name() {
        return this.state.name;
    }

    public synchronized void profile(String str, byte[] bArr) throws IOException {
        State stateCopy = copy();
        stateCopy.name = validText(str.trim(), 80);
        if (stateCopy.name.isEmpty()) {
            throw new IllegalArgumentException("empty name");
        }
        if (bArr.length > MAX_IMAGE) {
            throw new IllegalArgumentException("image too large");
        }
        stateCopy.avatar = (byte[]) bArr.clone();
        commit(stateCopy);
        event("profile_saved", 1);
    }

    public synchronized void put(ListKind listKind, Item item) throws IOException {
        State stateCopy = copy();
        stateCopy.lists.get(listKind).put(item.id, item);
        commit(stateCopy);
        event("list_saved", 1);
    }

    public synchronized List<Item> reconcile(String str, List<Item> list) throws IOException {
        String strValidId = validId(str);
        if (!this.state.lists.get(ListKind.SUBSCRIPTION).containsKey(strValidId)) {
            return Collections.emptyList();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<Item> it = list.iterator();
        while (it.hasNext()) {
            linkedHashSet.add(it.next().id);
        }
        if (linkedHashSet.isEmpty()) {
            return Collections.emptyList();
        }
        State stateCopy = copy();
        LinkedHashSet<String> linkedHashSet2 = stateCopy.known.get(strValidId);
        ArrayList arrayList = new ArrayList();
        if (linkedHashSet2 == null) {
            linkedHashSet2 = new LinkedHashSet<>();
        } else {
            for (Item item : list) {
                if (!linkedHashSet2.contains(item.id)) {
                    String str2 = strValidId + ":" + item.id;
                    if (!stateCopy.inbox.containsKey(str2)) {
                        stateCopy.inbox.put(str2, item);
                        arrayList.add(item);
                    }
                }
            }
        }
        linkedHashSet2.addAll(linkedHashSet);
        stateCopy.known.put(strValidId, linkedHashSet2);
        while (stateCopy.inbox.size() > 100) {
            Item itemRemove = stateCopy.inbox.remove(stateCopy.inbox.keySet().iterator().next());
            stateCopy.config.remove("delivered_" + itemRemove.id);
        }
        commit(stateCopy);
        event("episodes_reconciled", arrayList.size());
        return arrayList;
    }

    public synchronized void refreshMetadata(Item item) throws IOException {
        Item item2;
        State stateCopy = copy();
        boolean z = false;
        for (ListKind listKind : ListKind.values()) {
            if (listKind != ListKind.STATE && (item2 = stateCopy.lists.get(listKind).get(item.id)) != null) {
                stateCopy.lists.get(listKind).put(item2.id, new Item(item2.id, item.title, item2.positionMs, item.payload));
                z = true;
            }
        }
        if (z) {
            commit(stateCopy);
        }
    }

    public synchronized LocalAccountStore relocate(File file) throws IOException {
        if (this.directory.getCanonicalFile().equals(file.getCanonicalFile())) {
            return this;
        }
        LocalAccountStore localAccountStore = new LocalAccountStore(file, this.events);
        if (!new File(file, "account.bin").exists()) {
            localAccountStore.commit(copy());
        }
        event("account_relocated", 1);
        return localAccountStore;
    }

    public synchronized void remove(ListKind listKind, String str) throws IOException {
        State stateCopy = copy();
        stateCopy.lists.get(listKind).remove(str);
        if (listKind == ListKind.SUBSCRIPTION) {
            stateCopy.known.remove(str);
        }
        commit(stateCopy);
        event("list_removed", 1);
    }

    public synchronized void removeProgress(String str) throws IOException {
        State stateCopy = copy();
        stateCopy.lists.get(ListKind.PROGRESS).remove(str);
        commit(stateCopy);
        event("progress_removed", 1);
    }

    public synchronized void replace(ListKind listKind, List<Item> list) throws IOException {
        State stateCopy = copy();
        stateCopy.lists.get(listKind).clear();
        for (Item item : list) {
            stateCopy.lists.get(listKind).put(item.id, item);
        }
        commit(stateCopy);
    }

    public synchronized void setConfig(String str, String str2) throws IOException {
        validId(str);
        validText(str2, 4096);
        State stateCopy = copy();
        stateCopy.config.put(str, str2);
        commit(stateCopy);
    }
}
