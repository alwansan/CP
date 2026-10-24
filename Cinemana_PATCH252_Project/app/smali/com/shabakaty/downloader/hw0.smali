.class public final Lcom/shabakaty/downloader/hw0;
.super Ljava/lang/Object;
.source "Transformations.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rn1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/rn1<",
        "Ljava/util/List<",
        "+",
        "Lcom/shabakaty/downloader/d50;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Lcom/shabakaty/downloader/gz0;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/d50;",
            ">;)",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/gz0;",
            ">;"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Lcom/shabakaty/downloader/d50;

    .line 5
    iget-object v2, v1, Lcom/shabakaty/downloader/d50;->a:Lcom/shabakaty/downloader/gz0;

    .line 6
    iget-object v3, v1, Lcom/shabakaty/downloader/d50;->b:Ljava/util/List;

    .line 7
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "<set-?>"

    .line 8
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object v3, v2, Lcom/shabakaty/downloader/gz0;->u:Ljava/util/List;

    .line 10
    iget-object v1, v1, Lcom/shabakaty/downloader/d50;->a:Lcom/shabakaty/downloader/gz0;

    .line 11
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_1
    if-nez p1, :cond_2

    .line 12
    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    :cond_2
    return-object p1
.end method
