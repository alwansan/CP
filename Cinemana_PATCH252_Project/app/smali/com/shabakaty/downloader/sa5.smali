.class public final Lcom/shabakaty/downloader/sa5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.4.0"


# static fields
.field public static final a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ec5;->a:Lcom/shabakaty/downloader/ow4;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/y13;

    const-string v2, "GAC_Executor"

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/y13;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/ow4;->g(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/sa5;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method
