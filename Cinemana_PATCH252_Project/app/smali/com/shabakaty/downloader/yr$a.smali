.class public Lcom/shabakaty/downloader/yr$a;
.super Ljava/lang/Object;
.source "Camera2CameraImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/ho1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/yr;->u(Lcom/shabakaty/downloader/vv;Z)Lcom/shabakaty/downloader/pi2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ho1<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/vv;

.field public final synthetic b:Lcom/shabakaty/downloader/yr;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/yr;Lcom/shabakaty/downloader/vv;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/yr$a;->b:Lcom/shabakaty/downloader/yr;

    iput-object p2, p0, Lcom/shabakaty/downloader/yr$a;->a:Lcom/shabakaty/downloader/vv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/yr$a;->b:Lcom/shabakaty/downloader/yr;

    iget-object p1, p1, Lcom/shabakaty/downloader/yr;->G:Ljava/util/Map;

    iget-object v0, p0, Lcom/shabakaty/downloader/yr$a;->a:Lcom/shabakaty/downloader/vv;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/yr$a;->b:Lcom/shabakaty/downloader/yr;

    iget-object p1, p1, Lcom/shabakaty/downloader/yr;->u:Lcom/shabakaty/downloader/yr$e;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/yr$a;->b:Lcom/shabakaty/downloader/yr;

    iget p1, p1, Lcom/shabakaty/downloader/yr;->A:I

    if-nez p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/yr$a;->b:Lcom/shabakaty/downloader/yr;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/yr;->r()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/shabakaty/downloader/yr$a;->b:Lcom/shabakaty/downloader/yr;

    iget-object p1, p1, Lcom/shabakaty/downloader/yr;->z:Landroid/hardware/camera2/CameraDevice;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/yr$a;->b:Lcom/shabakaty/downloader/yr;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/shabakaty/downloader/yr;->z:Landroid/hardware/camera2/CameraDevice;

    :cond_2
    :goto_0
    return-void
.end method
