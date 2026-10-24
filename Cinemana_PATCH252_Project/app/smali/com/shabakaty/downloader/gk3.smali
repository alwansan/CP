.class public final synthetic Lcom/shabakaty/downloader/gk3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/cinemana/ui/qr_login/QrScanningActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/ui/qr_login/QrScanningActivity;I)V
    .locals 0

    iput p2, p0, Lcom/shabakaty/downloader/gk3;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/gk3;->s:Lcom/shabakaty/cinemana/ui/qr_login/QrScanningActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, Lcom/shabakaty/downloader/gk3;->r:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/gk3;->s:Lcom/shabakaty/cinemana/ui/qr_login/QrScanningActivity;

    sget v3, Lcom/shabakaty/cinemana/ui/qr_login/QrScanningActivity;->u:I

    const-string v3, "this$0"

    .line 1
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v3, v0, Lcom/shabakaty/cinemana/ui/qr_login/QrScanningActivity;->r:Lcom/shabakaty/downloader/pi2;

    if-eqz v3, :cond_10

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/lifecycle/b;

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_4

    :cond_0
    if-nez v3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v3}, Landroidx/camera/lifecycle/b;->b()V

    .line 5
    :goto_0
    new-instance v4, Lcom/shabakaty/downloader/if3$b;

    .line 6
    invoke-static {}, Lcom/shabakaty/downloader/yv2;->y()Lcom/shabakaty/downloader/yv2;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/shabakaty/downloader/if3$b;-><init>(Lcom/shabakaty/downloader/yv2;)V

    .line 7
    sget-object v6, Lcom/shabakaty/downloader/dz1;->b:Lcom/shabakaty/downloader/o90$a;

    invoke-virtual {v5, v6, v2}, Lcom/shabakaty/downloader/k83;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 8
    sget-object v7, Lcom/shabakaty/downloader/dz1;->d:Lcom/shabakaty/downloader/o90$a;

    invoke-virtual {v5, v7, v2}, Lcom/shabakaty/downloader/k83;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot use both setTargetResolution and setTargetAspectRatio on the same config."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_3
    :goto_1
    new-instance v5, Lcom/shabakaty/downloader/if3;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/if3$b;->e()Lcom/shabakaty/downloader/jf3;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/shabakaty/downloader/if3;-><init>(Lcom/shabakaty/downloader/jf3;)V

    .line 11
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 12
    new-instance v7, Lcom/shabakaty/downloader/bh2;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Lcom/shabakaty/downloader/bh2;-><init>(I)V

    invoke-virtual {v4, v7}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v7, Lcom/shabakaty/downloader/fu;

    invoke-direct {v7, v4}, Lcom/shabakaty/downloader/fu;-><init>(Ljava/util/LinkedHashSet;)V

    .line 14
    new-instance v4, Lcom/shabakaty/downloader/fy1$c;

    .line 15
    invoke-static {}, Lcom/shabakaty/downloader/yv2;->y()Lcom/shabakaty/downloader/yv2;

    move-result-object v9

    invoke-direct {v4, v9}, Lcom/shabakaty/downloader/fy1$c;-><init>(Lcom/shabakaty/downloader/yv2;)V

    .line 16
    new-instance v10, Landroid/util/Size;

    iget-object v11, v0, Lcom/shabakaty/cinemana/ui/qr_login/QrScanningActivity;->s:Lcom/shabakaty/downloader/tk1;

    if-eqz v11, :cond_e

    iget-object v11, v11, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast v11, Landroidx/camera/view/PreviewView;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v11

    iget-object v12, v0, Lcom/shabakaty/cinemana/ui/qr_login/QrScanningActivity;->s:Lcom/shabakaty/downloader/tk1;

    if-eqz v12, :cond_d

    iget-object v12, v12, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast v12, Landroidx/camera/view/PreviewView;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v12

    invoke-direct {v10, v11, v12}, Landroid/util/Size;-><init>(II)V

    .line 17
    sget-object v11, Lcom/shabakaty/downloader/dz1;->d:Lcom/shabakaty/downloader/o90$a;

    .line 18
    sget-object v12, Lcom/shabakaty/downloader/o90$c;->t:Lcom/shabakaty/downloader/o90$c;

    invoke-virtual {v9, v11, v12, v10}, Lcom/shabakaty/downloader/yv2;->A(Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;Ljava/lang/Object;)V

    .line 19
    sget-object v10, Lcom/shabakaty/downloader/ky1;->s:Lcom/shabakaty/downloader/o90$a;

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 20
    invoke-virtual {v9, v10, v12, v14}, Lcom/shabakaty/downloader/yv2;->A(Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;Ljava/lang/Object;)V

    .line 21
    invoke-virtual {v9, v6, v2}, Lcom/shabakaty/downloader/k83;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 22
    invoke-virtual {v9, v11, v2}, Lcom/shabakaty/downloader/k83;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_2

    .line 23
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot use both setTargetResolution and setTargetAspectRatio on the same config."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_5
    :goto_2
    new-instance v6, Lcom/shabakaty/downloader/fy1;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/fy1$c;->e()Lcom/shabakaty/downloader/ky1;

    move-result-object v4

    invoke-direct {v6, v4}, Lcom/shabakaty/downloader/fy1;-><init>(Lcom/shabakaty/downloader/ky1;)V

    .line 25
    new-instance v4, Lcom/shabakaty/downloader/ik3;

    invoke-direct {v4, v6, v0}, Lcom/shabakaty/downloader/ik3;-><init>(Lcom/shabakaty/downloader/fy1;Lcom/shabakaty/cinemana/ui/qr_login/QrScanningActivity;)V

    .line 26
    invoke-virtual {v4}, Landroid/view/OrientationEventListener;->enable()V

    .line 27
    new-instance v4, Lcom/shabakaty/downloader/sl2;

    new-instance v9, Lcom/shabakaty/downloader/hk3;

    invoke-direct {v9, v0, v6, v3}, Lcom/shabakaty/downloader/hk3;-><init>(Lcom/shabakaty/cinemana/ui/qr_login/QrScanningActivity;Lcom/shabakaty/downloader/fy1;Landroidx/camera/lifecycle/b;)V

    invoke-direct {v4, v9}, Lcom/shabakaty/downloader/sl2;-><init>(Lcom/shabakaty/downloader/ox3;)V

    .line 28
    iget-object v9, v0, Lcom/shabakaty/cinemana/ui/qr_login/QrScanningActivity;->t:Ljava/util/concurrent/ExecutorService;

    if-eqz v9, :cond_c

    .line 29
    iget-object v10, v6, Lcom/shabakaty/downloader/fy1;->m:Ljava/lang/Object;

    monitor-enter v10

    .line 30
    :try_start_0
    iget-object v11, v6, Lcom/shabakaty/downloader/fy1;->l:Lcom/shabakaty/downloader/iy1;

    new-instance v12, Lcom/shabakaty/downloader/dy1;

    invoke-direct {v12, v6, v4}, Lcom/shabakaty/downloader/dy1;-><init>(Lcom/shabakaty/downloader/fy1;Lcom/shabakaty/downloader/fy1$a;)V

    invoke-virtual {v11, v9, v12}, Lcom/shabakaty/downloader/iy1;->f(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/fy1$a;)V

    .line 31
    iget-object v9, v6, Lcom/shabakaty/downloader/fy1;->n:Lcom/shabakaty/downloader/fy1$a;

    if-nez v9, :cond_6

    .line 32
    iput v8, v6, Lcom/shabakaty/downloader/cx4;->c:I

    .line 33
    invoke-virtual {v6}, Lcom/shabakaty/downloader/cx4;->i()V

    .line 34
    :cond_6
    iput-object v4, v6, Lcom/shabakaty/downloader/fy1;->n:Lcom/shabakaty/downloader/fy1$a;

    .line 35
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    iget-object v4, v0, Lcom/shabakaty/cinemana/ui/qr_login/QrScanningActivity;->s:Lcom/shabakaty/downloader/tk1;

    if-eqz v4, :cond_b

    iget-object v4, v4, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast v4, Landroidx/camera/view/PreviewView;

    invoke-virtual {v4}, Landroidx/camera/view/PreviewView;->getSurfaceProvider()Lcom/shabakaty/downloader/if3$d;

    move-result-object v4

    .line 37
    sget-object v9, Lcom/shabakaty/downloader/if3;->s:Ljava/util/concurrent/Executor;

    .line 38
    invoke-static {}, Lcom/shabakaty/downloader/hl3;->b()V

    if-nez v4, :cond_7

    .line 39
    iput-object v2, v5, Lcom/shabakaty/downloader/if3;->l:Lcom/shabakaty/downloader/if3$d;

    .line 40
    iput v1, v5, Lcom/shabakaty/downloader/cx4;->c:I

    .line 41
    invoke-virtual {v5}, Lcom/shabakaty/downloader/cx4;->i()V

    goto :goto_3

    .line 42
    :cond_7
    iput-object v4, v5, Lcom/shabakaty/downloader/if3;->l:Lcom/shabakaty/downloader/if3$d;

    .line 43
    iput-object v9, v5, Lcom/shabakaty/downloader/if3;->m:Ljava/util/concurrent/Executor;

    .line 44
    iput v8, v5, Lcom/shabakaty/downloader/cx4;->c:I

    .line 45
    invoke-virtual {v5}, Lcom/shabakaty/downloader/cx4;->i()V

    .line 46
    iget-boolean v2, v5, Lcom/shabakaty/downloader/if3;->p:Z

    if-eqz v2, :cond_8

    .line 47
    invoke-virtual {v5}, Lcom/shabakaty/downloader/if3;->r()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 48
    invoke-virtual {v5}, Lcom/shabakaty/downloader/if3;->s()V

    .line 49
    iput-boolean v13, v5, Lcom/shabakaty/downloader/if3;->p:Z

    goto :goto_3

    .line 50
    :cond_8
    iget-object v2, v5, Lcom/shabakaty/downloader/cx4;->g:Landroid/util/Size;

    if-eqz v2, :cond_9

    .line 51
    invoke-virtual {v5}, Lcom/shabakaty/downloader/cx4;->b()Ljava/lang/String;

    move-result-object v2

    .line 52
    iget-object v4, v5, Lcom/shabakaty/downloader/cx4;->f:Lcom/shabakaty/downloader/hx4;

    .line 53
    check-cast v4, Lcom/shabakaty/downloader/jf3;

    .line 54
    iget-object v9, v5, Lcom/shabakaty/downloader/cx4;->g:Landroid/util/Size;

    .line 55
    invoke-virtual {v5, v2, v4, v9}, Lcom/shabakaty/downloader/if3;->q(Ljava/lang/String;Lcom/shabakaty/downloader/jf3;Landroid/util/Size;)Lcom/shabakaty/downloader/u14$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shabakaty/downloader/u14$b;->e()Lcom/shabakaty/downloader/u14;

    move-result-object v2

    .line 56
    iput-object v2, v5, Lcom/shabakaty/downloader/cx4;->k:Lcom/shabakaty/downloader/u14;

    .line 57
    invoke-virtual {v5}, Lcom/shabakaty/downloader/cx4;->h()V

    :cond_9
    :goto_3
    if-nez v3, :cond_a

    goto :goto_4

    :cond_a
    new-array v1, v1, [Lcom/shabakaty/downloader/cx4;

    aput-object v6, v1, v13

    aput-object v5, v1, v8

    .line 58
    invoke-virtual {v3, v0, v7, v1}, Landroidx/camera/lifecycle/b;->a(Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/fu;[Lcom/shabakaty/downloader/cx4;)Lcom/shabakaty/downloader/ms;

    goto :goto_4

    :cond_b
    const-string v0, "binding"

    .line 59
    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v0

    .line 60
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_c
    const-string v0, "cameraExecutor"

    .line 61
    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v2

    :cond_d
    const-string v0, "binding"

    .line 62
    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v2

    :cond_e
    const-string v0, "binding"

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v2

    :cond_f
    :goto_4
    return-void

    :cond_10
    const-string v0, "cameraProviderFuture"

    .line 63
    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v2

    .line 64
    :goto_5
    iget-object v0, p0, Lcom/shabakaty/downloader/gk3;->s:Lcom/shabakaty/cinemana/ui/qr_login/QrScanningActivity;

    sget v3, Lcom/shabakaty/cinemana/ui/qr_login/QrScanningActivity;->u:I

    const-string v3, "this$0"

    .line 65
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, v0, Lcom/shabakaty/cinemana/ui/qr_login/QrScanningActivity;->s:Lcom/shabakaty/downloader/tk1;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/cinemana/utils/ViewFinderOverlay;

    .line 67
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 68
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/16 v4, 0x50

    int-to-float v4, v4

    mul-float v4, v4, v2

    const/16 v5, 0x64

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/16 v6, 0x24

    int-to-float v6, v6

    mul-float v6, v6, v3

    div-float/2addr v6, v5

    int-to-float v1, v1

    div-float/2addr v2, v1

    div-float/2addr v3, v1

    .line 69
    new-instance v5, Landroid/graphics/RectF;

    div-float/2addr v4, v1

    sub-float v7, v2, v4

    div-float/2addr v6, v1

    sub-float v1, v3, v6

    add-float/2addr v2, v4

    add-float/2addr v3, v6

    invoke-direct {v5, v7, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, v0, Lcom/shabakaty/cinemana/utils/ViewFinderOverlay;->v:Landroid/graphics/RectF;

    .line 70
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_11
    const-string v0, "binding"

    .line 71
    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
