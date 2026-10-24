.class Landroidx/camera/view/CameraXModule$1;
.super Ljava/lang/Object;
.source "CameraXModule.java"

# interfaces
.implements Lcom/shabakaty/downloader/qh2;


# virtual methods
.method public onDestroy(Lcom/shabakaty/downloader/rh2;)V
    .locals 0
    .annotation runtime Landroidx/lifecycle/h;
        value = .enum Landroidx/lifecycle/e$b;->ON_DESTROY:Landroidx/lifecycle/e$b;
    .end annotation

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    throw p1
.end method
