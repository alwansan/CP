.class public final Lcom/shabakaty/downloader/v14;
.super Ljava/lang/Object;
.source "SessionConfigurationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/v14$a;,
        Lcom/shabakaty/downloader/v14$b;,
        Lcom/shabakaty/downloader/v14$c;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/v14$c;


# direct methods
.method public constructor <init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/r83;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/v14$b;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/v14$b;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/v14;->a:Lcom/shabakaty/downloader/v14$c;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/v14$a;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/v14$a;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/v14;->a:Lcom/shabakaty/downloader/v14$c;

    :goto_0
    return-void
.end method

.method public static f(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/r83;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/r83;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/r83;->a:Lcom/shabakaty/downloader/r83$a;

    invoke-interface {v1}, Lcom/shabakaty/downloader/r83$a;->c()Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/v14;->a:Lcom/shabakaty/downloader/v14$c;

    invoke-interface {v0}, Lcom/shabakaty/downloader/v14$c;->d()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/shabakaty/downloader/f12;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/v14;->a:Lcom/shabakaty/downloader/v14$c;

    invoke-interface {v0}, Lcom/shabakaty/downloader/v14$c;->a()Lcom/shabakaty/downloader/f12;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/r83;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/v14;->a:Lcom/shabakaty/downloader/v14$c;

    invoke-interface {v0}, Lcom/shabakaty/downloader/v14$c;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/v14;->a:Lcom/shabakaty/downloader/v14$c;

    invoke-interface {v0}, Lcom/shabakaty/downloader/v14$c;->e()I

    move-result v0

    return v0
.end method

.method public e()Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/v14;->a:Lcom/shabakaty/downloader/v14$c;

    invoke-interface {v0}, Lcom/shabakaty/downloader/v14$c;->b()Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/v14;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/v14;->a:Lcom/shabakaty/downloader/v14$c;

    check-cast p1, Lcom/shabakaty/downloader/v14;

    iget-object p1, p1, Lcom/shabakaty/downloader/v14;->a:Lcom/shabakaty/downloader/v14$c;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/v14;->a:Lcom/shabakaty/downloader/v14$c;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
