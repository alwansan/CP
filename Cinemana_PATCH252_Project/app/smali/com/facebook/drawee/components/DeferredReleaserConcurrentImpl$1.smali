.class public Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl$1;
.super Ljava/lang/Object;
.source "DeferredReleaserConcurrentImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;


# direct methods
.method public constructor <init>(Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl$1;->r:Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl$1;->r:Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;

    .line 2
    iget-object v0, v0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->b:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl$1;->r:Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;

    .line 5
    iget-object v2, v1, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->e:Ljava/util/ArrayList;

    .line 6
    iget-object v3, v1, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->d:Ljava/util/ArrayList;

    .line 7
    iput-object v3, v1, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->e:Ljava/util/ArrayList;

    .line 8
    iput-object v2, v1, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->d:Ljava/util/ArrayList;

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 10
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 11
    iget-object v2, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl$1;->r:Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;

    .line 12
    iget-object v2, v2, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->e:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/components/DeferredReleaser$Releasable;

    invoke-interface {v2}, Lcom/facebook/drawee/components/DeferredReleaser$Releasable;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl$1;->r:Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;

    .line 15
    iget-object v0, v0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->e:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :catchall_0
    move-exception v1

    .line 17
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
