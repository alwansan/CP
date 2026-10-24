.class public abstract Lcom/facebook/drawee/controller/AbstractDraweeController;
.super Ljava/lang/Object;
.source "AbstractDraweeController.java"

# interfaces
.implements Lcom/facebook/drawee/interfaces/DraweeController;
.implements Lcom/facebook/drawee/components/DeferredReleaser$Releasable;
.implements Lcom/facebook/drawee/gestures/GestureDetector$ClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/drawee/controller/AbstractDraweeController$InternalForwardingListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "INFO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/drawee/interfaces/DraweeController;",
        "Lcom/facebook/drawee/components/DeferredReleaser$Releasable;",
        "Lcom/facebook/drawee/gestures/GestureDetector$ClickListener;"
    }
.end annotation


# static fields
.field public static final u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final w:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/facebook/drawee/components/DraweeEventTracker;

.field public final b:Lcom/facebook/drawee/components/DeferredReleaser;

.field public final c:Ljava/util/concurrent/Executor;

.field public d:Lcom/facebook/drawee/components/RetryManager;

.field public e:Lcom/facebook/drawee/gestures/GestureDetector;

.field public f:Lcom/facebook/drawee/controller/ControllerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/drawee/controller/ControllerListener<",
            "TINFO;>;"
        }
    .end annotation
.end field

.field public g:Lcom/facebook/fresco/ui/common/ForwardingControllerListener2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/fresco/ui/common/ForwardingControllerListener2<",
            "TINFO;>;"
        }
    .end annotation
.end field

.field public h:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

.field public i:Landroid/graphics/drawable/Drawable;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/Object;

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Ljava/lang/String;

.field public q:Lcom/facebook/datasource/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;"
        }
    .end annotation
.end field

.field public r:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public s:Z

.field public t:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "component_tag"

    const-string v1, "drawee"

    .line 1
    invoke-static {v0, v1}, Lcom/facebook/common/internal/ImmutableMap;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/facebook/drawee/controller/AbstractDraweeController;->u:Ljava/util/Map;

    const-string v0, "origin"

    const-string v1, "memory_bitmap"

    const-string v2, "origin_sub"

    const-string v3, "shortcut"

    .line 2
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/common/internal/ImmutableMap;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/facebook/drawee/controller/AbstractDraweeController;->v:Ljava/util/Map;

    .line 3
    const-class v0, Lcom/facebook/drawee/controller/AbstractDraweeController;

    sput-object v0, Lcom/facebook/drawee/controller/AbstractDraweeController;->w:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/drawee/components/DeferredReleaser;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-boolean p3, Lcom/facebook/drawee/components/DraweeEventTracker;->c:Z

    if-eqz p3, :cond_0

    new-instance p3, Lcom/facebook/drawee/components/DraweeEventTracker;

    invoke-direct {p3}, Lcom/facebook/drawee/components/DraweeEventTracker;-><init>()V

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/facebook/drawee/components/DraweeEventTracker;->b:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 3
    :goto_0
    iput-object p3, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->a:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 4
    new-instance p3, Lcom/facebook/fresco/ui/common/ForwardingControllerListener2;

    invoke-direct {p3}, Lcom/facebook/fresco/ui/common/ForwardingControllerListener2;-><init>()V

    iput-object p3, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->g:Lcom/facebook/fresco/ui/common/ForwardingControllerListener2;

    const/4 p3, 0x1

    .line 5
    iput-boolean p3, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->s:Z

    .line 6
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->b:Lcom/facebook/drawee/components/DeferredReleaser;

    .line 7
    iput-object p2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->c:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1, p1}, Lcom/facebook/drawee/controller/AbstractDraweeController;->o(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abstract A(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public B(Lcom/facebook/datasource/DataSource;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;TINFO;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->j()Lcom/facebook/drawee/controller/ControllerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->k:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/facebook/drawee/controller/ControllerListener;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->g:Lcom/facebook/fresco/ui/common/ForwardingControllerListener2;

    .line 3
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->k:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->n()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, p1, p2, v3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->s(Lcom/facebook/datasource/DataSource;Ljava/lang/Object;Landroid/net/Uri;)Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/facebook/fresco/ui/common/ForwardingControllerListener2;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V

    return-void
.end method

.method public final C(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/datasource/DataSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/facebook/drawee/controller/AbstractDraweeController;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 2
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->j()Lcom/facebook/drawee/controller/ControllerListener;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->t:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/Animatable;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Landroid/graphics/drawable/Animatable;

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 4
    :goto_0
    invoke-interface {v0, p1, p2, v1}, Lcom/facebook/drawee/controller/ControllerListener;->b(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V

    .line 5
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->g:Lcom/facebook/fresco/ui/common/ForwardingControllerListener2;

    .line 6
    invoke-virtual {p0, p3, p2, v3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->s(Lcom/facebook/datasource/DataSource;Ljava/lang/Object;Landroid/net/Uri;)Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/fresco/ui/common/ForwardingControllerListener2;->d(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V

    return-void
.end method

.method public final D()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->n:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->d:Lcom/facebook/drawee/components/RetryManager;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v3, v0, Lcom/facebook/drawee/components/RetryManager;->a:Z

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/facebook/drawee/components/RetryManager;->c:I

    iget v0, v0, Lcom/facebook/drawee/components/RetryManager;->b:I

    if-ge v3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public E()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 2
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->i()Ljava/lang/Object;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v3, :cond_0

    .line 3
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 4
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->q:Lcom/facebook/datasource/DataSource;

    .line 5
    iput-boolean v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->m:Z

    .line 6
    iput-boolean v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->n:Z

    .line 7
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->a:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->J:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 8
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->q:Lcom/facebook/datasource/DataSource;

    invoke-virtual {p0, v3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/drawee/controller/AbstractDraweeController;->B(Lcom/facebook/datasource/DataSource;Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->j:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->w(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->q:Lcom/facebook/datasource/DataSource;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/facebook/drawee/controller/AbstractDraweeController;->x(Ljava/lang/String;Lcom/facebook/datasource/DataSource;Ljava/lang/Object;FZZZ)V

    .line 11
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 12
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    return-void

    .line 13
    :cond_0
    iget-object v3, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->a:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v4, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->A:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v3, v4}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 14
    iget-object v3, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->h:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2}, Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;->e(FZ)V

    .line 15
    iput-boolean v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->m:Z

    .line 16
    iput-boolean v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->n:Z

    .line 17
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->k()Lcom/facebook/datasource/DataSource;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->q:Lcom/facebook/datasource/DataSource;

    .line 18
    invoke-virtual {p0, v1, v0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->B(Lcom/facebook/datasource/DataSource;Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 19
    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->f(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    sget-object v0, Lcom/facebook/drawee/controller/AbstractDraweeController;->w:Ljava/lang/Class;

    .line 21
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->q:Lcom/facebook/datasource/DataSource;

    .line 22
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "controller %x %s: submitRequest: dataSource: %x"

    .line 23
    invoke-static {v0, v4, v1, v2, v3}, Lcom/facebook/common/logging/FLog;->j(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->j:Ljava/lang/String;

    .line 25
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->q:Lcom/facebook/datasource/DataSource;

    invoke-interface {v1}, Lcom/facebook/datasource/DataSource;->a()Z

    move-result v1

    .line 26
    new-instance v2, Lcom/facebook/drawee/controller/AbstractDraweeController$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/facebook/drawee/controller/AbstractDraweeController$2;-><init>(Lcom/facebook/drawee/controller/AbstractDraweeController;Ljava/lang/String;Z)V

    .line 27
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->q:Lcom/facebook/datasource/DataSource;

    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->c:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v2, v1}, Lcom/facebook/datasource/DataSource;->h(Lcom/facebook/datasource/DataSubscriber;Ljava/util/concurrent/Executor;)V

    .line 28
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    return-void
.end method

.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->a:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->z:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 2
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->d:Lcom/facebook/drawee/components/RetryManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iput v1, v0, Lcom/facebook/drawee/components/RetryManager;->c:I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->e:Lcom/facebook/drawee/gestures/GestureDetector;

    if-eqz v0, :cond_1

    .line 5
    iput-boolean v1, v0, Lcom/facebook/drawee/gestures/GestureDetector;->c:Z

    .line 6
    iput-boolean v1, v0, Lcom/facebook/drawee/gestures/GestureDetector;->d:Z

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->h:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;->reset()V

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->z()V

    return-void
.end method

.method public b()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/facebook/drawee/controller/AbstractDraweeController;->w:Ljava/lang/Class;

    const-string v1, "controller %x %s: onDetach"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/common/logging/FLog;->i(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->a:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->y:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->l:Z

    .line 6
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->b:Lcom/facebook/drawee/components/DeferredReleaser;

    check-cast v1, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->a()V

    goto :goto_1

    .line 9
    :cond_2
    iget-object v2, v1, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v3, v1, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    monitor-exit v2

    goto :goto_1

    .line 12
    :cond_3
    iget-object v3, v1, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v3, v1, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_4

    const/4 v0, 0x1

    .line 14
    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    .line 15
    iget-object v0, v1, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->c:Landroid/os/Handler;

    iget-object v1, v1, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    :cond_5
    :goto_1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    return-void

    :catchall_0
    move-exception v0

    .line 17
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public c()Lcom/facebook/drawee/interfaces/DraweeHierarchy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->h:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    return-object v0
.end method

.method public d(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->f(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lcom/facebook/drawee/controller/AbstractDraweeController;->w:Ljava/lang/Class;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->j:Ljava/lang/String;

    const-string v4, "controller %x %s: onTouchEvent %s"

    invoke-static {v1, v4, v2, v3, p1}, Lcom/facebook/common/logging/FLog;->j(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->e:Lcom/facebook/drawee/gestures/GestureDetector;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 4
    :cond_1
    iget-boolean v1, v1, Lcom/facebook/drawee/gestures/GestureDetector;->c:Z

    if-nez v1, :cond_3

    .line 5
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->D()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    return v2

    .line 6
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->e:Lcom/facebook/drawee/gestures/GestureDetector;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_c

    if-eq v3, v4, :cond_7

    if-eq v3, v0, :cond_5

    const/4 p1, 0x3

    if-eq v3, p1, :cond_4

    goto/16 :goto_1

    .line 8
    :cond_4
    iput-boolean v2, v1, Lcom/facebook/drawee/gestures/GestureDetector;->c:Z

    .line 9
    iput-boolean v2, v1, Lcom/facebook/drawee/gestures/GestureDetector;->d:Z

    goto/16 :goto_1

    .line 10
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, v1, Lcom/facebook/drawee/gestures/GestureDetector;->f:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, v1, Lcom/facebook/drawee/gestures/GestureDetector;->b:F

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_6

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, v1, Lcom/facebook/drawee/gestures/GestureDetector;->g:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, v1, Lcom/facebook/drawee/gestures/GestureDetector;->b:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_d

    .line 12
    :cond_6
    iput-boolean v2, v1, Lcom/facebook/drawee/gestures/GestureDetector;->d:Z

    goto/16 :goto_1

    .line 13
    :cond_7
    iput-boolean v2, v1, Lcom/facebook/drawee/gestures/GestureDetector;->c:Z

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v5, v1, Lcom/facebook/drawee/gestures/GestureDetector;->f:F

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, v1, Lcom/facebook/drawee/gestures/GestureDetector;->b:F

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_8

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v5, v1, Lcom/facebook/drawee/gestures/GestureDetector;->g:F

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, v1, Lcom/facebook/drawee/gestures/GestureDetector;->b:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_9

    .line 16
    :cond_8
    iput-boolean v2, v1, Lcom/facebook/drawee/gestures/GestureDetector;->d:Z

    .line 17
    :cond_9
    iget-boolean v3, v1, Lcom/facebook/drawee/gestures/GestureDetector;->d:Z

    if-eqz v3, :cond_b

    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iget-wide v7, v1, Lcom/facebook/drawee/gestures/GestureDetector;->e:J

    sub-long/2addr v5, v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v7, p1

    cmp-long p1, v5, v7

    if-gtz p1, :cond_b

    .line 19
    iget-object p1, v1, Lcom/facebook/drawee/gestures/GestureDetector;->a:Lcom/facebook/drawee/gestures/GestureDetector$ClickListener;

    if-eqz p1, :cond_b

    .line 20
    check-cast p1, Lcom/facebook/drawee/controller/AbstractDraweeController;

    .line 21
    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->f(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 22
    sget-object v0, Lcom/facebook/drawee/controller/AbstractDraweeController;->w:Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, p1, Lcom/facebook/drawee/controller/AbstractDraweeController;->j:Ljava/lang/String;

    const-string v6, "controller %x %s: onClick"

    invoke-static {v0, v6, v3, v5}, Lcom/facebook/common/logging/FLog;->i(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    :cond_a
    invoke-virtual {p1}, Lcom/facebook/drawee/controller/AbstractDraweeController;->D()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 24
    iget-object v0, p1, Lcom/facebook/drawee/controller/AbstractDraweeController;->d:Lcom/facebook/drawee/components/RetryManager;

    .line 25
    iget v3, v0, Lcom/facebook/drawee/components/RetryManager;->c:I

    add-int/2addr v3, v4

    iput v3, v0, Lcom/facebook/drawee/components/RetryManager;->c:I

    .line 26
    iget-object v0, p1, Lcom/facebook/drawee/controller/AbstractDraweeController;->h:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    invoke-interface {v0}, Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;->reset()V

    .line 27
    invoke-virtual {p1}, Lcom/facebook/drawee/controller/AbstractDraweeController;->E()V

    .line 28
    :cond_b
    iput-boolean v2, v1, Lcom/facebook/drawee/gestures/GestureDetector;->d:Z

    goto :goto_1

    .line 29
    :cond_c
    iput-boolean v4, v1, Lcom/facebook/drawee/gestures/GestureDetector;->c:Z

    .line 30
    iput-boolean v4, v1, Lcom/facebook/drawee/gestures/GestureDetector;->d:Z

    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/facebook/drawee/gestures/GestureDetector;->e:J

    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v1, Lcom/facebook/drawee/gestures/GestureDetector;->f:F

    .line 33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, v1, Lcom/facebook/drawee/gestures/GestureDetector;->g:F

    :cond_d
    :goto_1
    return v4
.end method

.method public e()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->f(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/facebook/drawee/controller/AbstractDraweeController;->w:Ljava/lang/Class;

    .line 4
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->j:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->m:Z

    if-eqz v3, :cond_0

    const-string v3, "request already submitted"

    goto :goto_0

    :cond_0
    const-string v3, "request needs submit"

    :goto_0
    const-string v4, "controller %x %s: onAttach: %s"

    .line 5
    invoke-static {v0, v4, v1, v2, v3}, Lcom/facebook/common/logging/FLog;->j(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->a:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->x:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 7
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->h:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->b:Lcom/facebook/drawee/components/DeferredReleaser;

    invoke-virtual {v0, p0}, Lcom/facebook/drawee/components/DeferredReleaser;->a(Lcom/facebook/drawee/components/DeferredReleaser$Releasable;)V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->l:Z

    .line 11
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->m:Z

    if-nez v0, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->E()V

    .line 13
    :cond_2
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    return-void
.end method

.method public f(Lcom/facebook/drawee/interfaces/DraweeHierarchy;)V
    .locals 4

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/facebook/drawee/controller/AbstractDraweeController;->w:Ljava/lang/Class;

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->j:Ljava/lang/String;

    const-string v3, "controller %x %s: setHierarchy: %s"

    .line 4
    invoke-static {v0, v3, v1, v2, p1}, Lcom/facebook/common/logging/FLog;->j(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->a:Lcom/facebook/drawee/components/DraweeEventTracker;

    if-eqz p1, :cond_1

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->r:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->s:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 6
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->m:Z

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->b:Lcom/facebook/drawee/components/DeferredReleaser;

    invoke-virtual {v0, p0}, Lcom/facebook/drawee/components/DeferredReleaser;->a(Lcom/facebook/drawee/components/DeferredReleaser$Releasable;)V

    .line 8
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->a()V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->h:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 10
    invoke-interface {v0, v1}, Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;->b(Landroid/graphics/drawable/Drawable;)V

    .line 11
    iput-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->h:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    :cond_3
    if-eqz p1, :cond_4

    .line 12
    instance-of v0, p1, Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->a(Ljava/lang/Boolean;)V

    .line 13
    check-cast p1, Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->h:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    .line 14
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->i:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v0}, Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method

.method public g(Lcom/facebook/drawee/controller/ControllerListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/controller/ControllerListener<",
            "-TINFO;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->f:Lcom/facebook/drawee/controller/ControllerListener;

    instance-of v1, v0, Lcom/facebook/drawee/controller/AbstractDraweeController$InternalForwardingListener;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/facebook/drawee/controller/AbstractDraweeController$InternalForwardingListener;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/controller/ForwardingControllerListener;->g(Lcom/facebook/drawee/controller/ControllerListener;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 5
    new-instance v1, Lcom/facebook/drawee/controller/AbstractDraweeController$InternalForwardingListener;

    invoke-direct {v1}, Lcom/facebook/drawee/controller/AbstractDraweeController$InternalForwardingListener;-><init>()V

    .line 6
    invoke-virtual {v1, v0}, Lcom/facebook/drawee/controller/ForwardingControllerListener;->g(Lcom/facebook/drawee/controller/ControllerListener;)V

    .line 7
    invoke-virtual {v1, p1}, Lcom/facebook/drawee/controller/ForwardingControllerListener;->g(Lcom/facebook/drawee/controller/ControllerListener;)V

    .line 8
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 9
    iput-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->f:Lcom/facebook/drawee/controller/ControllerListener;

    return-void

    .line 10
    :cond_1
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->f:Lcom/facebook/drawee/controller/ControllerListener;

    return-void
.end method

.method public abstract h(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation
.end method

.method public i()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Lcom/facebook/drawee/controller/ControllerListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/drawee/controller/ControllerListener<",
            "TINFO;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->f:Lcom/facebook/drawee/controller/ControllerListener;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/facebook/drawee/controller/BaseControllerListener;->a:Lcom/facebook/drawee/controller/ControllerListener;

    :cond_0
    return-object v0
.end method

.method public abstract k()Lcom/facebook/datasource/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;"
        }
    .end annotation
.end method

.method public l(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public abstract m(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TINFO;"
        }
    .end annotation
.end method

.method public n()Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized o(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 2
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->a:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->w:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 3
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->s:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->b:Lcom/facebook/drawee/components/DeferredReleaser;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p0}, Lcom/facebook/drawee/components/DeferredReleaser;->a(Lcom/facebook/drawee/components/DeferredReleaser$Releasable;)V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->l:Z

    .line 6
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->z()V

    .line 7
    iput-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->o:Z

    .line 8
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->d:Lcom/facebook/drawee/components/RetryManager;

    if-eqz v1, :cond_1

    .line 9
    iput-boolean v0, v1, Lcom/facebook/drawee/components/RetryManager;->a:Z

    const/4 v2, 0x4

    .line 10
    iput v2, v1, Lcom/facebook/drawee/components/RetryManager;->b:I

    .line 11
    iput v0, v1, Lcom/facebook/drawee/components/RetryManager;->c:I

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->e:Lcom/facebook/drawee/gestures/GestureDetector;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 13
    iput-object v2, v1, Lcom/facebook/drawee/gestures/GestureDetector;->a:Lcom/facebook/drawee/gestures/GestureDetector$ClickListener;

    .line 14
    iput-boolean v0, v1, Lcom/facebook/drawee/gestures/GestureDetector;->c:Z

    .line 15
    iput-boolean v0, v1, Lcom/facebook/drawee/gestures/GestureDetector;->d:Z

    .line 16
    iput-object p0, v1, Lcom/facebook/drawee/gestures/GestureDetector;->a:Lcom/facebook/drawee/gestures/GestureDetector$ClickListener;

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->f:Lcom/facebook/drawee/controller/ControllerListener;

    instance-of v1, v0, Lcom/facebook/drawee/controller/AbstractDraweeController$InternalForwardingListener;

    if-eqz v1, :cond_3

    .line 18
    check-cast v0, Lcom/facebook/drawee/controller/AbstractDraweeController$InternalForwardingListener;

    .line 19
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    :try_start_1
    iget-object v1, v0, Lcom/facebook/drawee/controller/ForwardingControllerListener;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 22
    :cond_3
    iput-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->f:Lcom/facebook/drawee/controller/ControllerListener;

    .line 23
    :goto_0
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->h:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    if-eqz v0, :cond_4

    .line 24
    invoke-interface {v0}, Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;->reset()V

    .line 25
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->h:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    invoke-interface {v0, v2}, Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;->b(Landroid/graphics/drawable/Drawable;)V

    .line 26
    iput-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->h:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    .line 27
    :cond_4
    iput-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->i:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x2

    .line 28
    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->f(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 29
    sget-object v0, Lcom/facebook/drawee/controller/AbstractDraweeController;->w:Ljava/lang/Class;

    const-string v1, "controller %x %s -> %s: initialize"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/facebook/common/logging/FLog;->j(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    :cond_5
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->j:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->k:Ljava/lang/Object;

    .line 32
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 33
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final p(Ljava/lang/String;Lcom/facebook/datasource/DataSource;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 1
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->q:Lcom/facebook/datasource/DataSource;

    if-nez v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->j:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->q:Lcom/facebook/datasource/DataSource;

    if-ne p2, p1, :cond_1

    iget-boolean p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->m:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final q(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/facebook/drawee/controller/AbstractDraweeController;->w:Ljava/lang/Class;

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->j:Ljava/lang/String;

    const-string v2, "controller %x %s: %s: failure: %s"

    move-object v5, p1

    move-object v6, p2

    .line 4
    invoke-static/range {v1 .. v6}, Lcom/facebook/common/logging/FLog;->k(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final r(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->f(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    sget-object v1, Lcom/facebook/drawee/controller/AbstractDraweeController;->w:Ljava/lang/Class;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->j:Ljava/lang/String;

    aput-object v4, v2, v3

    aput-object p1, v2, v0

    const/4 p1, 0x3

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "<null>"

    :goto_0
    aput-object v3, v2, p1

    const/4 p1, 0x4

    .line 5
    invoke-virtual {p0, p2}, Lcom/facebook/drawee/controller/AbstractDraweeController;->l(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    .line 6
    sget-object p1, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    check-cast p1, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    invoke-virtual {p1, v0}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->a(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    sget-object p1, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "controller %x %s: %s: image: %s %x"

    .line 9
    invoke-static {v1, v2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    .line 10
    invoke-virtual {p1, v0, p2, v1}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->c(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final s(Lcom/facebook/datasource/DataSource;Ljava/lang/Object;Landroid/net/Uri;)Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;TINFO;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->f()Ljava/util/Map;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p2}, Lcom/facebook/drawee/controller/AbstractDraweeController;->u(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->t(Ljava/util/Map;Ljava/util/Map;Landroid/net/Uri;)Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;

    move-result-object p1

    return-object p1
.end method

.method public final t(Ljava/util/Map;Ljava/util/Map;Landroid/net/Uri;)Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->h:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    .line 2
    instance-of v0, p3, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    check-cast p3, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p3, v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->l(I)Lcom/facebook/drawee/drawable/DrawableParent;

    move-result-object v2

    .line 5
    instance-of v2, v2, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;

    if-nez v2, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p3, v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->m(I)Lcom/facebook/drawee/drawable/ScaleTypeDrawable;

    move-result-object v2

    .line 7
    iget-object v2, v2, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->u:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 8
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    invoke-virtual {p3, v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->l(I)Lcom/facebook/drawee/drawable/DrawableParent;

    move-result-object v2

    .line 10
    instance-of v2, v2, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;

    if-nez v2, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p3, v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->m(I)Lcom/facebook/drawee/drawable/ScaleTypeDrawable;

    move-result-object p3

    .line 12
    iget-object p3, p3, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->w:Landroid/graphics/PointF;

    .line 13
    :cond_2
    :goto_1
    sget-object p3, Lcom/facebook/drawee/controller/AbstractDraweeController;->u:Ljava/util/Map;

    sget-object v0, Lcom/facebook/drawee/controller/AbstractDraweeController;->v:Ljava/util/Map;

    .line 14
    iget-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->h:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    if-nez v2, :cond_3

    goto :goto_2

    .line 15
    :cond_3
    invoke-interface {v2}, Lcom/facebook/drawee/interfaces/DraweeHierarchy;->a()Landroid/graphics/Rect;

    move-result-object v1

    .line 16
    :goto_2
    iget-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->k:Ljava/lang/Object;

    .line 17
    new-instance v3, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;

    invoke-direct {v3}, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;-><init>()V

    if-eqz v1, :cond_4

    .line 18
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 19
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 20
    :cond_4
    iput-object v2, v3, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->e:Ljava/lang/Object;

    .line 21
    iput-object p1, v3, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->c:Ljava/util/Map;

    .line 22
    iput-object p2, v3, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->d:Ljava/util/Map;

    .line 23
    iput-object v0, v3, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->b:Ljava/util/Map;

    .line 24
    iput-object p3, v3, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->a:Ljava/util/Map;

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/facebook/common/internal/Objects;->b(Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->l:Z

    const-string v2, "isAttached"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->b(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    iget-boolean v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->m:Z

    const-string v2, "isRequestSubmitted"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->b(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    iget-boolean v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->n:Z

    const-string v2, "hasFetchFailed"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->b(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->r:Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, v1}, Lcom/facebook/drawee/controller/AbstractDraweeController;->l(Ljava/lang/Object;)I

    move-result v1

    const-string v2, "fetchedImage"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->a(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->a:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 6
    invoke-virtual {v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "events"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    .line 8
    invoke-virtual {v0}, Lcom/facebook/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract u(Ljava/lang/Object;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TINFO;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public final v(Ljava/lang/String;Lcom/facebook/datasource/DataSource;Ljava/lang/Throwable;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/facebook/drawee/controller/AbstractDraweeController;->p(Ljava/lang/String;Lcom/facebook/datasource/DataSource;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ignore_old_datasource @ onFailure"

    .line 3
    invoke-virtual {p0, p1, p3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->q(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-interface {p2}, Lcom/facebook/datasource/DataSource;->close()Z

    .line 5
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->a:Lcom/facebook/drawee/components/DraweeEventTracker;

    if-eqz p4, :cond_1

    sget-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->D:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->E:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    :goto_0
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    if-eqz p4, :cond_5

    const-string p1, "final_failed @ onFailure"

    .line 7
    invoke-virtual {p0, p1, p3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->q(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->q:Lcom/facebook/datasource/DataSource;

    const/4 p4, 0x1

    .line 9
    iput-boolean p4, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->n:Z

    .line 10
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->h:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    if-eqz v0, :cond_4

    .line 11
    iget-boolean v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->o:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 12
    invoke-interface {v0, v1, v2, p4}, Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;->g(Landroid/graphics/drawable/Drawable;FZ)V

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->D()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 14
    invoke-interface {v0, p3}, Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;->c(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 15
    :cond_3
    invoke-interface {v0, p3}, Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;->d(Ljava/lang/Throwable;)V

    .line 16
    :cond_4
    :goto_1
    invoke-virtual {p0, p2, p1, p1}, Lcom/facebook/drawee/controller/AbstractDraweeController;->s(Lcom/facebook/datasource/DataSource;Ljava/lang/Object;Landroid/net/Uri;)Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;

    move-result-object p1

    .line 17
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->j()Lcom/facebook/drawee/controller/ControllerListener;

    move-result-object p2

    iget-object p4, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->j:Ljava/lang/String;

    invoke-interface {p2, p4, p3}, Lcom/facebook/drawee/controller/ControllerListener;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    iget-object p2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->g:Lcom/facebook/fresco/ui/common/ForwardingControllerListener2;

    .line 19
    iget-object p4, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->j:Ljava/lang/String;

    invoke-virtual {p2, p4, p3, p1}, Lcom/facebook/fresco/ui/common/ForwardingControllerListener2;->b(Ljava/lang/String;Ljava/lang/Throwable;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V

    goto :goto_2

    :cond_5
    const-string p1, "intermediate_failed @ onFailure"

    .line 20
    invoke-virtual {p0, p1, p3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->q(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->j()Lcom/facebook/drawee/controller/ControllerListener;

    move-result-object p1

    iget-object p2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->j:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lcom/facebook/drawee/controller/ControllerListener;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    iget-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->g:Lcom/facebook/fresco/ui/common/ForwardingControllerListener2;

    .line 23
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :goto_2
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    return-void
.end method

.method public final x(Ljava/lang/String;Lcom/facebook/datasource/DataSource;Ljava/lang/Object;FZZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;TT;FZZZ)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/facebook/drawee/controller/AbstractDraweeController;->p(Ljava/lang/String;Lcom/facebook/datasource/DataSource;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "ignore_old_datasource @ onNewResult"

    .line 3
    invoke-virtual {p0, p1, p3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->r(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0, p3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->A(Ljava/lang/Object;)V

    .line 5
    invoke-interface {p2}, Lcom/facebook/datasource/DataSource;->close()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    return-void

    .line 7
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->a:Lcom/facebook/drawee/components/DraweeEventTracker;

    if-eqz p5, :cond_1

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->B:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->C:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8
    :try_start_2
    invoke-virtual {p0, p3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->h(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9
    :try_start_3
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->r:Ljava/lang/Object;

    .line 10
    iget-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->t:Landroid/graphics/drawable/Drawable;

    .line 11
    iput-object p3, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->r:Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->t:Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v3, "release_previous_result @ onNewResult"

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p5, :cond_2

    :try_start_4
    const-string p4, "set_final_result @ onNewResult"

    .line 13
    invoke-virtual {p0, p4, p3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->r(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p4, 0x0

    .line 14
    iput-object p4, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->q:Lcom/facebook/datasource/DataSource;

    .line 15
    iget-object p4, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->h:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    invoke-interface {p4, v0, v4, p6}, Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;->g(Landroid/graphics/drawable/Drawable;FZ)V

    .line 16
    invoke-virtual {p0, p1, p3, p2}, Lcom/facebook/drawee/controller/AbstractDraweeController;->C(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/datasource/DataSource;)V

    goto :goto_1

    :cond_2
    if-eqz p7, :cond_3

    const-string p4, "set_temporary_result @ onNewResult"

    .line 17
    invoke-virtual {p0, p4, p3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->r(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    iget-object p4, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->h:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    invoke-interface {p4, v0, v4, p6}, Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;->g(Landroid/graphics/drawable/Drawable;FZ)V

    .line 19
    invoke-virtual {p0, p1, p3, p2}, Lcom/facebook/drawee/controller/AbstractDraweeController;->C(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/datasource/DataSource;)V

    goto :goto_1

    :cond_3
    const-string p2, "set_intermediate_result @ onNewResult"

    .line 20
    invoke-virtual {p0, p2, p3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->r(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    iget-object p2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->h:Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;

    invoke-interface {p2, v0, p4, p6}, Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;->g(Landroid/graphics/drawable/Drawable;FZ)V

    .line 22
    invoke-virtual {p0, p3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 23
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->j()Lcom/facebook/drawee/controller/ControllerListener;

    move-result-object p4

    invoke-interface {p4, p1, p2}, Lcom/facebook/drawee/controller/ControllerListener;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    iget-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->g:Lcom/facebook/fresco/ui/common/ForwardingControllerListener2;

    .line 25
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    if-eqz v2, :cond_4

    if-eq v2, v0, :cond_4

    .line 26
    :try_start_5
    invoke-virtual {p0, v2}, Lcom/facebook/drawee/controller/AbstractDraweeController;->y(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    if-eqz v1, :cond_5

    if-eq v1, p3, :cond_5

    .line 27
    invoke-virtual {p0, v3, v1}, Lcom/facebook/drawee/controller/AbstractDraweeController;->r(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    invoke-virtual {p0, v1}, Lcom/facebook/drawee/controller/AbstractDraweeController;->A(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 29
    :cond_5
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    return-void

    :catchall_0
    move-exception p1

    if-eqz v2, :cond_6

    if-eq v2, v0, :cond_6

    .line 30
    :try_start_6
    invoke-virtual {p0, v2}, Lcom/facebook/drawee/controller/AbstractDraweeController;->y(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    if-eqz v1, :cond_7

    if-eq v1, p3, :cond_7

    .line 31
    invoke-virtual {p0, v3, v1}, Lcom/facebook/drawee/controller/AbstractDraweeController;->r(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p0, v1}, Lcom/facebook/drawee/controller/AbstractDraweeController;->A(Ljava/lang/Object;)V

    .line 33
    :cond_7
    throw p1

    :catch_0
    move-exception p4

    const-string p6, "drawable_failed @ onNewResult"

    .line 34
    invoke-virtual {p0, p6, p3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->r(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p0, p3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->A(Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/facebook/drawee/controller/AbstractDraweeController;->v(Ljava/lang/String;Lcom/facebook/datasource/DataSource;Ljava/lang/Throwable;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 37
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    return-void

    :catchall_1
    move-exception p1

    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 38
    throw p1
.end method

.method public abstract y(Landroid/graphics/drawable/Drawable;)V
.end method

.method public final z()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->m:Z

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->m:Z

    .line 3
    iput-boolean v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->n:Z

    .line 4
    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->q:Lcom/facebook/datasource/DataSource;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1}, Lcom/facebook/datasource/DataSource;->f()Ljava/util/Map;

    move-result-object v1

    .line 6
    iget-object v3, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->q:Lcom/facebook/datasource/DataSource;

    invoke-interface {v3}, Lcom/facebook/datasource/DataSource;->close()Z

    .line 7
    iput-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->q:Lcom/facebook/datasource/DataSource;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {p0, v3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->y(Landroid/graphics/drawable/Drawable;)V

    .line 10
    :cond_1
    iget-object v3, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->p:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 11
    iput-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->p:Ljava/lang/String;

    .line 12
    :cond_2
    iput-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->t:Landroid/graphics/drawable/Drawable;

    .line 13
    iget-object v3, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->r:Ljava/lang/Object;

    if-eqz v3, :cond_3

    .line 14
    invoke-virtual {p0, v3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/facebook/drawee/controller/AbstractDraweeController;->u(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 15
    iget-object v4, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->r:Ljava/lang/Object;

    const-string v5, "release"

    invoke-virtual {p0, v5, v4}, Lcom/facebook/drawee/controller/AbstractDraweeController;->r(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    iget-object v4, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->r:Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lcom/facebook/drawee/controller/AbstractDraweeController;->A(Ljava/lang/Object;)V

    .line 17
    iput-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->r:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move-object v3, v2

    :goto_1
    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->j()Lcom/facebook/drawee/controller/ControllerListener;

    move-result-object v0

    iget-object v4, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->j:Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/facebook/drawee/controller/ControllerListener;->d(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->g:Lcom/facebook/fresco/ui/common/ForwardingControllerListener2;

    .line 20
    iget-object v4, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;->j:Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v2}, Lcom/facebook/drawee/controller/AbstractDraweeController;->t(Ljava/util/Map;Ljava/util/Map;Landroid/net/Uri;)Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/facebook/fresco/ui/common/ForwardingControllerListener2;->c(Ljava/lang/String;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V

    :cond_4
    return-void
.end method
