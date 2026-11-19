package com.shabakaty.cinemana.htmlbridge.model;
public final class UiProcessPolicyTest {
    static int checks;
    static void ok(boolean b){checks++;if(!b)throw new AssertionError("check "+checks);}
    public static void main(String[] args){
        String p="com.cinemana.pro";
        for(int api=21;api<=40;api++){
            String[] names={p,p+":filedownloader",p+":htmlui",p+":htmlui:extra","other.app:htmlui",p+":HTMLUI",p+" ",p+":previewread",null,""};
            for(int i=0;i<names.length;i++){
                UiProcessPolicy.Role expected=api<28||i>=3?UiProcessPolicy.Role.UNKNOWN:UiProcessPolicy.Role.values()[i];
                UiProcessPolicy.Role role=UiProcessPolicy.classify(api,p,names[i]);
                ok(role==expected);ok(UiProcessPolicy.allowOwnerRead(role)==(expected==UiProcessPolicy.Role.OWNER));
                ok(UiProcessPolicy.allowNewUi(role)==(expected==UiProcessPolicy.Role.UI_ONLY));
                ok(UiProcessPolicy.preserveLegacyStartup(role)==(expected!=UiProcessPolicy.Role.UI_ONLY));
            }
        }
        for(String bad:new String[]{null,"","com","com..pro","com:pro"," com.pro","com.pro/","com.pro\n"})
            ok(UiProcessPolicy.classify(35,bad,bad)==UiProcessPolicy.Role.UNKNOWN);
        System.out.println("CP_UI_PROCESS_POLICY_PASS assertions="+checks);
    }
}
