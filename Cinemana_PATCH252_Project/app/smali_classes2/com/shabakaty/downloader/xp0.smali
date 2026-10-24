.class public Lcom/shabakaty/downloader/xp0;
.super Lcom/shabakaty/downloader/tt4;
.source "TypeSubstitution.kt"


# instance fields
.field public final b:Lcom/shabakaty/downloader/tt4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/tt4;)V
    .locals 1

    const-string v0, "substitution"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/tt4;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/xp0;->b:Lcom/shabakaty/downloader/tt4;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xp0;->b:Lcom/shabakaty/downloader/tt4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/tt4;->a()Z

    move-result v0

    return v0
.end method

.method public c(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/d9;
    .locals 1

    const-string v0, "annotations"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xp0;->b:Lcom/shabakaty/downloader/tt4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/tt4;->c(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/d9;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xp0;->b:Lcom/shabakaty/downloader/tt4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/tt4;->e()Z

    move-result v0

    return v0
.end method

.method public f(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xz4;)Lcom/shabakaty/downloader/qe2;
    .locals 1

    const-string v0, "topLevelType"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xp0;->b:Lcom/shabakaty/downloader/tt4;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/tt4;->f(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xz4;)Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    return-object p1
.end method
