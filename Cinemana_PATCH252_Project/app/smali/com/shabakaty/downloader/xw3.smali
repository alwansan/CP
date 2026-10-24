.class public Lcom/shabakaty/downloader/xw3;
.super Lcom/shabakaty/downloader/n95;
.source "SafeZendeskCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/n95<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Z

.field public final b:Lcom/shabakaty/downloader/n95;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/n95<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/n95;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/n95<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/n95;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/xw3;->b:Lcom/shabakaty/downloader/n95;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/shabakaty/downloader/xw3;->a:Z

    return-void
.end method


# virtual methods
.method public onError(Lcom/shabakaty/downloader/z41;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/xw3;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/xw3;->b:Lcom/shabakaty/downloader/n95;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/n95;->onError(Lcom/shabakaty/downloader/z41;)V

    goto :goto_0

    :cond_0
    const-string v0, "SafeZendeskCallback"

    .line 3
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/tk2;->b(Ljava/lang/String;Lcom/shabakaty/downloader/z41;)V

    :goto_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/xw3;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/xw3;->b:Lcom/shabakaty/downloader/n95;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/n95;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "SafeZendeskCallback"

    const-string v1, "Operation was a success but callback is null or was cancelled"

    .line 3
    invoke-static {v0, v1, p1}, Lcom/shabakaty/downloader/tk2;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
