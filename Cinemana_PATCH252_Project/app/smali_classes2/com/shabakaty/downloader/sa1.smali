.class public final Lcom/shabakaty/downloader/sa1;
.super Ljava/lang/Object;
.source "FieldOverridabilityCondition.kt"

# interfaces
.implements Lcom/shabakaty/downloader/e91;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public b(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/q20;)I
    .locals 2

    const-string p3, "superDescriptor"

    invoke-static {p1, p3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "subDescriptor"

    invoke-static {p2, p3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of p3, p2, Lcom/shabakaty/downloader/yh3;

    const/4 v0, 0x4

    if-eqz p3, :cond_5

    instance-of p3, p1, Lcom/shabakaty/downloader/yh3;

    if-nez p3, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    check-cast p2, Lcom/shabakaty/downloader/yh3;

    invoke-interface {p2}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object p3

    check-cast p1, Lcom/shabakaty/downloader/yh3;

    invoke-interface {p1}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-static {p2}, Lcom/shabakaty/downloader/bp;->p(Lcom/shabakaty/downloader/yh3;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {p1}, Lcom/shabakaty/downloader/bp;->p(Lcom/shabakaty/downloader/yh3;)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_2
    invoke-static {p2}, Lcom/shabakaty/downloader/bp;->p(Lcom/shabakaty/downloader/yh3;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-static {p1}, Lcom/shabakaty/downloader/bp;->p(Lcom/shabakaty/downloader/yh3;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_0
    const/4 p1, 0x3

    return p1

    :cond_5
    :goto_1
    return v0
.end method
