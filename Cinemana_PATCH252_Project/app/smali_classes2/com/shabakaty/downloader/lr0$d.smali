.class public final Lcom/shabakaty/downloader/lr0$d;
.super Lcom/shabakaty/downloader/wp0;
.source "DescriptorVisibilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/lr0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/y45;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/wp0;-><init>(Lcom/shabakaty/downloader/y45;)V

    return-void
.end method

.method public static synthetic e(I)V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq p0, v2, :cond_1

    if-eq p0, v3, :cond_0

    const-string v4, "descriptor"

    aput-object v4, v0, v1

    goto :goto_0

    :cond_0
    const-string v4, "from"

    aput-object v4, v0, v1

    goto :goto_0

    :cond_1
    const-string v4, "what"

    aput-object v4, v0, v1

    :goto_0
    const-string v1, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1"

    aput-object v1, v0, v2

    if-eq p0, v2, :cond_2

    if-eq p0, v3, :cond_2

    const-string p0, "hasContainingSourceFile"

    aput-object p0, v0, v3

    goto :goto_1

    :cond_2
    const-string p0, "isVisible"

    aput-object p0, v0, v3

    :goto_1
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public c(Lcom/shabakaty/downloader/co3;Lcom/shabakaty/downloader/wm0;Lcom/shabakaty/downloader/qm0;)Z
    .locals 3

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_c

    if-eqz p3, :cond_b

    .line 1
    invoke-static {p2}, Lcom/shabakaty/downloader/gr0;->y(Lcom/shabakaty/downloader/qm0;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eqz p3, :cond_1

    .line 2
    invoke-static {p3}, Lcom/shabakaty/downloader/gr0;->f(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/t94;

    move-result-object p1

    sget-object v1, Lcom/shabakaty/downloader/t94;->a:Lcom/shabakaty/downloader/t94;

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 3
    invoke-static {p2, p3}, Lcom/shabakaty/downloader/lr0;->d(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/qm0;)Z

    move-result p1

    return p1

    .line 4
    :cond_1
    invoke-static {v2}, Lcom/shabakaty/downloader/lr0$d;->e(I)V

    throw p1

    .line 5
    :cond_2
    instance-of p1, p2, Lcom/shabakaty/downloader/vc0;

    if-eqz p1, :cond_3

    .line 6
    move-object p1, p2

    check-cast p1, Lcom/shabakaty/downloader/vc0;

    invoke-interface {p1}, Lcom/shabakaty/downloader/vc0;->c()Lcom/shabakaty/downloader/h30;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/shabakaty/downloader/gr0;->v(Lcom/shabakaty/downloader/qm0;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/shabakaty/downloader/gr0;->y(Lcom/shabakaty/downloader/qm0;)Z

    move-result p1

    if-eqz p1, :cond_3

    instance-of p1, p3, Lcom/shabakaty/downloader/vc0;

    if-eqz p1, :cond_3

    invoke-interface {p3}, Lcom/shabakaty/downloader/qm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/gr0;->y(Lcom/shabakaty/downloader/qm0;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p2, p3}, Lcom/shabakaty/downloader/lr0;->d(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/qm0;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    if-eqz p2, :cond_5

    .line 8
    invoke-interface {p2}, Lcom/shabakaty/downloader/qm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object p2

    .line 9
    instance-of p1, p2, Lcom/shabakaty/downloader/q20;

    if-eqz p1, :cond_4

    invoke-static {p2}, Lcom/shabakaty/downloader/gr0;->p(Lcom/shabakaty/downloader/qm0;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    instance-of p1, p2, Lcom/shabakaty/downloader/k93;

    if-eqz p1, :cond_3

    :cond_5
    if-nez p2, :cond_6

    return v2

    :cond_6
    :goto_1
    if-eqz p3, :cond_a

    if-ne p2, p3, :cond_7

    return v0

    .line 10
    :cond_7
    instance-of p1, p3, Lcom/shabakaty/downloader/k93;

    if-eqz p1, :cond_9

    .line 11
    instance-of p1, p2, Lcom/shabakaty/downloader/k93;

    if-eqz p1, :cond_8

    move-object p1, p2

    check-cast p1, Lcom/shabakaty/downloader/k93;

    invoke-interface {p1}, Lcom/shabakaty/downloader/k93;->e()Lcom/shabakaty/downloader/fi1;

    move-result-object p1

    move-object v1, p3

    check-cast v1, Lcom/shabakaty/downloader/k93;

    invoke-interface {v1}, Lcom/shabakaty/downloader/k93;->e()Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/fi1;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 12
    invoke-static {p3}, Lcom/shabakaty/downloader/gr0;->d(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/nu2;

    move-result-object p1

    invoke-static {p2}, Lcom/shabakaty/downloader/gr0;->d(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/nu2;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    :goto_2
    return v0

    .line 13
    :cond_9
    invoke-interface {p3}, Lcom/shabakaty/downloader/qm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object p3

    goto :goto_1

    :cond_a
    return v2

    :cond_b
    const/4 p2, 0x2

    .line 14
    invoke-static {p2}, Lcom/shabakaty/downloader/lr0$d;->e(I)V

    throw p1

    :cond_c
    invoke-static {v0}, Lcom/shabakaty/downloader/lr0$d;->e(I)V

    throw p1
.end method
