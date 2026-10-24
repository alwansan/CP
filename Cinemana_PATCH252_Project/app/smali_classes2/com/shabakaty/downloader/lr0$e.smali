.class public final Lcom/shabakaty/downloader/lr0$e;
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
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    const-string p0, "what"

    aput-object p0, v0, v1

    goto :goto_0

    :cond_0
    const-string p0, "from"

    aput-object p0, v0, v1

    :goto_0
    const-string p0, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$2"

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v1, "isVisible"

    aput-object v1, v0, p0

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

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    const/4 v2, 0x1

    if-eqz p3, :cond_3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/lr0;->a:Lcom/shabakaty/downloader/mr0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shabakaty/downloader/mr0;->c(Lcom/shabakaty/downloader/co3;Lcom/shabakaty/downloader/wm0;Lcom/shabakaty/downloader/qm0;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 2
    sget-object p3, Lcom/shabakaty/downloader/lr0;->m:Lcom/shabakaty/downloader/co3;

    if-ne p1, p3, :cond_0

    return v2

    .line 3
    :cond_0
    sget-object p3, Lcom/shabakaty/downloader/lr0;->l:Lcom/shabakaty/downloader/co3;

    if-ne p1, p3, :cond_1

    return v1

    .line 4
    :cond_1
    const-class p3, Lcom/shabakaty/downloader/q20;

    invoke-static {p2, p3}, Lcom/shabakaty/downloader/gr0;->j(Lcom/shabakaty/downloader/qm0;Ljava/lang/Class;)Lcom/shabakaty/downloader/qm0;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 5
    instance-of p3, p1, Lcom/shabakaty/downloader/wm4;

    if-eqz p3, :cond_2

    .line 6
    check-cast p1, Lcom/shabakaty/downloader/wm4;

    invoke-interface {p1}, Lcom/shabakaty/downloader/wm4;->u()Lcom/shabakaty/downloader/q20;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/q20;->a()Lcom/shabakaty/downloader/q20;

    move-result-object p1

    invoke-interface {p2}, Lcom/shabakaty/downloader/qm0;->a()Lcom/shabakaty/downloader/qm0;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    return v1

    .line 7
    :cond_3
    invoke-static {v2}, Lcom/shabakaty/downloader/lr0$e;->e(I)V

    throw v0

    :cond_4
    invoke-static {v1}, Lcom/shabakaty/downloader/lr0$e;->e(I)V

    throw v0
.end method
