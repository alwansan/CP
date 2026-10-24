.class public Lcom/shabakaty/downloader/h75;
.super Landroid/os/Binder;
.source "com.google.firebase:firebase-messaging@@22.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/h75$a;
    }
.end annotation


# static fields
.field public static final synthetic b:I


# instance fields
.field public final a:Lcom/shabakaty/downloader/h75$a;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/h75$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/h75;->a:Lcom/shabakaty/downloader/h75$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/i75$a;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    const-string v1, "FirebaseMessaging"

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "service received new intent via bind strategy"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/h75;->a:Lcom/shabakaty/downloader/h75$a;

    .line 4
    iget-object v1, p1, Lcom/shabakaty/downloader/i75$a;->a:Landroid/content/Intent;

    .line 5
    check-cast v0, Lcom/shabakaty/downloader/s31$a;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/s31$a;->a:Lcom/shabakaty/downloader/s31;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v2, Lcom/shabakaty/downloader/zk4;

    invoke-direct {v2}, Lcom/shabakaty/downloader/zk4;-><init>()V

    iget-object v3, v0, Lcom/shabakaty/downloader/s31;->r:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/shabakaty/downloader/so5;

    .line 9
    invoke-direct {v4, v0, v1, v2}, Lcom/shabakaty/downloader/so5;-><init>(Lcom/shabakaty/downloader/s31;Landroid/content/Intent;Lcom/shabakaty/downloader/zk4;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, v2, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    .line 11
    sget-object v1, Lcom/shabakaty/downloader/g75;->r:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/shabakaty/downloader/fq1;

    invoke-direct {v2, p1}, Lcom/shabakaty/downloader/fq1;-><init>(Lcom/shabakaty/downloader/i75$a;)V

    .line 12
    iget-object p1, v0, Lcom/shabakaty/downloader/ye7;->b:Lcom/shabakaty/downloader/ic7;

    new-instance v3, Lcom/shabakaty/downloader/rk6;

    .line 13
    sget v4, Lcom/shabakaty/downloader/if7;->a:I

    invoke-direct {v3, v1, v2}, Lcom/shabakaty/downloader/rk6;-><init>(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/k63;)V

    .line 14
    invoke-virtual {p1, v3}, Lcom/shabakaty/downloader/ic7;->c(Lcom/shabakaty/downloader/jd7;)V

    .line 15
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ye7;->u()V

    return-void

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Binding only allowed within app"

    .line 17
    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
