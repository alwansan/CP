.class public Lcom/shabakaty/downloader/r71;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Lcom/shabakaty/downloader/lr3$a;


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/s71;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/s71;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/r71;->a:Lcom/shabakaty/downloader/s71;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/r71;->a:Lcom/shabakaty/downloader/s71;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/s71;->x:Lcom/shabakaty/downloader/fs1;

    const/4 v1, 0x2

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/yj4;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/yj4;->e(I)Z

    return-void
.end method

.method public b(J)V
    .locals 3

    const-wide/16 v0, 0x7d0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/r71;->a:Lcom/shabakaty/downloader/s71;

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p1, Lcom/shabakaty/downloader/s71;->W:Z

    :cond_0
    return-void
.end method
