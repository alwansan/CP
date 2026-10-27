import java.nio.file.*;import java.io.*;
import com.android.tools.smali.dexlib2.Opcodes;
import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
import com.android.tools.smali.baksmali.*;
public class Disassemble262 { public static void main(String[] args)throws Exception {
 DexBackedDexFile dex=new DexBackedDexFile(new Opcodes(21, -1),Files.readAllBytes(Paths.get(args[0])),0);
 BaksmaliOptions options=new BaksmaliOptions();options.localsDirective=true;options.debugInfo=false;
 Baksmali.disassembleDexFile(dex,new File(args[1]),2,options);
}}
