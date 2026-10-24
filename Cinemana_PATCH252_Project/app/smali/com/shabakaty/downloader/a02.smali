.class public Lcom/shabakaty/downloader/a02;
.super Lcom/shabakaty/downloader/uv4;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/uv4<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public r:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Lcom/google/common/collect/n<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public s:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/uv4;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/common/collect/s;->u:Lcom/google/common/collect/r;

    invoke-virtual {p1}, Lcom/google/common/collect/r;->g()Lcom/google/common/collect/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/n;->p()Lcom/shabakaty/downloader/uv4;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/a02;->r:Ljava/util/Iterator;

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/a62;->v:Lcom/shabakaty/downloader/c0;

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/a02;->s:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/a02;->s:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/a02;->r:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/a02;->s:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/a02;->r:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/n;

    invoke-virtual {v0}, Lcom/google/common/collect/n;->p()Lcom/shabakaty/downloader/uv4;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/a02;->s:Ljava/util/Iterator;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/a02;->s:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
