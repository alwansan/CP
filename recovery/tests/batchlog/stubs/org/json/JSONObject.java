package org.json;
import java.util.LinkedHashMap;
import java.util.Map;
public class JSONObject {
    private final Map<String,Object> items = new LinkedHashMap<>();
    public JSONObject put(String name, Object value) { items.put(name,value); return this; }
    public JSONObject put(String name, long value) { items.put(name, value); return this; }
    public String toString() {
        StringBuilder b = new StringBuilder("{");
        for (Map.Entry<String,Object> e : items.entrySet()) {
            if (b.length()>1) b.append(",");
            b.append('"').append(e.getKey()).append('"').append(':');
            Object v=e.getValue();
            if (v instanceof Number) b.append(v);
            else b.append('"').append(String.valueOf(v).replace("\\","\\\\").replace("\"","\\\"")).append('"');
        }
        return b.append('}').toString();
    }
}
