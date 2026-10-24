.class public final Lcom/shabakaty/downloader/wf2$g;
.super Lcom/shabakaty/downloader/af2;
.source "LazyJavaClassMemberScope.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/wf2;->O(Lcom/shabakaty/downloader/t64;)Z
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
        "Ljava/util/Collection<",
        "+",
        "Lcom/shabakaty/downloader/t64;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/t64;

.field public final synthetic s:Lcom/shabakaty/downloader/wf2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/t64;Lcom/shabakaty/downloader/wf2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/wf2$g;->r:Lcom/shabakaty/downloader/t64;

    iput-object p2, p0, Lcom/shabakaty/downloader/wf2$g;->s:Lcom/shabakaty/downloader/wf2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/hw2;

    const-string v0, "accessorName"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/wf2$g;->r:Lcom/shabakaty/downloader/t64;

    invoke-interface {v0}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/wf2$g;->r:Lcom/shabakaty/downloader/t64;

    invoke-static {p1}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/wf2$g;->s:Lcom/shabakaty/downloader/wf2;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/wf2;->v(Lcom/shabakaty/downloader/wf2;Lcom/shabakaty/downloader/hw2;)Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/wf2$g;->s:Lcom/shabakaty/downloader/wf2;

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/wf2;->w(Lcom/shabakaty/downloader/wf2;Lcom/shabakaty/downloader/hw2;)Ljava/util/Collection;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/m50;->n0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method
