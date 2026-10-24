.class public final Lcom/shabakaty/downloader/m62;
.super Ljava/lang/Object;
.source "JavaAnnotationMapper.kt"


# static fields
.field public static final a:Lcom/shabakaty/downloader/m62;

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Lcom/shabakaty/downloader/pe2;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/oe2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/shabakaty/downloader/m62;

    invoke-direct {v0}, Lcom/shabakaty/downloader/m62;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/m62;->a:Lcom/shabakaty/downloader/m62;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/shabakaty/downloader/x93;

    .line 1
    const-class v1, Lcom/shabakaty/downloader/pe2;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 2
    new-instance v2, Lcom/shabakaty/downloader/x93;

    const-string v3, "PACKAGE"

    invoke-direct {v2, v3, v1}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 3
    sget-object v2, Lcom/shabakaty/downloader/pe2;->G:Lcom/shabakaty/downloader/pe2;

    sget-object v3, Lcom/shabakaty/downloader/pe2;->T:Lcom/shabakaty/downloader/pe2;

    invoke-static {v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    .line 4
    new-instance v3, Lcom/shabakaty/downloader/x93;

    const-string v4, "TYPE"

    invoke-direct {v3, v4, v2}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v3, v0, v2

    .line 5
    sget-object v3, Lcom/shabakaty/downloader/pe2;->H:Lcom/shabakaty/downloader/pe2;

    invoke-static {v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    .line 6
    new-instance v4, Lcom/shabakaty/downloader/x93;

    const-string v5, "ANNOTATION_TYPE"

    invoke-direct {v4, v5, v3}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x2

    aput-object v4, v0, v3

    .line 7
    sget-object v4, Lcom/shabakaty/downloader/pe2;->I:Lcom/shabakaty/downloader/pe2;

    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    .line 8
    new-instance v5, Lcom/shabakaty/downloader/x93;

    const-string v6, "TYPE_PARAMETER"

    invoke-direct {v5, v6, v4}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x3

    aput-object v5, v0, v4

    const/4 v5, 0x4

    .line 9
    sget-object v6, Lcom/shabakaty/downloader/pe2;->K:Lcom/shabakaty/downloader/pe2;

    invoke-static {v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    .line 10
    new-instance v7, Lcom/shabakaty/downloader/x93;

    const-string v8, "FIELD"

    invoke-direct {v7, v8, v6}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v0, v5

    const/4 v5, 0x5

    .line 11
    sget-object v6, Lcom/shabakaty/downloader/pe2;->L:Lcom/shabakaty/downloader/pe2;

    invoke-static {v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    .line 12
    new-instance v7, Lcom/shabakaty/downloader/x93;

    const-string v8, "LOCAL_VARIABLE"

    invoke-direct {v7, v8, v6}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v0, v5

    const/4 v5, 0x6

    .line 13
    sget-object v6, Lcom/shabakaty/downloader/pe2;->M:Lcom/shabakaty/downloader/pe2;

    invoke-static {v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    .line 14
    new-instance v7, Lcom/shabakaty/downloader/x93;

    const-string v8, "PARAMETER"

    invoke-direct {v7, v8, v6}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v0, v5

    const/4 v5, 0x7

    .line 15
    sget-object v6, Lcom/shabakaty/downloader/pe2;->N:Lcom/shabakaty/downloader/pe2;

    invoke-static {v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    .line 16
    new-instance v7, Lcom/shabakaty/downloader/x93;

    const-string v8, "CONSTRUCTOR"

    invoke-direct {v7, v8, v6}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v0, v5

    const/16 v5, 0x8

    .line 17
    sget-object v6, Lcom/shabakaty/downloader/pe2;->O:Lcom/shabakaty/downloader/pe2;

    sget-object v7, Lcom/shabakaty/downloader/pe2;->P:Lcom/shabakaty/downloader/pe2;

    sget-object v8, Lcom/shabakaty/downloader/pe2;->Q:Lcom/shabakaty/downloader/pe2;

    invoke-static {v6, v7, v8}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    .line 18
    new-instance v7, Lcom/shabakaty/downloader/x93;

    const-string v8, "METHOD"

    invoke-direct {v7, v8, v6}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v0, v5

    const/16 v5, 0x9

    .line 19
    sget-object v6, Lcom/shabakaty/downloader/pe2;->R:Lcom/shabakaty/downloader/pe2;

    invoke-static {v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    .line 20
    new-instance v7, Lcom/shabakaty/downloader/x93;

    const-string v8, "TYPE_USE"

    invoke-direct {v7, v8, v6}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v0, v5

    .line 21
    invoke-static {v0}, Lcom/shabakaty/downloader/vm2;->s([Lcom/shabakaty/downloader/x93;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/m62;->b:Ljava/util/Map;

    new-array v0, v4, [Lcom/shabakaty/downloader/x93;

    .line 22
    sget-object v4, Lcom/shabakaty/downloader/oe2;->r:Lcom/shabakaty/downloader/oe2;

    .line 23
    new-instance v5, Lcom/shabakaty/downloader/x93;

    const-string v6, "RUNTIME"

    invoke-direct {v5, v6, v4}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v1

    .line 24
    sget-object v1, Lcom/shabakaty/downloader/oe2;->s:Lcom/shabakaty/downloader/oe2;

    .line 25
    new-instance v4, Lcom/shabakaty/downloader/x93;

    const-string v5, "CLASS"

    invoke-direct {v4, v5, v1}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v2

    .line 26
    sget-object v1, Lcom/shabakaty/downloader/oe2;->t:Lcom/shabakaty/downloader/oe2;

    .line 27
    new-instance v2, Lcom/shabakaty/downloader/x93;

    const-string v4, "SOURCE"

    invoke-direct {v2, v4, v1}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v3

    .line 28
    invoke-static {v0}, Lcom/shabakaty/downloader/vm2;->s([Lcom/shabakaty/downloader/x93;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/m62;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/shabakaty/downloader/qb0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/h62;",
            ">;)",
            "Lcom/shabakaty/downloader/qb0<",
            "*>;"
        }
    .end annotation

    const-string v0, "arguments"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/shabakaty/downloader/e72;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Lcom/shabakaty/downloader/e72;

    .line 6
    invoke-interface {v1}, Lcom/shabakaty/downloader/e72;->d()Lcom/shabakaty/downloader/hw2;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v1

    .line 7
    :goto_2
    sget-object v2, Lcom/shabakaty/downloader/m62;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/EnumSet;

    if-nez v1, :cond_3

    sget-object v1, Lcom/shabakaty/downloader/c31;->r:Lcom/shabakaty/downloader/c31;

    .line 8
    :cond_3
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/k50;->R(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1

    .line 9
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 11
    check-cast v1, Lcom/shabakaty/downloader/pe2;

    .line 12
    new-instance v2, Lcom/shabakaty/downloader/z31;

    sget-object v3, Lcom/shabakaty/downloader/tb4$a;->u:Lcom/shabakaty/downloader/fi1;

    invoke-static {v3}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/shabakaty/downloader/z31;-><init>(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/hw2;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 13
    :cond_5
    new-instance p1, Lcom/shabakaty/downloader/fd;

    sget-object v1, Lcom/shabakaty/downloader/m62$a;->r:Lcom/shabakaty/downloader/m62$a;

    invoke-direct {p1, v0, v1}, Lcom/shabakaty/downloader/fd;-><init>(Ljava/util/List;Lcom/shabakaty/downloader/tm1;)V

    return-object p1
.end method
