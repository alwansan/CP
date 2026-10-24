.class public final Lcom/shabakaty/downloader/xy2;
.super Lcom/shabakaty/downloader/b74;
.source "NewCapturedType.kt"

# interfaces
.implements Lcom/shabakaty/downloader/iw;


# instance fields
.field public final s:Lcom/shabakaty/downloader/yv;

.field public final t:Lcom/shabakaty/downloader/zy2;

.field public final u:Lcom/shabakaty/downloader/qw4;

.field public final v:Lcom/shabakaty/downloader/d9;

.field public final w:Z

.field public final x:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/yv;Lcom/shabakaty/downloader/zy2;Lcom/shabakaty/downloader/qw4;Lcom/shabakaty/downloader/d9;ZZ)V
    .locals 1

    const-string v0, "captureStatus"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/shabakaty/downloader/b74;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/xy2;->s:Lcom/shabakaty/downloader/yv;

    .line 5
    iput-object p2, p0, Lcom/shabakaty/downloader/xy2;->t:Lcom/shabakaty/downloader/zy2;

    .line 6
    iput-object p3, p0, Lcom/shabakaty/downloader/xy2;->u:Lcom/shabakaty/downloader/qw4;

    .line 7
    iput-object p4, p0, Lcom/shabakaty/downloader/xy2;->v:Lcom/shabakaty/downloader/d9;

    .line 8
    iput-boolean p5, p0, Lcom/shabakaty/downloader/xy2;->w:Z

    .line 9
    iput-boolean p6, p0, Lcom/shabakaty/downloader/xy2;->x:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/yv;Lcom/shabakaty/downloader/zy2;Lcom/shabakaty/downloader/qw4;Lcom/shabakaty/downloader/d9;ZZI)V
    .locals 7

    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_0

    .line 1
    sget p4, Lcom/shabakaty/downloader/d9;->a:I

    sget-object p4, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p7, 0x10

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    move v5, p5

    :goto_0
    and-int/lit8 p4, p7, 0x20

    if-eqz p4, :cond_2

    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    move v6, p6

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/xy2;-><init>(Lcom/shabakaty/downloader/yv;Lcom/shabakaty/downloader/zy2;Lcom/shabakaty/downloader/qw4;Lcom/shabakaty/downloader/d9;ZZ)V

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

.method public T0()Lcom/shabakaty/downloader/ts4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xy2;->t:Lcom/shabakaty/downloader/zy2;

    return-object v0
.end method

.method public U0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/xy2;->w:Z

    return v0
.end method

.method public bridge synthetic V0(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/qe2;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xy2;->d1(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/xy2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic X0(Z)Lcom/shabakaty/downloader/qw4;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xy2;->c1(Z)Lcom/shabakaty/downloader/xy2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic Y0(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/qw4;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xy2;->d1(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/xy2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic Z0(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/qw4;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xy2;->e1(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/xy2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a1(Z)Lcom/shabakaty/downloader/b74;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xy2;->c1(Z)Lcom/shabakaty/downloader/xy2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b1(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/b74;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xy2;->e1(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/xy2;

    move-result-object p1

    return-object p1
.end method

.method public c1(Z)Lcom/shabakaty/downloader/xy2;
    .locals 9

    .line 1
    new-instance v8, Lcom/shabakaty/downloader/xy2;

    iget-object v1, p0, Lcom/shabakaty/downloader/xy2;->s:Lcom/shabakaty/downloader/yv;

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/xy2;->t:Lcom/shabakaty/downloader/zy2;

    .line 3
    iget-object v3, p0, Lcom/shabakaty/downloader/xy2;->u:Lcom/shabakaty/downloader/qw4;

    .line 4
    iget-object v4, p0, Lcom/shabakaty/downloader/xy2;->v:Lcom/shabakaty/downloader/d9;

    const/4 v6, 0x0

    const/16 v7, 0x20

    move-object v0, v8

    move v5, p1

    .line 5
    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/downloader/xy2;-><init>(Lcom/shabakaty/downloader/yv;Lcom/shabakaty/downloader/zy2;Lcom/shabakaty/downloader/qw4;Lcom/shabakaty/downloader/d9;ZZI)V

    return-object v8
.end method

.method public d1(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/xy2;
    .locals 9

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, p0, Lcom/shabakaty/downloader/xy2;->s:Lcom/shabakaty/downloader/yv;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/xy2;->t:Lcom/shabakaty/downloader/zy2;

    .line 3
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/zy2;->g(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/zy2;

    move-result-object v3

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/xy2;->u:Lcom/shabakaty/downloader/qw4;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ve2;->h(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object p1

    :goto_0
    move-object v4, p1

    .line 5
    iget-object v5, p0, Lcom/shabakaty/downloader/xy2;->v:Lcom/shabakaty/downloader/d9;

    .line 6
    iget-boolean v6, p0, Lcom/shabakaty/downloader/xy2;->w:Z

    const/4 v7, 0x0

    const/16 v8, 0x20

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/xy2;

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/shabakaty/downloader/xy2;-><init>(Lcom/shabakaty/downloader/yv;Lcom/shabakaty/downloader/zy2;Lcom/shabakaty/downloader/qw4;Lcom/shabakaty/downloader/d9;ZZI)V

    return-object p1
.end method

.method public e1(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/xy2;
    .locals 9

    const-string v0, "newAnnotations"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/xy2;

    iget-object v2, p0, Lcom/shabakaty/downloader/xy2;->s:Lcom/shabakaty/downloader/yv;

    .line 2
    iget-object v3, p0, Lcom/shabakaty/downloader/xy2;->t:Lcom/shabakaty/downloader/zy2;

    .line 3
    iget-object v4, p0, Lcom/shabakaty/downloader/xy2;->u:Lcom/shabakaty/downloader/qw4;

    .line 4
    iget-boolean v6, p0, Lcom/shabakaty/downloader/xy2;->w:Z

    const/4 v7, 0x0

    const/16 v8, 0x20

    move-object v1, v0

    move-object v5, p1

    .line 5
    invoke-direct/range {v1 .. v8}, Lcom/shabakaty/downloader/xy2;-><init>(Lcom/shabakaty/downloader/yv;Lcom/shabakaty/downloader/zy2;Lcom/shabakaty/downloader/qw4;Lcom/shabakaty/downloader/d9;ZZI)V

    return-object v0
.end method

.method public s()Lcom/shabakaty/downloader/mr2;
    .locals 2

    const-string v0, "No member resolution should be done on captured type!"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/d51;->c(Ljava/lang/String;Z)Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    return-object v0
.end method

.method public y()Lcom/shabakaty/downloader/d9;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xy2;->v:Lcom/shabakaty/downloader/d9;

    return-object v0
.end method
