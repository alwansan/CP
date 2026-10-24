.class public final Lcom/shabakaty/downloader/em2;
.super Lcom/shabakaty/downloader/m0;
.source "MapBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final synthetic r:I

.field public final s:Lcom/shabakaty/downloader/dm2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/dm2<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/dm2;I)V
    .locals 1

    iput p2, p0, Lcom/shabakaty/downloader/em2;->r:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/m0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/em2;->s:Lcom/shabakaty/downloader/dm2;

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/shabakaty/downloader/m0;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/em2;->s:Lcom/shabakaty/downloader/dm2;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/em2;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    check-cast p1, Ljava/util/Map$Entry;

    const-string v0, "element"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 4
    :goto_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/em2;->r:I

    const-string v1, "elements"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 3
    :goto_0
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public clear()V
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/em2;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/em2;->s:Lcom/shabakaty/downloader/dm2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/dm2;->clear()V

    return-void

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/em2;->s:Lcom/shabakaty/downloader/dm2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/dm2;->clear()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/em2;->r:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    const-string v0, "element"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/em2;->s:Lcom/shabakaty/downloader/dm2;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/dm2;->e(Ljava/util/Map$Entry;)Z

    move-result v1

    :goto_0
    return v1

    .line 4
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/em2;->s:Lcom/shabakaty/downloader/dm2;

    .line 5
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/dm2;->g(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/em2;->r:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :pswitch_0
    const-string v0, "elements"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/em2;->s:Lcom/shabakaty/downloader/dm2;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/dm2;->d(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/em2;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/em2;->s:Lcom/shabakaty/downloader/dm2;

    .line 2
    iget v0, v0, Lcom/shabakaty/downloader/dm2;->y:I

    return v0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/em2;->s:Lcom/shabakaty/downloader/dm2;

    .line 4
    iget v0, v0, Lcom/shabakaty/downloader/dm2;->y:I

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/em2;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/em2;->s:Lcom/shabakaty/downloader/dm2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/dm2;->isEmpty()Z

    move-result v0

    return v0

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/em2;->s:Lcom/shabakaty/downloader/dm2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/dm2;->isEmpty()Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/em2;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/em2;->s:Lcom/shabakaty/downloader/dm2;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/dm2$a;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/dm2$a;-><init>(Lcom/shabakaty/downloader/dm2;)V

    return-object v1

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/em2;->s:Lcom/shabakaty/downloader/dm2;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/dm2$d;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/dm2$d;-><init>(Lcom/shabakaty/downloader/dm2;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5

    iget v0, p0, Lcom/shabakaty/downloader/em2;->r:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    const-string v0, "element"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/em2;->s:Lcom/shabakaty/downloader/dm2;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/dm2;->c()V

    .line 5
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/dm2;->g(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v4, v0, Lcom/shabakaty/downloader/dm2;->s:[Ljava/lang/Object;

    invoke-static {v4}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    aget-object v4, v4, v3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/dm2;->m(I)V

    const/4 v1, 0x1

    :goto_0
    return v1

    .line 8
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/em2;->s:Lcom/shabakaty/downloader/dm2;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/dm2;->l(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/em2;->r:I

    const-string v1, "elements"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/em2;->s:Lcom/shabakaty/downloader/dm2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/dm2;->c()V

    .line 3
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 4
    :goto_0
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/em2;->s:Lcom/shabakaty/downloader/dm2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/dm2;->c()V

    .line 6
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/em2;->r:I

    const-string v1, "elements"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/em2;->s:Lcom/shabakaty/downloader/dm2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/dm2;->c()V

    .line 3
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 4
    :goto_0
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/em2;->s:Lcom/shabakaty/downloader/dm2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/dm2;->c()V

    .line 6
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
