.class public final Lcom/shabakaty/downloader/k1$a$a;
.super Lcom/shabakaty/downloader/af2;
.source "AbstractTypeConstructor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/k1$a;-><init>(Lcom/shabakaty/downloader/k1;Lcom/shabakaty/downloader/ve2;)V
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
        "Lcom/shabakaty/downloader/qe2;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/k1$a;

.field public final synthetic s:Lcom/shabakaty/downloader/k1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/k1$a;Lcom/shabakaty/downloader/k1;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/k1$a$a;->r:Lcom/shabakaty/downloader/k1$a;

    iput-object p2, p0, Lcom/shabakaty/downloader/k1$a$a;->s:Lcom/shabakaty/downloader/k1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k1$a$a;->r:Lcom/shabakaty/downloader/k1$a;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/k1$a;->a:Lcom/shabakaty/downloader/ve2;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/k1$a$a;->s:Lcom/shabakaty/downloader/k1;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/k1;->n()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/we2;->a:Lcom/shabakaty/downloader/j61;

    const-string v2, "<this>"

    .line 4
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "types"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Lcom/shabakaty/downloader/qe2;

    .line 8
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/ve2;->h(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/qe2;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method
