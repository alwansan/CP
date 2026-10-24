.class public final Lcom/shabakaty/downloader/rs6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@19.0.1"


# instance fields
.field public final a:Lcom/shabakaty/downloader/qs6;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qs6;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/hw6;->a:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lcom/shabakaty/downloader/rs6;->a:Lcom/shabakaty/downloader/qs6;

    iput-object p0, p1, Lcom/shabakaty/downloader/qs6;->r:Lcom/shabakaty/downloader/rs6;

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/rs6;->a:Lcom/shabakaty/downloader/qs6;

    add-int v1, p2, p2

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p2, v1

    .line 1
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/qs6;->z(II)V

    return-void
.end method

.method public final b(IJ)V
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/rs6;->a:Lcom/shabakaty/downloader/qs6;

    add-long v1, p2, p2

    const/16 v3, 0x3f

    shr-long/2addr p2, v3

    xor-long/2addr p2, v1

    .line 1
    invoke-virtual {v0, p1, p2, p3}, Lcom/shabakaty/downloader/qs6;->B(IJ)V

    return-void
.end method

.method public final c(ID)V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/rs6;->a:Lcom/shabakaty/downloader/qs6;

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/shabakaty/downloader/qs6;->t(IJ)V

    return-void
.end method

.method public final d(IF)V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/rs6;->a:Lcom/shabakaty/downloader/qs6;

    .line 1
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/qs6;->r(II)V

    return-void
.end method

.method public final e(ILjava/lang/Object;Lcom/shabakaty/downloader/k17;)V
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/rs6;->a:Lcom/shabakaty/downloader/qs6;

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/q07;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/shabakaty/downloader/qs6;->y(II)V

    iget-object v1, v0, Lcom/shabakaty/downloader/qs6;->r:Lcom/shabakaty/downloader/rs6;

    .line 2
    invoke-interface {p3, p2, v1}, Lcom/shabakaty/downloader/k17;->f(Ljava/lang/Object;Lcom/shabakaty/downloader/rs6;)V

    const/4 p2, 0x4

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/qs6;->y(II)V

    return-void
.end method

.method public final f(ILjava/lang/Object;Lcom/shabakaty/downloader/k17;)V
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/downloader/rs6;->a:Lcom/shabakaty/downloader/qs6;

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/q07;

    check-cast v0, Lcom/shabakaty/downloader/is6;

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/is6;->A(I)V

    .line 3
    move-object p1, p2

    check-cast p1, Lcom/shabakaty/downloader/xp6;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xp6;->d()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 4
    invoke-interface {p3, p1}, Lcom/shabakaty/downloader/k17;->c(Ljava/lang/Object;)I

    move-result v1

    .line 5
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/xp6;->h(I)V

    :cond_0
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/is6;->A(I)V

    iget-object p1, v0, Lcom/shabakaty/downloader/qs6;->r:Lcom/shabakaty/downloader/rs6;

    .line 6
    invoke-interface {p3, p2, p1}, Lcom/shabakaty/downloader/k17;->f(Ljava/lang/Object;Lcom/shabakaty/downloader/rs6;)V

    return-void
.end method
