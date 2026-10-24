.class public final Lcom/shabakaty/downloader/qd2$a;
.super Lcom/shabakaty/downloader/af2;
.source "KTypeParameterImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/qd2;-><init>(Lcom/shabakaty/downloader/rd2;Lcom/shabakaty/downloader/kt4;)V
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
        "Lcom/shabakaty/downloader/od2;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/qd2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qd2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/qd2$a;->r:Lcom/shabakaty/downloader/qd2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qd2$a;->r:Lcom/shabakaty/downloader/qd2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/qd2;->r:Lcom/shabakaty/downloader/kt4;

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/kt4;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    const-string v1, "descriptor.upperBounds"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Lcom/shabakaty/downloader/qe2;

    .line 7
    new-instance v3, Lcom/shabakaty/downloader/od2;

    const/4 v4, 0x0

    .line 8
    invoke-direct {v3, v2, v4}, Lcom/shabakaty/downloader/od2;-><init>(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/rm1;)V

    .line 9
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method
