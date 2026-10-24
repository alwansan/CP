.class public Lcom/shabakaty/downloader/q95$a;
.super Ljava/lang/Object;
.source "ZoomControl.java"

# interfaces
.implements Lcom/shabakaty/downloader/sr$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/q95;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/q95;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/q95;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/q95$a;->a:Lcom/shabakaty/downloader/q95;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/q95$a;->a:Lcom/shabakaty/downloader/q95;

    iget-object v0, v0, Lcom/shabakaty/downloader/q95;->e:Lcom/shabakaty/downloader/q95$b;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/q95$b;->a(Landroid/hardware/camera2/TotalCaptureResult;)V

    const/4 p1, 0x0

    return p1
.end method
