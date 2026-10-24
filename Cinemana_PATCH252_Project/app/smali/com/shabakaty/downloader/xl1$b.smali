.class public Lcom/shabakaty/downloader/xl1$b;
.super Ljava/lang/Object;
.source "FrameworkSQLiteDatabase.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteDatabase$CursorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/xl1;->a1(Lcom/shabakaty/downloader/bi4;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/bi4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xl1;Lcom/shabakaty/downloader/bi4;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shabakaty/downloader/xl1$b;->a:Lcom/shabakaty/downloader/bi4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/xl1$b;->a:Lcom/shabakaty/downloader/bi4;

    new-instance v0, Lcom/shabakaty/downloader/qk3;

    invoke-direct {v0, p4}, Lcom/shabakaty/downloader/qk3;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/bi4;->b(Lcom/shabakaty/downloader/ai4;)V

    .line 2
    new-instance p1, Landroid/database/sqlite/SQLiteCursor;

    invoke-direct {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    return-object p1
.end method
