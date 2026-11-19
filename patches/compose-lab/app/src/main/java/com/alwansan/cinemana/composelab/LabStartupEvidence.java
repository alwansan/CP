package com.alwansan.cinemana.composelab;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import com.shabakaty.cinemana.htmlbridge.model.UiProcessPolicy;

/** Standalone startup fixture: counters model legacy hooks, not production initialization.
 * The real Cinemana Application subclasses Dagger and still requires a separate ART gate.
 */
final class LabStartupEvidence {
    private static final Object LOCK=new Object();
    private static UiProcessPolicy.Role role=UiProcessPolicy.Role.UNKNOWN;
    private static String process="";
    static final String PKG="com.alwansan.cinemana.composelab";
    private static String applicationClass="";
    private static int legacyConstructor,minimalConstructor,configCount,lastOrientation;
    private static int attachCount,legacyAttachCount,createCount,legacyCreateCount,providerCount;
    private static boolean providerAfterAttach,providerBeforeCreate;
    private static boolean resumed,focused;
    private static int drawPage,drawRows,drawSerial,drawOwnerPid,drawWidth,drawHeight;
    private static String drawState="none";
    static void uiResume(boolean value){synchronized(LOCK){resumed=value;if(value){drawPage=0;drawRows=0;drawSerial=0;drawOwnerPid=0;drawWidth=0;drawHeight=0;drawState="none";}else focused=false;}}
    static void uiFocus(boolean value){synchronized(LOCK){focused=value;}}
    static void uiDraw(String state,int page,int rows,int serial,int ownerPid,int width,int height){
        synchronized(LOCK){if(resumed){drawState=state;drawPage=page;drawRows=rows;drawSerial=serial;drawOwnerPid=ownerPid;drawWidth=width;drawHeight=height;}}
    }
    static void constructed(boolean minimal,String name){
        synchronized(LOCK){applicationClass=name;if(minimal)minimalConstructor++;else legacyConstructor++;}
    }
    static void classify(Context base,boolean minimal){
        String name=Build.VERSION.SDK_INT>=28?Application.getProcessName():null;
        synchronized(LOCK){
            role=UiProcessPolicy.classify(Build.VERSION.SDK_INT,base.getPackageName(),name);
            process=name==null?"":name;
            if(minimal && !(PKG.equals(base.getPackageName())&&UiProcessPolicy.allowNewUi(role)))
                throw new IllegalStateException("minimal Application outside nativeui");
        }
    }
    static void attached(boolean minimal){synchronized(LOCK){attachCount++;if(!minimal)legacyAttachCount++;}}
    static void created(boolean minimal){synchronized(LOCK){createCount++;if(!minimal)legacyCreateCount++;}}
    static void config(int orientation){synchronized(LOCK){configCount++;lastOrientation=orientation;}}
    static void providerStarted(){
        synchronized(LOCK){
            providerCount++;
            providerAfterAttach=attachCount==1;
            providerBeforeCreate=createCount==0;
        }
    }
    public static boolean uiReady(){
        synchronized(LOCK){return UiProcessPolicy.allowNewUi(role)&&attachCount==1&&createCount==1&&legacyAttachCount==0&&legacyCreateCount==0&&legacyConstructor==0&&minimalConstructor==1;}
    }
    static android.os.Bundle snapshot(){
        synchronized(LOCK){
        android.os.Bundle b=new android.os.Bundle();
        b.putString("applicationClass",applicationClass);b.putInt("legacyConstructor",legacyConstructor);b.putInt("minimalConstructor",minimalConstructor);b.putInt("configCount",configCount);b.putInt("lastOrientation",lastOrientation);
        b.putString("role",role.name());b.putString("process",process);
        b.putInt("pid",android.os.Process.myPid());
        b.putInt("attach",attachCount);b.putInt("legacyAttach",legacyAttachCount);
        b.putInt("create",createCount);b.putInt("legacyCreate",legacyCreateCount);
        b.putInt("provider",providerCount);
        b.putBoolean("providerAfterAttach",providerAfterAttach);b.putBoolean("providerBeforeCreate",providerBeforeCreate);
        b.putBoolean("resumed",resumed);b.putBoolean("focused",focused);
        b.putString("drawState",drawState);b.putInt("drawPage",drawPage);b.putInt("drawRows",drawRows);b.putInt("drawSerial",drawSerial);b.putInt("drawOwnerPid",drawOwnerPid);b.putInt("drawWidth",drawWidth);b.putInt("drawHeight",drawHeight);
        b.putBoolean("allowOwnerRead",UiProcessPolicy.allowOwnerRead(role));b.putBoolean("allowNewUi",UiProcessPolicy.allowNewUi(role));
        return b;
        }
    }
}
