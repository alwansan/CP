package com.shabakaty.cinemana.ca1;

import android.text.SpannableStringBuilder;
import android.util.Log;
import com.connectsdk.service.NetcastTVService;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes6.dex */
public final class Subtitles {

    static final class Event {
        final int index;
        final boolean start;

        Event(int i, boolean z) {
            this.index = i;
            this.start = z;
        }
    }

    public static List[] timeline(Object[] objArr, final long[] jArr) {
        TreeMap treeMap = new TreeMap();
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (i2 >= Math.min(objArr.length, jArr.length)) {
                break;
            }
            long j = jArr[i2];
            long j2 = jArr[i];
            if (j > j2) {
                event(treeMap, j2, new Event(i, true));
                event(treeMap, jArr[i2], new Event(i, false));
            }
            i += 2;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        TreeMap treeMap2 = new TreeMap(new Comparator() { // from class: com.shabakaty.cinemana.ca1.Subtitles$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Subtitles.lambda$timeline$0(jArr, (Integer) obj, (Integer) obj2);
            }
        });
        for (Map.Entry entry : treeMap.entrySet()) {
            for (Event event : (List) entry.getValue()) {
                if (!event.start) {
                    treeMap2.remove(Integer.valueOf(event.index));
                }
            }
            for (Event event2 : (List) entry.getValue()) {
                if (event2.start) {
                    treeMap2.put(Integer.valueOf(event2.index), objArr[event2.index]);
                }
            }
            arrayList2.add((Long) entry.getKey());
            arrayList.add(new ArrayList(treeMap2.values()));
        }
        return new List[]{arrayList, arrayList2};
    }

    static /* synthetic */ int lambda$timeline$0(long[] jArr, Integer num, Integer num2) {
        int iCompare = Long.compare(jArr[num.intValue()], jArr[num2.intValue()]);
        return iCompare != 0 ? iCompare : Integer.compare(num.intValue(), num2.intValue());
    }

    public static List[] nativeTimeline(Object[] objArr, long[] jArr) {
        List[] listArrTimeline = timeline(objArr, jArr);
        audit("subtitle_timeline", "format=SRT intervals=" + (objArr.length / 2) + " boundaries=" + listArrTimeline[1].size());
        return listArrTimeline;
    }

    static void audit(String str, String str2) {
        try {
            Class.forName("com.shabakaty.cinemana.ca1.BatchLog").getMethod(NetcastTVService.UDAP_API_EVENT, String.class, String.class, String.class, Throwable.class).invoke(null, "subtitles", str, str2, null);
        } catch (Exception e) {
        }
    }

    static void event(TreeMap<Long, List<Event>> treeMap, long j, Event event) {
        List<Event> arrayList = treeMap.get(Long.valueOf(j));
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            treeMap.put(Long.valueOf(j), arrayList);
        }
        arrayList.add(event);
    }

    static Object field(Object obj, String str) throws Exception {
        return obj.getClass().getField(str).get(obj);
    }

    static boolean same(Object obj, Object obj2) throws Exception {
        if (field(obj, "d") != null || field(obj2, "d") != null) {
            return false;
        }
        String[] strArr = {"b", "c", "e", "f", "g", "h", "i", "j", "k", "n", "o", "p", "q"};
        for (int i = 0; i < 13; i++) {
            String str = strArr[i];
            if (!Objects.equals(field(obj, str), field(obj2, str))) {
                return false;
            }
        }
        return true;
    }

    public static List vtt(List list, List list2) {
        try {
            ArrayList arrayList = new ArrayList();
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(field(it.next(), "a"));
            }
            List listStack = stack(arrayList);
            ArrayList arrayList2 = new ArrayList(list);
            for (int i = 0; i < listStack.size(); i++) {
                Object obj = listStack.get(i);
                Object objInvoke = obj.getClass().getMethod("a", new Class[0]).invoke(obj, new Object[0]);
                objInvoke.getClass().getField("e").setFloat(objInvoke, (-1.0f) - i);
                objInvoke.getClass().getField("f").setInt(objInvoke, 1);
                arrayList2.add(objInvoke.getClass().getMethod("a", new Class[0]).invoke(objInvoke, new Object[0]));
            }
            return arrayList2;
        } catch (Exception e) {
            audit("subtitle_vtt_error", e.toString());
            ArrayList arrayList3 = new ArrayList(list);
            try {
                Iterator it2 = list2.iterator();
                while (it2.hasNext()) {
                    arrayList3.add(field(it2.next(), "a"));
                }
            } catch (Exception e2) {
            }
            return arrayList3;
        }
    }

    public static List stack(List list) {
        if (list == null || list.size() < 2) {
            return list;
        }
        try {
            ArrayList arrayList = new ArrayList();
            boolean[] zArr = new boolean[list.size()];
            for (int i = 0; i < list.size(); i++) {
                if (!zArr[i]) {
                    Object obj = list.get(i);
                    Object objField = field(obj, "a");
                    if (objField instanceof CharSequence) {
                        SpannableStringBuilder spannableStringBuilder = null;
                        for (int i2 = i + 1; i2 < list.size(); i2++) {
                            if (!zArr[i2] && same(obj, list.get(i2)) && (field(list.get(i2), "a") instanceof CharSequence)) {
                                if (spannableStringBuilder == null) {
                                    spannableStringBuilder = new SpannableStringBuilder((CharSequence) objField);
                                }
                                spannableStringBuilder.append('\n').append((CharSequence) field(list.get(i2), "a"));
                                zArr[i2] = true;
                            }
                        }
                        if (spannableStringBuilder == null) {
                            arrayList.add(obj);
                        } else {
                            Object objInvoke = obj.getClass().getMethod("a", new Class[0]).invoke(obj, new Object[0]);
                            objInvoke.getClass().getField("a").set(objInvoke, spannableStringBuilder);
                            arrayList.add(objInvoke.getClass().getMethod("a", new Class[0]).invoke(objInvoke, new Object[0]));
                        }
                    } else {
                        arrayList.add(obj);
                    }
                }
            }
            if (arrayList.size() < list.size()) {
                audit("subtitle_stack", "active=" + list.size() + " blocks=" + arrayList.size());
            }
            return arrayList;
        } catch (Exception e) {
            Log.e("CA1_SUBTITLE", "Stacking failed; preserving original cues", e);
            return list;
        }
    }
}
