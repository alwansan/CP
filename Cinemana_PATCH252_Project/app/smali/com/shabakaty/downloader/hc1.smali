.class public Lcom/shabakaty/downloader/hc1;
.super Ljava/lang/Object;
.source "FirebaseCrashlytics.java"


# instance fields
.field public final a:Lcom/shabakaty/downloader/zf0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zf0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/hc1;->a:Lcom/shabakaty/downloader/zf0;

    return-void
.end method

.method public static a()Lcom/shabakaty/downloader/hc1;
    .locals 2

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/ec1;->b()Lcom/shabakaty/downloader/ec1;

    move-result-object v0

    .line 2
    const-class v1, Lcom/shabakaty/downloader/hc1;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ec1;->a()V

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/ec1;->d:Lcom/shabakaty/downloader/z80;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/s;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Lcom/shabakaty/downloader/hc1;

    const-string v1, "FirebaseCrashlytics component is not present."

    .line 6
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/Throwable;)V
    .locals 8

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const-string v0, "FirebaseCrashlytics"

    const-string v1, "A null value was passed to recordException. Ignoring."

    .line 1
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/hc1;->a:Lcom/shabakaty/downloader/zf0;

    .line 3
    iget-object v2, v0, Lcom/shabakaty/downloader/zf0;->f:Lcom/shabakaty/downloader/tf0;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 5
    iget-object v0, v2, Lcom/shabakaty/downloader/tf0;->d:Lcom/shabakaty/downloader/hf0;

    new-instance v7, Lcom/shabakaty/downloader/vf0;

    move-object v1, v7

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/vf0;-><init>(Lcom/shabakaty/downloader/tf0;JLjava/lang/Throwable;Ljava/lang/Thread;)V

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/if0;

    invoke-direct {p1, v0, v7}, Lcom/shabakaty/downloader/if0;-><init>(Lcom/shabakaty/downloader/hf0;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/hf0;->b(Ljava/util/concurrent/Callable;)Lcom/shabakaty/downloader/uk4;

    return-void
.end method
