.class public final Lcom/shabakaty/downloader/lj5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/fj5;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fj5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/lj5;->a:Lcom/shabakaty/downloader/fj5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/lj5;->a:Lcom/shabakaty/downloader/fj5;

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/fj5;->e:Lcom/shabakaty/downloader/wv5;

    if-eqz p1, :cond_0

    const-string v0, "Job execution failed"

    .line 3
    invoke-virtual {p1, v0, p2}, Lcom/shabakaty/downloader/fq1;->G1(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
