.class public Lcom/shabakaty/downloader/s83;
.super Lcom/shabakaty/downloader/v83;
.source "OutputConfigurationCompatApi24Impl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/s83$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/Surface;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/s83$a;

    new-instance v1, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v1, p1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/s83$a;-><init>(Landroid/hardware/camera2/params/OutputConfiguration;)V

    .line 2
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/v83;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/v83;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/Surface;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s83;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/v83;->a:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/s83$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/v83;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/shabakaty/downloader/s83$a;

    invoke-static {v0}, Lcom/shabakaty/downloader/fl3;->d(Z)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/v83;->a:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/s83$a;

    iget-object v0, v0, Lcom/shabakaty/downloader/s83$a;->a:Landroid/hardware/camera2/params/OutputConfiguration;

    return-object v0
.end method
