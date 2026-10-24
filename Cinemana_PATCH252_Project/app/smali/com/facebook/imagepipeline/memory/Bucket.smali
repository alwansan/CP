.class public Lcom/facebook/imagepipeline/memory/Bucket;
.super Ljava/lang/Object;
.source "Bucket.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/util/Queue;

.field public final d:Z

.field public e:I


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->d(Z)V

    if-ltz p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 3
    :goto_1
    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->d(Z)V

    if-ltz p3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 4
    :goto_2
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->d(Z)V

    .line 5
    iput p1, p0, Lcom/facebook/imagepipeline/memory/Bucket;->a:I

    .line 6
    iput p2, p0, Lcom/facebook/imagepipeline/memory/Bucket;->b:I

    .line 7
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/Bucket;->c:Ljava/util/Queue;

    .line 8
    iput p3, p0, Lcom/facebook/imagepipeline/memory/Bucket;->e:I

    .line 9
    iput-boolean p4, p0, Lcom/facebook/imagepipeline/memory/Bucket;->d:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/Bucket;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/memory/Bucket;->e:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->d(Z)V

    .line 2
    iget v0, p0, Lcom/facebook/imagepipeline/memory/Bucket;->e:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/imagepipeline/memory/Bucket;->e:I

    return-void
.end method

.method public c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/Bucket;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/memory/Bucket;->d:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcom/facebook/imagepipeline/memory/Bucket;->e:I

    if-lez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->d(Z)V

    .line 3
    iget v0, p0, Lcom/facebook/imagepipeline/memory/Bucket;->e:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/imagepipeline/memory/Bucket;->e:I

    .line 4
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/Bucket;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    iget v0, p0, Lcom/facebook/imagepipeline/memory/Bucket;->e:I

    if-lez v0, :cond_2

    sub-int/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/facebook/imagepipeline/memory/Bucket;->e:I

    .line 7
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/Bucket;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 8
    sget-object p1, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    check-cast p1, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->a(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    sget-object p1, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    const-string v2, "Tried to release value %s from an empty bucket!"

    invoke-static {v2, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    const-string v2, "BUCKET"

    .line 10
    invoke-virtual {p1, v1, v2, v0}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->c(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
