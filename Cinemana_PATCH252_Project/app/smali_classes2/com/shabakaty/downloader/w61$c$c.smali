.class public final Lcom/shabakaty/downloader/w61$c$c;
.super Ljava/lang/Object;
.source "ExecutorScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/w61$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/v04;

.field public final s:Ljava/lang/Runnable;

.field public final synthetic t:Lcom/shabakaty/downloader/w61$c;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/w61$c;Lcom/shabakaty/downloader/v04;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/w61$c$c;->t:Lcom/shabakaty/downloader/w61$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/w61$c$c;->r:Lcom/shabakaty/downloader/v04;

    .line 3
    iput-object p3, p0, Lcom/shabakaty/downloader/w61$c$c;->s:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w61$c$c;->r:Lcom/shabakaty/downloader/v04;

    iget-object v1, p0, Lcom/shabakaty/downloader/w61$c$c;->t:Lcom/shabakaty/downloader/w61$c;

    iget-object v2, p0, Lcom/shabakaty/downloader/w61$c$c;->s:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/w61$c;->b(Ljava/lang/Runnable;)Lcom/shabakaty/downloader/mu0;

    move-result-object v1

    .line 2
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/pu0;->u(Ljava/util/concurrent/atomic/AtomicReference;Lcom/shabakaty/downloader/mu0;)Z

    return-void
.end method
