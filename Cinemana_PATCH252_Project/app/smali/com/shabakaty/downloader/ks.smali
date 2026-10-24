.class public final Lcom/shabakaty/downloader/ks;
.super Ljava/lang/Object;
.source "Camera2SessionOptionUnpacker.java"

# interfaces
.implements Lcom/shabakaty/downloader/u14$d;


# static fields
.field public static final a:Lcom/shabakaty/downloader/ks;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ks;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ks;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ks;->a:Lcom/shabakaty/downloader/ks;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/hx4;Lcom/shabakaty/downloader/u14$b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hx4<",
            "*>;",
            "Lcom/shabakaty/downloader/u14$b;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/hx4;->s(Lcom/shabakaty/downloader/u14;)Lcom/shabakaty/downloader/u14;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/k83;->s:Lcom/shabakaty/downloader/k83;

    .line 3
    invoke-static {}, Lcom/shabakaty/downloader/u14;->a()Lcom/shabakaty/downloader/u14;

    move-result-object v2

    .line 4
    iget-object v2, v2, Lcom/shabakaty/downloader/u14;->f:Lcom/shabakaty/downloader/pv;

    .line 5
    iget v2, v2, Lcom/shabakaty/downloader/pv;->c:I

    if-eqz v0, :cond_2

    .line 6
    iget-object v1, v0, Lcom/shabakaty/downloader/u14;->f:Lcom/shabakaty/downloader/pv;

    .line 7
    iget v2, v1, Lcom/shabakaty/downloader/pv;->c:I

    .line 8
    iget-object v1, v0, Lcom/shabakaty/downloader/u14;->b:Ljava/util/List;

    .line 9
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 10
    invoke-virtual {p2, v3}, Lcom/shabakaty/downloader/u14$b;->b(Landroid/hardware/camera2/CameraDevice$StateCallback;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, v0, Lcom/shabakaty/downloader/u14;->c:Ljava/util/List;

    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 13
    invoke-virtual {p2, v3}, Lcom/shabakaty/downloader/u14$b;->c(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    goto :goto_1

    .line 14
    :cond_1
    iget-object v1, v0, Lcom/shabakaty/downloader/u14;->f:Lcom/shabakaty/downloader/pv;

    .line 15
    iget-object v1, v1, Lcom/shabakaty/downloader/pv;->d:Ljava/util/List;

    .line 16
    iget-object v3, p2, Lcom/shabakaty/downloader/u14$a;->b:Lcom/shabakaty/downloader/pv$a;

    invoke-virtual {v3, v1}, Lcom/shabakaty/downloader/pv$a;->a(Ljava/util/Collection;)V

    .line 17
    iget-object v0, v0, Lcom/shabakaty/downloader/u14;->f:Lcom/shabakaty/downloader/pv;

    .line 18
    iget-object v1, v0, Lcom/shabakaty/downloader/pv;->b:Lcom/shabakaty/downloader/o90;

    .line 19
    :cond_2
    iget-object v0, p2, Lcom/shabakaty/downloader/u14$a;->b:Lcom/shabakaty/downloader/pv$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {v1}, Lcom/shabakaty/downloader/yv2;->z(Lcom/shabakaty/downloader/o90;)Lcom/shabakaty/downloader/yv2;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/pv$a;->b:Lcom/shabakaty/downloader/wv2;

    .line 21
    new-instance v0, Lcom/shabakaty/downloader/js;

    .line 22
    sget-object v0, Lcom/shabakaty/downloader/js;->s:Lcom/shabakaty/downloader/o90$a;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/o90;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 23
    iget-object v1, p2, Lcom/shabakaty/downloader/u14$a;->b:Lcom/shabakaty/downloader/pv$a;

    .line 24
    iput v0, v1, Lcom/shabakaty/downloader/pv$a;->c:I

    .line 25
    new-instance v0, Lcom/shabakaty/downloader/lt;

    invoke-direct {v0}, Lcom/shabakaty/downloader/lt;-><init>()V

    .line 26
    sget-object v1, Lcom/shabakaty/downloader/js;->t:Lcom/shabakaty/downloader/o90$a;

    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/o90;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 27
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/u14$b;->b(Landroid/hardware/camera2/CameraDevice$StateCallback;)V

    .line 28
    new-instance v0, Lcom/shabakaty/downloader/ys;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ys;-><init>()V

    .line 29
    sget-object v1, Lcom/shabakaty/downloader/js;->u:Lcom/shabakaty/downloader/o90$a;

    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/o90;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 30
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/u14$b;->c(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 31
    new-instance v0, Lcom/shabakaty/downloader/bs;

    invoke-direct {v0}, Lcom/shabakaty/downloader/bs;-><init>()V

    .line 32
    sget-object v1, Lcom/shabakaty/downloader/js;->v:Lcom/shabakaty/downloader/o90$a;

    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/o90;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 33
    new-instance v1, Lcom/shabakaty/downloader/nv;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/nv;-><init>(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    .line 34
    iget-object v0, p2, Lcom/shabakaty/downloader/u14$a;->b:Lcom/shabakaty/downloader/pv$a;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/pv$a;->b(Lcom/shabakaty/downloader/ps;)V

    .line 35
    iget-object v0, p2, Lcom/shabakaty/downloader/u14$a;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-static {}, Lcom/shabakaty/downloader/yv2;->y()Lcom/shabakaty/downloader/yv2;

    move-result-object v0

    .line 37
    sget-object v1, Lcom/shabakaty/downloader/js;->w:Lcom/shabakaty/downloader/o90$a;

    .line 38
    invoke-static {}, Lcom/shabakaty/downloader/ot;->d()Lcom/shabakaty/downloader/ot;

    move-result-object v2

    .line 39
    invoke-interface {p1, v1, v2}, Lcom/shabakaty/downloader/o90;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/ot;

    .line 40
    sget-object v3, Lcom/shabakaty/downloader/o90$c;->t:Lcom/shabakaty/downloader/o90$c;

    invoke-virtual {v0, v1, v3, v2}, Lcom/shabakaty/downloader/yv2;->A(Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;Ljava/lang/Object;)V

    .line 41
    iget-object v1, p2, Lcom/shabakaty/downloader/u14$a;->b:Lcom/shabakaty/downloader/pv$a;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/pv$a;->c(Lcom/shabakaty/downloader/o90;)V

    .line 42
    invoke-static {p1}, Lcom/shabakaty/downloader/sv$a;->d(Lcom/shabakaty/downloader/o90;)Lcom/shabakaty/downloader/sv$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/sv$a;->a()Lcom/shabakaty/downloader/sv;

    move-result-object p1

    .line 43
    iget-object p2, p2, Lcom/shabakaty/downloader/u14$a;->b:Lcom/shabakaty/downloader/pv$a;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/pv$a;->c(Lcom/shabakaty/downloader/o90;)V

    return-void
.end method
