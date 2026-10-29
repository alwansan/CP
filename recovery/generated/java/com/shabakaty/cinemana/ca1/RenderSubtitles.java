package com.shabakaty.cinemana.ca1;

import android.os.Handler;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import zendesk.support.request.CellBase;

/* JADX INFO: loaded from: classes6.dex */
public final class RenderSubtitles {
    static final Map<Object, State> states = Collections.synchronizedMap(new WeakHashMap());

    static final class Entry {
        long end;
        long offset;
        Object subtitle;

        Entry(Object obj, long j, long j2) {
            this.subtitle = obj;
            this.offset = j;
            this.end = j2;
        }
    }

    static final class State {
        Object decoder;
        boolean eos;
        Object format;
        long position;
        List<Entry> entries = new ArrayList();
        List last = new ArrayList();

        State() {
        }
    }

    public static void reset(Object obj) {
        states.remove(obj);
    }

    public static void begin(Object obj, long j) {
        Object obj2 = Enhancements.get(obj, "K");
        String str = Enhancements.str(obj2, "C");
        if (!supported(str)) {
            reset(obj);
            return;
        }
        Object obj3 = Enhancements.get(obj, "L");
        Map<Object, State> map = states;
        State state = map.get(obj);
        if (state == null || state.decoder != obj3 || state.format != obj2 || j < state.position) {
            state = new State();
            state.decoder = obj3;
            state.format = obj2;
            map.put(obj, state);
            Enhancements.log("subtitle_track_ready", "mime=" + str + " position_us=" + j, null);
        }
        state.position = j;
    }

    public static boolean supported(String str) {
        return "application/x-subrip".equals(str) || "text/x-ssa".equals(str) || "text/vtt".equals(str);
    }

    public static void switching(Object obj) {
        Enhancements.log("subtitle_track_switch", "automatic_overlap=true", null);
    }

    static void capture(Object obj, State state) {
        Object obj2 = Enhancements.get(obj, "J");
        if (!(obj2 instanceof Integer) || ((Integer) obj2).intValue() == 0) {
            Object obj3 = Enhancements.get(obj, "N");
            Object obj4 = Enhancements.get(obj3, "t");
            Object obj5 = Enhancements.get(obj3, "u");
            if (obj4 == null || !(obj5 instanceof Long)) {
                return;
            }
            long jLongValue = ((Long) obj5).longValue();
            for (Entry entry : state.entries) {
                if (entry.subtitle == obj4 && entry.offset == jLongValue) {
                    return;
                }
            }
            Object objCall = Enhancements.call(obj4, "n", new Object[0]);
            if (objCall instanceof Integer) {
                Integer num = (Integer) objCall;
                if (num.intValue() == 0) {
                    return;
                }
                Object objCall2 = Enhancements.call(obj4, "h", Integer.valueOf(num.intValue() - 1));
                if (objCall2 instanceof Long) {
                    long jLongValue2 = ((Long) objCall2).longValue() + jLongValue;
                    if (jLongValue2 > state.position) {
                        state.entries.add(new Entry(obj4, jLongValue, jLongValue2));
                        Enhancements.log("subtitle_sample_retained", "samples=" + state.entries.size() + " end_us=" + jLongValue2, null);
                    }
                }
            }
        }
    }

    static List active(State state) {
        ArrayList arrayList = new ArrayList();
        Iterator<Entry> it = state.entries.iterator();
        while (it.hasNext()) {
            Entry next = it.next();
            if (next.end <= state.position) {
                it.remove();
            } else {
                Object objCall = Enhancements.call(next.subtitle, "j", Long.valueOf(state.position - next.offset));
                if (objCall instanceof List) {
                    arrayList.addAll((List) objCall);
                }
            }
        }
        return arrayList;
    }

    public static List merge(Object obj, List list) {
        State state = states.get(obj);
        if (state == null) {
            return list;
        }
        if ((Enhancements.get(obj, "J") instanceof Integer) && ((Integer) Enhancements.get(obj, "J")).intValue() != 0) {
            return list;
        }
        capture(obj, state);
        List listActive = active(state);
        if (listActive.size() > 1) {
            Enhancements.log("subtitle_samples_merged", "active=" + listActive.size() + " position_us=" + state.position, null);
        }
        state.last = new ArrayList(listActive);
        return listActive;
    }

    public static void finish(Object obj) {
        State state = states.get(obj);
        if (state == null) {
            return;
        }
        if (!(Enhancements.get(obj, "J") instanceof Integer) || ((Integer) Enhancements.get(obj, "J")).intValue() == 0) {
            Object obj2 = Enhancements.get(obj, "Q");
            if (Boolean.TRUE.equals(Enhancements.get(obj, "A")) && (obj2 instanceof Long)) {
                Long l = (Long) obj2;
                if (l.longValue() != CellBase.ID_SYSTEM_MESSAGE_REQUEST_CLOSED && state.position >= l.longValue()) {
                    reset(obj);
                    return;
                }
            }
            capture(obj, state);
            List listActive = active(state);
            if (Boolean.TRUE.equals(Enhancements.get(obj, "H"))) {
                state.eos = true;
            }
            if (state.eos) {
                Enhancements.put(obj, "H", Boolean.valueOf(state.entries.isEmpty()));
            }
            if (listActive.equals(state.last)) {
                return;
            }
            state.last = new ArrayList(listActive);
            Object obj3 = Enhancements.get(obj, "C");
            if (obj3 instanceof Handler) {
                ((Handler) obj3).obtainMessage(0, listActive).sendToTarget();
            } else {
                Enhancements.call(Enhancements.get(obj, "D"), "W", listActive);
            }
            Enhancements.log("subtitle_active_changed", "active=" + listActive.size() + " position_us=" + state.position, null);
        }
    }
}
