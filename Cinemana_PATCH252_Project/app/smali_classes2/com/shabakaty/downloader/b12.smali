.class public final Lcom/shabakaty/downloader/b12;
.super Ljava/lang/Object;
.source "inlineClassesUtils.kt"


# static fields
.field public static final synthetic a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/fi1;

    const-string v1, "kotlin.jvm.JvmInline"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final a(Lcom/shabakaty/downloader/rq;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/shabakaty/downloader/ai3;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/shabakaty/downloader/ai3;

    invoke-interface {p0}, Lcom/shabakaty/downloader/vh3;->K0()Lcom/shabakaty/downloader/yh3;

    move-result-object p0

    const-string v0, "correspondingProperty"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/shabakaty/downloader/b12;->d(Lcom/shabakaty/downloader/uz4;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final b(Lcom/shabakaty/downloader/qm0;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Lcom/shabakaty/downloader/q20;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/shabakaty/downloader/q20;

    invoke-interface {p0}, Lcom/shabakaty/downloader/q20;->z()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/shabakaty/downloader/q20;->R()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final c(Lcom/shabakaty/downloader/qe2;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object p0

    invoke-interface {p0}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/shabakaty/downloader/b12;->b(Lcom/shabakaty/downloader/qm0;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static final d(Lcom/shabakaty/downloader/uz4;)Z
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/rq;->u0()Lcom/shabakaty/downloader/ao3;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2
    invoke-interface {p0}, Lcom/shabakaty/downloader/mz4;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v0

    instance-of v1, v0, Lcom/shabakaty/downloader/q20;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/shabakaty/downloader/q20;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->C()Lcom/shabakaty/downloader/a12;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    iget-object v2, v0, Lcom/shabakaty/downloader/a12;->a:Lcom/shabakaty/downloader/hw2;

    .line 4
    :goto_1
    invoke-interface {p0}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    return p0
.end method
