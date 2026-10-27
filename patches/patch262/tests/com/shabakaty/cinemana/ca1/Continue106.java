package com.shabakaty.cinemana.ca1;
import java.util.*;import java.lang.ref.WeakReference;
class Continue106 {
 static Map<String,Object> entries=new HashMap<String,Object>();static WeakReference<Object> home;
 static Object get(Object o,String k)throws Exception{return Restart108.get(o,k);}
 static Object call(Object o,String k,Object...a)throws Exception{return Restart108.call(o,k,a);}
 static String text(Object o,String k)throws Exception{Object v=get(o,k);return v==null?"":v.toString();}
}
