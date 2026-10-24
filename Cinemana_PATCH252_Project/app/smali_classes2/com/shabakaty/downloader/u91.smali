.class public final Lcom/shabakaty/downloader/u91;
.super Ljava/lang/Object;
.source "FakePureImplementationsProvider.kt"


# static fields
.field public static final a:Lcom/shabakaty/downloader/u91;

.field public static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/shabakaty/downloader/fi1;",
            "Lcom/shabakaty/downloader/fi1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/u91;->b:Ljava/util/HashMap;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/tb4$a;->K:Lcom/shabakaty/downloader/fi1;

    const-string v1, "java.util.ArrayList"

    const-string v2, "java.util.LinkedList"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/u91;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/u91;->b(Lcom/shabakaty/downloader/fi1;Ljava/util/List;)V

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/tb4$a;->M:Lcom/shabakaty/downloader/fi1;

    const-string v1, "java.util.HashSet"

    const-string v2, "java.util.TreeSet"

    const-string v3, "java.util.LinkedHashSet"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/u91;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/u91;->b(Lcom/shabakaty/downloader/fi1;Ljava/util/List;)V

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/tb4$a;->N:Lcom/shabakaty/downloader/fi1;

    const-string v1, "java.util.HashMap"

    const-string v2, "java.util.TreeMap"

    const-string v3, "java.util.LinkedHashMap"

    const-string v4, "java.util.concurrent.ConcurrentHashMap"

    const-string v5, "java.util.concurrent.ConcurrentSkipListMap"

    .line 5
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Lcom/shabakaty/downloader/u91;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/u91;->b(Lcom/shabakaty/downloader/fi1;Ljava/util/List;)V

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/fi1;

    const-string v1, "java.util.function.Function"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    const-string v1, "java.util.function.UnaryOperator"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/u91;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/u91;->b(Lcom/shabakaty/downloader/fi1;Ljava/util/List;)V

    .line 8
    new-instance v0, Lcom/shabakaty/downloader/fi1;

    const-string v1, "java.util.function.BiFunction"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    const-string v1, "java.util.function.BinaryOperator"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/u91;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/u91;->b(Lcom/shabakaty/downloader/fi1;Ljava/util/List;)V

    return-void
.end method

.method public static final varargs a([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/fi1;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    .line 3
    new-instance v4, Lcom/shabakaty/downloader/fi1;

    invoke-direct {v4, v3}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final b(Lcom/shabakaty/downloader/fi1;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/fi1;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/fi1;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/u91;->b:Ljava/util/HashMap;

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    move-object v2, v1

    check-cast v2, Lcom/shabakaty/downloader/fi1;

    .line 4
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
