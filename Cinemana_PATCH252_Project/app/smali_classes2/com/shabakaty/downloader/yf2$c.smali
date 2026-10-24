.class public final Lcom/shabakaty/downloader/yf2$c;
.super Lcom/shabakaty/downloader/af2;
.source "LazyJavaPackageFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/yf2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/s72;)V
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
        "Lcom/shabakaty/downloader/fi1;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/yf2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/yf2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/yf2$c;->r:Lcom/shabakaty/downloader/yf2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yf2$c;->r:Lcom/shabakaty/downloader/yf2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/yf2;->x:Lcom/shabakaty/downloader/s72;

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/s72;->D()Ljava/util/Collection;

    move-result-object v0

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
    check-cast v2, Lcom/shabakaty/downloader/s72;

    .line 7
    invoke-interface {v2}, Lcom/shabakaty/downloader/s72;->e()Lcom/shabakaty/downloader/fi1;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method
