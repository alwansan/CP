.class public Lcom/shabakaty/downloader/aj2;
.super Ljava/lang/Object;
.source "LiveDataObservable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/dj2$a;

.field public final synthetic s:Lcom/shabakaty/downloader/dj2$a;

.field public final synthetic t:Lcom/shabakaty/downloader/dj2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/dj2;Lcom/shabakaty/downloader/dj2$a;Lcom/shabakaty/downloader/dj2$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/aj2;->t:Lcom/shabakaty/downloader/dj2;

    iput-object p2, p0, Lcom/shabakaty/downloader/aj2;->r:Lcom/shabakaty/downloader/dj2$a;

    iput-object p3, p0, Lcom/shabakaty/downloader/aj2;->s:Lcom/shabakaty/downloader/dj2$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/aj2;->t:Lcom/shabakaty/downloader/dj2;

    iget-object v0, v0, Lcom/shabakaty/downloader/dj2;->a:Lcom/shabakaty/downloader/xv2;

    iget-object v1, p0, Lcom/shabakaty/downloader/aj2;->r:Lcom/shabakaty/downloader/dj2$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Lcom/shabakaty/downloader/r53;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/aj2;->t:Lcom/shabakaty/downloader/dj2;

    iget-object v0, v0, Lcom/shabakaty/downloader/dj2;->a:Lcom/shabakaty/downloader/xv2;

    iget-object v1, p0, Lcom/shabakaty/downloader/aj2;->s:Lcom/shabakaty/downloader/dj2$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Lcom/shabakaty/downloader/r53;)V

    return-void
.end method
