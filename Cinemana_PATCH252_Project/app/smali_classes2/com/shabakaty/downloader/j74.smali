.class public final Lcom/shabakaty/downloader/j74;
.super Lcom/shabakaty/downloader/f74;
.source "SingleCreate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/j74$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/f74<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/a84;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/a84<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/a84;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/a84<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/f74;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/j74;->a:Lcom/shabakaty/downloader/a84;

    return-void
.end method


# virtual methods
.method public l(Lcom/shabakaty/downloader/y74;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/y74<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/j74$a;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/j74$a;-><init>(Lcom/shabakaty/downloader/y74;)V

    .line 2
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/y74;->c(Lcom/shabakaty/downloader/mu0;)V

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/shabakaty/downloader/j74;->a:Lcom/shabakaty/downloader/a84;

    check-cast p1, Lcom/shabakaty/downloader/aw3;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/aw3;->a(Lcom/shabakaty/downloader/q74;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/j74$a;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-static {p1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
