package com.shabakaty.cinemana.ca1;
import android.content.Context;
import java.util.*;
/** Episode rows and native download records have different Room DAO contracts. */
public final class DownloadStore263 {
 private DownloadStore263() {}
 public static Object appDao(Context context) throws Exception {
  Context app=context.getApplicationContext();if(app==null)app=context;
  Object dao=Restart108.call(app,"h",new Object[0]);
  if(!Class.forName("com.shabakaty.downloader.kw0").isInstance(dao))throw new IllegalArgumentException("Expected application episode DAO");
  return dao;
 }
 public static Object combined(Context context,String id)throws Exception {
  return Restart108.exp("readCombinedById",new Object[]{appDao(context),id});
 }
 public static final class Errors extends ArrayList<String> {
  final Set<String> deleted=new HashSet<String>();
  public Errors(){super();}
 }
 public static void recordSuccess(List<?> errors,Object item) {
  try{if(errors instanceof Errors)((Errors)errors).deleted.add(Restart108.str(item,"id"));}catch(Exception ignored){}
 }
 public static void retainFailed(Set<String> selected,List<?> errors) {
  if(errors instanceof Errors)selected.removeAll(((Errors)errors).deleted);
 }
 public static String errorSummary(List<?> errors) {
  StringBuilder s=new StringBuilder();int n=Math.min(3,errors.size());
  for(int i=0;i<n;i++){if(i>0)s.append("\n\n");String e=String.valueOf(errors.get(i));s.append(e.length()>350?e.substring(0,350)+"…":e);}
  if(errors.size()>n)s.append("\n… (+").append(errors.size()-n).append(")");return s.toString();
 }
}
