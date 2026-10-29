package android.content;
import java.io.File;
public class Context {
    public File files;
    public boolean fail;
    public Context(File files) { this.files = files; }
    public Context getApplicationContext() { return this; }
    public File getFilesDir() {
        if (fail) throw new IllegalStateException("synthetic storage failure");
        return files;
    }
}
