.class public final Lcom/shabakaty/downloader/k1$a;
.super Ljava/lang/Object;
.source "AbstractTypeConstructor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ts4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/k1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/ve2;

.field public final b:Lcom/shabakaty/downloader/kf2;

.field public final synthetic c:Lcom/shabakaty/downloader/k1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/k1;Lcom/shabakaty/downloader/ve2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ve2;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/k1$a;->c:Lcom/shabakaty/downloader/k1;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/k1$a;->a:Lcom/shabakaty/downloader/ve2;

    .line 4
    sget-object p2, Lkotlin/a;->s:Lkotlin/a;

    new-instance v0, Lcom/shabakaty/downloader/k1$a$a;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/k1$a$a;-><init>(Lcom/shabakaty/downloader/k1$a;Lcom/shabakaty/downloader/k1;)V

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/ng2;->b(Lkotlin/a;Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/k1$a;->b:Lcom/shabakaty/downloader/kf2;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k1$a;->b:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public c(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/ts4;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k1$a;->c:Lcom/shabakaty/downloader/k1;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/k1;->c(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/ts4;

    move-result-object p1

    return-object p1
.end method

.method public d()Lcom/shabakaty/downloader/g30;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k1$a;->c:Lcom/shabakaty/downloader/k1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/f30;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/kt4;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k1$a;->c:Lcom/shabakaty/downloader/k1;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v0

    const-string v1, "this@AbstractTypeConstructor.parameters"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k1$a;->c:Lcom/shabakaty/downloader/k1;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/f30;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k1$a;->c:Lcom/shabakaty/downloader/k1;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ts4;->f()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k1$a;->c:Lcom/shabakaty/downloader/k1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/f30;->hashCode()I

    move-result v0

    return v0
.end method

.method public r()Lcom/shabakaty/downloader/zd2;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k1$a;->c:Lcom/shabakaty/downloader/k1;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ts4;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object v0

    const-string v1, "this@AbstractTypeConstructor.builtIns"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k1$a;->c:Lcom/shabakaty/downloader/k1;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
