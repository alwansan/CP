#!/usr/bin/env python3
"""Compile and unit-test exact restored RenameAssets.renameSubtitlesFor source."""
from pathlib import Path
import subprocess
from tempfile import TemporaryDirectory

ROOT=Path(__file__).resolve().parents[3]
FILE=ROOT/"recovery/generated/java/com/shabakaty/cinemana/features/RenameAssets.java"
ANCHOR="private static void renameSubtitlesFor("

def extract(s):
    at=s.index(ANCHOR);start=s.rfind("\n",0,at)+1;open_=s.index("{",at);depth=0
    for i in range(open_,len(s)):
        if s[i]=="{":depth+=1
        elif s[i]=="}":
            depth-=1
            if not depth:return s[start:i+1]
    raise ValueError("unclosed method")

def main():
    method=extract(FILE.read_text("utf-8"))
    with TemporaryDirectory(prefix="rename-test-") as tmp:
        p=Path(tmp)
        (p/"RenameAssets.java").write_text(r"""import java.io.File;
import java.util.*;
public class RenameAssets {
    static final String TAG="CNM_RENAME";
    static class Row {
        String id,name,type,extension,file;
        Row(String a,String b,String c,String d,String e) {id=a;name=b;type=c;extension=d;file=e;}
    }
    static class Cursor {
        List<Row> rows;
        int at=-1;
        boolean closed;
        Cursor(Row... rows) { this.rows=Arrays.asList(rows); }
        boolean moveToFirst() {at=0;return !rows.isEmpty();}
        boolean moveToNext() {at++;return at < rows.size();}
        String getString(int index) {
            Row r=rows.get(at);
            return new String[]{r.id,r.name,r.type,r.extension,r.file}[index];
        }
        void close() {closed=true;}
    }
    static class Database {
        Cursor cursor;
        final List<String> sql=new ArrayList<>();
        final List<Object[]> args=new ArrayList<>();
        boolean throwOnUpdate;
        String taskId="91";
    }
    static Database mostRecent;
    static int rawQueries;
    static Cursor rawQuery(Object obj,String sql) {
        Database db=(Database)obj;rawQueries++;db.sql.add(sql);return db.cursor;
    }
    static String queryString(Object obj,String sql,int column) {
        Database db=(Database)obj;db.sql.add(sql);return db.taskId;
    }
    static Object getDaoDb(Object o) { return o; }
    static Object getWritableDb(Object o) { return o; }
    static void execSql(Object obj,String sql,Object[] args) {
        Database db=(Database)obj;
        if(db.throwOnUpdate) throw new IllegalStateException("db locked");
        db.sql.add(sql);db.args.add(args);
    }
    static boolean isMd5(String name) {return name.matches("[a-fA-F0-9]{32}");}
    static String langFromName(String name) {return name.equals("English")?"en":"ar";}
    static String extFor(String type,String extension) {return extension==null?"srt":extension;}
    static String doRename(String from,String newBase,String extension) {return "/renamed/"+newBase+extension;}
""" + method + "\n}\n", "utf-8")
        (p/"RenameTest.java").write_text(r"""public class RenameTest {
    static int checks;
    static void check(boolean value,String label) {
        checks++; if(!value)throw new AssertionError(label);
    }
    static RenameAssets.Row good(String id) {
        return new RenameAssets.Row(id,"English","SUB","srt",
            "/test/0123456789abcdef0123456789abcdef.srt");
    }
    public static void main(String[] args) {
        RenameAssets.Database subs=new RenameAssets.Database(),downloads=new RenameAssets.Database();
        RenameAssets.rawQueries=0;
        RenameAssets.renameSubtitlesFor(subs,downloads,null,"Video");
        check(RenameAssets.rawQueries==0,"null parent returns without query");

        subs.cursor=new RenameAssets.Cursor();
        RenameAssets.renameSubtitlesFor(subs,downloads,"1","Video");
        check(subs.cursor.closed,"empty cursor is closed");
        check(subs.args.isEmpty(),"empty cursor makes no changes");

        subs=new RenameAssets.Database();
        downloads=new RenameAssets.Database();
        subs.cursor=new RenameAssets.Cursor(
            good("17"), new RenameAssets.Row("18","Arabic","SUB","srt","/test/manual.srt"),
            new RenameAssets.Row("19","Arabic","SUB","srt",null));
        RenameAssets.renameSubtitlesFor(subs,downloads,"p101","Show.S01E02");
        check(subs.cursor.closed,"cursor closes on success");
        check(subs.args.size()==1,"only hashed existing subtitle renamed");
        check(downloads.args.size()==1,"download path updated");
        check("17".equals(subs.args.get(0)[1]),"subtitle ID maintained");
        check("91".equals(downloads.args.get(0)[1]),"download task ID maintained");
        check("/renamed/Show.S01E02.en.srt".equals(subs.args.get(0)[0]),"new path format");
        check(subs.sql.get(0).contains("parentId"),"parent scope query preserved");

        subs=new RenameAssets.Database();
        downloads=new RenameAssets.Database();
        subs.cursor=new RenameAssets.Cursor(good("20"));
        subs.taskId=null;
        RenameAssets.renameSubtitlesFor(subs,downloads,"p","Episode");
        check(subs.args.size()==1,"subtitle update survives missing task ID");
        check(downloads.args.isEmpty(),"no Downloads update without task ID");

        subs=new RenameAssets.Database();
        downloads=new RenameAssets.Database();
        subs.cursor=new RenameAssets.Cursor(good("31"));
        subs.throwOnUpdate=true;
        RenameAssets.renameSubtitlesFor(subs,downloads,"p","Episode");
        check(subs.cursor.closed,"cursor always closed on DB failure");

        subs=new RenameAssets.Database();
        RenameAssets.renameSubtitlesFor(subs,downloads,"p","Episode");
        check(subs.args.isEmpty(),"null cursor returns without update");
        System.out.println("PASS: "+checks+" tests of exact RenameAssets Java method");
    }
}
""","utf-8")
        subprocess.run(["javac","-encoding","UTF-8","-d",tmp,str(p/"RenameAssets.java"),str(p/"RenameTest.java")],check=True)
        subprocess.run(["java","-cp",tmp,"RenameTest"],check=True)

if __name__=="__main__":main()
