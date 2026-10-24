.class public final Lcom/shabakaty/downloader/ay3;
.super Ljava/lang/Object;
.source "Schedulers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ay3$b;,
        Lcom/shabakaty/downloader/ay3$h;,
        Lcom/shabakaty/downloader/ay3$f;,
        Lcom/shabakaty/downloader/ay3$c;,
        Lcom/shabakaty/downloader/ay3$e;,
        Lcom/shabakaty/downloader/ay3$d;,
        Lcom/shabakaty/downloader/ay3$a;,
        Lcom/shabakaty/downloader/ay3$g;
    }
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/wx3;

.field public static final b:Lcom/shabakaty/downloader/wx3;

.field public static final c:Lcom/shabakaty/downloader/wx3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ay3$h;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ay3$h;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/xv3;->a(Ljava/util/concurrent/Callable;)Lcom/shabakaty/downloader/wx3;

    move-result-object v0

    .line 3
    sput-object v0, Lcom/shabakaty/downloader/ay3;->a:Lcom/shabakaty/downloader/wx3;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/ay3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ay3$b;-><init>()V

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/xv3;->a(Ljava/util/concurrent/Callable;)Lcom/shabakaty/downloader/wx3;

    move-result-object v0

    .line 6
    sput-object v0, Lcom/shabakaty/downloader/ay3;->b:Lcom/shabakaty/downloader/wx3;

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/ay3$c;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ay3$c;-><init>()V

    .line 8
    invoke-static {v0}, Lcom/shabakaty/downloader/xv3;->a(Ljava/util/concurrent/Callable;)Lcom/shabakaty/downloader/wx3;

    move-result-object v0

    .line 9
    sput-object v0, Lcom/shabakaty/downloader/ay3;->c:Lcom/shabakaty/downloader/wx3;

    .line 10
    sget-object v0, Lcom/shabakaty/downloader/pp4;->b:Lcom/shabakaty/downloader/pp4;

    sget-object v0, Lcom/shabakaty/downloader/pp4;->b:Lcom/shabakaty/downloader/pp4;

    .line 11
    new-instance v0, Lcom/shabakaty/downloader/ay3$f;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ay3$f;-><init>()V

    .line 12
    invoke-static {v0}, Lcom/shabakaty/downloader/xv3;->a(Ljava/util/concurrent/Callable;)Lcom/shabakaty/downloader/wx3;

    return-void
.end method
