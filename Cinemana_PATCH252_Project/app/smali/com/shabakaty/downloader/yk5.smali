.class public final Lcom/shabakaty/downloader/yk5;
.super Lcom/shabakaty/downloader/pw5;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"


# instance fields
.field public final transient t:Ljava/util/Map;

.field public final synthetic u:Lcom/shabakaty/downloader/co5;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/co5;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/yk5;->u:Lcom/shabakaty/downloader/co5;

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/pw5;-><init>()V

    iput-object p2, p0, Lcom/shabakaty/downloader/yk5;->t:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 6

    iget-object v0, p0, Lcom/shabakaty/downloader/yk5;->t:Ljava/util/Map;

    iget-object v1, p0, Lcom/shabakaty/downloader/yk5;->u:Lcom/shabakaty/downloader/co5;

    .line 1
    iget-object v2, v1, Lcom/shabakaty/downloader/co5;->t:Ljava/util/Map;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 2
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 3
    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/shabakaty/downloader/co5;->t:Ljava/util/Map;

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput v3, v1, Lcom/shabakaty/downloader/co5;->u:I

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/yk5;->t:Ljava/util/Map;

    .line 6
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 7
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/shabakaty/downloader/yk5;->u:Lcom/shabakaty/downloader/co5;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v5, v4, v1}, Lcom/shabakaty/downloader/co5;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    const-string v4, "no calls to next() since the last call to remove()"

    .line 9
    invoke-static {v1, v4}, Lcom/shabakaty/downloader/oj5;->b(ZLjava/lang/Object;)V

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v1, p0, Lcom/shabakaty/downloader/yk5;->u:Lcom/shabakaty/downloader/co5;

    .line 11
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-static {v1, v4}, Lcom/shabakaty/downloader/co5;->h(Lcom/shabakaty/downloader/co5;I)I

    .line 12
    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/yk5;->t:Ljava/util/Map;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/yk5;->t:Ljava/util/Map;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/yk5;->t:Ljava/util/Map;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    .line 3
    :goto_0
    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/yk5;->u:Lcom/shabakaty/downloader/co5;

    invoke-virtual {v1, p1, v0}, Lcom/shabakaty/downloader/co5;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/yk5;->t:Ljava/util/Map;

    .line 1
    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/yk5;->u:Lcom/shabakaty/downloader/co5;

    .line 1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/po5;->g()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/downloader/yk5;->t:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/yk5;->u:Lcom/shabakaty/downloader/co5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/co5;->c()Ljava/util/Collection;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/shabakaty/downloader/yk5;->u:Lcom/shabakaty/downloader/co5;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/co5;->h(Lcom/shabakaty/downloader/co5;I)I

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/yk5;->t:Ljava/util/Map;

    .line 1
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/yk5;->t:Ljava/util/Map;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
