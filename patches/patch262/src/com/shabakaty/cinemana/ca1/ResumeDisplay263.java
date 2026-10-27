package com.shabakaty.cinemana.ca1;
import java.util.Locale;
/** Pure formatting; unknown episode numbers never become S00/E00. */
public final class ResumeDisplay263 {
 private ResumeDisplay263(){}
 public static String cleanTitle(String s){return s==null?"":s.replaceAll("[\\u200e\\u200f\\u202a-\\u202e\\u2066-\\u2069]","").replaceAll("(?iu)\\s+S[0-9٠-٩۰-۹]+(?:\\s*E[0-9٠-٩۰-۹]+)?\\s*$","").trim();}
 static String number(String s){
  if(s==null)return "";s=s.trim();if(!s.matches("[0-9٠-٩۰-۹]+"))return "";
  try{int n=Integer.parseInt(s);return n>0?String.format(Locale.ROOT,"%02d",n):"";}catch(NumberFormatException e){return "";}
 }
 public static String episode(String season,String episode){String s=number(season),e=number(episode);return (s.isEmpty()?"":"S"+s)+(e.isEmpty()?"":(s.isEmpty()?"":" ")+"E"+e);}
 static String time(long ms){long s=Math.max(0,ms)/1000;return s>=3600?String.format(Locale.ROOT,"%d:%02d:%02d",s/3600,s/60%60,s%60):String.format(Locale.ROOT,"%d:%02d",s/60,s%60);}
 public static String subtitle(String season,String episode,long p,long d){
  String code=episode(season,episode);String progress=d>0?time(Math.min(Math.max(0,p),d))+" / "+time(d):p>0?time(p):"";
  return code+(code.isEmpty()||progress.isEmpty()?"":" · ")+progress;
 }
}
