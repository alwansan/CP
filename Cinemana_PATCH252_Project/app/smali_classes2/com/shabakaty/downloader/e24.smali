.class public final Lcom/shabakaty/downloader/e24;
.super Lcom/shabakaty/downloader/m0;
.source "SetBuilder.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/m0<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;",
        "Ljava/io/Serializable;",
        "Lcom/shabakaty/downloader/ad2;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/dm2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/dm2<",
            "TE;*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/dm2;

    const/16 v1, 0x8

    .line 2
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/dm2;-><init>(I)V

    .line 3
    invoke-direct {p0}, Lcom/shabakaty/downloader/m0;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/e24;->r:Lcom/shabakaty/downloader/dm2;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/dm2;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/dm2;-><init>(I)V

    .line 6
    invoke-direct {p0}, Lcom/shabakaty/downloader/m0;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/shabakaty/downloader/e24;->r:Lcom/shabakaty/downloader/dm2;

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/e24;->r:Lcom/shabakaty/downloader/dm2;

    .line 2
    iget-boolean v0, v0, Lcom/shabakaty/downloader/dm2;->C:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/a14;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/a14;-><init>(Ljava/util/Collection;I)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "The set cannot be serialized while it is being built."

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/e24;->r:Lcom/shabakaty/downloader/dm2;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/dm2;->a(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/e24;->r:Lcom/shabakaty/downloader/dm2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/dm2;->c()V

    .line 2
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/e24;->r:Lcom/shabakaty/downloader/dm2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/dm2;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/e24;->r:Lcom/shabakaty/downloader/dm2;

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/dm2;->g(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/e24;->r:Lcom/shabakaty/downloader/dm2;

    .line 2
    iget v0, v0, Lcom/shabakaty/downloader/dm2;->y:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/e24;->r:Lcom/shabakaty/downloader/dm2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/dm2;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/e24;->r:Lcom/shabakaty/downloader/dm2;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/dm2$d;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/dm2$d;-><init>(Lcom/shabakaty/downloader/dm2;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/e24;->r:Lcom/shabakaty/downloader/dm2;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/dm2;->l(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/e24;->r:Lcom/shabakaty/downloader/dm2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/dm2;->c()V

    .line 2
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/e24;->r:Lcom/shabakaty/downloader/dm2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/dm2;->c()V

    .line 2
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method
