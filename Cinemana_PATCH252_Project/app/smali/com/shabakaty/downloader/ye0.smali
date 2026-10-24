.class public final Lcom/shabakaty/downloader/ye0;
.super Lcom/shabakaty/downloader/af2;
.source "CoroutinesRoom.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Ljava/lang/Throwable;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/e92;

.field public final synthetic s:Lcom/shabakaty/downloader/yd0;

.field public final synthetic t:Ljava/util/concurrent/Callable;

.field public final synthetic u:Landroid/os/CancellationSignal;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/e92;Lcom/shabakaty/downloader/yd0;Ljava/util/concurrent/Callable;Landroid/os/CancellationSignal;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/ye0;->r:Lcom/shabakaty/downloader/e92;

    iput-object p2, p0, Lcom/shabakaty/downloader/ye0;->s:Lcom/shabakaty/downloader/yd0;

    iput-object p3, p0, Lcom/shabakaty/downloader/ye0;->t:Ljava/util/concurrent/Callable;

    iput-object p4, p0, Lcom/shabakaty/downloader/ye0;->u:Landroid/os/CancellationSignal;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/ye0;->u:Landroid/os/CancellationSignal;

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->cancel()V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/ye0;->r:Lcom/shabakaty/downloader/e92;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lcom/shabakaty/downloader/e92$a;->a(Lcom/shabakaty/downloader/e92;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 4
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
