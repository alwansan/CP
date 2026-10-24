.class public final Lcom/shabakaty/downloader/k6$a;
.super Ljava/lang/Object;
.source "AnalyticsCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/k6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/nn4$b;

.field public b:Lcom/google/common/collect/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/p<",
            "Lcom/shabakaty/downloader/uq2$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/google/common/collect/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/r<",
            "Lcom/shabakaty/downloader/uq2$a;",
            "Lcom/shabakaty/downloader/nn4;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/shabakaty/downloader/uq2$a;

.field public e:Lcom/shabakaty/downloader/uq2$a;

.field public f:Lcom/shabakaty/downloader/uq2$a;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nn4$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/k6$a;->a:Lcom/shabakaty/downloader/nn4$b;

    .line 3
    sget-object p1, Lcom/google/common/collect/p;->s:Lcom/shabakaty/downloader/c0;

    .line 4
    sget-object p1, Lcom/shabakaty/downloader/oq3;->v:Lcom/google/common/collect/p;

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/k6$a;->b:Lcom/google/common/collect/p;

    .line 6
    sget-object p1, Lcom/google/common/collect/c0;->x:Lcom/google/common/collect/r;

    iput-object p1, p0, Lcom/shabakaty/downloader/k6$a;->c:Lcom/google/common/collect/r;

    return-void
.end method

.method public static b(Lcom/shabakaty/downloader/bd3;Lcom/google/common/collect/p;Lcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/uq2$a;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/bd3;",
            "Lcom/google/common/collect/p<",
            "Lcom/shabakaty/downloader/uq2$a;",
            ">;",
            "Lcom/shabakaty/downloader/uq2$a;",
            "Lcom/shabakaty/downloader/nn4$b;",
            ")",
            "Lcom/shabakaty/downloader/uq2$a;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->L()Lcom/shabakaty/downloader/nn4;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->l()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/nn4;->m(I)Ljava/lang/Object;

    move-result-object v2

    .line 4
    :goto_0
    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->a()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v0, v1, p3}, Lcom/shabakaty/downloader/nn4;->f(ILcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    move-result-object v0

    .line 6
    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->V()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v4

    .line 7
    iget-wide v6, p3, Lcom/shabakaty/downloader/nn4$b;->e:J

    sub-long/2addr v4, v6

    .line 8
    invoke-virtual {v0, v4, v5}, Lcom/shabakaty/downloader/nn4$b;->b(J)I

    move-result p3

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p3, -0x1

    :goto_2
    const/4 v0, 0x0

    .line 9
    :goto_3
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/uq2$a;

    .line 11
    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->a()Z

    move-result v6

    .line 12
    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->F()I

    move-result v7

    .line 13
    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->p()I

    move-result v8

    move-object v4, v1

    move-object v5, v2

    move v9, p3

    .line 14
    invoke-static/range {v4 .. v9}, Lcom/shabakaty/downloader/k6$a;->c(Lcom/shabakaty/downloader/uq2$a;Ljava/lang/Object;ZIII)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 15
    :cond_4
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 16
    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->a()Z

    move-result v6

    .line 17
    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->F()I

    move-result v7

    .line 18
    invoke-interface {p0}, Lcom/shabakaty/downloader/bd3;->p()I

    move-result v8

    move-object v4, p2

    move-object v5, v2

    move v9, p3

    .line 19
    invoke-static/range {v4 .. v9}, Lcom/shabakaty/downloader/k6$a;->c(Lcom/shabakaty/downloader/uq2$a;Ljava/lang/Object;ZIII)Z

    move-result p0

    if-eqz p0, :cond_5

    return-object p2

    :cond_5
    return-object v3
.end method

.method public static c(Lcom/shabakaty/downloader/uq2$a;Ljava/lang/Object;ZIII)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    iget p1, p0, Lcom/shabakaty/downloader/mp2;->b:I

    if-ne p1, p3, :cond_1

    iget p1, p0, Lcom/shabakaty/downloader/mp2;->c:I

    if-eq p1, p4, :cond_2

    :cond_1
    if-nez p2, :cond_3

    iget p1, p0, Lcom/shabakaty/downloader/mp2;->b:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    iget p0, p0, Lcom/shabakaty/downloader/mp2;->e:I

    if-ne p0, p5, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method


# virtual methods
.method public final a(Lcom/google/common/collect/r$a;Lcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/nn4;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r$a<",
            "Lcom/shabakaty/downloader/uq2$a;",
            "Lcom/shabakaty/downloader/nn4;",
            ">;",
            "Lcom/shabakaty/downloader/uq2$a;",
            "Lcom/shabakaty/downloader/nn4;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p2, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lcom/shabakaty/downloader/nn4;->b(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2
    invoke-virtual {p1, p2, p3}, Lcom/google/common/collect/r$a;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/r$a;

    goto :goto_0

    .line 3
    :cond_1
    iget-object p3, p0, Lcom/shabakaty/downloader/k6$a;->c:Lcom/google/common/collect/r;

    invoke-virtual {p3, p2}, Lcom/google/common/collect/r;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/shabakaty/downloader/nn4;

    if-eqz p3, :cond_2

    .line 4
    invoke-virtual {p1, p2, p3}, Lcom/google/common/collect/r$a;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/r$a;

    :cond_2
    :goto_0
    return-void
.end method

.method public final d(Lcom/shabakaty/downloader/nn4;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/collect/r$a;

    const/4 v1, 0x4

    .line 2
    invoke-direct {v0, v1}, Lcom/google/common/collect/r$a;-><init>(I)V

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/k6$a;->b:Lcom/google/common/collect/p;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/k6$a;->e:Lcom/shabakaty/downloader/uq2$a;

    invoke-virtual {p0, v0, v1, p1}, Lcom/shabakaty/downloader/k6$a;->a(Lcom/google/common/collect/r$a;Lcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/nn4;)V

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/k6$a;->f:Lcom/shabakaty/downloader/uq2$a;

    iget-object v2, p0, Lcom/shabakaty/downloader/k6$a;->e:Lcom/shabakaty/downloader/uq2$a;

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/r43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/k6$a;->f:Lcom/shabakaty/downloader/uq2$a;

    invoke-virtual {p0, v0, v1, p1}, Lcom/shabakaty/downloader/k6$a;->a(Lcom/google/common/collect/r$a;Lcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/nn4;)V

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/k6$a;->d:Lcom/shabakaty/downloader/uq2$a;

    iget-object v2, p0, Lcom/shabakaty/downloader/k6$a;->e:Lcom/shabakaty/downloader/uq2$a;

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/r43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/shabakaty/downloader/k6$a;->d:Lcom/shabakaty/downloader/uq2$a;

    iget-object v2, p0, Lcom/shabakaty/downloader/k6$a;->f:Lcom/shabakaty/downloader/uq2$a;

    .line 8
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/r43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/k6$a;->d:Lcom/shabakaty/downloader/uq2$a;

    invoke-virtual {p0, v0, v1, p1}, Lcom/shabakaty/downloader/k6$a;->a(Lcom/google/common/collect/r$a;Lcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/nn4;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 10
    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/k6$a;->b:Lcom/google/common/collect/p;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 11
    iget-object v2, p0, Lcom/shabakaty/downloader/k6$a;->b:Lcom/google/common/collect/p;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/uq2$a;

    invoke-virtual {p0, v0, v2, p1}, Lcom/shabakaty/downloader/k6$a;->a(Lcom/google/common/collect/r$a;Lcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/nn4;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/k6$a;->b:Lcom/google/common/collect/p;

    iget-object v2, p0, Lcom/shabakaty/downloader/k6$a;->d:Lcom/shabakaty/downloader/uq2$a;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/p;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 13
    iget-object v1, p0, Lcom/shabakaty/downloader/k6$a;->d:Lcom/shabakaty/downloader/uq2$a;

    invoke-virtual {p0, v0, v1, p1}, Lcom/shabakaty/downloader/k6$a;->a(Lcom/google/common/collect/r$a;Lcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/nn4;)V

    .line 14
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/google/common/collect/r$a;->a()Lcom/google/common/collect/r;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/k6$a;->c:Lcom/google/common/collect/r;

    return-void
.end method
