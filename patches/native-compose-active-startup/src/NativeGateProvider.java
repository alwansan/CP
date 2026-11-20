package cp.nativegate;
import android.content.*;
import android.database.Cursor;
import android.net.Uri;
import android.os.*;
public final class NativeGateProvider extends ContentProvider {
    @Override public boolean onCreate(){
        if(!NativeGateFactory.ui()||!(getContext().getApplicationContext() instanceof NativeGateApplication)
                ||NativeGateApplication.constructed!=1||NativeGateApplication.attached!=1)
            throw new IllegalStateException("wrong provider Application");
        NativeGateApplication.provider++;
        NativeGateApplication.providerBeforeCreate=NativeGateApplication.created==0;
        return true;
    }
    @Override public Bundle call(String method,String arg,Bundle extras){
        if(Binder.getCallingUid()!=android.os.Process.myUid()||!"snapshot".equals(method))throw new SecurityException("private gate");
        Bundle b=new Bundle();b.putInt("pid",android.os.Process.myPid());b.putBoolean("ready",NativeGateApplication.ready());
        b.putString("application",getContext().getApplicationContext().getClass().getName());
        return b;
    }
    @Override public Cursor query(Uri u,String[] p,String s,String[] a,String o){throw new UnsupportedOperationException();}
    @Override public String getType(Uri u){return null;}
    @Override public Uri insert(Uri u,ContentValues v){throw new UnsupportedOperationException();}
    @Override public int delete(Uri u,String s,String[] a){throw new UnsupportedOperationException();}
    @Override public int update(Uri u,ContentValues v,String s,String[] a){throw new UnsupportedOperationException();}
}
