.class public final Lcom/shabakaty/downloader/c74;
.super Lcom/shabakaty/downloader/b74;
.source "KotlinTypeFactory.kt"


# instance fields
.field public final s:Lcom/shabakaty/downloader/ts4;

.field public final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/qt4;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Z

.field public final v:Lcom/shabakaty/downloader/mr2;

.field public final w:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "Lcom/shabakaty/downloader/ve2;",
            "Lcom/shabakaty/downloader/b74;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ts4;Ljava/util/List;ZLcom/shabakaty/downloader/mr2;Lcom/shabakaty/downloader/tm1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ts4;",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/qt4;",
            ">;Z",
            "Lcom/shabakaty/downloader/mr2;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/ve2;",
            "+",
            "Lcom/shabakaty/downloader/b74;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/b74;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/c74;->s:Lcom/shabakaty/downloader/ts4;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/c74;->t:Ljava/util/List;

    .line 4
    iput-boolean p3, p0, Lcom/shabakaty/downloader/c74;->u:Z

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/c74;->v:Lcom/shabakaty/downloader/mr2;

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/c74;->w:Lcom/shabakaty/downloader/tm1;

    .line 7
    instance-of p2, p4, Lcom/shabakaty/downloader/d51$d;

    if-nez p2, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "SimpleTypeImpl should not be created for error type: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p4, 0xa

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
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
    iget-object v0, p0, Lcom/shabakaty/downloader/c74;->t:Ljava/util/List;

    return-object v0
.end method

.method public T0()Lcom/shabakaty/downloader/ts4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c74;->s:Lcom/shabakaty/downloader/ts4;

    return-object v0
.end method

.method public U0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/c74;->u:Z

    return v0
.end method

.method public V0(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/qe2;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/c74;->w:Lcom/shabakaty/downloader/tm1;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/b74;

    if-nez p1, :cond_0

    move-object p1, p0

    :cond_0
    return-object p1
.end method

.method public Y0(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/qw4;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/c74;->w:Lcom/shabakaty/downloader/tm1;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/b74;

    if-nez p1, :cond_0

    move-object p1, p0

    :cond_0
    return-object p1
.end method

.method public a1(Z)Lcom/shabakaty/downloader/b74;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/c74;->u:Z

    if-ne p1, v0, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/x13;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/x13;-><init>(Lcom/shabakaty/downloader/b74;)V

    goto :goto_0

    .line 3
    :cond_1
    new-instance p1, Lcom/shabakaty/downloader/e03;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/e03;-><init>(Lcom/shabakaty/downloader/b74;)V

    :goto_0
    return-object p1
.end method

.method public b1(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/b74;
    .locals 1

    const-string v0, "newAnnotations"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/d9;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/k8;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/k8;-><init>(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/d9;)V

    :goto_0
    return-object v0
.end method

.method public s()Lcom/shabakaty/downloader/mr2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c74;->v:Lcom/shabakaty/downloader/mr2;

    return-object v0
.end method

.method public y()Lcom/shabakaty/downloader/d9;
    .locals 1

    .line 1
    sget v0, Lcom/shabakaty/downloader/d9;->a:I

    sget-object v0, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    return-object v0
.end method
