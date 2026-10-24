.class public final Lcom/shabakaty/downloader/v43;
.super Lcom/shabakaty/downloader/t43;
.source "ObservableCreate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/v43$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/t43<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/f53;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/f53<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/f53;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/f53<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/t43;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/v43;->r:Lcom/shabakaty/downloader/f53;

    return-void
.end method


# virtual methods
.method public j(Lcom/shabakaty/downloader/q53;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q53<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/v43$a;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/v43$a;-><init>(Lcom/shabakaty/downloader/q53;)V

    .line 2
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/q53;->c(Lcom/shabakaty/downloader/mu0;)V

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/shabakaty/downloader/v43;->r:Lcom/shabakaty/downloader/f53;

    check-cast p1, Lcom/shabakaty/downloader/yv3;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/yv3;->a(Lcom/shabakaty/downloader/y43;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/v43$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
