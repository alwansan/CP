package com.shabakaty.cinemana.htmlbridge.model;
/** Pure classifier for opt-in UI startup. Not yet wired to production Application.
 * Never identify a process by suffix alone. Unknown keeps legacy behavior and denies new UI/owner access.
 */
public final class UiProcessPolicy {
    public enum Role { OWNER, LEGACY_DOWNLOADER, UI_ONLY, UNKNOWN }
    public static Role classify(int api,String pkg,String process){
        if(api<28||pkg==null||!pkg.matches("[A-Za-z][A-Za-z0-9_]*(\\.[A-Za-z][A-Za-z0-9_]*)+")||process==null)return Role.UNKNOWN;
        if(process.equals(pkg))return Role.OWNER;
        if(process.equals(pkg+":filedownloader"))return Role.LEGACY_DOWNLOADER;
        if(process.equals(pkg+":htmlui"))return Role.UI_ONLY;
        return Role.UNKNOWN;
    }
    public static boolean allowOwnerRead(Role role){return role==Role.OWNER;}
    public static boolean allowNewUi(Role role){return role==Role.UI_ONLY;}
    public static boolean preserveLegacyStartup(Role role){return role!=Role.UI_ONLY;}
    private UiProcessPolicy(){}
}
