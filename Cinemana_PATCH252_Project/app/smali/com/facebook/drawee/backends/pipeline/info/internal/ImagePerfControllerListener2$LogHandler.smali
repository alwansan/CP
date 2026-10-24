.class public Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2$LogHandler;
.super Landroid/os/Handler;
.source "ImagePerfControllerListener2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogHandler"
.end annotation


# instance fields
.field public final a:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfNotifier;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/facebook/drawee/backends/pipeline/info/ImagePerfNotifier;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2$LogHandler;->a:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfNotifier;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    check-cast v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;

    .line 4
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2$LogHandler;->a:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfNotifier;

    iget p1, p1, Landroid/os/Message;->arg1:I

    check-cast v1, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->a(Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfControllerListener2$LogHandler;->a:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfNotifier;

    iget p1, p1, Landroid/os/Message;->arg1:I

    check-cast v1, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->b(Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;I)V

    :goto_0
    return-void
.end method
