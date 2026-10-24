.class public final Lcom/shabakaty/downloader/d;
.super Lcom/shabakaty/downloader/zp0;
.source "SpecialTypes.kt"


# instance fields
.field public final s:Lcom/shabakaty/downloader/b74;

.field public final t:Lcom/shabakaty/downloader/b74;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "abbreviation"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/zp0;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/d;->s:Lcom/shabakaty/downloader/b74;

    iput-object p2, p0, Lcom/shabakaty/downloader/d;->t:Lcom/shabakaty/downloader/b74;

    return-void
.end method


# virtual methods
.method public bridge synthetic V0(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/qe2;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/d;->g1(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic X0(Z)Lcom/shabakaty/downloader/qw4;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/d;->f1(Z)Lcom/shabakaty/downloader/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic Y0(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/qw4;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/d;->g1(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/d;

    move-result-object p1

    return-object p1
.end method

.method public Z0(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/qw4;
    .locals 2

    const-string v0, "newAnnotations"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/d;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/d;->s:Lcom/shabakaty/downloader/b74;

    .line 4
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/b74;->b1(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    iget-object v1, p0, Lcom/shabakaty/downloader/d;->t:Lcom/shabakaty/downloader/b74;

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/d;-><init>(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)V

    return-object v0
.end method

.method public a1(Z)Lcom/shabakaty/downloader/b74;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/d;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/d;->s:Lcom/shabakaty/downloader/b74;

    .line 3
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/b74;->a1(Z)Lcom/shabakaty/downloader/b74;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/downloader/d;->t:Lcom/shabakaty/downloader/b74;

    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/b74;->a1(Z)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/d;-><init>(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)V

    return-object v0
.end method

.method public b1(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/b74;
    .locals 2

    const-string v0, "newAnnotations"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/d;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/d;->s:Lcom/shabakaty/downloader/b74;

    .line 4
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/b74;->b1(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    iget-object v1, p0, Lcom/shabakaty/downloader/d;->t:Lcom/shabakaty/downloader/b74;

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/d;-><init>(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)V

    return-object v0
.end method

.method public c1()Lcom/shabakaty/downloader/b74;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d;->s:Lcom/shabakaty/downloader/b74;

    return-object v0
.end method

.method public bridge synthetic d1(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/b74;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/d;->g1(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/d;

    move-result-object p1

    return-object p1
.end method

.method public e1(Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/zp0;
    .locals 2

    const-string v0, "delegate"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/d;

    iget-object v1, p0, Lcom/shabakaty/downloader/d;->t:Lcom/shabakaty/downloader/b74;

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/d;-><init>(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)V

    return-object v0
.end method

.method public f1(Z)Lcom/shabakaty/downloader/d;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/d;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/d;->s:Lcom/shabakaty/downloader/b74;

    .line 3
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/b74;->a1(Z)Lcom/shabakaty/downloader/b74;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/downloader/d;->t:Lcom/shabakaty/downloader/b74;

    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/b74;->a1(Z)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/d;-><init>(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)V

    return-object v0
.end method

.method public g1(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/d;
    .locals 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/d;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/d;->s:Lcom/shabakaty/downloader/b74;

    .line 3
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/ve2;->h(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/qe2;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/b74;

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/d;->t:Lcom/shabakaty/downloader/b74;

    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/ve2;->h(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/b74;

    .line 5
    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/d;-><init>(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)V

    return-object v0
.end method
