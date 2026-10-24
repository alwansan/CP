.class public final Lcom/shabakaty/downloader/ds0$b$i;
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
        "Ljava/util/Map<",
        "Lcom/shabakaty/downloader/hw2;",
        "+",
        "Lcom/shabakaty/downloader/hs4;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ds0$b;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ds0$b;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/ds0$b$i;->r:Lcom/shabakaty/downloader/ds0$b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ds0$b$i;->r:Lcom/shabakaty/downloader/ds0$b;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/ds0$b;->f:Lcom/shabakaty/downloader/d03;

    sget-object v1, Lcom/shabakaty/downloader/ds0$b;->o:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/z02;->i(Lcom/shabakaty/downloader/d03;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/16 v1, 0xa

    .line 3
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lcom/shabakaty/downloader/kf5;->i(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    const/16 v1, 0x10

    .line 4
    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6
    move-object v3, v1

    check-cast v3, Lcom/shabakaty/downloader/hs4;

    .line 7
    invoke-interface {v3}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v3

    const-string v4, "it.name"

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v2
.end method
