.class public final Lcom/shabakaty/downloader/tb4;
.super Ljava/lang/Object;
.source "StandardNames.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/tb4$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/hw2;

.field public static final b:Lcom/shabakaty/downloader/hw2;

.field public static final c:Lcom/shabakaty/downloader/fi1;

.field public static final d:Lcom/shabakaty/downloader/fi1;

.field public static final e:Lcom/shabakaty/downloader/fi1;

.field public static final f:Lcom/shabakaty/downloader/fi1;

.field public static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lcom/shabakaty/downloader/hw2;

.field public static final i:Lcom/shabakaty/downloader/fi1;

.field public static final j:Lcom/shabakaty/downloader/fi1;

.field public static final k:Lcom/shabakaty/downloader/fi1;

.field public static final l:Lcom/shabakaty/downloader/fi1;

.field public static final m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/fi1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const-string v0, "values"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/tb4;->a:Lcom/shabakaty/downloader/hw2;

    const-string v0, "valueOf"

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/tb4;->b:Lcom/shabakaty/downloader/hw2;

    const-string v0, "code"

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/fi1;

    const-string v1, "kotlin.coroutines"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/tb4;->c:Lcom/shabakaty/downloader/fi1;

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/fi1;

    const-string v2, "kotlin.coroutines.jvm.internal"

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/fi1;

    const-string v2, "kotlin.coroutines.intrinsics"

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    const-string v1, "Continuation"

    .line 7
    invoke-static {v1}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/fi1;->c(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/tb4;->d:Lcom/shabakaty/downloader/fi1;

    .line 8
    new-instance v1, Lcom/shabakaty/downloader/fi1;

    const-string v2, "kotlin.Result"

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/shabakaty/downloader/tb4;->e:Lcom/shabakaty/downloader/fi1;

    .line 9
    new-instance v1, Lcom/shabakaty/downloader/fi1;

    const-string v2, "kotlin.reflect"

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/shabakaty/downloader/tb4;->f:Lcom/shabakaty/downloader/fi1;

    const-string v2, "KProperty"

    const-string v3, "KMutableProperty"

    const-string v4, "KFunction"

    const-string v5, "KSuspendFunction"

    .line 10
    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/downloader/iq6;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/shabakaty/downloader/tb4;->g:Ljava/util/List;

    const-string v2, "kotlin"

    .line 11
    invoke-static {v2}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v2

    sput-object v2, Lcom/shabakaty/downloader/tb4;->h:Lcom/shabakaty/downloader/hw2;

    .line 12
    invoke-static {v2}, Lcom/shabakaty/downloader/fi1;->k(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/fi1;

    move-result-object v2

    sput-object v2, Lcom/shabakaty/downloader/tb4;->i:Lcom/shabakaty/downloader/fi1;

    const-string v3, "annotation"

    .line 13
    invoke-static {v3}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/fi1;->c(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/fi1;

    move-result-object v3

    sput-object v3, Lcom/shabakaty/downloader/tb4;->j:Lcom/shabakaty/downloader/fi1;

    const-string v4, "collections"

    .line 14
    invoke-static {v4}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/fi1;->c(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/fi1;

    move-result-object v4

    sput-object v4, Lcom/shabakaty/downloader/tb4;->k:Lcom/shabakaty/downloader/fi1;

    const-string v5, "ranges"

    .line 15
    invoke-static {v5}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/shabakaty/downloader/fi1;->c(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/fi1;

    move-result-object v5

    sput-object v5, Lcom/shabakaty/downloader/tb4;->l:Lcom/shabakaty/downloader/fi1;

    const-string v6, "text"

    .line 16
    invoke-static {v6}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/shabakaty/downloader/fi1;->c(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/fi1;

    const/4 v6, 0x7

    new-array v6, v6, [Lcom/shabakaty/downloader/fi1;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const/4 v4, 0x2

    aput-object v5, v6, v4

    const/4 v4, 0x3

    aput-object v3, v6, v4

    const/4 v3, 0x4

    aput-object v1, v6, v3

    const-string v1, "internal"

    .line 17
    invoke-static {v1}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/fi1;->c(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v6, v2

    const/4 v1, 0x6

    aput-object v0, v6, v1

    .line 18
    invoke-static {v6}, Lcom/shabakaty/downloader/nl6;->t([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/tb4;->m:Ljava/util/Set;

    return-void
.end method

.method public static final a(I)Lcom/shabakaty/downloader/v20;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/v20;

    sget-object v1, Lcom/shabakaty/downloader/tb4;->i:Lcom/shabakaty/downloader/fi1;

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "Function"

    invoke-static {v2, p0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/shabakaty/downloader/v20;-><init>(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/hw2;)V

    return-object v0
.end method
