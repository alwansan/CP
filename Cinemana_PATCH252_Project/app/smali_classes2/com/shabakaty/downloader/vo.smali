.class public final Lcom/shabakaty/downloader/vo;
.super Ljava/lang/Object;
.source "BuiltinSpecialProperties.kt"


# static fields
.field public static final a:Lcom/shabakaty/downloader/vo;

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/fi1;",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/hw2;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/fi1;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/shabakaty/downloader/vo;

    invoke-direct {v0}, Lcom/shabakaty/downloader/vo;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/vo;->a:Lcom/shabakaty/downloader/vo;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/shabakaty/downloader/x93;

    .line 1
    sget-object v1, Lcom/shabakaty/downloader/tb4$a;->k:Lcom/shabakaty/downloader/gi1;

    const-string v2, "name"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/he0;->c(Lcom/shabakaty/downloader/gi1;Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v3

    invoke-static {v2}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v2

    .line 2
    new-instance v4, Lcom/shabakaty/downloader/x93;

    invoke-direct {v4, v3, v2}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v4, v0, v2

    const/4 v2, 0x1

    const-string v3, "ordinal"

    .line 3
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/he0;->c(Lcom/shabakaty/downloader/gi1;Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    invoke-static {v3}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v3

    .line 4
    new-instance v4, Lcom/shabakaty/downloader/x93;

    invoke-direct {v4, v1, v3}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v2

    const/4 v1, 0x2

    .line 5
    sget-object v2, Lcom/shabakaty/downloader/tb4$a;->B:Lcom/shabakaty/downloader/fi1;

    const-string v3, "size"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/he0;->b(Lcom/shabakaty/downloader/fi1;Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v2

    invoke-static {v3}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v4

    .line 6
    new-instance v5, Lcom/shabakaty/downloader/x93;

    invoke-direct {v5, v2, v4}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v1

    const/4 v1, 0x3

    .line 7
    sget-object v2, Lcom/shabakaty/downloader/tb4$a;->F:Lcom/shabakaty/downloader/fi1;

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/he0;->b(Lcom/shabakaty/downloader/fi1;Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v4

    invoke-static {v3}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v3

    .line 8
    new-instance v5, Lcom/shabakaty/downloader/x93;

    invoke-direct {v5, v4, v3}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v1

    const/4 v1, 0x4

    .line 9
    sget-object v3, Lcom/shabakaty/downloader/tb4$a;->f:Lcom/shabakaty/downloader/gi1;

    const-string v4, "length"

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/he0;->c(Lcom/shabakaty/downloader/gi1;Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v3

    invoke-static {v4}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v4

    .line 10
    new-instance v5, Lcom/shabakaty/downloader/x93;

    invoke-direct {v5, v3, v4}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v1

    const/4 v1, 0x5

    const-string v3, "keys"

    .line 11
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/he0;->b(Lcom/shabakaty/downloader/fi1;Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v3

    const-string v4, "keySet"

    invoke-static {v4}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v4

    .line 12
    new-instance v5, Lcom/shabakaty/downloader/x93;

    invoke-direct {v5, v3, v4}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v1

    const/4 v1, 0x6

    const-string v3, "values"

    .line 13
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/he0;->b(Lcom/shabakaty/downloader/fi1;Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v4

    invoke-static {v3}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v3

    .line 14
    new-instance v5, Lcom/shabakaty/downloader/x93;

    invoke-direct {v5, v4, v3}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v1

    const/4 v1, 0x7

    const-string v3, "entries"

    .line 15
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/he0;->b(Lcom/shabakaty/downloader/fi1;Ljava/lang/String;)Lcom/shabakaty/downloader/fi1;

    move-result-object v2

    const-string v3, "entrySet"

    invoke-static {v3}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v3

    .line 16
    new-instance v4, Lcom/shabakaty/downloader/x93;

    invoke-direct {v4, v2, v3}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    .line 17
    invoke-static {v0}, Lcom/shabakaty/downloader/vm2;->s([Lcom/shabakaty/downloader/x93;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/vo;->b:Ljava/util/Map;

    .line 18
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 21
    check-cast v3, Ljava/util/Map$Entry;

    .line 22
    new-instance v4, Lcom/shabakaty/downloader/x93;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/fi1;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/fi1;->g()Lcom/shabakaty/downloader/hw2;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 24
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 25
    check-cast v3, Lcom/shabakaty/downloader/x93;

    .line 26
    iget-object v4, v3, Lcom/shabakaty/downloader/x93;->s:Ljava/lang/Object;

    .line 27
    check-cast v4, Lcom/shabakaty/downloader/hw2;

    .line 28
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 29
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_1
    check-cast v5, Ljava/util/List;

    .line 32
    iget-object v3, v3, Lcom/shabakaty/downloader/x93;->r:Ljava/lang/Object;

    .line 33
    check-cast v3, Lcom/shabakaty/downloader/hw2;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 34
    :cond_2
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Lcom/shabakaty/downloader/kf5;->i(I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 35
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 36
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 37
    check-cast v3, Ljava/util/Map$Entry;

    .line 38
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 39
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lcom/shabakaty/downloader/m50;->U(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 40
    :cond_3
    sput-object v1, Lcom/shabakaty/downloader/vo;->c:Ljava/util/Map;

    .line 41
    sget-object v0, Lcom/shabakaty/downloader/vo;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/vo;->d:Ljava/util/Set;

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 44
    check-cast v2, Lcom/shabakaty/downloader/fi1;

    .line 45
    invoke-virtual {v2}, Lcom/shabakaty/downloader/fi1;->g()Lcom/shabakaty/downloader/hw2;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-static {v1}, Lcom/shabakaty/downloader/m50;->B0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/vo;->e:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
