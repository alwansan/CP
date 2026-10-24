.class public final Lcom/shabakaty/downloader/pp4;
.super Lcom/shabakaty/downloader/wx3;
.source "TrampolineScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/pp4$a;,
        Lcom/shabakaty/downloader/pp4$b;,
        Lcom/shabakaty/downloader/pp4$c;
    }
.end annotation


# static fields
.field public static final b:Lcom/shabakaty/downloader/pp4;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pp4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/pp4;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/pp4;->b:Lcom/shabakaty/downloader/pp4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/wx3;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/wx3$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pp4$c;

    invoke-direct {v0}, Lcom/shabakaty/downloader/pp4$c;-><init>()V

    return-object v0
.end method

.method public b(Ljava/lang/Runnable;)Lcom/shabakaty/downloader/mu0;
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/t21;->r:Lcom/shabakaty/downloader/t21;

    return-object p1
.end method

.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/mu0;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    const-string p2, "run is null"

    .line 2
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 5
    invoke-static {p1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    .line 6
    :goto_0
    sget-object p1, Lcom/shabakaty/downloader/t21;->r:Lcom/shabakaty/downloader/t21;

    return-object p1
.end method
