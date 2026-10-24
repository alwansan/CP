.class public final Lcom/shabakaty/downloader/ac2$d;
.super Lcom/shabakaty/downloader/af2;
.source "KCallableImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ac2;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/util/List<",
        "+",
        "Lcom/shabakaty/downloader/qd2;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ac2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ac2<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ac2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ac2<",
            "+TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/ac2$d;->r:Lcom/shabakaty/downloader/ac2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ac2$d;->r:Lcom/shabakaty/downloader/ac2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ac2;->e()Lcom/shabakaty/downloader/tq;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/rq;->t()Ljava/util/List;

    move-result-object v0

    const-string v1, "descriptor.typeParameters"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/shabakaty/downloader/ac2$d;->r:Lcom/shabakaty/downloader/ac2;

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Lcom/shabakaty/downloader/kt4;

    .line 5
    new-instance v4, Lcom/shabakaty/downloader/qd2;

    const-string v5, "descriptor"

    invoke-static {v3, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v1, v3}, Lcom/shabakaty/downloader/qd2;-><init>(Lcom/shabakaty/downloader/rd2;Lcom/shabakaty/downloader/kt4;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method
