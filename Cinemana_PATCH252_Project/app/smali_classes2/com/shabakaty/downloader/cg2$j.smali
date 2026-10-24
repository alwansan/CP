.class public final Lcom/shabakaty/downloader/cg2$j;
.super Lcom/shabakaty/downloader/af2;
.source "LazyJavaScope.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/cg2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/cg2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/hw2;",
        "Ljava/util/List<",
        "+",
        "Lcom/shabakaty/downloader/yh3;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/cg2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/cg2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/cg2$j;->r:Lcom/shabakaty/downloader/cg2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/hw2;

    const-string v0, "name"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/cg2$j;->r:Lcom/shabakaty/downloader/cg2;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/downloader/cg2;->g:Lcom/shabakaty/downloader/rr2;

    .line 6
    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/md0;->b(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/cg2$j;->r:Lcom/shabakaty/downloader/cg2;

    invoke-virtual {v1, p1, v0}, Lcom/shabakaty/downloader/cg2;->n(Lcom/shabakaty/downloader/hw2;Ljava/util/Collection;)V

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/cg2$j;->r:Lcom/shabakaty/downloader/cg2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/cg2;->q()Lcom/shabakaty/downloader/qm0;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/gr0;->m(Lcom/shabakaty/downloader/qm0;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/cg2$j;->r:Lcom/shabakaty/downloader/cg2;

    .line 11
    iget-object p1, p1, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 12
    iget-object v1, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 13
    iget-object v1, v1, Lcom/shabakaty/downloader/y72;->r:Lcom/shabakaty/downloader/d64;

    .line 14
    invoke-virtual {v1, p1, v0}, Lcom/shabakaty/downloader/d64;->a(Lcom/shabakaty/downloader/bg2;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/m50;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method
