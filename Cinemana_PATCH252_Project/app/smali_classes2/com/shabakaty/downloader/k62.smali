.class public final Lcom/shabakaty/downloader/k62;
.super Ljava/lang/Object;
.source "JavaAnnotationMapper.kt"


# static fields
.field public static final a:Lcom/shabakaty/downloader/k62;

.field public static final b:Lcom/shabakaty/downloader/hw2;

.field public static final c:Lcom/shabakaty/downloader/hw2;

.field public static final d:Lcom/shabakaty/downloader/hw2;

.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/fi1;",
            "Lcom/shabakaty/downloader/fi1;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/fi1;",
            "Lcom/shabakaty/downloader/fi1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/shabakaty/downloader/k62;

    invoke-direct {v0}, Lcom/shabakaty/downloader/k62;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/k62;->a:Lcom/shabakaty/downloader/k62;

    const-string v0, "message"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/k62;->b:Lcom/shabakaty/downloader/hw2;

    const-string v0, "allowedTargets"

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/k62;->c:Lcom/shabakaty/downloader/hw2;

    const-string v0, "value"

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/k62;->d:Lcom/shabakaty/downloader/hw2;

    const/4 v0, 0x3

    new-array v1, v0, [Lcom/shabakaty/downloader/x93;

    .line 4
    sget-object v2, Lcom/shabakaty/downloader/tb4$a;->t:Lcom/shabakaty/downloader/fi1;

    sget-object v3, Lcom/shabakaty/downloader/ta2;->c:Lcom/shabakaty/downloader/fi1;

    .line 5
    new-instance v4, Lcom/shabakaty/downloader/x93;

    invoke-direct {v4, v2, v3}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x0

    aput-object v4, v1, v5

    .line 6
    sget-object v4, Lcom/shabakaty/downloader/tb4$a;->w:Lcom/shabakaty/downloader/fi1;

    sget-object v6, Lcom/shabakaty/downloader/ta2;->d:Lcom/shabakaty/downloader/fi1;

    .line 7
    new-instance v7, Lcom/shabakaty/downloader/x93;

    invoke-direct {v7, v4, v6}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x1

    aput-object v7, v1, v8

    .line 8
    sget-object v7, Lcom/shabakaty/downloader/tb4$a;->x:Lcom/shabakaty/downloader/fi1;

    sget-object v9, Lcom/shabakaty/downloader/ta2;->f:Lcom/shabakaty/downloader/fi1;

    .line 9
    new-instance v10, Lcom/shabakaty/downloader/x93;

    invoke-direct {v10, v7, v9}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x2

    aput-object v10, v1, v11

    .line 10
    invoke-static {v1}, Lcom/shabakaty/downloader/vm2;->s([Lcom/shabakaty/downloader/x93;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/k62;->e:Ljava/util/Map;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/shabakaty/downloader/x93;

    .line 11
    new-instance v10, Lcom/shabakaty/downloader/x93;

    invoke-direct {v10, v3, v2}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v1, v5

    .line 12
    new-instance v2, Lcom/shabakaty/downloader/x93;

    invoke-direct {v2, v6, v4}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v8

    .line 13
    sget-object v2, Lcom/shabakaty/downloader/ta2;->e:Lcom/shabakaty/downloader/fi1;

    sget-object v3, Lcom/shabakaty/downloader/tb4$a;->n:Lcom/shabakaty/downloader/fi1;

    .line 14
    new-instance v4, Lcom/shabakaty/downloader/x93;

    invoke-direct {v4, v2, v3}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v11

    .line 15
    new-instance v2, Lcom/shabakaty/downloader/x93;

    invoke-direct {v2, v9, v7}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v0

    .line 16
    invoke-static {v1}, Lcom/shabakaty/downloader/vm2;->s([Lcom/shabakaty/downloader/x93;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/k62;->f:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/l62;Lcom/shabakaty/downloader/bg2;)Lcom/shabakaty/downloader/r8;
    .locals 2

    const-string v0, "kotlinName"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotationOwner"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/tb4$a;->n:Lcom/shabakaty/downloader/fi1;

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/ta2;->e:Lcom/shabakaty/downloader/fi1;

    const-string v1, "DEPRECATED_ANNOTATION"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/shabakaty/downloader/l62;->r(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/g62;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p2}, Lcom/shabakaty/downloader/l62;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/b72;

    invoke-direct {p1, v0, p3}, Lcom/shabakaty/downloader/b72;-><init>(Lcom/shabakaty/downloader/g62;Lcom/shabakaty/downloader/bg2;)V

    return-object p1

    .line 5
    :cond_1
    sget-object v0, Lcom/shabakaty/downloader/k62;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/fi1;

    const/4 v0, 0x0

    if-nez p1, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/l62;->r(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/g62;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    sget-object p2, Lcom/shabakaty/downloader/k62;->a:Lcom/shabakaty/downloader/k62;

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p2, p1, p3, v0}, Lcom/shabakaty/downloader/k62;->b(Lcom/shabakaty/downloader/g62;Lcom/shabakaty/downloader/bg2;Z)Lcom/shabakaty/downloader/r8;

    move-result-object p1

    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method public final b(Lcom/shabakaty/downloader/g62;Lcom/shabakaty/downloader/bg2;Z)Lcom/shabakaty/downloader/r8;
    .locals 2

    const-string v0, "annotation"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/g62;->f()Lcom/shabakaty/downloader/v20;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/ta2;->c:Lcom/shabakaty/downloader/fi1;

    invoke-static {v1}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p3, Lcom/shabakaty/downloader/d82;

    invoke-direct {p3, p1, p2}, Lcom/shabakaty/downloader/d82;-><init>(Lcom/shabakaty/downloader/g62;Lcom/shabakaty/downloader/bg2;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/ta2;->d:Lcom/shabakaty/downloader/fi1;

    invoke-static {v1}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p3, Lcom/shabakaty/downloader/a82;

    invoke-direct {p3, p1, p2}, Lcom/shabakaty/downloader/a82;-><init>(Lcom/shabakaty/downloader/g62;Lcom/shabakaty/downloader/bg2;)V

    goto :goto_0

    .line 4
    :cond_1
    sget-object v1, Lcom/shabakaty/downloader/ta2;->f:Lcom/shabakaty/downloader/fi1;

    invoke-static {v1}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p3, Lcom/shabakaty/downloader/j62;

    sget-object v0, Lcom/shabakaty/downloader/tb4$a;->x:Lcom/shabakaty/downloader/fi1;

    invoke-direct {p3, p2, p1, v0}, Lcom/shabakaty/downloader/j62;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/g62;Lcom/shabakaty/downloader/fi1;)V

    goto :goto_0

    .line 5
    :cond_2
    sget-object v1, Lcom/shabakaty/downloader/ta2;->e:Lcom/shabakaty/downloader/fi1;

    invoke-static {v1}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p3, 0x0

    goto :goto_0

    .line 6
    :cond_3
    new-instance v0, Lcom/shabakaty/downloader/sf2;

    invoke-direct {v0, p2, p1, p3}, Lcom/shabakaty/downloader/sf2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/g62;Z)V

    move-object p3, v0

    :goto_0
    return-object p3
.end method
