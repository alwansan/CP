.class public final Landroidx/mediarouter/media/c$c;
.super Landroid/os/Handler;
.source "MediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/mediarouter/media/c;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/media/c$c;->a:Landroidx/mediarouter/media/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Landroidx/mediarouter/media/c$c;->a:Landroidx/mediarouter/media/c;

    .line 3
    iput-boolean v1, p1, Landroidx/mediarouter/media/c;->w:Z

    .line 4
    iget-object v0, p1, Landroidx/mediarouter/media/c;->v:Lcom/shabakaty/downloader/cq2;

    invoke-virtual {p1, v0}, Landroidx/mediarouter/media/c;->o(Lcom/shabakaty/downloader/cq2;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Landroidx/mediarouter/media/c$c;->a:Landroidx/mediarouter/media/c;

    .line 6
    iput-boolean v1, p1, Landroidx/mediarouter/media/c;->y:Z

    .line 7
    iget-object v0, p1, Landroidx/mediarouter/media/c;->u:Landroidx/mediarouter/media/c$a;

    if-eqz v0, :cond_2

    .line 8
    iget-object v1, p1, Landroidx/mediarouter/media/c;->x:Lcom/shabakaty/downloader/fq2;

    check-cast v0, Landroidx/mediarouter/media/g$e$f;

    .line 9
    iget-object v0, v0, Landroidx/mediarouter/media/g$e$f;->a:Landroidx/mediarouter/media/g$e;

    .line 10
    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/g$e;->d(Landroidx/mediarouter/media/c;)Landroidx/mediarouter/media/g$g;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {v0, p1, v1}, Landroidx/mediarouter/media/g$e;->o(Landroidx/mediarouter/media/g$g;Lcom/shabakaty/downloader/fq2;)V

    :cond_2
    :goto_0
    return-void
.end method
