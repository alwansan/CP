.class public Lcom/shabakaty/downloader/ag0;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/zf0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zf0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ag0;->r:Lcom/shabakaty/downloader/zf0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ag0;->r:Lcom/shabakaty/downloader/zf0;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/zf0;->f:Lcom/shabakaty/downloader/tf0;

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/tf0;->c:Lcom/shabakaty/downloader/yh1;

    .line 4
    invoke-virtual {v1}, Lcom/shabakaty/downloader/yh1;->h()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/tf0;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/tf0;->j:Lcom/shabakaty/downloader/bg0;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/bg0;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    const-string v2, "FirebaseCrashlytics"

    .line 7
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const-string v4, "Found previous crash marker."

    .line 8
    invoke-static {v2, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    :cond_2
    iget-object v0, v0, Lcom/shabakaty/downloader/tf0;->c:Lcom/shabakaty/downloader/yh1;

    .line 10
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yh1;->h()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 11
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
