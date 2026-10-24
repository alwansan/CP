.class public Landroidx/recyclerview/widget/d;
.super Ljava/lang/Object;
.source "AsyncListDiffer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Ljava/util/List;

.field public final synthetic s:Ljava/util/List;

.field public final synthetic t:I

.field public final synthetic u:Ljava/lang/Runnable;

.field public final synthetic v:Landroidx/recyclerview/widget/e;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/e;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/d;->v:Landroidx/recyclerview/widget/e;

    iput-object p2, p0, Landroidx/recyclerview/widget/d;->r:Ljava/util/List;

    iput-object p3, p0, Landroidx/recyclerview/widget/d;->s:Ljava/util/List;

    iput p4, p0, Landroidx/recyclerview/widget/d;->t:I

    iput-object p5, p0, Landroidx/recyclerview/widget/d;->u:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/d$a;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/d$a;-><init>(Landroidx/recyclerview/widget/d;)V

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/j;->b(Landroidx/recyclerview/widget/j$b;Z)Landroidx/recyclerview/widget/j$d;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/d;->v:Landroidx/recyclerview/widget/e;

    iget-object v1, v1, Landroidx/recyclerview/widget/e;->c:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/recyclerview/widget/d$b;

    invoke-direct {v2, p0, v0}, Landroidx/recyclerview/widget/d$b;-><init>(Landroidx/recyclerview/widget/d;Landroidx/recyclerview/widget/j$d;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
