.class public final Lcom/shabakaty/downloader/mq5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/ie6;


# instance fields
.field public final a:Lcom/shabakaty/downloader/zp5;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zp5;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/shabakaty/downloader/vv5;->a:Ljava/nio/charset/Charset;

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/mq5;->a:Lcom/shabakaty/downloader/zp5;

    iput-object p0, p1, Lcom/shabakaty/downloader/zp5;->s:Lcom/shabakaty/downloader/mq5;

    return-void
.end method


# virtual methods
.method public final a(ID)V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/mq5;->a:Lcom/shabakaty/downloader/zp5;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/shabakaty/downloader/zp5;->N(IJ)V

    return-void
.end method

.method public final b(IF)V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/mq5;->a:Lcom/shabakaty/downloader/zp5;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/zp5;->U(II)V

    return-void
.end method

.method public final c(ILjava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Lcom/shabakaty/downloader/hn5;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/mq5;->a:Lcom/shabakaty/downloader/zp5;

    check-cast p2, Lcom/shabakaty/downloader/hn5;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/zp5;->B(ILcom/shabakaty/downloader/hn5;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/mq5;->a:Lcom/shabakaty/downloader/zp5;

    check-cast p2, Lcom/shabakaty/downloader/y26;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/zp5;->C(ILcom/shabakaty/downloader/y26;)V

    return-void
.end method

.method public final d(ILjava/lang/Object;Lcom/shabakaty/downloader/o66;)V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/mq5;->a:Lcom/shabakaty/downloader/zp5;

    check-cast p2, Lcom/shabakaty/downloader/y26;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shabakaty/downloader/zp5;->s(ILcom/shabakaty/downloader/y26;Lcom/shabakaty/downloader/o66;)V

    return-void
.end method

.method public final e(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/mq5;->a:Lcom/shabakaty/downloader/zp5;

    .line 1
    invoke-static {p2, p3}, Lcom/shabakaty/downloader/zp5;->d0(J)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/shabakaty/downloader/zp5;->p(IJ)V

    return-void
.end method

.method public final f(ILjava/lang/Object;Lcom/shabakaty/downloader/o66;)V
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/mq5;->a:Lcom/shabakaty/downloader/zp5;

    check-cast p2, Lcom/shabakaty/downloader/y26;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/shabakaty/downloader/zp5;->A(II)V

    iget-object v1, v0, Lcom/shabakaty/downloader/zp5;->s:Lcom/shabakaty/downloader/mq5;

    invoke-interface {p3, p2, v1}, Lcom/shabakaty/downloader/o66;->e(Ljava/lang/Object;Lcom/shabakaty/downloader/ie6;)V

    const/4 p2, 0x4

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/zp5;->A(II)V

    return-void
.end method

.method public final g(II)V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/mq5;->a:Lcom/shabakaty/downloader/zp5;

    .line 1
    invoke-static {p2}, Lcom/shabakaty/downloader/zp5;->n0(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/zp5;->P(II)V

    return-void
.end method
