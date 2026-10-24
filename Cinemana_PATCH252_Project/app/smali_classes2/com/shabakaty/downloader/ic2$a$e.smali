.class public final Lcom/shabakaty/downloader/ic2$a$e;
.super Lcom/shabakaty/downloader/af2;
.source "KClassImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ic2$a;-><init>(Lcom/shabakaty/downloader/ic2;)V
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
        "Lcom/shabakaty/downloader/sc2<",
        "+TT;>;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ic2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ic2<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ic2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ic2<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/ic2$a$e;->r:Lcom/shabakaty/downloader/ic2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ic2$a$e;->r:Lcom/shabakaty/downloader/ic2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ic2;->e()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/ic2$a$e;->r:Lcom/shabakaty/downloader/ic2;

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
    check-cast v3, Lcom/shabakaty/downloader/vc0;

    .line 5
    new-instance v4, Lcom/shabakaty/downloader/tc2;

    invoke-direct {v4, v1, v3}, Lcom/shabakaty/downloader/tc2;-><init>(Lcom/shabakaty/downloader/oc2;Lcom/shabakaty/downloader/xn1;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method
