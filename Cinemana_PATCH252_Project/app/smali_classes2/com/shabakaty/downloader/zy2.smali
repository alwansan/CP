.class public final Lcom/shabakaty/downloader/zy2;
.super Ljava/lang/Object;
.source "NewCapturedType.kt"

# interfaces
.implements Lcom/shabakaty/downloader/dw;


# instance fields
.field public final a:Lcom/shabakaty/downloader/qt4;

.field public b:Lcom/shabakaty/downloader/rm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rm1<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/qw4;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Lcom/shabakaty/downloader/zy2;

.field public final d:Lcom/shabakaty/downloader/kt4;

.field public final e:Lcom/shabakaty/downloader/kf2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qt4;Lcom/shabakaty/downloader/rm1;Lcom/shabakaty/downloader/zy2;Lcom/shabakaty/downloader/kt4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qt4;",
            "Lcom/shabakaty/downloader/rm1<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/qw4;",
            ">;>;",
            "Lcom/shabakaty/downloader/zy2;",
            "Lcom/shabakaty/downloader/kt4;",
            ")V"
        }
    .end annotation

    const-string v0, "projection"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/zy2;->a:Lcom/shabakaty/downloader/qt4;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/zy2;->b:Lcom/shabakaty/downloader/rm1;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/zy2;->c:Lcom/shabakaty/downloader/zy2;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/zy2;->d:Lcom/shabakaty/downloader/kt4;

    .line 6
    sget-object p1, Lkotlin/a;->s:Lkotlin/a;

    new-instance p2, Lcom/shabakaty/downloader/zy2$a;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/zy2$a;-><init>(Lcom/shabakaty/downloader/zy2;)V

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/ng2;->b(Lkotlin/a;Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/zy2;->e:Lcom/shabakaty/downloader/kf2;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/qt4;Lcom/shabakaty/downloader/rm1;Lcom/shabakaty/downloader/zy2;Lcom/shabakaty/downloader/kt4;I)V
    .locals 2

    and-int/lit8 v0, p5, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p2, v1

    :cond_0
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_1

    move-object p3, v1

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v1

    .line 7
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/zy2;-><init>(Lcom/shabakaty/downloader/qt4;Lcom/shabakaty/downloader/rm1;Lcom/shabakaty/downloader/zy2;Lcom/shabakaty/downloader/kt4;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zy2;->e:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    :cond_0
    return-object v0
.end method

.method public b()Lcom/shabakaty/downloader/qt4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zy2;->a:Lcom/shabakaty/downloader/qt4;

    return-object v0
.end method

.method public bridge synthetic c(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/ts4;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/zy2;->g(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/zy2;

    move-result-object p1

    return-object p1
.end method

.method public d()Lcom/shabakaty/downloader/g30;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/kt4;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    const-class v1, Lcom/shabakaty/downloader/zy2;

    if-nez p1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_0
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.types.checker.NewCapturedTypeConstructor"

    .line 2
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/zy2;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/zy2;->c:Lcom/shabakaty/downloader/zy2;

    if-nez v1, :cond_3

    move-object v1, p0

    :cond_3
    iget-object v3, p1, Lcom/shabakaty/downloader/zy2;->c:Lcom/shabakaty/downloader/zy2;

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    move-object p1, v3

    :goto_1
    if-ne v1, p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/zy2;
    .locals 4

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zy2;->a:Lcom/shabakaty/downloader/qt4;

    .line 2
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/qt4;->c(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/qt4;

    move-result-object v0

    const-string v1, "projection.refine(kotlinTypeRefiner)"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/zy2;->b:Lcom/shabakaty/downloader/rm1;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lcom/shabakaty/downloader/zy2$b;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/zy2$b;-><init>(Lcom/shabakaty/downloader/zy2;Lcom/shabakaty/downloader/ve2;)V

    move-object p1, v1

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/zy2;->c:Lcom/shabakaty/downloader/zy2;

    if-nez v1, :cond_1

    move-object v1, p0

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/shabakaty/downloader/zy2;->d:Lcom/shabakaty/downloader/kt4;

    .line 7
    new-instance v3, Lcom/shabakaty/downloader/zy2;

    invoke-direct {v3, v0, p1, v1, v2}, Lcom/shabakaty/downloader/zy2;-><init>(Lcom/shabakaty/downloader/qt4;Lcom/shabakaty/downloader/rm1;Lcom/shabakaty/downloader/zy2;Lcom/shabakaty/downloader/kt4;)V

    return-object v3
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zy2;->c:Lcom/shabakaty/downloader/zy2;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/zy2;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public r()Lcom/shabakaty/downloader/zd2;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zy2;->a:Lcom/shabakaty/downloader/qt4;

    .line 2
    invoke-interface {v0}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    const-string v1, "projection.type"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/hu4;->f(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/zd2;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "CapturedType("

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/zy2;->a:Lcom/shabakaty/downloader/qt4;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
