.class public final Lcom/shabakaty/downloader/w61$a;
.super Ljava/lang/Object;
.source "ExecutorScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/w61;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/w61$b;

.field public final synthetic s:Lcom/shabakaty/downloader/w61;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/w61;Lcom/shabakaty/downloader/w61$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/w61$a;->s:Lcom/shabakaty/downloader/w61;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/w61$a;->r:Lcom/shabakaty/downloader/w61$b;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w61$a;->r:Lcom/shabakaty/downloader/w61$b;

    iget-object v1, v0, Lcom/shabakaty/downloader/w61$b;->s:Lcom/shabakaty/downloader/v04;

    iget-object v2, p0, Lcom/shabakaty/downloader/w61$a;->s:Lcom/shabakaty/downloader/w61;

    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/w61;->b(Ljava/lang/Runnable;)Lcom/shabakaty/downloader/mu0;

    move-result-object v0

    .line 2
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/pu0;->u(Ljava/util/concurrent/atomic/AtomicReference;Lcom/shabakaty/downloader/mu0;)Z

    return-void
.end method
