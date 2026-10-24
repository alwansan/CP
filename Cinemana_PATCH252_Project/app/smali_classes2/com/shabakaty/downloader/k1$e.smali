.class public final Lcom/shabakaty/downloader/k1$e;
.super Lcom/shabakaty/downloader/af2;
.source "AbstractTypeConstructor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/k1;-><init>(Lcom/shabakaty/downloader/md4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/k1$b;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/k1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/k1;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/k1$e;->r:Lcom/shabakaty/downloader/k1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/k1$b;

    const-string v0, "supertypes"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/k1$e;->r:Lcom/shabakaty/downloader/k1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/k1;->m()Lcom/shabakaty/downloader/ph4;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/k1$e;->r:Lcom/shabakaty/downloader/k1;

    .line 5
    iget-object v2, p1, Lcom/shabakaty/downloader/k1$b;->a:Ljava/util/Collection;

    .line 6
    new-instance v3, Lcom/shabakaty/downloader/l1;

    invoke-direct {v3, v1}, Lcom/shabakaty/downloader/l1;-><init>(Lcom/shabakaty/downloader/k1;)V

    new-instance v4, Lcom/shabakaty/downloader/m1;

    iget-object v5, p0, Lcom/shabakaty/downloader/k1$e;->r:Lcom/shabakaty/downloader/k1;

    invoke-direct {v4, v5}, Lcom/shabakaty/downloader/m1;-><init>(Lcom/shabakaty/downloader/k1;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/ph4;->a(Lcom/shabakaty/downloader/ts4;Ljava/util/Collection;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;)Ljava/util/Collection;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/k1$e;->r:Lcom/shabakaty/downloader/k1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/k1;->k()Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v0}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/k1$e;->r:Lcom/shabakaty/downloader/k1;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/k1$e;->r:Lcom/shabakaty/downloader/k1;

    instance-of v3, v0, Ljava/util/List;

    if-eqz v3, :cond_2

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    :cond_2
    if-nez v2, :cond_3

    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    :cond_3
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/k1;->o(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v1, "<set-?>"

    .line 11
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object v0, p1, Lcom/shabakaty/downloader/k1$b;->b:Ljava/util/List;

    .line 13
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
