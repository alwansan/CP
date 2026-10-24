.class public final Lcom/shabakaty/downloader/uf1$d;
.super Lcom/shabakaty/downloader/of4;
.source "FlowableConcatMap.java"

# interfaces
.implements Lcom/shabakaty/downloader/wg1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/uf1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/of4;",
        "Lcom/shabakaty/downloader/wg1<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public A:J

.field public final z:Lcom/shabakaty/downloader/uf1$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/uf1$e<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/uf1$e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/uf1$e<",
            "TR;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/of4;-><init>(Z)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/uf1$d;->z:Lcom/shabakaty/downloader/uf1$e;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/uf1$d;->A:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iput-wide v2, p0, Lcom/shabakaty/downloader/uf1$d;->A:J

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/of4;->h(J)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/uf1$d;->z:Lcom/shabakaty/downloader/uf1$e;

    check-cast v0, Lcom/shabakaty/downloader/uf1$a;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v0, Lcom/shabakaty/downloader/uf1$a;->B:Z

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uf1$a;->h()V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/uf1$d;->A:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iput-wide v2, p0, Lcom/shabakaty/downloader/uf1$d;->A:J

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/of4;->h(J)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/uf1$d;->z:Lcom/shabakaty/downloader/uf1$e;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/uf1$e;->f(Ljava/lang/Throwable;)V

    return-void
.end method

.method public d(Lcom/shabakaty/downloader/lf4;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/of4;->i(Lcom/shabakaty/downloader/lf4;)V

    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/uf1$d;->A:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/uf1$d;->A:J

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/uf1$d;->z:Lcom/shabakaty/downloader/uf1$e;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/uf1$e;->c(Ljava/lang/Object;)V

    return-void
.end method
