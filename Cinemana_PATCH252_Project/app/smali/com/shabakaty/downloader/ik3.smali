.class public final Lcom/shabakaty/downloader/ik3;
.super Landroid/view/OrientationEventListener;
.source "QrScanningActivity.kt"


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/fy1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fy1;Lcom/shabakaty/cinemana/ui/qr_login/QrScanningActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/ik3;->a:Lcom/shabakaty/downloader/fy1;

    .line 1
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x2d

    if-gt v2, p1, :cond_0

    const/16 v2, 0x86

    if-gt p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const/4 p1, 0x3

    goto :goto_3

    :cond_1
    const/16 v2, 0x87

    if-gt v2, p1, :cond_2

    const/16 v2, 0xe0

    if-gt p1, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    const/4 p1, 0x2

    goto :goto_3

    :cond_3
    const/16 v2, 0xe1

    if-gt v2, p1, :cond_4

    const/16 v2, 0x13a

    if-gt p1, v2, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    .line 1
    :goto_3
    iget-object v2, p0, Lcom/shabakaty/downloader/ik3;->a:Lcom/shabakaty/downloader/fy1;

    .line 2
    iget-object v3, v2, Lcom/shabakaty/downloader/cx4;->f:Lcom/shabakaty/downloader/hx4;

    .line 3
    check-cast v3, Lcom/shabakaty/downloader/dz1;

    const/4 v4, -0x1

    .line 4
    invoke-interface {v3, v4}, Lcom/shabakaty/downloader/dz1;->v(I)I

    move-result v3

    if-eq v3, v4, :cond_7

    if-eq v3, p1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    goto :goto_6

    .line 5
    :cond_7
    :goto_4
    iget-object v1, v2, Lcom/shabakaty/downloader/cx4;->e:Lcom/shabakaty/downloader/hx4;

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/fy1;->f(Lcom/shabakaty/downloader/o90;)Lcom/shabakaty/downloader/hx4$a;

    move-result-object v1

    .line 6
    move-object v3, v1

    check-cast v3, Lcom/shabakaty/downloader/fy1$c;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/fy1$c;->c()Lcom/shabakaty/downloader/hx4;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/dz1;

    .line 7
    invoke-interface {v5, v4}, Lcom/shabakaty/downloader/dz1;->v(I)I

    move-result v6

    if-eq v6, v4, :cond_8

    if-eq v6, p1, :cond_9

    .line 8
    :cond_8
    move-object v7, v1

    check-cast v7, Lcom/shabakaty/downloader/dz1$a;

    invoke-interface {v7, p1}, Lcom/shabakaty/downloader/dz1$a;->d(I)Ljava/lang/Object;

    :cond_9
    if-eq v6, v4, :cond_b

    if-eq p1, v4, :cond_b

    if-ne v6, p1, :cond_a

    goto :goto_5

    .line 9
    :cond_a
    invoke-static {v6}, Lcom/shabakaty/downloader/cl3;->o(I)I

    move-result v4

    .line 10
    invoke-static {p1}, Lcom/shabakaty/downloader/cl3;->o(I)I

    move-result p1

    sub-int/2addr p1, v4

    .line 11
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    rem-int/lit16 p1, p1, 0xb4

    const/16 v4, 0x5a

    if-ne p1, v4, :cond_b

    const/4 p1, 0x0

    .line 12
    invoke-interface {v5, p1}, Lcom/shabakaty/downloader/dz1;->l(Landroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 13
    check-cast v1, Lcom/shabakaty/downloader/dz1$a;

    new-instance v4, Landroid/util/Size;

    .line 14
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v5

    .line 15
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-direct {v4, v5, p1}, Landroid/util/Size;-><init>(II)V

    .line 16
    invoke-interface {v1, v4}, Lcom/shabakaty/downloader/dz1$a;->a(Landroid/util/Size;)Ljava/lang/Object;

    .line 17
    :cond_b
    :goto_5
    invoke-virtual {v3}, Lcom/shabakaty/downloader/fy1$c;->c()Lcom/shabakaty/downloader/hx4;

    move-result-object p1

    iput-object p1, v2, Lcom/shabakaty/downloader/cx4;->e:Lcom/shabakaty/downloader/hx4;

    .line 18
    invoke-virtual {v2}, Lcom/shabakaty/downloader/cx4;->a()Lcom/shabakaty/downloader/vt;

    move-result-object p1

    if-nez p1, :cond_c

    .line 19
    iget-object p1, v2, Lcom/shabakaty/downloader/cx4;->e:Lcom/shabakaty/downloader/hx4;

    iput-object p1, v2, Lcom/shabakaty/downloader/cx4;->f:Lcom/shabakaty/downloader/hx4;

    goto :goto_6

    .line 20
    :cond_c
    invoke-interface {p1}, Lcom/shabakaty/downloader/vt;->l()Lcom/shabakaty/downloader/tt;

    move-result-object p1

    iget-object v1, v2, Lcom/shabakaty/downloader/cx4;->d:Lcom/shabakaty/downloader/hx4;

    iget-object v3, v2, Lcom/shabakaty/downloader/cx4;->h:Lcom/shabakaty/downloader/hx4;

    invoke-virtual {v2, p1, v1, v3}, Lcom/shabakaty/downloader/cx4;->g(Lcom/shabakaty/downloader/tt;Lcom/shabakaty/downloader/hx4;Lcom/shabakaty/downloader/hx4;)Lcom/shabakaty/downloader/hx4;

    move-result-object p1

    iput-object p1, v2, Lcom/shabakaty/downloader/cx4;->f:Lcom/shabakaty/downloader/hx4;

    :goto_6
    if-eqz v0, :cond_d

    .line 21
    invoke-virtual {v2}, Lcom/shabakaty/downloader/fy1;->r()V

    :cond_d
    return-void
.end method
