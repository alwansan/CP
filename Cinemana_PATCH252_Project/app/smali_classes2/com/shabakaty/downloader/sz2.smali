.class public abstract Lcom/shabakaty/downloader/sz2;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/sz2$a;
    }
.end annotation


# instance fields
.field public r:Lcom/shabakaty/downloader/sz2;

.field public s:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/z02;->t(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/sz2;->n(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/sz2;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/sz2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/shabakaty/downloader/de4;->a:[Ljava/lang/String;

    .line 4
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    invoke-static {v2, p1}, Lcom/shabakaty/downloader/de4;->f(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 6
    :catch_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-object v1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/sz2;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/sz2;->e()Lcom/shabakaty/downloader/he;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/he;->z(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3
    iget-object v2, v0, Lcom/shabakaty/downloader/he;->t:[Ljava/lang/String;

    aput-object p2, v2, v1

    .line 4
    iget-object p2, v0, Lcom/shabakaty/downloader/he;->s:[Ljava/lang/String;

    aget-object p2, p2, v1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 5
    iget-object p2, v0, Lcom/shabakaty/downloader/he;->s:[Ljava/lang/String;

    aput-object p1, p2, v1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/he;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/z02;->v(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/sz2;->o()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/sz2;->e()Lcom/shabakaty/downloader/he;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/he;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    return-object v0

    :cond_1
    const-string v0, "abs:"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/sz2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/sz2;->i()Lcom/shabakaty/downloader/sz2;

    move-result-object v0

    return-object v0
.end method

.method public abstract e()Lcom/shabakaty/downloader/he;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public g(I)Lcom/shabakaty/downloader/sz2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/sz2;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/sz2;

    return-object p1
.end method

.method public abstract h()I
.end method

.method public i()Lcom/shabakaty/downloader/sz2;
    .locals 7

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/sz2;->j(Lcom/shabakaty/downloader/sz2;)Lcom/shabakaty/downloader/sz2;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 3
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/sz2;

    .line 6
    invoke-virtual {v2}, Lcom/shabakaty/downloader/sz2;->h()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 7
    invoke-virtual {v2}, Lcom/shabakaty/downloader/sz2;->l()Ljava/util/List;

    move-result-object v5

    .line 8
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/sz2;

    invoke-virtual {v6, v2}, Lcom/shabakaty/downloader/sz2;->j(Lcom/shabakaty/downloader/sz2;)Lcom/shabakaty/downloader/sz2;

    move-result-object v6

    .line 9
    invoke-interface {v5, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public j(Lcom/shabakaty/downloader/sz2;)Lcom/shabakaty/downloader/sz2;
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/sz2;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iput-object p1, v0, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Lcom/shabakaty/downloader/sz2;->s:I

    :goto_0
    iput p1, v0, Lcom/shabakaty/downloader/sz2;->s:I

    return-object v0

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public abstract k(Ljava/lang/String;)V
.end method

.method public abstract l()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/sz2;",
            ">;"
        }
    .end annotation
.end method

.method public m()Lcom/shabakaty/downloader/wu0$a;
    .locals 2

    move-object v0, p0

    .line 1
    :goto_0
    iget-object v1, v0, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2
    :cond_0
    instance-of v1, v0, Lcom/shabakaty/downloader/wu0;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/shabakaty/downloader/wu0;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 3
    :goto_2
    iget-object v0, v0, Lcom/shabakaty/downloader/wu0;->z:Lcom/shabakaty/downloader/wu0$a;

    goto :goto_3

    .line 4
    :cond_2
    new-instance v0, Lcom/shabakaty/downloader/wu0;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/wu0;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_3
    return-object v0
.end method

.method public n(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/z02;->v(Ljava/lang/Object;)V

    const-string v0, "abs:"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/sz2;->e()Lcom/shabakaty/downloader/he;

    move-result-object v4

    .line 5
    invoke-virtual {v4, v0}, Lcom/shabakaty/downloader/he;->z(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/sz2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/sz2;->e()Lcom/shabakaty/downloader/he;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/he;->z(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public abstract o()Z
.end method

.method public q(Ljava/lang/Appendable;ILcom/shabakaty/downloader/wu0$a;)V
    .locals 2

    const/16 v0, 0xa

    .line 1
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p1

    .line 2
    iget p3, p3, Lcom/shabakaty/downloader/wu0$a;->w:I

    mul-int p2, p2, p3

    .line 3
    sget-object p3, Lcom/shabakaty/downloader/de4;->a:[Ljava/lang/String;

    if-ltz p2, :cond_2

    .line 4
    sget-object p3, Lcom/shabakaty/downloader/de4;->a:[Ljava/lang/String;

    array-length v0, p3

    if-ge p2, v0, :cond_0

    .line 5
    aget-object p2, p3, p2

    goto :goto_1

    .line 6
    :cond_0
    new-array p3, p2, [C

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    const/16 v1, 0x20

    .line 7
    aput-char v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p2

    .line 9
    :goto_1
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "width must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r()Lcom/shabakaty/downloader/sz2;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/sz2;->l()Ljava/util/List;

    move-result-object v0

    .line 3
    iget v2, p0, Lcom/shabakaty/downloader/sz2;->s:I

    add-int/lit8 v2, v2, 0x1

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_1

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/sz2;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public abstract s()Ljava/lang/String;
.end method

.method public t()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/sz2$a;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/sz2;->m()Lcom/shabakaty/downloader/wu0$a;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/shabakaty/downloader/sz2$a;-><init>(Ljava/lang/Appendable;Lcom/shabakaty/downloader/wu0$a;)V

    invoke-static {v1, p0}, Lcom/shabakaty/downloader/c12;->d(Lcom/shabakaty/downloader/uz2;Lcom/shabakaty/downloader/sz2;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/sz2;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract u(Ljava/lang/Appendable;ILcom/shabakaty/downloader/wu0$a;)V
.end method

.method public abstract v(Ljava/lang/Appendable;ILcom/shabakaty/downloader/wu0$a;)V
.end method

.method public final w(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/sz2;->l()Ljava/util/List;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/sz2;

    .line 4
    iput p1, v1, Lcom/shabakaty/downloader/sz2;->s:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    invoke-static {v0}, Lcom/shabakaty/downloader/z02;->v(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/sz2;->y(Lcom/shabakaty/downloader/sz2;)V

    return-void
.end method

.method public y(Lcom/shabakaty/downloader/sz2;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/z02;->o(Z)V

    .line 2
    iget v0, p1, Lcom/shabakaty/downloader/sz2;->s:I

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/sz2;->l()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/sz2;->w(I)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p1, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    return-void
.end method
