.class public final Lcom/shabakaty/downloader/n2;
.super Lcom/shabakaty/downloader/no3;
.source "ActionDisposable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/no3<",
        "Lcom/shabakaty/downloader/j2;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/j2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/no3;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/j2;

    .line 2
    :try_start_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/j2;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/d61;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
