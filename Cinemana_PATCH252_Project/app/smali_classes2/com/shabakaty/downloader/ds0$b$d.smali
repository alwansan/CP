.class public final Lcom/shabakaty/downloader/ds0$b$d;
.super Lcom/shabakaty/downloader/af2;
.source "DeserializedMemberScope.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ds0$b;-><init>(Lcom/shabakaty/downloader/ds0;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
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
        "Lcom/shabakaty/downloader/t64;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ds0$b;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ds0$b;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/ds0$b$d;->r:Lcom/shabakaty/downloader/ds0$b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ds0$b$d;->r:Lcom/shabakaty/downloader/ds0$b;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/ds0$b;->a:Ljava/util/List;

    iget-object v0, v0, Lcom/shabakaty/downloader/ds0$b;->n:Lcom/shabakaty/downloader/ds0;

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Lcom/shabakaty/downloader/es2;

    .line 6
    iget-object v4, v0, Lcom/shabakaty/downloader/ds0;->b:Lcom/shabakaty/downloader/rr0;

    .line 7
    iget-object v4, v4, Lcom/shabakaty/downloader/rr0;->i:Lcom/shabakaty/downloader/jr2;

    .line 8
    check-cast v3, Lcom/shabakaty/downloader/qi3;

    .line 9
    invoke-virtual {v4, v3}, Lcom/shabakaty/downloader/jr2;->f(Lcom/shabakaty/downloader/qi3;)Lcom/shabakaty/downloader/t64;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/ds0;->r(Lcom/shabakaty/downloader/t64;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v2
.end method
