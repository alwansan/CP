.class public final Lcom/shabakaty/downloader/qa2;
.super Lcom/shabakaty/downloader/af2;
.source "Jsr305Settings.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ra2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ra2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/qa2;->r:Lcom/shabakaty/downloader/ra2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qa2;->r:Lcom/shabakaty/downloader/ra2;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/fi2;

    const/16 v2, 0xa

    .line 3
    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/fi2;-><init>(I)V

    .line 4
    iget-object v2, v0, Lcom/shabakaty/downloader/ra2;->a:Lcom/shabakaty/downloader/tr3;

    .line 5
    iget-object v2, v2, Lcom/shabakaty/downloader/tr3;->r:Ljava/lang/String;

    .line 6
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/fi2;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v2, v0, Lcom/shabakaty/downloader/ra2;->b:Lcom/shabakaty/downloader/tr3;

    if-nez v2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, v2, Lcom/shabakaty/downloader/tr3;->r:Ljava/lang/String;

    const-string v3, "under-migration:"

    .line 9
    invoke-static {v3, v2}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/fi2;->add(Ljava/lang/Object;)Z

    .line 10
    :goto_0
    iget-object v0, v0, Lcom/shabakaty/downloader/ra2;->c:Ljava/util/Map;

    .line 11
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const/16 v3, 0x40

    .line 12
    invoke-static {v3}, Lcom/shabakaty/downloader/i61;->a(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/tr3;

    .line 13
    iget-object v2, v2, Lcom/shabakaty/downloader/tr3;->r:Ljava/lang/String;

    .line 14
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/fi2;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_1
    invoke-static {v1}, Lcom/shabakaty/downloader/iq6;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 16
    check-cast v0, Lcom/shabakaty/downloader/fi2;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/fi2;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
