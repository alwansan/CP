.class public final Lcom/shabakaty/downloader/cr2$a;
.super Ljava/lang/Object;
.source "MediaSourceList.java"

# interfaces
.implements Lcom/shabakaty/downloader/yq2;
.implements Lcom/shabakaty/downloader/s01;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/cr2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/cr2$c;

.field public s:Lcom/shabakaty/downloader/yq2$a;

.field public t:Lcom/shabakaty/downloader/s01$a;

.field public final synthetic u:Lcom/shabakaty/downloader/cr2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/cr2;Lcom/shabakaty/downloader/cr2$c;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/cr2$a;->u:Lcom/shabakaty/downloader/cr2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/cr2;->e:Lcom/shabakaty/downloader/yq2$a;

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/cr2$a;->s:Lcom/shabakaty/downloader/yq2$a;

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/cr2;->f:Lcom/shabakaty/downloader/s01$a;

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/cr2$a;->t:Lcom/shabakaty/downloader/s01$a;

    .line 6
    iput-object p2, p0, Lcom/shabakaty/downloader/cr2$a;->r:Lcom/shabakaty/downloader/cr2$c;

    return-void
.end method


# virtual methods
.method public L(ILcom/shabakaty/downloader/uq2$a;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/cr2$a;->a(ILcom/shabakaty/downloader/uq2$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/cr2$a;->t:Lcom/shabakaty/downloader/s01$a;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/s01$a;->b()V

    :cond_0
    return-void
.end method

.method public M(ILcom/shabakaty/downloader/uq2$a;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/cr2$a;->a(ILcom/shabakaty/downloader/uq2$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/cr2$a;->t:Lcom/shabakaty/downloader/s01$a;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/s01$a;->f()V

    :cond_0
    return-void
.end method

.method public Q(ILcom/shabakaty/downloader/uq2$a;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/cr2$a;->a(ILcom/shabakaty/downloader/uq2$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/cr2$a;->t:Lcom/shabakaty/downloader/s01$a;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/s01$a;->a()V

    :cond_0
    return-void
.end method

.method public final a(ILcom/shabakaty/downloader/uq2$a;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 1
    iget-object v1, p0, Lcom/shabakaty/downloader/cr2$a;->r:Lcom/shabakaty/downloader/cr2$c;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_0
    iget-object v4, v1, Lcom/shabakaty/downloader/cr2$c;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 3
    iget-object v4, v1, Lcom/shabakaty/downloader/cr2$c;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/uq2$a;

    iget-wide v4, v4, Lcom/shabakaty/downloader/mp2;->d:J

    iget-wide v6, p2, Lcom/shabakaty/downloader/mp2;->d:J

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    .line 4
    iget-object v0, p2, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/downloader/cr2$c;->b:Ljava/lang/Object;

    .line 6
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 7
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/uq2$a;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/uq2$a;

    move-result-object p2

    move-object v0, p2

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    return v2

    .line 8
    :cond_2
    iget-object p2, p0, Lcom/shabakaty/downloader/cr2$a;->r:Lcom/shabakaty/downloader/cr2$c;

    .line 9
    iget p2, p2, Lcom/shabakaty/downloader/cr2$c;->d:I

    add-int/2addr p1, p2

    .line 10
    iget-object p2, p0, Lcom/shabakaty/downloader/cr2$a;->s:Lcom/shabakaty/downloader/yq2$a;

    iget v1, p2, Lcom/shabakaty/downloader/yq2$a;->a:I

    if-ne v1, p1, :cond_3

    iget-object p2, p2, Lcom/shabakaty/downloader/yq2$a;->b:Lcom/shabakaty/downloader/uq2$a;

    .line 11
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 12
    :cond_3
    iget-object p2, p0, Lcom/shabakaty/downloader/cr2$a;->u:Lcom/shabakaty/downloader/cr2;

    .line 13
    iget-object p2, p2, Lcom/shabakaty/downloader/cr2;->e:Lcom/shabakaty/downloader/yq2$a;

    const-wide/16 v1, 0x0

    .line 14
    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/shabakaty/downloader/yq2$a;->r(ILcom/shabakaty/downloader/uq2$a;J)Lcom/shabakaty/downloader/yq2$a;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/cr2$a;->s:Lcom/shabakaty/downloader/yq2$a;

    .line 15
    :cond_4
    iget-object p2, p0, Lcom/shabakaty/downloader/cr2$a;->t:Lcom/shabakaty/downloader/s01$a;

    iget v1, p2, Lcom/shabakaty/downloader/s01$a;->a:I

    if-ne v1, p1, :cond_5

    iget-object p2, p2, Lcom/shabakaty/downloader/s01$a;->b:Lcom/shabakaty/downloader/uq2$a;

    .line 16
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 17
    :cond_5
    iget-object p2, p0, Lcom/shabakaty/downloader/cr2$a;->u:Lcom/shabakaty/downloader/cr2;

    .line 18
    iget-object p2, p2, Lcom/shabakaty/downloader/cr2;->f:Lcom/shabakaty/downloader/s01$a;

    .line 19
    invoke-virtual {p2, p1, v0}, Lcom/shabakaty/downloader/s01$a;->g(ILcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/s01$a;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/cr2$a;->t:Lcom/shabakaty/downloader/s01$a;

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method public c0(ILcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/hj2;Lcom/shabakaty/downloader/fp2;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/cr2$a;->a(ILcom/shabakaty/downloader/uq2$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/cr2$a;->s:Lcom/shabakaty/downloader/yq2$a;

    invoke-virtual {p1, p3, p4}, Lcom/shabakaty/downloader/yq2$a;->o(Lcom/shabakaty/downloader/hj2;Lcom/shabakaty/downloader/fp2;)V

    :cond_0
    return-void
.end method

.method public d0(ILcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/fp2;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/cr2$a;->a(ILcom/shabakaty/downloader/uq2$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/cr2$a;->s:Lcom/shabakaty/downloader/yq2$a;

    invoke-virtual {p1, p3}, Lcom/shabakaty/downloader/yq2$a;->c(Lcom/shabakaty/downloader/fp2;)V

    :cond_0
    return-void
.end method

.method public h0(ILcom/shabakaty/downloader/uq2$a;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/cr2$a;->a(ILcom/shabakaty/downloader/uq2$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/cr2$a;->t:Lcom/shabakaty/downloader/s01$a;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/s01$a;->c()V

    :cond_0
    return-void
.end method

.method public j(ILcom/shabakaty/downloader/uq2$a;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/cr2$a;->a(ILcom/shabakaty/downloader/uq2$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/cr2$a;->t:Lcom/shabakaty/downloader/s01$a;

    invoke-virtual {p1, p3}, Lcom/shabakaty/downloader/s01$a;->e(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public j0(ILcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/hj2;Lcom/shabakaty/downloader/fp2;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/cr2$a;->a(ILcom/shabakaty/downloader/uq2$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/cr2$a;->s:Lcom/shabakaty/downloader/yq2$a;

    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/shabakaty/downloader/yq2$a;->l(Lcom/shabakaty/downloader/hj2;Lcom/shabakaty/downloader/fp2;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method

.method public k(ILcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/hj2;Lcom/shabakaty/downloader/fp2;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/cr2$a;->a(ILcom/shabakaty/downloader/uq2$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/cr2$a;->s:Lcom/shabakaty/downloader/yq2$a;

    invoke-virtual {p1, p3, p4}, Lcom/shabakaty/downloader/yq2$a;->f(Lcom/shabakaty/downloader/hj2;Lcom/shabakaty/downloader/fp2;)V

    :cond_0
    return-void
.end method

.method public m(ILcom/shabakaty/downloader/uq2$a;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/cr2$a;->a(ILcom/shabakaty/downloader/uq2$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/cr2$a;->t:Lcom/shabakaty/downloader/s01$a;

    invoke-virtual {p1, p3}, Lcom/shabakaty/downloader/s01$a;->d(I)V

    :cond_0
    return-void
.end method

.method public s(ILcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/hj2;Lcom/shabakaty/downloader/fp2;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/cr2$a;->a(ILcom/shabakaty/downloader/uq2$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/cr2$a;->s:Lcom/shabakaty/downloader/yq2$a;

    invoke-virtual {p1, p3, p4}, Lcom/shabakaty/downloader/yq2$a;->i(Lcom/shabakaty/downloader/hj2;Lcom/shabakaty/downloader/fp2;)V

    :cond_0
    return-void
.end method

.method public v(ILcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/fp2;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/cr2$a;->a(ILcom/shabakaty/downloader/uq2$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/cr2$a;->s:Lcom/shabakaty/downloader/yq2$a;

    invoke-virtual {p1, p3}, Lcom/shabakaty/downloader/yq2$a;->q(Lcom/shabakaty/downloader/fp2;)V

    :cond_0
    return-void
.end method
