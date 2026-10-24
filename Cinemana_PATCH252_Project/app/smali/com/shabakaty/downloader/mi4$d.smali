.class public Lcom/shabakaty/downloader/mi4$d;
.super Ljava/lang/Object;
.source "SurfaceRequest.java"

# interfaces
.implements Lcom/shabakaty/downloader/ho1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/mi4;->a(Landroid/view/Surface;Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/yc0;)V
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
.field public final synthetic a:Lcom/shabakaty/downloader/yc0;

.field public final synthetic b:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/mi4;Lcom/shabakaty/downloader/yc0;Landroid/view/Surface;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shabakaty/downloader/mi4$d;->a:Lcom/shabakaty/downloader/yc0;

    iput-object p3, p0, Lcom/shabakaty/downloader/mi4$d;->b:Landroid/view/Surface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/mi4$e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera surface session should only fail with request cancellation. Instead failed due to:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/fl3;->i(ZLjava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/mi4$d;->a:Lcom/shabakaty/downloader/yc0;

    iget-object v0, p0, Lcom/shabakaty/downloader/mi4$d;->b:Landroid/view/Surface;

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/xh;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/shabakaty/downloader/xh;-><init>(ILandroid/view/Surface;)V

    .line 4
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/yc0;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/mi4$d;->a:Lcom/shabakaty/downloader/yc0;

    iget-object v0, p0, Lcom/shabakaty/downloader/mi4$d;->b:Landroid/view/Surface;

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/xh;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/shabakaty/downloader/xh;-><init>(ILandroid/view/Surface;)V

    .line 4
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/yc0;->accept(Ljava/lang/Object;)V

    return-void
.end method
