package com.shabakaty.cinemana.ca1;
import java.lang.reflect.*;import java.util.*;
class Restart108 {
 static Map<String,Object> items=new HashMap<String,Object>();
 static Object get(Object o,String k)throws Exception {Class<?> c=o instanceof Class?(Class<?>)o:o.getClass();while(c!=null){try{Field f=c.getDeclaredField(k);f.setAccessible(true);return f.get(o instanceof Class?null:o);}catch(NoSuchFieldException e){c=c.getSuperclass();}}throw new NoSuchFieldException(k);}
 static String str(Object o,String k)throws Exception{return String.valueOf(get(o,k));}
 static long number(Object o,String k)throws Exception{return ((Number)get(o,k)).longValue();}
 static Object exp(String name,Object...args)throws Exception {if(name.equals("getDownloadsDao"))return items; if(name.equals("readCombinedById"))return new Row(items.get(args[1]));throw new UnsupportedOperationException(name);}
 static Object call(Object o,String name,Object...args)throws Exception {Class<?> c=o instanceof Class?(Class<?>)o:o.getClass();for(java.lang.reflect.Method m:c.getDeclaredMethods())if(m.getName().equals(name)){m.setAccessible(true);return m.invoke(o instanceof Class?null:o,args);}throw new NoSuchMethodException(name);}
 static boolean active(int task){return false;}
 static final class Row{Object cinemanaDownloadItem;Row(Object i){cinemanaDownloadItem=i;}}
}
