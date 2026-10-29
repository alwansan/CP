.class public final Lcom/shabakaty/cinemana/ca1/NuvioGuardedDiffTask;
.super Ljava/lang/Object;
.source "NuvioGuardedDiffTask.java"
.implements Ljava/lang/Runnable;

.field private final a:Landroidx/recyclerview/widget/e;
.field private final b:I
.field private final c:Ljava/lang/Runnable;

.method public constructor <init>(Landroidx/recyclerview/widget/e;ILjava/lang/Runnable;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/NuvioGuardedDiffTask;->a:Landroidx/recyclerview/widget/e;
    iput p2, p0, Lcom/shabakaty/cinemana/ca1/NuvioGuardedDiffTask;->b:I
    iput-object p3, p0, Lcom/shabakaty/cinemana/ca1/NuvioGuardedDiffTask;->c:Ljava/lang/Runnable;
    return-void
.end method

# Note: the generation's final UI dispatch is ALSO checked by AndroidX d$b.
# This early worker check only avoids unnecessary diff CPU for stale queued jobs.
.method public run()V
    .locals 2
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/NuvioGuardedDiffTask;->a:Landroidx/recyclerview/widget/e;
    iget v0, v0, Landroidx/recyclerview/widget/e;->g:I
    iget v1, p0, Lcom/shabakaty/cinemana/ca1/NuvioGuardedDiffTask;->b:I
    if-ne v0, v1, :done
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/NuvioGuardedDiffTask;->c:Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :done
    return-void
.end method
