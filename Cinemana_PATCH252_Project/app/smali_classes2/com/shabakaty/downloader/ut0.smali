.class public final Lcom/shabakaty/downloader/ut0;
.super Lcom/shabakaty/downloader/tt4;
.source "DisjointKeysUnionTypeSubstitution.kt"


# instance fields
.field public final b:Lcom/shabakaty/downloader/tt4;

.field public final c:Lcom/shabakaty/downloader/tt4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/tt4;Lcom/shabakaty/downloader/tt4;Lcom/shabakaty/downloader/nn0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/tt4;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ut0;->b:Lcom/shabakaty/downloader/tt4;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/ut0;->c:Lcom/shabakaty/downloader/tt4;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ut0;->b:Lcom/shabakaty/downloader/tt4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/tt4;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/ut0;->c:Lcom/shabakaty/downloader/tt4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/tt4;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ut0;->b:Lcom/shabakaty/downloader/tt4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/tt4;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/ut0;->c:Lcom/shabakaty/downloader/tt4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/tt4;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public c(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/d9;
    .locals 2

    const-string v0, "annotations"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ut0;->c:Lcom/shabakaty/downloader/tt4;

    iget-object v1, p0, Lcom/shabakaty/downloader/ut0;->b:Lcom/shabakaty/downloader/tt4;

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/tt4;->c(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/d9;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/tt4;->c(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/d9;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qt4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ut0;->b:Lcom/shabakaty/downloader/tt4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/tt4;->d(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qt4;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/ut0;->c:Lcom/shabakaty/downloader/tt4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/tt4;->d(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qt4;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public f(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xz4;)Lcom/shabakaty/downloader/qe2;
    .locals 2

    const-string v0, "topLevelType"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ut0;->c:Lcom/shabakaty/downloader/tt4;

    iget-object v1, p0, Lcom/shabakaty/downloader/ut0;->b:Lcom/shabakaty/downloader/tt4;

    invoke-virtual {v1, p1, p2}, Lcom/shabakaty/downloader/tt4;->f(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xz4;)Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/tt4;->f(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xz4;)Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    return-object p1
.end method
