package com.shabakaty.cinemana.htmlbridge.model;

/** Candidate AppComponentFactory selection only. No reflection, Context or class loading here.
 * Constants supplied by the trusted factory, never by an Intent or UI command.
 * Default and unknown processes always keep the platform-requested application.
 */
public final class NativeApplicationChoice {
    public static String choose(int api,String pkg,String process,String requested,String expectedLegacy,String minimal){
        if(requested==null||expectedLegacy==null||minimal==null||minimal.isEmpty()||
            minimal.equals(expectedLegacy)||!expectedLegacy.equals(requested))return requested;
        return UiProcessPolicy.allowNewUi(UiProcessPolicy.classify(api,pkg,process))?minimal:requested;
    }
    private NativeApplicationChoice(){}
}
