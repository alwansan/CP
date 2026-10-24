.class public final Lcom/shabakaty/downloader/ar;
.super Ljava/lang/Object;
.source "CallbackToFutureAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ar$b;,
        Lcom/shabakaty/downloader/ar$a;,
        Lcom/shabakaty/downloader/ar$d;,
        Lcom/shabakaty/downloader/ar$c;
    }
.end annotation


# direct methods
.method public static a(Lcom/shabakaty/downloader/ar$c;)Lcom/shabakaty/downloader/pi2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/ar$c<",
            "TT;>;)",
            "Lcom/shabakaty/downloader/pi2<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ar$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ar$a;-><init>()V

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/ar$d;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/ar$d;-><init>(Lcom/shabakaty/downloader/ar$a;)V

    .line 3
    iput-object v1, v0, Lcom/shabakaty/downloader/ar$a;->b:Lcom/shabakaty/downloader/ar$d;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v0, Lcom/shabakaty/downloader/ar$a;->a:Ljava/lang/Object;

    .line 5
    :try_start_0
    invoke-interface {p0, v0}, Lcom/shabakaty/downloader/ar$c;->f(Lcom/shabakaty/downloader/ar$a;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6
    iput-object p0, v0, Lcom/shabakaty/downloader/ar$a;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    iget-object v0, v1, Lcom/shabakaty/downloader/ar$d;->s:Lcom/shabakaty/downloader/w0;

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/w0;->j(Ljava/lang/Throwable;)Z

    :cond_0
    :goto_0
    return-object v1
.end method
