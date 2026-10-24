.class public final Lcom/shabakaty/downloader/g50;
.super Ljava/lang/Object;
.source "CollectionTypeAdapterFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/xr4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/g50$a;
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/nc0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nc0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/g50;->r:Lcom/shabakaty/downloader/nc0;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/lr1;Lcom/shabakaty/downloader/cu4;)Lcom/shabakaty/downloader/wr4;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/lr1;",
            "Lcom/shabakaty/downloader/cu4<",
            "TT;>;)",
            "Lcom/shabakaty/downloader/wr4<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/shabakaty/downloader/cu4;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lcom/shabakaty/downloader/cu4;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 3
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    const-class v2, Ljava/util/Collection;

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/a;->g(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 5
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    .line 7
    :cond_1
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_2

    .line 8
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    goto :goto_0

    .line 9
    :cond_2
    const-class v0, Ljava/lang/Object;

    .line 10
    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/cu4;->get(Ljava/lang/reflect/Type;)Lcom/shabakaty/downloader/cu4;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/lr1;->f(Lcom/shabakaty/downloader/cu4;)Lcom/shabakaty/downloader/wr4;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/shabakaty/downloader/g50;->r:Lcom/shabakaty/downloader/nc0;

    invoke-virtual {v2, p2}, Lcom/shabakaty/downloader/nc0;->a(Lcom/shabakaty/downloader/cu4;)Lcom/shabakaty/downloader/k43;

    move-result-object p2

    .line 12
    new-instance v2, Lcom/shabakaty/downloader/g50$a;

    invoke-direct {v2, p1, v0, v1, p2}, Lcom/shabakaty/downloader/g50$a;-><init>(Lcom/shabakaty/downloader/lr1;Ljava/lang/reflect/Type;Lcom/shabakaty/downloader/wr4;Lcom/shabakaty/downloader/k43;)V

    return-object v2
.end method
