.class public abstract Lcom/shabakaty/downloader/aq0;
.super Lcom/shabakaty/downloader/zp0;
.source "KotlinTypeFactory.kt"


# instance fields
.field public final s:Lcom/shabakaty/downloader/b74;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/b74;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/zp0;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/aq0;->s:Lcom/shabakaty/downloader/b74;

    return-void
.end method


# virtual methods
.method public Z0(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/qw4;
    .locals 1

    const-string v0, "newAnnotations"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zp0;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/k8;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/k8;-><init>(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/d9;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public a1(Z)Lcom/shabakaty/downloader/b74;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zp0;->U0()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/aq0;->s:Lcom/shabakaty/downloader/b74;

    .line 3
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/b74;->a1(Z)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/zp0;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/b74;->b1(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    return-object p1
.end method

.method public b1(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/b74;
    .locals 1

    const-string v0, "newAnnotations"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zp0;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/k8;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/k8;-><init>(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/d9;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public c1()Lcom/shabakaty/downloader/b74;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/aq0;->s:Lcom/shabakaty/downloader/b74;

    return-object v0
.end method
