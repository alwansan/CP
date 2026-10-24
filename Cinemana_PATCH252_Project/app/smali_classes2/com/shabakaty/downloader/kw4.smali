.class public final Lcom/shabakaty/downloader/kw4;
.super Ljava/lang/Object;
.source "UnsignedType.kt"


# static fields
.field public static final a:Lcom/shabakaty/downloader/kw4;

.field public static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/shabakaty/downloader/v20;",
            "Lcom/shabakaty/downloader/v20;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/shabakaty/downloader/v20;",
            "Lcom/shabakaty/downloader/v20;",
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
    .locals 7

    new-instance v0, Lcom/shabakaty/downloader/kw4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/kw4;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/kw4;->a:Lcom/shabakaty/downloader/kw4;

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/jw4;->values()[Lcom/shabakaty/downloader/jw4;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    .line 4
    iget-object v5, v5, Lcom/shabakaty/downloader/jw4;->s:Lcom/shabakaty/downloader/hw2;

    .line 5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/shabakaty/downloader/m50;->B0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/kw4;->b:Ljava/util/Set;

    .line 6
    invoke-static {}, Lcom/shabakaty/downloader/iw4;->values()[Lcom/shabakaty/downloader/iw4;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    array-length v2, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    .line 9
    iget-object v5, v5, Lcom/shabakaty/downloader/iw4;->r:Lcom/shabakaty/downloader/hw2;

    .line 10
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/shabakaty/downloader/m50;->B0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/kw4;->c:Ljava/util/HashMap;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/kw4;->d:Ljava/util/HashMap;

    const/4 v0, 0x4

    new-array v1, v0, [Lcom/shabakaty/downloader/x93;

    .line 13
    sget-object v2, Lcom/shabakaty/downloader/iw4;->s:Lcom/shabakaty/downloader/iw4;

    const-string v4, "ubyteArrayOf"

    invoke-static {v4}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v4

    .line 14
    new-instance v5, Lcom/shabakaty/downloader/x93;

    invoke-direct {v5, v2, v4}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v1, v3

    .line 15
    sget-object v2, Lcom/shabakaty/downloader/iw4;->t:Lcom/shabakaty/downloader/iw4;

    const-string v4, "ushortArrayOf"

    invoke-static {v4}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v4

    .line 16
    new-instance v5, Lcom/shabakaty/downloader/x93;

    invoke-direct {v5, v2, v4}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v5, v1, v2

    const/4 v2, 0x2

    .line 17
    sget-object v4, Lcom/shabakaty/downloader/iw4;->u:Lcom/shabakaty/downloader/iw4;

    const-string v5, "uintArrayOf"

    invoke-static {v5}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v5

    .line 18
    new-instance v6, Lcom/shabakaty/downloader/x93;

    invoke-direct {v6, v4, v5}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v1, v2

    const/4 v2, 0x3

    .line 19
    sget-object v4, Lcom/shabakaty/downloader/iw4;->v:Lcom/shabakaty/downloader/iw4;

    const-string v5, "ulongArrayOf"

    invoke-static {v5}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v5

    .line 20
    new-instance v6, Lcom/shabakaty/downloader/x93;

    invoke-direct {v6, v4, v5}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v1, v2

    .line 21
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v0}, Lcom/shabakaty/downloader/kf5;->i(I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/vm2;->t(Ljava/util/Map;[Lcom/shabakaty/downloader/x93;)V

    .line 22
    invoke-static {}, Lcom/shabakaty/downloader/jw4;->values()[Lcom/shabakaty/downloader/jw4;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 23
    array-length v2, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    .line 24
    iget-object v5, v5, Lcom/shabakaty/downloader/jw4;->t:Lcom/shabakaty/downloader/v20;

    .line 25
    invoke-virtual {v5}, Lcom/shabakaty/downloader/v20;->j()Lcom/shabakaty/downloader/hw2;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    sput-object v1, Lcom/shabakaty/downloader/kw4;->e:Ljava/util/Set;

    .line 26
    invoke-static {}, Lcom/shabakaty/downloader/jw4;->values()[Lcom/shabakaty/downloader/jw4;

    move-result-object v0

    array-length v1, v0

    :goto_3
    if-ge v3, v1, :cond_3

    aget-object v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    .line 27
    sget-object v4, Lcom/shabakaty/downloader/kw4;->c:Ljava/util/HashMap;

    .line 28
    iget-object v5, v2, Lcom/shabakaty/downloader/jw4;->t:Lcom/shabakaty/downloader/v20;

    .line 29
    iget-object v6, v2, Lcom/shabakaty/downloader/jw4;->r:Lcom/shabakaty/downloader/v20;

    .line 30
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v4, Lcom/shabakaty/downloader/kw4;->d:Ljava/util/HashMap;

    .line 32
    iget-object v5, v2, Lcom/shabakaty/downloader/jw4;->r:Lcom/shabakaty/downloader/v20;

    .line 33
    iget-object v2, v2, Lcom/shabakaty/downloader/jw4;->t:Lcom/shabakaty/downloader/v20;

    .line 34
    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcom/shabakaty/downloader/qe2;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/eu4;->q(Lcom/shabakaty/downloader/qe2;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object p0

    invoke-interface {p0}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-interface {p0}, Lcom/shabakaty/downloader/qm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v0

    .line 4
    instance-of v2, v0, Lcom/shabakaty/downloader/k93;

    if-eqz v2, :cond_2

    .line 5
    check-cast v0, Lcom/shabakaty/downloader/k93;

    invoke-interface {v0}, Lcom/shabakaty/downloader/k93;->e()Lcom/shabakaty/downloader/fi1;

    move-result-object v0

    sget-object v2, Lcom/shabakaty/downloader/tb4;->i:Lcom/shabakaty/downloader/fi1;

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object v0, Lcom/shabakaty/downloader/kw4;->b:Ljava/util/Set;

    invoke-interface {p0}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
