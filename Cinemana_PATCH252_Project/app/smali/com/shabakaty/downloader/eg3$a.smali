.class public Lcom/shabakaty/downloader/eg3$a;
.super Ljava/lang/Object;
.source "ProcessingSurface.java"

# interfaces
.implements Lcom/shabakaty/downloader/ho1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/eg3;-><init>(IIILandroid/os/Handler;Lcom/shabakaty/downloader/xv;Lcom/shabakaty/downloader/qv;Lcom/shabakaty/downloader/hp0;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ho1<",
        "Landroid/view/Surface;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/eg3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/eg3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/eg3$a;->a:Lcom/shabakaty/downloader/eg3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "ProcessingSurfaceTextur"

    const-string v1, "Failed to extract Listenable<Surface>."

    .line 1
    invoke-static {v0, v1, p1}, Lcom/shabakaty/downloader/vk2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Landroid/view/Surface;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/eg3$a;->a:Lcom/shabakaty/downloader/eg3;

    iget-object v0, v0, Lcom/shabakaty/downloader/eg3;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/eg3$a;->a:Lcom/shabakaty/downloader/eg3;

    iget-object v1, v1, Lcom/shabakaty/downloader/eg3;->p:Lcom/shabakaty/downloader/qv;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Lcom/shabakaty/downloader/qv;->a(Landroid/view/Surface;I)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
