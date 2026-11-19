package com.alwansan.cinemana.composelab;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;

/** Private fixture only. Captures actual Android order of Application and provider hooks. */
public class LabStartupProvider extends ContentProvider {
    public static final class Ui extends LabStartupProvider {}
    public static final class Downloader extends LabStartupProvider {}
    @Override public boolean onCreate(){LabStartupApplication.providerStarted();return true;}
    @Override public Bundle call(String method,String arg,Bundle extras){
        if(Binder.getCallingUid()!=android.os.Process.myUid()||!"snapshot".equals(method))
            throw new SecurityException("fixture snapshot only");
        return LabStartupApplication.snapshot();
    }
    @Override public Cursor query(Uri u,String[] p,String s,String[] a,String o){throw new UnsupportedOperationException();}
    @Override public String getType(Uri u){return null;}
    @Override public Uri insert(Uri u,ContentValues v){throw new UnsupportedOperationException();}
    @Override public int delete(Uri u,String s,String[] a){throw new UnsupportedOperationException();}
    @Override public int update(Uri u,ContentValues v,String s,String[] a){throw new UnsupportedOperationException();}
}
