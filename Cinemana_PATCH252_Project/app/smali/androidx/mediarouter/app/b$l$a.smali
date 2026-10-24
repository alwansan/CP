.class public Landroidx/mediarouter/app/b$l$a;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/b$l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Landroidx/mediarouter/app/b$l;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/b$l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/b$l$a;->r:Landroidx/mediarouter/app/b$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/b$l$a;->r:Landroidx/mediarouter/app/b$l;

    iget-object v0, v0, Landroidx/mediarouter/app/b$l;->s:Landroidx/mediarouter/app/b;

    iget-object v1, v0, Landroidx/mediarouter/app/b;->X:Landroidx/mediarouter/media/g$h;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Landroidx/mediarouter/app/b;->X:Landroidx/mediarouter/media/g$h;

    .line 3
    iget-boolean v1, v0, Landroidx/mediarouter/app/b;->n0:Z

    if-eqz v1, :cond_0

    .line 4
    iget-boolean v1, v0, Landroidx/mediarouter/app/b;->o0:Z

    invoke-virtual {v0, v1}, Landroidx/mediarouter/app/b;->o(Z)V

    :cond_0
    return-void
.end method
