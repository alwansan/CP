.class public final Lcom/shabakaty/downloader/n02;
.super Lcom/shabakaty/downloader/tt4;
.source "TypeSubstitution.kt"


# instance fields
.field public final b:[Lcom/shabakaty/downloader/kt4;

.field public final c:[Lcom/shabakaty/downloader/qt4;

.field public final d:Z


# direct methods
.method public constructor <init>([Lcom/shabakaty/downloader/kt4;[Lcom/shabakaty/downloader/qt4;Z)V
    .locals 1

    const-string v0, "parameters"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/tt4;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/n02;->b:[Lcom/shabakaty/downloader/kt4;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/n02;->c:[Lcom/shabakaty/downloader/qt4;

    .line 4
    iput-boolean p3, p0, Lcom/shabakaty/downloader/n02;->d:Z

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/n02;->d:Z

    return v0
.end method

.method public d(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qt4;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object p1

    instance-of v0, p1, Lcom/shabakaty/downloader/kt4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/shabakaty/downloader/kt4;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    return-object v1

    .line 2
    :cond_1
    invoke-interface {p1}, Lcom/shabakaty/downloader/kt4;->j()I

    move-result v0

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/n02;->b:[Lcom/shabakaty/downloader/kt4;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/shabakaty/downloader/kt4;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v2

    invoke-interface {p1}, Lcom/shabakaty/downloader/kt4;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/n02;->c:[Lcom/shabakaty/downloader/qt4;

    aget-object p1, p1, v0

    return-object p1

    :cond_2
    return-object v1
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/n02;->c:[Lcom/shabakaty/downloader/qt4;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
