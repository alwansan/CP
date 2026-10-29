package android.os;
import java.io.File;
public final class Environment {
    public static File externalDir;
    public static File getExternalStorageDirectory() { return externalDir; }
}
