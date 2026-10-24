.class public Landroidx/mediarouter/media/i;
.super Ljava/lang/Object;
.source "MediaRouter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Landroidx/mediarouter/media/j;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/j;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/media/i;->s:Landroidx/mediarouter/media/j;

    iput p2, p0, Landroidx/mediarouter/media/i;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/i;->s:Landroidx/mediarouter/media/j;

    iget-object v0, v0, Landroidx/mediarouter/media/j;->g:Landroidx/mediarouter/media/g$e$d;

    iget-object v0, v0, Landroidx/mediarouter/media/g$e$d;->c:Landroidx/mediarouter/media/g$e;

    iget-object v0, v0, Landroidx/mediarouter/media/g$e;->p:Landroidx/mediarouter/media/g$h;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Landroidx/mediarouter/media/i;->r:I

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/g$h;->l(I)V

    :cond_0
    return-void
.end method
