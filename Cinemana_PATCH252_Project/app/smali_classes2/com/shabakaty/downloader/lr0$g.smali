.class public final Lcom/shabakaty/downloader/lr0$g;
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
    const-string p0, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$4"

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
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    .line 1
    invoke-static {p2}, Lcom/shabakaty/downloader/gr0;->d(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/nu2;

    move-result-object p1

    .line 2
    invoke-static {p3}, Lcom/shabakaty/downloader/gr0;->d(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/nu2;

    move-result-object v1

    .line 3
    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/nu2;->h0(Lcom/shabakaty/downloader/nu2;)Z

    move-result p1

    if-nez p1, :cond_0

    return v0

    .line 4
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/lr0;->o:Lcom/shabakaty/downloader/su2;

    .line 5
    invoke-interface {p1, p2, p3}, Lcom/shabakaty/downloader/su2;->a(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/qm0;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p2, 0x1

    .line 6
    invoke-static {p2}, Lcom/shabakaty/downloader/lr0$g;->e(I)V

    throw p1

    :cond_2
    invoke-static {v0}, Lcom/shabakaty/downloader/lr0$g;->e(I)V

    throw p1
.end method
