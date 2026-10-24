.class public abstract Landroidx/mediarouter/media/c;
.super Ljava/lang/Object;
.source "MediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/c$c;,
        Landroidx/mediarouter/media/c$a;,
        Landroidx/mediarouter/media/c$b;,
        Landroidx/mediarouter/media/c$e;,
        Landroidx/mediarouter/media/c$d;
    }
.end annotation


# instance fields
.field public final r:Landroid/content/Context;

.field public final s:Landroidx/mediarouter/media/c$d;

.field public final t:Landroidx/mediarouter/media/c$c;

.field public u:Landroidx/mediarouter/media/c$a;

.field public v:Lcom/shabakaty/downloader/cq2;

.field public w:Z

.field public x:Lcom/shabakaty/downloader/fq2;

.field public y:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/mediarouter/media/c$d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/mediarouter/media/c$c;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/c$c;-><init>(Landroidx/mediarouter/media/c;)V

    iput-object v0, p0, Landroidx/mediarouter/media/c;->t:Landroidx/mediarouter/media/c$c;

    if-eqz p1, :cond_1

    .line 3
    iput-object p1, p0, Landroidx/mediarouter/media/c;->r:Landroid/content/Context;

    if-nez p2, :cond_0

    .line 4
    new-instance p2, Landroidx/mediarouter/media/c$d;

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p2, v0}, Landroidx/mediarouter/media/c$d;-><init>(Landroid/content/ComponentName;)V

    iput-object p2, p0, Landroidx/mediarouter/media/c;->s:Landroidx/mediarouter/media/c$d;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p2, p0, Landroidx/mediarouter/media/c;->s:Landroidx/mediarouter/media/c$d;

    :goto_0
    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public l(Ljava/lang/String;)Landroidx/mediarouter/media/c$b;
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "initialMemberRouteId cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(Ljava/lang/String;)Landroidx/mediarouter/media/c$e;
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "routeId cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;)Landroidx/mediarouter/media/c$e;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/c;->m(Ljava/lang/String;)Landroidx/mediarouter/media/c$e;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "routeGroupId cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "routeId cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public o(Lcom/shabakaty/downloader/cq2;)V
    .locals 0

    return-void
.end method

.method public final p(Lcom/shabakaty/downloader/fq2;)V
    .locals 1

    .line 1
    invoke-static {}, Landroidx/mediarouter/media/g;->b()V

    .line 2
    iget-object v0, p0, Landroidx/mediarouter/media/c;->x:Lcom/shabakaty/downloader/fq2;

    if-eq v0, p1, :cond_0

    .line 3
    iput-object p1, p0, Landroidx/mediarouter/media/c;->x:Lcom/shabakaty/downloader/fq2;

    .line 4
    iget-boolean p1, p0, Landroidx/mediarouter/media/c;->y:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Landroidx/mediarouter/media/c;->y:Z

    .line 6
    iget-object v0, p0, Landroidx/mediarouter/media/c;->t:Landroidx/mediarouter/media/c$c;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final q(Lcom/shabakaty/downloader/cq2;)V
    .locals 1

    .line 1
    invoke-static {}, Landroidx/mediarouter/media/g;->b()V

    .line 2
    iget-object v0, p0, Landroidx/mediarouter/media/c;->v:Lcom/shabakaty/downloader/cq2;

    .line 3
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Landroidx/mediarouter/media/c;->v:Lcom/shabakaty/downloader/cq2;

    .line 5
    iget-boolean p1, p0, Landroidx/mediarouter/media/c;->w:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Landroidx/mediarouter/media/c;->w:Z

    .line 7
    iget-object p1, p0, Landroidx/mediarouter/media/c;->t:Landroidx/mediarouter/media/c$c;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
