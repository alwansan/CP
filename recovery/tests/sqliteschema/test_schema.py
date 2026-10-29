#!/usr/bin/env python3
"""Compile exact recovered kf5.p SQLite schema checker against fake Android SQLite."""
from pathlib import Path
from tempfile import TemporaryDirectory
import subprocess

ROOT=Path(__file__).resolve().parents[3]
SOURCE=ROOT/"recovery/generated/java/com/shabakaty/downloader/kf5.java"
ANCHOR="public static void p(com.google.android.gms.measurement.internal.b "

def extract(text):
    i=text.index(ANCHOR);start=text.rfind("\n",0,i)+1;b=text.index("{",i);d=0
    for j in range(b,len(text)):
        d+=(text[j]=="{")-(text[j]=="}")
        if d==0:return text[start:j+1]
    raise ValueError("unterminated method")

def main():
    body=extract(SOURCE.read_text("utf-8"))
    with TemporaryDirectory(prefix="mlkit-sqlite-") as folder:
        root=Path(folder)
        content={
            "kf5.java":r"""import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import java.util.Collections;
import java.util.HashSet;
public final class kf5 {
""" + body + "\n}\n",
            "android/database/Cursor.java":r"""package android.database;
public interface Cursor {
    boolean moveToFirst();
    String[] getColumnNames();
    void close();
}
""",
            "android/database/sqlite/SQLiteException.java":r"""package android.database.sqlite;
public class SQLiteException extends RuntimeException {
    public SQLiteException(String s) {super(s);}
}
""",
            "android/database/sqlite/SQLiteDatabase.java":r"""package android.database.sqlite;
import android.database.Cursor;
import java.util.*;
public class SQLiteDatabase {
    public boolean tableExists;
    public boolean queryThrows;
    public boolean rawThrows;
    public String[] columns=new String[0];
    public final List<String> executed=new ArrayList<>();
    public final List<FakeCursor> cursors=new ArrayList<>();
    public static class FakeCursor implements Cursor {
        public boolean closed;
        public boolean exists;
        public String[] cols;
        FakeCursor(boolean e,String[] col){exists=e;cols=col;}
        public boolean moveToFirst(){return exists;}
        public String[] getColumnNames(){return cols;}
        public void close(){closed=true;}
    }
    public Cursor query(String t,String[] cols,String sel,String[] args,
                        String group,String having,String order){
        if(queryThrows)throw new SQLiteException("SQLITE_MASTER inaccessible");
        FakeCursor cursor=new FakeCursor(tableExists,new String[]{"name"});
        cursors.add(cursor);
        return cursor;
    }
    public Cursor rawQuery(String sql,String[] args){
        if(rawThrows)throw new SQLiteException("column inspection failed");
        FakeCursor cursor=new FakeCursor(true,columns);
        cursors.add(cursor);
        return cursor;
    }
    public void execSQL(String sql){executed.add(sql);}
}
""",
            "android/text/TextUtils.java":r"""package android.text;
public final class TextUtils {
    public static String join(CharSequence separator,Iterable<?> parts) {
        StringBuilder builder=new StringBuilder();
        for(Object s:parts) {if(builder.length()!=0)builder.append(separator);builder.append(s);}
        return builder.toString();
    }
}
""",
            "com/google/android/gms/measurement/internal/b.java":r"""package com.google.android.gms.measurement.internal;
public class b {
    public final Reporter i=new Reporter();
    public final Reporter f=new Reporter();
    public static class Reporter {
        public int errors;
        public String message;
        public void e(String msg,Object a,Object b){errors++;message=msg;}
        public void d(String msg,Object a){errors++;message=msg;}
    }
}
""",
            "SchemaTest.java":r"""import android.database.sqlite.*;
import com.google.android.gms.measurement.internal.b;
public final class SchemaTest {
    static int tests;
    static void check(boolean ok,String text){tests++;if(!ok)throw new AssertionError(text);}
    static SQLiteDatabase db(String...cols) {
        SQLiteDatabase d=new SQLiteDatabase();d.columns=cols;return d;
    }
    static void invoke(b monitor,SQLiteDatabase database,String[] extras) throws Throwable {
        kf5.p(monitor,database,"Episodes","CREATE TABLE Episodes(id INTEGER, name TEXT)",
             "id,name",extras);
    }
    public static void main(String[] args) throws Throwable {
        b monitor=new b();
        SQLiteDatabase d=db("id","name");
        invoke(monitor,d,null);
        check(d.executed.size()==1,"missing table is created");
        check(d.cursors.size()==2 && d.cursors.get(0).closed
            && d.cursors.get(1).closed,"both cursors closed");
        check(monitor.i.errors==0,"normal schema no warnings");

        d=db("id","name");d.tableExists=true;
        invoke(new b(),d,null);
        check(d.executed.isEmpty(),"existing table never recreated");

        d=db("id","name");d.queryThrows=true;monitor=new b();
        invoke(monitor,d,null);
        check(d.executed.size()==1,"metadata query failure tries table creation");
        check(monitor.i.errors==1,"query failure logged");

        d=db("id","name");monitor=new b();
        invoke(monitor,d,new String[]{"extra","ALTER TABLE Episodes ADD COLUMN extra TEXT"});
        check(d.executed.size()==2,"missing optional column altered");
        check(d.cursors.get(1).closed,"column cursor closed on optional alterations");

        d=db("id","name","extra");monitor=new b();
        invoke(monitor,d,new String[]{"extra","ALTER TABLE Episodes ADD COLUMN extra TEXT"});
        check(d.executed.size()==1,"existing optional column not altered");

        d=db("id","name","unexpected");monitor=new b();
        invoke(monitor,d,null);
        check(monitor.i.errors==1 &&
            monitor.i.message.contains("extra columns"),"extra columns warning emitted");

        d=db("id");monitor=new b();
        try{invoke(monitor,d,null);throw new AssertionError("expected missing column error");}
        catch(SQLiteException expected){
            check(expected.getMessage().contains("missing required column: name"),
                  "missing required column rejected");
            check(monitor.f.errors==1,"schema verification failure logged");
            check(d.cursors.get(1).closed,"column cursor closed on verification error");
        }

        d=db("id","name");d.rawThrows=true;monitor=new b();
        try{invoke(monitor,d,null);throw new AssertionError("expected raw query error");}
        catch(SQLiteException expected){check(monitor.f.errors==1,"rawQuery failure logged");}
        try{invoke(null,d,null);throw new AssertionError("expected null monitor error");}
        catch(IllegalArgumentException expected){check(true,"null monitor rejected");}
        System.out.println("PASS: "+tests+" actual kf5 SQLite schema checker tests");
    }
}
"""
        }
        files=[]
        for rel,source in content.items():
            p=root/rel;p.parent.mkdir(parents=True,exist_ok=True);p.write_text(source,"utf-8");files.append(p)
        subprocess.run(["javac","-encoding","UTF-8","-d",folder,*map(str,files)],check=True)
        subprocess.run(["java","-cp",folder,"SchemaTest"],check=True)

if __name__=="__main__":main()
