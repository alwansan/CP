.class public Landroidx/mediarouter/media/l;
.super Ljava/lang/Object;
.source "RegisteredMediaRouteProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Landroidx/mediarouter/media/m$a;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/m$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/media/l;->r:Landroidx/mediarouter/media/m$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/l;->r:Landroidx/mediarouter/media/m$a;

    .line 2
    iget-object v1, v0, Landroidx/mediarouter/media/m$a;->h:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3
    iget-object v3, v0, Landroidx/mediarouter/media/m$a;->h:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/g$d;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroidx/mediarouter/media/g$d;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v0, Landroidx/mediarouter/media/m$a;->h:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method
