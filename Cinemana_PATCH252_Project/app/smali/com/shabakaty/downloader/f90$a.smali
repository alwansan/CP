.class public final Lcom/shabakaty/downloader/f90$a;
.super Ljava/lang/Object;
.source "CompositeMediaSource.java"

# interfaces
.implements Lcom/shabakaty/downloader/yq2;
.implements Lcom/shabakaty/downloader/s01;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/f90;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final r:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public s:Lcom/shabakaty/downloader/yq2$a;

.field public t:Lcom/shabakaty/downloader/s01$a;

.field public final synthetic u:Lcom/shabakaty/downloader/f90;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/f90;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/f90$a;->u:Lcom/shabakaty/downloader/f90;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/rj;->s(Lcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/yq2$a;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/f90$a;->s:Lcom/shabakaty/downloader/yq2$a;

    .line 3
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/rj;->r(Lcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/s01$a;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/f90$a;->t:Lcom/shabakaty/downloader/s01$a;

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/f90$a;->r:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public L(ILcom/shabakaty/downloader/uq2$a;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/f90$a;->a(ILcom/shabakaty/downloader/uq2$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/f90$a;->t:Lcom/shabakaty/downloader/s01$a;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/s01$a;->b()V

    :cond_0
    return-void
.end method

.method public M(ILcom/shabakaty/downloader/uq2$a;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/f90$a;->a(ILcom/shabakaty/downloader/uq2$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/f90$a;->t:Lcom/shabakaty/downloader/s01$a;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/s01$a;->f()V

    :cond_0
    return-void
.end method

.method public Q(ILcom/shabakaty/downloader/uq2$a;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/f90$a;->a(ILcom/shabakaty/downloader/uq2$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/f90$a;->t:Lcom/shabakaty/downloader/s01$a;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/s01$a;->a()V

    :cond_0
    return-void
.end method

.method public final a(ILcom/shabakaty/downloader/uq2$a;)Z
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/f90$a;->u:Lcom/shabakaty/downloader/f90;

    iget-object v1, p0, Lcom/shabakaty/downloader/f90$a;->r:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Lcom/shabakaty/downloader/f90;->y(Ljava/lang/Object;Lcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/uq2$a;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p2, 0x0

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/f90$a;->u:Lcom/shabakaty/downloader/f90;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/f90$a;->s:Lcom/shabakaty/downloader/yq2$a;

    iget v1, v0, Lcom/shabakaty/downloader/yq2$a;->a:I

    if-ne v1, p1, :cond_2

    iget-object v0, v0, Lcom/shabakaty/downloader/yq2$a;->b:Lcom/shabakaty/downloader/uq2$a;

    .line 4
    invoke-static {v0, p2}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/f90$a;->u:Lcom/shabakaty/downloader/f90;

    const-wide/16 v1, 0x0

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/rj;->t:Lcom/shabakaty/downloader/yq2$a;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/shabakaty/downloader/yq2$a;->r(ILcom/shabakaty/downloader/uq2$a;J)Lcom/shabakaty/downloader/yq2$a;

    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/shabakaty/downloader/f90$a;->s:Lcom/shabakaty/downloader/yq2$a;

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/f90$a;->t:Lcom/shabakaty/downloader/s01$a;

    iget v1, v0, Lcom/shabakaty/downloader/s01$a;->a:I

    if-ne v1, p1, :cond_4

    iget-object v0, v0, Lcom/shabakaty/downloader/s01$a;->b:Lcom/shabakaty/downloader/uq2$a;

    .line 9
    invoke-static {v0, p2}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/shabakaty/downloader/f90$a;->u:Lcom/shabakaty/downloader/f90;

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/rj;->u:Lcom/shabakaty/downloader/s01$a;

    .line 12
    new-instance v1, Lcom/shabakaty/downloader/s01$a;

    iget-object v0, v0, Lcom/shabakaty/downloader/s01$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1, v0, p1, p2}, Lcom/shabakaty/downloader/s01$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/shabakaty/downloader/uq2$a;)V

    .line 13
    iput-object v1, p0, Lcom/shabakaty/downloader/f90$a;->t:Lcom/shabakaty/downloader/s01$a;

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lcom/shabakaty/downloader/fp2;)Lcom/shabakaty/downloader/fp2;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/f90$a;->u:Lcom/shabakaty/downloader/f90;

    iget-wide v7, p1, Lcom/shabakaty/downloader/fp2;->f:J

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/f90$a;->u:Lcom/shabakaty/downloader/f90;

    iget-wide v9, p1, Lcom/shabakaty/downloader/fp2;->g:J

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-wide v0, p1, Lcom/shabakaty/downloader/fp2;->f:J

    cmp-long v2, v7, v0

    if-nez v2, :cond_0

    iget-wide v0, p1, Lcom/shabakaty/downloader/fp2;->g:J

    cmp-long v2, v9, v0

    if-nez v2, :cond_0

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/fp2;

    iget v2, p1, Lcom/shabakaty/downloader/fp2;->a:I

    iget v3, p1, Lcom/shabakaty/downloader/fp2;->b:I

    iget-object v4, p1, Lcom/shabakaty/downloader/fp2;->c:Lcom/shabakaty/downloader/wh1;

    iget v5, p1, Lcom/shabakaty/downloader/fp2;->d:I

    iget-object v6, p1, Lcom/shabakaty/downloader/fp2;->e:Ljava/lang/Object;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/shabakaty/downloader/fp2;-><init>(IILcom/shabakaty/downloader/wh1;ILjava/lang/Object;JJ)V

    return-object v0
.end method

.method public c0(ILcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/hj2;Lcom/shabakaty/downloader/fp2;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/f90$a;->a(ILcom/shabakaty/downloader/uq2$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/f90$a;->s:Lcom/shabakaty/downloader/yq2$a;

    .line 3
    invoke-virtual {p0, p4}, Lcom/shabakaty/downloader/f90$a;->b(Lcom/shabakaty/downloader/fp2;)Lcom/shabakaty/downloader/fp2;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p3, p2}, Lcom/shabakaty/downloader/yq2$a;->o(Lcom/shabakaty/downloader/hj2;Lcom/shabakaty/downloader/fp2;)V

    :cond_0
    return-void
.end method

.method public d0(ILcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/fp2;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/f90$a;->a(ILcom/shabakaty/downloader/uq2$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/f90$a;->s:Lcom/shabakaty/downloader/yq2$a;

    invoke-virtual {p0, p3}, Lcom/shabakaty/downloader/f90$a;->b(Lcom/shabakaty/downloader/fp2;)Lcom/shabakaty/downloader/fp2;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/yq2$a;->c(Lcom/shabakaty/downloader/fp2;)V

    :cond_0
    return-void
.end method

.method public h0(ILcom/shabakaty/downloader/uq2$a;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/f90$a;->a(ILcom/shabakaty/downloader/uq2$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/f90$a;->t:Lcom/shabakaty/downloader/s01$a;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/s01$a;->c()V

    :cond_0
    return-void
.end method

.method public j(ILcom/shabakaty/downloader/uq2$a;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/f90$a;->a(ILcom/shabakaty/downloader/uq2$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/f90$a;->t:Lcom/shabakaty/downloader/s01$a;

    invoke-virtual {p1, p3}, Lcom/shabakaty/downloader/s01$a;->e(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public j0(ILcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/hj2;Lcom/shabakaty/downloader/fp2;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/f90$a;->a(ILcom/shabakaty/downloader/uq2$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/f90$a;->s:Lcom/shabakaty/downloader/yq2$a;

    .line 3
    invoke-virtual {p0, p4}, Lcom/shabakaty/downloader/f90$a;->b(Lcom/shabakaty/downloader/fp2;)Lcom/shabakaty/downloader/fp2;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p3, p2, p5, p6}, Lcom/shabakaty/downloader/yq2$a;->l(Lcom/shabakaty/downloader/hj2;Lcom/shabakaty/downloader/fp2;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method

.method public k(ILcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/hj2;Lcom/shabakaty/downloader/fp2;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/f90$a;->a(ILcom/shabakaty/downloader/uq2$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/f90$a;->s:Lcom/shabakaty/downloader/yq2$a;

    .line 3
    invoke-virtual {p0, p4}, Lcom/shabakaty/downloader/f90$a;->b(Lcom/shabakaty/downloader/fp2;)Lcom/shabakaty/downloader/fp2;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p3, p2}, Lcom/shabakaty/downloader/yq2$a;->f(Lcom/shabakaty/downloader/hj2;Lcom/shabakaty/downloader/fp2;)V

    :cond_0
    return-void
.end method

.method public m(ILcom/shabakaty/downloader/uq2$a;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/f90$a;->a(ILcom/shabakaty/downloader/uq2$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/f90$a;->t:Lcom/shabakaty/downloader/s01$a;

    invoke-virtual {p1, p3}, Lcom/shabakaty/downloader/s01$a;->d(I)V

    :cond_0
    return-void
.end method

.method public s(ILcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/hj2;Lcom/shabakaty/downloader/fp2;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/f90$a;->a(ILcom/shabakaty/downloader/uq2$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/f90$a;->s:Lcom/shabakaty/downloader/yq2$a;

    .line 3
    invoke-virtual {p0, p4}, Lcom/shabakaty/downloader/f90$a;->b(Lcom/shabakaty/downloader/fp2;)Lcom/shabakaty/downloader/fp2;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p3, p2}, Lcom/shabakaty/downloader/yq2$a;->i(Lcom/shabakaty/downloader/hj2;Lcom/shabakaty/downloader/fp2;)V

    :cond_0
    return-void
.end method

.method public v(ILcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/fp2;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/f90$a;->a(ILcom/shabakaty/downloader/uq2$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/f90$a;->s:Lcom/shabakaty/downloader/yq2$a;

    invoke-virtual {p0, p3}, Lcom/shabakaty/downloader/f90$a;->b(Lcom/shabakaty/downloader/fp2;)Lcom/shabakaty/downloader/fp2;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/yq2$a;->q(Lcom/shabakaty/downloader/fp2;)V

    :cond_0
    return-void
.end method
