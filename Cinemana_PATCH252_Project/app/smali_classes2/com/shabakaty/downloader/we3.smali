.class public final Lcom/shabakaty/downloader/we3;
.super Ljava/lang/Object;
.source "predefinedEnhancementInfo.kt"


# static fields
.field public static final a:Lcom/shabakaty/downloader/o82;

.field public static final b:Lcom/shabakaty/downloader/o82;

.field public static final c:Lcom/shabakaty/downloader/o82;

.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/xe3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v6, Lcom/shabakaty/downloader/o82;

    sget-object v1, Lcom/shabakaty/downloader/u13;->s:Lcom/shabakaty/downloader/u13;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/o82;-><init>(Lcom/shabakaty/downloader/u13;Lcom/shabakaty/downloader/uv2;ZZI)V

    sput-object v6, Lcom/shabakaty/downloader/we3;->a:Lcom/shabakaty/downloader/o82;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/o82;

    sget-object v2, Lcom/shabakaty/downloader/u13;->t:Lcom/shabakaty/downloader/u13;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x8

    move-object v7, v0

    move-object v8, v2

    invoke-direct/range {v7 .. v12}, Lcom/shabakaty/downloader/o82;-><init>(Lcom/shabakaty/downloader/u13;Lcom/shabakaty/downloader/uv2;ZZI)V

    sput-object v0, Lcom/shabakaty/downloader/we3;->b:Lcom/shabakaty/downloader/o82;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/o82;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/o82;-><init>(Lcom/shabakaty/downloader/u13;Lcom/shabakaty/downloader/uv2;ZZI)V

    sput-object v0, Lcom/shabakaty/downloader/we3;->c:Lcom/shabakaty/downloader/o82;

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/c64;->a:Lcom/shabakaty/downloader/c64;

    const-string v1, "Object"

    .line 5
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/c64;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Predicate"

    .line 6
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/c64;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Function"

    .line 7
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/c64;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Consumer"

    .line 8
    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/c64;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "BiFunction"

    .line 9
    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/c64;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "BiConsumer"

    .line 10
    invoke-virtual {v0, v6}, Lcom/shabakaty/downloader/c64;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UnaryOperator"

    .line 11
    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/c64;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "stream/Stream"

    .line 12
    invoke-virtual {v0, v8}, Lcom/shabakaty/downloader/c64;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Optional"

    .line 13
    invoke-virtual {v0, v9}, Lcom/shabakaty/downloader/c64;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 14
    new-instance v10, Lcom/shabakaty/downloader/j64;

    invoke-direct {v10}, Lcom/shabakaty/downloader/j64;-><init>()V

    const-string v11, "Iterator"

    .line 15
    invoke-virtual {v0, v11}, Lcom/shabakaty/downloader/c64;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 16
    new-instance v12, Lcom/shabakaty/downloader/j64$a;

    invoke-direct {v12, v10, v11}, Lcom/shabakaty/downloader/j64$a;-><init>(Lcom/shabakaty/downloader/j64;Ljava/lang/String;)V

    .line 17
    new-instance v11, Lcom/shabakaty/downloader/we3$a;

    invoke-direct {v11, v4}, Lcom/shabakaty/downloader/we3$a;-><init>(Ljava/lang/String;)V

    const-string v13, "forEachRemaining"

    invoke-virtual {v12, v13, v11}, Lcom/shabakaty/downloader/j64$a;->a(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    const-string v11, "Iterable"

    .line 18
    invoke-virtual {v0, v11}, Lcom/shabakaty/downloader/c64;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 19
    new-instance v12, Lcom/shabakaty/downloader/j64$a;

    invoke-direct {v12, v10, v11}, Lcom/shabakaty/downloader/j64$a;-><init>(Lcom/shabakaty/downloader/j64;Ljava/lang/String;)V

    .line 20
    new-instance v11, Lcom/shabakaty/downloader/we3$g;

    invoke-direct {v11, v0}, Lcom/shabakaty/downloader/we3$g;-><init>(Lcom/shabakaty/downloader/c64;)V

    const-string v13, "spliterator"

    invoke-virtual {v12, v13, v11}, Lcom/shabakaty/downloader/j64$a;->a(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    const-string v11, "Collection"

    .line 21
    invoke-virtual {v0, v11}, Lcom/shabakaty/downloader/c64;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 22
    new-instance v12, Lcom/shabakaty/downloader/j64$a;

    invoke-direct {v12, v10, v11}, Lcom/shabakaty/downloader/j64$a;-><init>(Lcom/shabakaty/downloader/j64;Ljava/lang/String;)V

    .line 23
    new-instance v11, Lcom/shabakaty/downloader/we3$h;

    invoke-direct {v11, v2}, Lcom/shabakaty/downloader/we3$h;-><init>(Ljava/lang/String;)V

    const-string v13, "removeIf"

    invoke-virtual {v12, v13, v11}, Lcom/shabakaty/downloader/j64$a;->a(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    .line 24
    new-instance v11, Lcom/shabakaty/downloader/we3$i;

    invoke-direct {v11, v8}, Lcom/shabakaty/downloader/we3$i;-><init>(Ljava/lang/String;)V

    const-string v13, "stream"

    invoke-virtual {v12, v13, v11}, Lcom/shabakaty/downloader/j64$a;->a(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    .line 25
    new-instance v11, Lcom/shabakaty/downloader/we3$j;

    invoke-direct {v11, v8}, Lcom/shabakaty/downloader/we3$j;-><init>(Ljava/lang/String;)V

    const-string v8, "parallelStream"

    invoke-virtual {v12, v8, v11}, Lcom/shabakaty/downloader/j64$a;->a(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    const-string v8, "List"

    .line 26
    invoke-virtual {v0, v8}, Lcom/shabakaty/downloader/c64;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 27
    new-instance v11, Lcom/shabakaty/downloader/j64$a;

    invoke-direct {v11, v10, v8}, Lcom/shabakaty/downloader/j64$a;-><init>(Lcom/shabakaty/downloader/j64;Ljava/lang/String;)V

    .line 28
    new-instance v8, Lcom/shabakaty/downloader/we3$k;

    invoke-direct {v8, v7}, Lcom/shabakaty/downloader/we3$k;-><init>(Ljava/lang/String;)V

    const-string v7, "replaceAll"

    invoke-virtual {v11, v7, v8}, Lcom/shabakaty/downloader/j64$a;->a(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    const-string v8, "Map"

    .line 29
    invoke-virtual {v0, v8}, Lcom/shabakaty/downloader/c64;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 30
    new-instance v11, Lcom/shabakaty/downloader/j64$a;

    invoke-direct {v11, v10, v8}, Lcom/shabakaty/downloader/j64$a;-><init>(Lcom/shabakaty/downloader/j64;Ljava/lang/String;)V

    .line 31
    new-instance v8, Lcom/shabakaty/downloader/we3$l;

    invoke-direct {v8, v6}, Lcom/shabakaty/downloader/we3$l;-><init>(Ljava/lang/String;)V

    const-string v12, "forEach"

    invoke-virtual {v11, v12, v8}, Lcom/shabakaty/downloader/j64$a;->a(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    .line 32
    new-instance v8, Lcom/shabakaty/downloader/we3$m;

    invoke-direct {v8, v1}, Lcom/shabakaty/downloader/we3$m;-><init>(Ljava/lang/String;)V

    const-string v12, "putIfAbsent"

    invoke-virtual {v11, v12, v8}, Lcom/shabakaty/downloader/j64$a;->a(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    .line 33
    new-instance v8, Lcom/shabakaty/downloader/we3$n;

    invoke-direct {v8, v1}, Lcom/shabakaty/downloader/we3$n;-><init>(Ljava/lang/String;)V

    const-string v12, "replace"

    invoke-virtual {v11, v12, v8}, Lcom/shabakaty/downloader/j64$a;->a(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    .line 34
    new-instance v8, Lcom/shabakaty/downloader/we3$o;

    invoke-direct {v8, v1}, Lcom/shabakaty/downloader/we3$o;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12, v8}, Lcom/shabakaty/downloader/j64$a;->a(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    .line 35
    new-instance v8, Lcom/shabakaty/downloader/we3$p;

    invoke-direct {v8, v5}, Lcom/shabakaty/downloader/we3$p;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7, v8}, Lcom/shabakaty/downloader/j64$a;->a(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    .line 36
    new-instance v7, Lcom/shabakaty/downloader/we3$q;

    invoke-direct {v7, v1, v5}, Lcom/shabakaty/downloader/we3$q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "compute"

    invoke-virtual {v11, v8, v7}, Lcom/shabakaty/downloader/j64$a;->a(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    .line 37
    new-instance v7, Lcom/shabakaty/downloader/we3$r;

    invoke-direct {v7, v1, v3}, Lcom/shabakaty/downloader/we3$r;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "computeIfAbsent"

    invoke-virtual {v11, v8, v7}, Lcom/shabakaty/downloader/j64$a;->a(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    .line 38
    new-instance v7, Lcom/shabakaty/downloader/we3$s;

    invoke-direct {v7, v1, v5}, Lcom/shabakaty/downloader/we3$s;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "computeIfPresent"

    invoke-virtual {v11, v8, v7}, Lcom/shabakaty/downloader/j64$a;->a(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    .line 39
    new-instance v7, Lcom/shabakaty/downloader/we3$t;

    invoke-direct {v7, v1, v5}, Lcom/shabakaty/downloader/we3$t;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "merge"

    invoke-virtual {v11, v8, v7}, Lcom/shabakaty/downloader/j64$a;->a(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    .line 40
    new-instance v7, Lcom/shabakaty/downloader/j64$a;

    invoke-direct {v7, v10, v9}, Lcom/shabakaty/downloader/j64$a;-><init>(Lcom/shabakaty/downloader/j64;Ljava/lang/String;)V

    .line 41
    new-instance v8, Lcom/shabakaty/downloader/we3$u;

    invoke-direct {v8, v9}, Lcom/shabakaty/downloader/we3$u;-><init>(Ljava/lang/String;)V

    const-string v11, "empty"

    invoke-virtual {v7, v11, v8}, Lcom/shabakaty/downloader/j64$a;->a(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    .line 42
    new-instance v8, Lcom/shabakaty/downloader/we3$v;

    invoke-direct {v8, v1, v9}, Lcom/shabakaty/downloader/we3$v;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "of"

    invoke-virtual {v7, v11, v8}, Lcom/shabakaty/downloader/j64$a;->a(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    .line 43
    new-instance v8, Lcom/shabakaty/downloader/we3$w;

    invoke-direct {v8, v1, v9}, Lcom/shabakaty/downloader/we3$w;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "ofNullable"

    invoke-virtual {v7, v9, v8}, Lcom/shabakaty/downloader/j64$a;->a(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    .line 44
    new-instance v8, Lcom/shabakaty/downloader/we3$x;

    invoke-direct {v8, v1}, Lcom/shabakaty/downloader/we3$x;-><init>(Ljava/lang/String;)V

    const-string v9, "get"

    invoke-virtual {v7, v9, v8}, Lcom/shabakaty/downloader/j64$a;->a(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    .line 45
    new-instance v8, Lcom/shabakaty/downloader/we3$y;

    invoke-direct {v8, v4}, Lcom/shabakaty/downloader/we3$y;-><init>(Ljava/lang/String;)V

    const-string v11, "ifPresent"

    invoke-virtual {v7, v11, v8}, Lcom/shabakaty/downloader/j64$a;->a(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    const-string v7, "ref/Reference"

    .line 46
    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/c64;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 47
    new-instance v8, Lcom/shabakaty/downloader/j64$a;

    invoke-direct {v8, v10, v7}, Lcom/shabakaty/downloader/j64$a;-><init>(Lcom/shabakaty/downloader/j64;Ljava/lang/String;)V

    .line 48
    new-instance v7, Lcom/shabakaty/downloader/we3$z;

    invoke-direct {v7, v1}, Lcom/shabakaty/downloader/we3$z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9, v7}, Lcom/shabakaty/downloader/j64$a;->a(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    .line 49
    new-instance v7, Lcom/shabakaty/downloader/j64$a;

    invoke-direct {v7, v10, v2}, Lcom/shabakaty/downloader/j64$a;-><init>(Lcom/shabakaty/downloader/j64;Ljava/lang/String;)V

    .line 50
    new-instance v2, Lcom/shabakaty/downloader/we3$a0;

    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/we3$a0;-><init>(Ljava/lang/String;)V

    const-string v8, "test"

    invoke-virtual {v7, v8, v2}, Lcom/shabakaty/downloader/j64$a;->a(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    const-string v2, "BiPredicate"

    .line 51
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/c64;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    new-instance v7, Lcom/shabakaty/downloader/j64$a;

    invoke-direct {v7, v10, v2}, Lcom/shabakaty/downloader/j64$a;-><init>(Lcom/shabakaty/downloader/j64;Ljava/lang/String;)V

    .line 53
    new-instance v2, Lcom/shabakaty/downloader/we3$b0;

    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/we3$b0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v2}, Lcom/shabakaty/downloader/j64$a;->a(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    .line 54
    new-instance v2, Lcom/shabakaty/downloader/j64$a;

    invoke-direct {v2, v10, v4}, Lcom/shabakaty/downloader/j64$a;-><init>(Lcom/shabakaty/downloader/j64;Ljava/lang/String;)V

    .line 55
    new-instance v4, Lcom/shabakaty/downloader/we3$b;

    invoke-direct {v4, v1}, Lcom/shabakaty/downloader/we3$b;-><init>(Ljava/lang/String;)V

    const-string v7, "accept"

    invoke-virtual {v2, v7, v4}, Lcom/shabakaty/downloader/j64$a;->a(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    .line 56
    new-instance v2, Lcom/shabakaty/downloader/j64$a;

    invoke-direct {v2, v10, v6}, Lcom/shabakaty/downloader/j64$a;-><init>(Lcom/shabakaty/downloader/j64;Ljava/lang/String;)V

    .line 57
    new-instance v4, Lcom/shabakaty/downloader/we3$c;

    invoke-direct {v4, v1}, Lcom/shabakaty/downloader/we3$c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7, v4}, Lcom/shabakaty/downloader/j64$a;->a(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    .line 58
    new-instance v2, Lcom/shabakaty/downloader/j64$a;

    invoke-direct {v2, v10, v3}, Lcom/shabakaty/downloader/j64$a;-><init>(Lcom/shabakaty/downloader/j64;Ljava/lang/String;)V

    .line 59
    new-instance v3, Lcom/shabakaty/downloader/we3$d;

    invoke-direct {v3, v1}, Lcom/shabakaty/downloader/we3$d;-><init>(Ljava/lang/String;)V

    const-string v4, "apply"

    invoke-virtual {v2, v4, v3}, Lcom/shabakaty/downloader/j64$a;->a(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    .line 60
    new-instance v2, Lcom/shabakaty/downloader/j64$a;

    invoke-direct {v2, v10, v5}, Lcom/shabakaty/downloader/j64$a;-><init>(Lcom/shabakaty/downloader/j64;Ljava/lang/String;)V

    .line 61
    new-instance v3, Lcom/shabakaty/downloader/we3$e;

    invoke-direct {v3, v1}, Lcom/shabakaty/downloader/we3$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v3}, Lcom/shabakaty/downloader/j64$a;->a(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    const-string v2, "Supplier"

    .line 62
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/c64;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v2, Lcom/shabakaty/downloader/j64$a;

    invoke-direct {v2, v10, v0}, Lcom/shabakaty/downloader/j64$a;-><init>(Lcom/shabakaty/downloader/j64;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/shabakaty/downloader/we3$f;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/we3$f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9, v0}, Lcom/shabakaty/downloader/j64$a;->a(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    .line 65
    iget-object v0, v10, Lcom/shabakaty/downloader/j64;->a:Ljava/util/Map;

    .line 66
    sput-object v0, Lcom/shabakaty/downloader/we3;->d:Ljava/util/Map;

    return-void
.end method
