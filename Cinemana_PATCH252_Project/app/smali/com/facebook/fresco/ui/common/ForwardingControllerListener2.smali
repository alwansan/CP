.class public Lcom/facebook/fresco/ui/common/ForwardingControllerListener2;
.super Lcom/facebook/fresco/ui/common/BaseControllerListener2;
.source "ForwardingControllerListener2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/fresco/ui/common/BaseControllerListener2<",
        "TI;>;"
    }
.end annotation


# instance fields
.field public final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/fresco/ui/common/ControllerListener2<",
            "TI;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/facebook/fresco/ui/common/BaseControllerListener2;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/fresco/ui/common/ForwardingControllerListener2;->r:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ForwardingControllerListener2;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/facebook/fresco/ui/common/ForwardingControllerListener2;->r:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/fresco/ui/common/ControllerListener2;

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v2, p1, p2, p3}, Lcom/facebook/fresco/ui/common/ControllerListener2;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "ForwardingControllerListener2 exception in onSubmit"

    .line 4
    invoke-virtual {p0, v3, v2}, Lcom/facebook/fresco/ui/common/ForwardingControllerListener2;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Throwable;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ForwardingControllerListener2;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/facebook/fresco/ui/common/ForwardingControllerListener2;->r:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/fresco/ui/common/ControllerListener2;

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v2, p1, p2, p3}, Lcom/facebook/fresco/ui/common/ControllerListener2;->b(Ljava/lang/String;Ljava/lang/Throwable;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "ForwardingControllerListener2 exception in onFailure"

    .line 4
    invoke-virtual {p0, v3, v2}, Lcom/facebook/fresco/ui/common/ForwardingControllerListener2;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ForwardingControllerListener2;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/facebook/fresco/ui/common/ForwardingControllerListener2;->r:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/fresco/ui/common/ControllerListener2;

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v2, p1, p2}, Lcom/facebook/fresco/ui/common/ControllerListener2;->c(Ljava/lang/String;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "ForwardingControllerListener2 exception in onRelease"

    .line 4
    invoke-virtual {p0, v3, v2}, Lcom/facebook/fresco/ui/common/ForwardingControllerListener2;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TI;",
            "Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ForwardingControllerListener2;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/facebook/fresco/ui/common/ForwardingControllerListener2;->r:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/fresco/ui/common/ControllerListener2;

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v2, p1, p2, p3}, Lcom/facebook/fresco/ui/common/ControllerListener2;->d(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "ForwardingControllerListener2 exception in onFinalImageSet"

    .line 4
    invoke-virtual {p0, v3, v2}, Lcom/facebook/fresco/ui/common/ForwardingControllerListener2;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final declared-synchronized e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "FwdControllerListener2"

    .line 1
    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
