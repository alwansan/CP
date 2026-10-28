package com.shabakaty.cinemana.local;
import java.util.*;import java.io.*;import org.json.*;
import com.shabakaty.cinemana.local.LocalAccountStore.Item;
/** Bounded, lossless compatibility preferences. Large parcels use short numbered chunks. */
public final class BackupState {
 private static final int CHUNK=2000,LIMIT=2*1024*1024;
 static boolean allowed(String pref){return "ca1_continue106".equals(pref)||"ca1_episode_context107".equals(pref);}
 static String key(String pref,String key)throws Exception {byte[] b=java.security.MessageDigest.getInstance("SHA-256").digest((pref+":"+key).getBytes("UTF-8"));StringBuilder s=new StringBuilder();for(byte v:b)s.append(String.format(Locale.ROOT,"%02x",v&255));return s.toString();}
 public static List<Item> encode(String pref,String key,Object value)throws Exception {
  if(!allowed(pref)||key.length()>256||value==null)throw new IOException("invalid preference");
  String type=value.getClass().getSimpleName();JSONObject o=new JSONObject().put("pref",pref).put("key",key).put("type",type).put("value",value);String id=key(pref,key),payload=o.toString();
  if(payload.length()<=20000)return Arrays.asList(new Item(id,"",0,payload));
  if(!(value instanceof String)||((String)value).length()>LIMIT)throw new IOException("preference limit");
  String text=(String)value;int total=(text.length()+CHUNK-1)/CHUNK;List<Item> items=new ArrayList<>();
  for(int n=0;n<total;n++)items.add(new Item(id+"_"+n,"",0,new JSONObject().put("pref",pref).put("key",key).put("type","StringChunk").put("part",n).put("total",total).put("value",text.substring(n*CHUNK,Math.min(text.length(),(n+1)*CHUNK))).toString()));
  return items;
 }
 public static Map<String,Map<String,Object>> decode(List<Item> items)throws Exception {
  Map<String,Map<String,Object>> result=new LinkedHashMap<>();Map<String,String[]> chunks=new LinkedHashMap<>();Map<String,JSONObject> headers=new LinkedHashMap<>();
  for(Item item:items){if(item.id.equals("settings"))continue;JSONObject o=new JSONObject(item.payload);String pref=o.getString("pref"),key=o.getString("key"),type=o.getString("type");
   if(!allowed(pref)||key.length()>256)throw new IOException("invalid preference");
   if(type.equals("StringChunk")){int count=o.getInt("total"),part=o.getInt("part");if(count<=0||count>(LIMIT+CHUNK-1)/CHUNK||part<0||part>=count)throw new IOException("invalid chunk");String id=key(pref,key);String[] values=chunks.get(id);if(values==null){values=new String[count];chunks.put(id,values);headers.put(id,o);}if(values.length!=count||values[part]!=null)throw new IOException("duplicate chunk");String value=o.getString("value");if(value.length()>CHUNK)throw new IOException("chunk limit");values[part]=value;
   }else{Object value;if(type.equals("String"))value=o.getString("value");else if(type.equals("Long"))value=o.getLong("value");else if(type.equals("Integer"))value=o.getInt("value");else if(type.equals("Boolean"))value=o.getBoolean("value");else if(type.equals("Float")){double n=o.getDouble("value");if(Double.isNaN(n)||Double.isInfinite(n)||Math.abs(n)>Float.MAX_VALUE)throw new IOException("invalid float");value=(float)n;}else throw new IOException("unsupported preference");put(result,pref,key,value);}
  }
  for(Map.Entry<String,String[]> entry:chunks.entrySet()){StringBuilder text=new StringBuilder();for(String part:entry.getValue()){if(part==null)throw new IOException("missing chunk");text.append(part);if(text.length()>LIMIT)throw new IOException("preference limit");}JSONObject o=headers.get(entry.getKey());put(result,o.getString("pref"),o.getString("key"),text.toString());}
  return result;
 }
 static void put(Map<String,Map<String,Object>> result,String pref,String key,Object value)throws IOException {Map<String,Object> values=result.get(pref);if(values==null){values=new LinkedHashMap<>();result.put(pref,values);}if(values.containsKey(key))throw new IOException("duplicate preference");values.put(key,value);}
}
