package com.shabakaty.cinemana.htmlbridge.model;

public final class NativeApplicationChoiceTest {
    private static int checks;
    private static void ok(boolean b){checks++;if(!b)throw new AssertionError("assert "+checks);}
    static final String LEGACY="com.shabakaty.cinemana.CinemanaApplication",MINIMAL="com.shabakaty.cinemana.nativeui.NativeApplication";
    public static void main(String[] args){
        for(int api=21;api<=40;api++){
            for(String pkg:new String[]{"com.cinemana.pro","com.alwansan.cinemana.composelab","x.y","",null,"not-a-package"}){
                for(String process:new String[]{pkg,pkg+":nativeui",pkg+":filedownloader",pkg+":htmlui",pkg+":nativeui:extra","x.y:nativeui","other.app:nativeui",null,""}){
                    for(String requested:new String[]{LEGACY,MINIMAL,"android.app.Application",null,""}){
                        boolean valid=pkg!=null&&(pkg.equals("com.cinemana.pro")||pkg.equals("com.alwansan.cinemana.composelab")||pkg.equals("x.y"));
                        boolean change=api>=28&&valid&&(pkg+":nativeui").equals(process)&&LEGACY.equals(requested);
                        String expected=change?MINIMAL:requested;
                        ok(java.util.Objects.equals(expected,NativeApplicationChoice.choose(api,pkg,process,requested,LEGACY,MINIMAL)));
                    }
                }
            }
        }
        ok(LEGACY.equals(NativeApplicationChoice.choose(35,"com.cinemana.pro","com.cinemana.pro:nativeui",LEGACY,null,MINIMAL)));
        ok(LEGACY.equals(NativeApplicationChoice.choose(35,"com.cinemana.pro","com.cinemana.pro:nativeui",LEGACY,LEGACY,null)));
        ok(LEGACY.equals(NativeApplicationChoice.choose(35,"com.cinemana.pro","com.cinemana.pro:nativeui",LEGACY,LEGACY,"")));
        ok(LEGACY.equals(NativeApplicationChoice.choose(35,"com.cinemana.pro","com.cinemana.pro:nativeui",LEGACY,LEGACY,LEGACY)));
        System.out.println("CP_NATIVE_APPLICATION_CHOICE_PASS assertions="+checks);
    }
}
