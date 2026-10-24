.class public abstract Lcom/shabakaty/downloader/g1;
.super Lcom/shabakaty/downloader/b74;
.source "StubTypes.kt"


# instance fields
.field public final s:Lcom/shabakaty/downloader/ts4;

.field public final t:Z

.field public final u:Lcom/shabakaty/downloader/mr2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ts4;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/b74;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/g1;->s:Lcom/shabakaty/downloader/ts4;

    iput-boolean p2, p0, Lcom/shabakaty/downloader/g1;->t:Z

    const-string p2, "Scope for stub type: "

    .line 2
    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/d51;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/mr2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/g1;->u:Lcom/shabakaty/downloader/mr2;

    return-void
.end method


# virtual methods
.method public S0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/qt4;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object v0
.end method

.method public U0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/g1;->t:Z

    return v0
.end method

.method public V0(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/qe2;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public X0(Z)Lcom/shabakaty/downloader/qw4;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/g1;->t:Z

    if-ne p1, v0, :cond_0

    move-object p1, p0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/g1;->c1(Z)Lcom/shabakaty/downloader/g1;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public Y0(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/qw4;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public Z0(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/qw4;
    .locals 1

    const-string v0, "newAnnotations"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public a1(Z)Lcom/shabakaty/downloader/b74;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/g1;->t:Z

    if-ne p1, v0, :cond_0

    move-object p1, p0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/g1;->c1(Z)Lcom/shabakaty/downloader/g1;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public b1(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/b74;
    .locals 1

    const-string v0, "newAnnotations"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public abstract c1(Z)Lcom/shabakaty/downloader/g1;
.end method

.method public s()Lcom/shabakaty/downloader/mr2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/g1;->u:Lcom/shabakaty/downloader/mr2;

    return-object v0
.end method

.method public y()Lcom/shabakaty/downloader/d9;
    .locals 1

    .line 1
    sget v0, Lcom/shabakaty/downloader/d9;->a:I

    sget-object v0, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    return-object v0
.end method
