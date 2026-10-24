.class public final Lcom/shabakaty/downloader/x40;
.super Ljava/lang/Object;
.source "CodedOutputStreamWriter.java"

# interfaces
.implements Lcom/shabakaty/downloader/b95;


# instance fields
.field public final a:Lcom/shabakaty/downloader/v40;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/v40;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/x22;->a:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lcom/shabakaty/downloader/x40;->a:Lcom/shabakaty/downloader/v40;

    .line 3
    iput-object p0, p1, Lcom/shabakaty/downloader/v40;->a:Lcom/shabakaty/downloader/x40;

    return-void
.end method


# virtual methods
.method public a(ID)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x40;->a:Lcom/shabakaty/downloader/v40;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/shabakaty/downloader/v40;->L(IJ)V

    return-void
.end method

.method public b(IF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x40;->a:Lcom/shabakaty/downloader/v40;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/v40;->J(II)V

    return-void
.end method

.method public c(ILjava/lang/Object;Lcom/shabakaty/downloader/ey3;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x40;->a:Lcom/shabakaty/downloader/v40;

    check-cast p2, Lcom/shabakaty/downloader/ds2;

    const/4 v1, 0x3

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/shabakaty/downloader/v40;->V(II)V

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/v40;->a:Lcom/shabakaty/downloader/x40;

    invoke-interface {p3, p2, v1}, Lcom/shabakaty/downloader/ey3;->g(Ljava/lang/Object;Lcom/shabakaty/downloader/b95;)V

    const/4 p2, 0x4

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/v40;->V(II)V

    return-void
.end method

.method public d(ILjava/lang/Object;Lcom/shabakaty/downloader/ey3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x40;->a:Lcom/shabakaty/downloader/v40;

    check-cast p2, Lcom/shabakaty/downloader/ds2;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shabakaty/downloader/v40;->P(ILcom/shabakaty/downloader/ds2;Lcom/shabakaty/downloader/ey3;)V

    return-void
.end method

.method public final e(ILjava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p2, Lcom/shabakaty/downloader/dp;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/x40;->a:Lcom/shabakaty/downloader/v40;

    check-cast p2, Lcom/shabakaty/downloader/dp;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/v40;->S(ILcom/shabakaty/downloader/dp;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/x40;->a:Lcom/shabakaty/downloader/v40;

    check-cast p2, Lcom/shabakaty/downloader/ds2;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/v40;->R(ILcom/shabakaty/downloader/ds2;)V

    :goto_0
    return-void
.end method

.method public f(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x40;->a:Lcom/shabakaty/downloader/v40;

    .line 2
    invoke-static {p2}, Lcom/shabakaty/downloader/v40;->C(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/v40;->W(II)V

    return-void
.end method

.method public g(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x40;->a:Lcom/shabakaty/downloader/v40;

    .line 2
    invoke-static {p2, p3}, Lcom/shabakaty/downloader/v40;->D(J)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/shabakaty/downloader/v40;->Y(IJ)V

    return-void
.end method
