package com.shabakaty.cinemana.local;
import android.view.View;
import java.lang.reflect.*;import java.lang.ref.WeakReference;import java.util.*;
/** One bounded fallback for the details poster, using only the catalogue-provided thumbnail. */
public final class PosterFallback {
 private static final Map<View,State> states=Collections.synchronizedMap(new WeakHashMap<View,State>());
 private static final class State {final String primary,thumbnail,key;boolean attempted;State(String p,String t){primary=p;thumbnail=t;key=Integer.toHexString(p.hashCode());}}
 private static boolean valid(String url){try{java.net.URI uri=new java.net.URI(url);return ("https".equals(uri.getScheme())||"http".equals(uri.getScheme()))&&uri.getHost()!=null;}catch(Exception e){return false;}}
 public static String source(View view,String primary,String thumbnail){
  try{String resource=view.getResources().getResourceEntryName(view.getId());if(!"video_info_poster".equals(resource)&&!"simpleDraweeView2".equals(resource))return primary;
   String p=primary==null?"":primary,t=thumbnail==null?"":thumbnail;if(!valid(p)&&valid(t))p=t;
   State state=new State(p,t);states.put(view,state);UiPerfDiag.poster(1);LocalRuntime.log("poster_begin key="+state.key+" source="+valid(p)+" thumbnail="+valid(t));return p.isEmpty()?null:p;
  }catch(Exception ignored){return primary;}
 }
 public static void controller(final View view,final Object controller){
  final State state=states.get(view);if(state==null)return;final WeakReference<View> weak=new WeakReference<>(view);
  try{Class<?> listener=Class.forName("com.facebook.drawee.controller.ControllerListener");
   Object callback=Proxy.newProxyInstance(listener.getClassLoader(),new Class[]{listener},(proxy,method,args)->{
    String name=method.getName();if(method.getDeclaringClass()==Object.class){if(name.equals("hashCode"))return System.identityHashCode(proxy);if(name.equals("equals"))return proxy==args[0];return "LocalPosterListener";}
    if(name.equals("b")){UiPerfDiag.poster(2);LocalRuntime.log("poster_ready key="+state.key);}
    if(name.equals("c")){UiPerfDiag.poster(3);LocalRuntime.log("poster_failed key="+state.key+" type="+(args!=null&&args.length>1&&args[1] instanceof Throwable?LocalRuntime.causeTypes((Throwable)args[1]):"unknown"));
     View target=weak.get();if(target!=null)target.post(()->{View current=weak.get();if(current==null||states.get(current)!=state||state.attempted||!valid(state.thumbnail)||state.primary.equals(state.thumbnail))return;
      try{Object active=current.getClass().getMethod("getController").invoke(current);if(active!=controller)return;state.attempted=true;UiPerfDiag.poster(4);LocalRuntime.log("poster_thumbnail_fallback key="+state.key);current.getClass().getMethod("setImageURI",String.class).invoke(current,state.thumbnail);}catch(Exception e){LocalRuntime.failure("poster_fallback",e);}
     });
    }return null;
   });
   controller.getClass().getMethod("g",listener).invoke(controller,callback);
  }catch(Exception e){LocalRuntime.failure("poster_listener",e);}
 }
}
