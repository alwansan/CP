.class public final Lcom/shabakaty/downloader/l17;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/ob7;


# instance fields
.field public final a:Lcom/shabakaty/downloader/e17;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/e17;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/n37;->a:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lcom/shabakaty/downloader/l17;->a:Lcom/shabakaty/downloader/e17;

    .line 3
    iput-object p0, p1, Lcom/shabakaty/downloader/e17;->a:Lcom/shabakaty/downloader/l17;

    return-void
.end method


# virtual methods
.method public final a(ID)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/l17;->a:Lcom/shabakaty/downloader/e17;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/shabakaty/downloader/e17;->z(IJ)V

    return-void
.end method

.method public final b(IF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/l17;->a:Lcom/shabakaty/downloader/e17;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/e17;->K(II)V

    return-void
.end method

.method public final c(ILjava/lang/Object;Lcom/shabakaty/downloader/n87;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/l17;->a:Lcom/shabakaty/downloader/e17;

    check-cast p2, Lcom/shabakaty/downloader/d77;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shabakaty/downloader/e17;->g(ILcom/shabakaty/downloader/d77;Lcom/shabakaty/downloader/n87;)V

    return-void
.end method

.method public final d(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/l17;->a:Lcom/shabakaty/downloader/e17;

    .line 2
    invoke-static {p2, p3}, Lcom/shabakaty/downloader/e17;->V(J)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/shabakaty/downloader/e17;->d(IJ)V

    return-void
.end method

.method public final e(ILjava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p2, Lcom/shabakaty/downloader/i07;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/l17;->a:Lcom/shabakaty/downloader/e17;

    check-cast p2, Lcom/shabakaty/downloader/i07;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/e17;->r(ILcom/shabakaty/downloader/i07;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/l17;->a:Lcom/shabakaty/downloader/e17;

    check-cast p2, Lcom/shabakaty/downloader/d77;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/e17;->f(ILcom/shabakaty/downloader/d77;)V

    return-void
.end method

.method public final f(ILjava/lang/Object;Lcom/shabakaty/downloader/n87;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/l17;->a:Lcom/shabakaty/downloader/e17;

    check-cast p2, Lcom/shabakaty/downloader/d77;

    const/4 v1, 0x3

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/shabakaty/downloader/e17;->b(II)V

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/e17;->a:Lcom/shabakaty/downloader/l17;

    invoke-interface {p3, p2, v1}, Lcom/shabakaty/downloader/n87;->e(Ljava/lang/Object;Lcom/shabakaty/downloader/ob7;)V

    const/4 p2, 0x4

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/e17;->b(II)V

    return-void
.end method

.method public final g(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/l17;->a:Lcom/shabakaty/downloader/e17;

    .line 2
    invoke-static {p2}, Lcom/shabakaty/downloader/e17;->t(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/e17;->I(II)V

    return-void
.end method
