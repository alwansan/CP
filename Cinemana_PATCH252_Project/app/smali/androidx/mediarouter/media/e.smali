.class public Landroidx/mediarouter/media/e;
.super Ljava/lang/Object;
.source "MediaRouteProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Landroidx/mediarouter/media/c$b$b;

.field public final synthetic s:Landroidx/mediarouter/media/b;

.field public final synthetic t:Ljava/util/Collection;

.field public final synthetic u:Landroidx/mediarouter/media/c$b;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/c$b;Landroidx/mediarouter/media/c$b$b;Landroidx/mediarouter/media/b;Ljava/util/Collection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/media/e;->u:Landroidx/mediarouter/media/c$b;

    iput-object p2, p0, Landroidx/mediarouter/media/e;->r:Landroidx/mediarouter/media/c$b$b;

    iput-object p3, p0, Landroidx/mediarouter/media/e;->s:Landroidx/mediarouter/media/b;

    iput-object p4, p0, Landroidx/mediarouter/media/e;->t:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/e;->r:Landroidx/mediarouter/media/c$b$b;

    iget-object v1, p0, Landroidx/mediarouter/media/e;->u:Landroidx/mediarouter/media/c$b;

    iget-object v2, p0, Landroidx/mediarouter/media/e;->s:Landroidx/mediarouter/media/b;

    iget-object v3, p0, Landroidx/mediarouter/media/e;->t:Ljava/util/Collection;

    check-cast v0, Landroidx/mediarouter/media/g$e$b;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/mediarouter/media/g$e$b;->a(Landroidx/mediarouter/media/c$b;Landroidx/mediarouter/media/b;Ljava/util/Collection;)V

    return-void
.end method
