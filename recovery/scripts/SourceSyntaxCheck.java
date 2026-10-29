import com.sun.source.util.JavacTask;
import java.io.IOException;
import java.nio.file.*;
import java.util.*;
import javax.tools.*;

/**
 * Syntax-only audit: JavacTask.parse() deliberately does not resolve dependencies
 * or claim compilability. Each batch is parsed with plain JDK 21.
 */
public final class SourceSyntaxCheck {
    public static void main(String[] args) throws Exception {
        if (args.length != 1) throw new IllegalArgumentException("Usage: SourceSyntaxCheck <generated-java-root>");
        Path root=Paths.get(args[0]);
        if(!Files.isDirectory(root))throw new IOException("No Java root: "+root);
        List<java.io.File> paths=new ArrayList<>();
        try(var stream=Files.walk(root)){
            stream.filter(p->p.toString().endsWith(".java")).sorted().forEach(p->paths.add(p.toFile()));
        }
        if(paths.isEmpty()) throw new IOException("Zero Java sources");
        JavaCompiler compiler=ToolProvider.getSystemJavaCompiler();
        int errorCount=0;
        Set<String> badFiles=new HashSet<>();
        int batches=0;
        for(int offset=0;offset<paths.size();offset+=60) {
            DiagnosticCollector<JavaFileObject> errors=new DiagnosticCollector<>();
            try(StandardJavaFileManager manager=compiler.getStandardFileManager(errors, Locale.ROOT, java.nio.charset.StandardCharsets.UTF_8)){
                List<java.io.File> batch=paths.subList(offset,Math.min(paths.size(),offset+60));
                Iterable<? extends JavaFileObject> units=manager.getJavaFileObjectsFromFiles(batch);
                JavacTask task=(JavacTask)compiler.getTask(null,manager,errors,Arrays.asList("-proc:none","-source","17"),null,units);
                task.parse();
                for(Diagnostic<? extends JavaFileObject> error:errors.getDiagnostics()){
                    if(error.getKind()!=Diagnostic.Kind.ERROR)continue;
                    errorCount++;
                    String file=error.getSource()==null?"unknown":error.getSource().toUri().getPath();
                    badFiles.add(file);
                    if(errorCount<=100) {
                        System.out.println("SYNTAX_ERROR|"+file+"|"+error.getLineNumber()+"|"+error.getMessage(Locale.ROOT).replace("\n"," "));
                    }
                }
            }
            batches++;
        }
        for(String file:new java.util.TreeSet<>(badFiles)) System.out.println("SYNTAX_FILE|"+file);
        System.out.println("SYNTAX_SUMMARY total_files="+paths.size()+" parsed_batches="+batches+" files_with_syntax_errors="+badFiles.size()+" syntax_error_count="+errorCount);
        // Syntax errors are recorded and reviewed separately; extraction success is not compilation.
    }
}
