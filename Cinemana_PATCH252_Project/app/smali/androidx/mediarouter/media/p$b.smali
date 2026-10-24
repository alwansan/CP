.class public Landroidx/mediarouter/media/p$b;
.super Landroidx/mediarouter/media/p;
.source "SystemMediaRouteProvider.java"

# interfaces
.implements Lcom/shabakaty/downloader/iq2;
.implements Lcom/shabakaty/downloader/lq2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/p$b$a;,
        Landroidx/mediarouter/media/p$b$c;,
        Landroidx/mediarouter/media/p$b$b;
    }
.end annotation


# static fields
.field public static final J:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field public static final K:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:Ljava/lang/Object;

.field public final B:Ljava/lang/Object;

.field public final C:Ljava/lang/Object;

.field public final D:Ljava/lang/Object;

.field public E:I

.field public F:Z

.field public G:Z

.field public final H:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/mediarouter/media/p$b$b;",
            ">;"
        }
    .end annotation
.end field

.field public final I:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/mediarouter/media/p$b$c;",
            ">;"
        }
    .end annotation
.end field

.field public final z:Landroidx/mediarouter/media/p$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.intent.category.LIVE_AUDIO"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroidx/mediarouter/media/p$b;->J:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.intent.category.LIVE_VIDEO"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroidx/mediarouter/media/p$b;->K:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/mediarouter/media/p$e;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/mediarouter/media/p;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/p$b;->H:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/p$b;->I:Ljava/util/ArrayList;

    .line 4
    iput-object p2, p0, Landroidx/mediarouter/media/p$b;->z:Landroidx/mediarouter/media/p$e;

    const-string p2, "media_router"

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 6
    iput-object p2, p0, Landroidx/mediarouter/media/p$b;->A:Ljava/lang/Object;

    .line 7
    move-object v0, p0

    check-cast v0, Landroidx/mediarouter/media/p$c;

    .line 8
    new-instance v1, Lcom/shabakaty/downloader/oq2;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/oq2;-><init>(Lcom/shabakaty/downloader/nq2;)V

    .line 9
    iput-object v1, p0, Landroidx/mediarouter/media/p$b;->B:Ljava/lang/Object;

    .line 10
    new-instance v0, Lcom/shabakaty/downloader/mq2;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/mq2;-><init>(Lcom/shabakaty/downloader/lq2;)V

    .line 11
    iput-object v0, p0, Landroidx/mediarouter/media/p$b;->C:Ljava/lang/Object;

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1201a3

    .line 13
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 14
    check-cast p2, Landroid/media/MediaRouter;

    invoke-virtual {p2, p1, v0}, Landroid/media/MediaRouter;->createRouteCategory(Ljava/lang/CharSequence;Z)Landroid/media/MediaRouter$RouteCategory;

    move-result-object p1

    .line 15
    iput-object p1, p0, Landroidx/mediarouter/media/p$b;->D:Ljava/lang/Object;

    .line 16
    invoke-virtual {p0}, Landroidx/mediarouter/media/p$b;->G()V

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Object;)Landroidx/mediarouter/media/p$b$c;
    .locals 1

    .line 1
    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Landroidx/mediarouter/media/p$b$c;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/mediarouter/media/p$b$c;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public B(Landroidx/mediarouter/media/p$b$b;Landroidx/mediarouter/media/b$a;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/mediarouter/media/p$b$b;->a:Ljava/lang/Object;

    .line 2
    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Landroidx/mediarouter/media/p$b;->J:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Landroidx/mediarouter/media/b$a;->a(Ljava/util/Collection;)Landroidx/mediarouter/media/b$a;

    :cond_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Landroidx/mediarouter/media/p$b;->K:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Landroidx/mediarouter/media/b$a;->a(Ljava/util/Collection;)Landroidx/mediarouter/media/b$a;

    .line 5
    :cond_1
    iget-object v0, p1, Landroidx/mediarouter/media/p$b$b;->a:Ljava/lang/Object;

    .line 6
    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v0

    .line 7
    iget-object v1, p2, Landroidx/mediarouter/media/b$a;->a:Landroid/os/Bundle;

    const-string v2, "playbackType"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    iget-object v0, p1, Landroidx/mediarouter/media/p$b$b;->a:Ljava/lang/Object;

    .line 9
    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackStream()I

    move-result v0

    .line 10
    iget-object v1, p2, Landroidx/mediarouter/media/b$a;->a:Landroid/os/Bundle;

    const-string v2, "playbackStream"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11
    iget-object v0, p1, Landroidx/mediarouter/media/p$b$b;->a:Ljava/lang/Object;

    .line 12
    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v0

    .line 13
    invoke-virtual {p2, v0}, Landroidx/mediarouter/media/b$a;->c(I)Landroidx/mediarouter/media/b$a;

    .line 14
    iget-object v0, p1, Landroidx/mediarouter/media/p$b$b;->a:Ljava/lang/Object;

    .line 15
    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v0

    .line 16
    iget-object v1, p2, Landroidx/mediarouter/media/b$a;->a:Landroid/os/Bundle;

    const-string v2, "volumeMax"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 17
    iget-object p1, p1, Landroidx/mediarouter/media/p$b$b;->a:Ljava/lang/Object;

    .line 18
    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result p1

    .line 19
    iget-object p2, p2, Landroidx/mediarouter/media/b$a;->a:Landroid/os/Bundle;

    const-string v0, "volumeHandling"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public C()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/p$b;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 2
    iget-object v4, p0, Landroidx/mediarouter/media/p$b;->H:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/mediarouter/media/p$b$b;

    iget-object v4, v4, Landroidx/mediarouter/media/p$b$b;->c:Landroidx/mediarouter/media/b;

    if-eqz v4, :cond_2

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 5
    :goto_1
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "route descriptor already added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "route must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_3
    new-instance v0, Lcom/shabakaty/downloader/fq2;

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/fq2;-><init>(Ljava/util/List;Z)V

    .line 9
    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/c;->p(Lcom/shabakaty/downloader/fq2;)V

    return-void
.end method

.method public D(Ljava/lang/Object;)V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public E()V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public F(Landroidx/mediarouter/media/p$b$b;)V
    .locals 4

    .line 1
    new-instance v0, Landroidx/mediarouter/media/b$a;

    iget-object v1, p1, Landroidx/mediarouter/media/p$b$b;->b:Ljava/lang/String;

    iget-object v2, p1, Landroidx/mediarouter/media/p$b$b;->a:Ljava/lang/Object;

    .line 2
    iget-object v3, p0, Landroidx/mediarouter/media/c;->r:Landroid/content/Context;

    .line 3
    check-cast v2, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v2, v3}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    .line 5
    :goto_0
    invoke-direct {v0, v1, v2}, Landroidx/mediarouter/media/b$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p1, v0}, Landroidx/mediarouter/media/p$b;->B(Landroidx/mediarouter/media/p$b$b;Landroidx/mediarouter/media/b$a;)V

    .line 7
    invoke-virtual {v0}, Landroidx/mediarouter/media/b$a;->b()Landroidx/mediarouter/media/b;

    move-result-object v0

    iput-object v0, p1, Landroidx/mediarouter/media/p$b$b;->c:Landroidx/mediarouter/media/b;

    return-void
.end method

.method public final G()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/mediarouter/media/p$b;->E()V

    .line 2
    iget-object v0, p0, Landroidx/mediarouter/media/p$b;->A:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/media/MediaRouter;

    .line 4
    invoke-virtual {v0}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v1

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    .line 6
    invoke-virtual {v0, v4}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 8
    invoke-virtual {p0, v1}, Landroidx/mediarouter/media/p$b;->v(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v3, v1

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {p0}, Landroidx/mediarouter/media/p$b;->C()V

    :cond_2
    return-void
.end method

.method public H(Landroidx/mediarouter/media/p$b$c;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/mediarouter/media/p$b$c;->b:Ljava/lang/Object;

    iget-object v1, p1, Landroidx/mediarouter/media/p$b$c;->a:Landroidx/mediarouter/media/g$h;

    .line 2
    iget-object v1, v1, Landroidx/mediarouter/media/g$h;->d:Ljava/lang/String;

    .line 3
    check-cast v0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$UserRouteInfo;->setName(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p1, Landroidx/mediarouter/media/p$b$c;->b:Ljava/lang/Object;

    iget-object v1, p1, Landroidx/mediarouter/media/p$b$c;->a:Landroidx/mediarouter/media/g$h;

    .line 5
    iget v1, v1, Landroidx/mediarouter/media/g$h;->k:I

    .line 6
    check-cast v0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackType(I)V

    .line 7
    iget-object v0, p1, Landroidx/mediarouter/media/p$b$c;->b:Ljava/lang/Object;

    iget-object v1, p1, Landroidx/mediarouter/media/p$b$c;->a:Landroidx/mediarouter/media/g$h;

    .line 8
    iget v1, v1, Landroidx/mediarouter/media/g$h;->l:I

    .line 9
    check-cast v0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackStream(I)V

    .line 10
    iget-object v0, p1, Landroidx/mediarouter/media/p$b$c;->b:Ljava/lang/Object;

    iget-object v1, p1, Landroidx/mediarouter/media/p$b$c;->a:Landroidx/mediarouter/media/g$h;

    .line 11
    iget v1, v1, Landroidx/mediarouter/media/g$h;->o:I

    .line 12
    check-cast v0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolume(I)V

    .line 13
    iget-object v0, p1, Landroidx/mediarouter/media/p$b$c;->b:Ljava/lang/Object;

    iget-object v1, p1, Landroidx/mediarouter/media/p$b$c;->a:Landroidx/mediarouter/media/g$h;

    .line 14
    iget v1, v1, Landroidx/mediarouter/media/g$h;->p:I

    .line 15
    check-cast v0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeMax(I)V

    .line 16
    iget-object v0, p1, Landroidx/mediarouter/media/p$b$c;->b:Ljava/lang/Object;

    iget-object p1, p1, Landroidx/mediarouter/media/p$b$c;->a:Landroidx/mediarouter/media/g$h;

    .line 17
    iget p1, p1, Landroidx/mediarouter/media/g$h;->n:I

    .line 18
    check-cast v0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeHandling(I)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/p$b;->A(Ljava/lang/Object;)Landroidx/mediarouter/media/p$b$c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/p$b;->w(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/mediarouter/media/p$b;->H:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/mediarouter/media/p$b$b;

    .line 4
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/p$b;->F(Landroidx/mediarouter/media/p$b$b;)V

    .line 5
    invoke-virtual {p0}, Landroidx/mediarouter/media/p$b;->C()V

    :cond_0
    return-void
.end method

.method public b(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/p$b;->A(Ljava/lang/Object;)Landroidx/mediarouter/media/p$b$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Landroidx/mediarouter/media/p$b$c;->a:Landroidx/mediarouter/media/g$h;

    invoke-virtual {p1, p2}, Landroidx/mediarouter/media/g$h;->l(I)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/p$b;->A(Ljava/lang/Object;)Landroidx/mediarouter/media/p$b$c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/p$b;->w(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/mediarouter/media/p$b;->H:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Landroidx/mediarouter/media/p$b;->C()V

    :cond_0
    return-void
.end method

.method public e(ILjava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/media/p$b;->A:Ljava/lang/Object;

    .line 2
    check-cast p1, Landroid/media/MediaRouter;

    const v0, 0x800003

    invoke-virtual {p1, v0}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object p1

    if-eq p2, p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/mediarouter/media/p$b;->A(Ljava/lang/Object;)Landroidx/mediarouter/media/p$b$c;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p1, Landroidx/mediarouter/media/p$b$c;->a:Landroidx/mediarouter/media/g$h;

    invoke-virtual {p1}, Landroidx/mediarouter/media/g$h;->m()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p2}, Landroidx/mediarouter/media/p$b;->w(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_2

    .line 6
    iget-object p2, p0, Landroidx/mediarouter/media/p$b;->H:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/mediarouter/media/p$b$b;

    .line 7
    iget-object p2, p0, Landroidx/mediarouter/media/p$b;->z:Landroidx/mediarouter/media/p$e;

    iget-object p1, p1, Landroidx/mediarouter/media/p$b$b;->b:Ljava/lang/String;

    check-cast p2, Landroidx/mediarouter/media/g$e;

    .line 8
    iget-object v0, p2, Landroidx/mediarouter/media/g$e;->k:Landroidx/mediarouter/media/g$e$c;

    const/16 v1, 0x106

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    iget-object v0, p2, Landroidx/mediarouter/media/g$e;->l:Landroidx/mediarouter/media/p;

    invoke-virtual {p2, v0}, Landroidx/mediarouter/media/g$e;->d(Landroidx/mediarouter/media/c;)Landroidx/mediarouter/media/g$g;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 10
    invoke-virtual {p2, p1}, Landroidx/mediarouter/media/g$g;->a(Ljava/lang/String;)Landroidx/mediarouter/media/g$h;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p1}, Landroidx/mediarouter/media/g$h;->m()V

    :cond_2
    :goto_0
    return-void
.end method

.method public g(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public h(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method public i(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/p$b;->v(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/mediarouter/media/p$b;->C()V

    :cond_0
    return-void
.end method

.method public j(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/p$b;->A(Ljava/lang/Object;)Landroidx/mediarouter/media/p$b$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Landroidx/mediarouter/media/p$b$c;->a:Landroidx/mediarouter/media/g$h;

    invoke-virtual {p1, p2}, Landroidx/mediarouter/media/g$h;->k(I)V

    :cond_0
    return-void
.end method

.method public k(Ljava/lang/Object;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/p$b;->A(Ljava/lang/Object;)Landroidx/mediarouter/media/p$b$c;

    move-result-object v0

    if-nez v0, :cond_5

    .line 2
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/p$b;->w(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_5

    .line 3
    iget-object v1, p0, Landroidx/mediarouter/media/p$b;->H:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/p$b$b;

    .line 4
    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    move-result p1

    .line 5
    iget-object v1, v0, Landroidx/mediarouter/media/p$b$b;->c:Landroidx/mediarouter/media/b;

    invoke-virtual {v1}, Landroidx/mediarouter/media/b;->n()I

    move-result v1

    if-eq p1, v1, :cond_5

    .line 6
    iget-object v1, v0, Landroidx/mediarouter/media/p$b$b;->c:Landroidx/mediarouter/media/b;

    if-eqz v1, :cond_4

    .line 7
    new-instance v2, Landroid/os/Bundle;

    iget-object v3, v1, Landroidx/mediarouter/media/b;->a:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 8
    invoke-virtual {v1}, Landroidx/mediarouter/media/b;->g()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroidx/mediarouter/media/b;->g()Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 10
    :goto_0
    invoke-virtual {v1}, Landroidx/mediarouter/media/b;->a()V

    .line 11
    iget-object v5, v1, Landroidx/mediarouter/media/b;->c:Ljava/util/List;

    .line 12
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 13
    new-instance v4, Ljava/util/ArrayList;

    iget-object v1, v1, Landroidx/mediarouter/media/b;->c:Ljava/util/List;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_1
    const-string v1, "volume"

    .line 14
    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v4, :cond_2

    const-string p1, "controlFilters"

    .line 15
    invoke-virtual {v2, p1, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_2
    if-eqz v3, :cond_3

    const-string p1, "groupMemberIds"

    .line 16
    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 17
    :cond_3
    new-instance p1, Landroidx/mediarouter/media/b;

    invoke-direct {p1, v2}, Landroidx/mediarouter/media/b;-><init>(Landroid/os/Bundle;)V

    .line 18
    iput-object p1, v0, Landroidx/mediarouter/media/p$b$b;->c:Landroidx/mediarouter/media/b;

    .line 19
    invoke-virtual {p0}, Landroidx/mediarouter/media/p$b;->C()V

    goto :goto_1

    .line 20
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "descriptor must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    return-void
.end method

.method public m(Ljava/lang/String;)Landroidx/mediarouter/media/c$e;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/p$b;->x(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/mediarouter/media/p$b;->H:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/mediarouter/media/p$b$b;

    .line 3
    new-instance v0, Landroidx/mediarouter/media/p$b$a;

    iget-object p1, p1, Landroidx/mediarouter/media/p$b$b;->a:Ljava/lang/Object;

    invoke-direct {v0, p1}, Landroidx/mediarouter/media/p$b$a;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public o(Lcom/shabakaty/downloader/cq2;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/cq2;->a()V

    .line 2
    iget-object v1, p1, Lcom/shabakaty/downloader/cq2;->b:Landroidx/mediarouter/media/f;

    .line 3
    invoke-virtual {v1}, Landroidx/mediarouter/media/f;->a()V

    .line 4
    iget-object v1, v1, Landroidx/mediarouter/media/f;->b:Ljava/util/List;

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    .line 6
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "android.media.intent.category.LIVE_AUDIO"

    .line 7
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    or-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    const-string v5, "android.media.intent.category.LIVE_VIDEO"

    .line 8
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_1
    const/high16 v4, 0x800000

    or-int/2addr v3, v4

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/cq2;->b()Z

    move-result v0

    move p1, v0

    move v0, v3

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 10
    :goto_2
    iget v1, p0, Landroidx/mediarouter/media/p$b;->E:I

    if-ne v1, v0, :cond_4

    iget-boolean v1, p0, Landroidx/mediarouter/media/p$b;->F:Z

    if-eq v1, p1, :cond_5

    .line 11
    :cond_4
    iput v0, p0, Landroidx/mediarouter/media/p$b;->E:I

    .line 12
    iput-boolean p1, p0, Landroidx/mediarouter/media/p$b;->F:Z

    .line 13
    invoke-virtual {p0}, Landroidx/mediarouter/media/p$b;->G()V

    :cond_5
    return-void
.end method

.method public r(Landroidx/mediarouter/media/g$h;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/mediarouter/media/g$h;->d()Landroidx/mediarouter/media/c;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/mediarouter/media/p$b;->A:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/mediarouter/media/p$b;->D:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/media/MediaRouter;

    check-cast v1, Landroid/media/MediaRouter$RouteCategory;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->createUserRoute(Landroid/media/MediaRouter$RouteCategory;)Landroid/media/MediaRouter$UserRouteInfo;

    move-result-object v0

    .line 4
    new-instance v1, Landroidx/mediarouter/media/p$b$c;

    invoke-direct {v1, p1, v0}, Landroidx/mediarouter/media/p$b$c;-><init>(Landroidx/mediarouter/media/g$h;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$RouteInfo;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Landroidx/mediarouter/media/p$b;->C:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/kq2;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0, v1}, Landroidx/mediarouter/media/p$b;->H(Landroidx/mediarouter/media/p$b$c;)V

    .line 8
    iget-object p1, p0, Landroidx/mediarouter/media/p$b;->I:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p1, p0, Landroidx/mediarouter/media/p$b;->A:Ljava/lang/Object;

    .line 10
    check-cast p1, Landroid/media/MediaRouter;

    invoke-virtual {p1, v0}, Landroid/media/MediaRouter;->addUserRoute(Landroid/media/MediaRouter$UserRouteInfo;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/p$b;->A:Ljava/lang/Object;

    const v1, 0x800003

    .line 12
    check-cast v0, Landroid/media/MediaRouter;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/p$b;->w(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 14
    iget-object v1, p0, Landroidx/mediarouter/media/p$b;->H:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/p$b$b;

    .line 15
    iget-object v0, v0, Landroidx/mediarouter/media/p$b$b;->b:Ljava/lang/String;

    .line 16
    iget-object v1, p1, Landroidx/mediarouter/media/g$h;->b:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {p1}, Landroidx/mediarouter/media/g$h;->m()V

    :cond_1
    :goto_0
    return-void
.end method

.method public s(Landroidx/mediarouter/media/g$h;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/mediarouter/media/g$h;->d()Landroidx/mediarouter/media/c;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/p$b;->y(Landroidx/mediarouter/media/g$h;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/mediarouter/media/p$b;->I:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/mediarouter/media/p$b$c;

    .line 4
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/p$b;->H(Landroidx/mediarouter/media/p$b$c;)V

    :cond_0
    return-void
.end method

.method public t(Landroidx/mediarouter/media/g$h;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/mediarouter/media/g$h;->d()Landroidx/mediarouter/media/c;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/p$b;->y(Landroidx/mediarouter/media/g$h;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/mediarouter/media/p$b;->I:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/mediarouter/media/p$b$c;

    .line 4
    iget-object v0, p1, Landroidx/mediarouter/media/p$b$c;->b:Ljava/lang/Object;

    .line 5
    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$RouteInfo;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p1, Landroidx/mediarouter/media/p$b$c;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/kq2;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Landroidx/mediarouter/media/p$b;->A:Ljava/lang/Object;

    iget-object p1, p1, Landroidx/mediarouter/media/p$b$c;->b:Ljava/lang/Object;

    .line 8
    check-cast v0, Landroid/media/MediaRouter;

    check-cast p1, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter;->removeUserRoute(Landroid/media/MediaRouter$UserRouteInfo;)V

    :cond_0
    return-void
.end method

.method public u(Landroidx/mediarouter/media/g$h;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/mediarouter/media/g$h;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroidx/mediarouter/media/g$h;->d()Landroidx/mediarouter/media/c;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/p$b;->y(Landroidx/mediarouter/media/g$h;)I

    move-result p1

    if-ltz p1, :cond_2

    .line 4
    iget-object v0, p0, Landroidx/mediarouter/media/p$b;->I:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/mediarouter/media/p$b$c;

    .line 5
    iget-object p1, p1, Landroidx/mediarouter/media/p$b$c;->b:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/p$b;->D(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p1, Landroidx/mediarouter/media/g$h;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/p$b;->x(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_2

    .line 8
    iget-object v0, p0, Landroidx/mediarouter/media/p$b;->H:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/mediarouter/media/p$b$b;

    .line 9
    iget-object p1, p1, Landroidx/mediarouter/media/p$b$b;->a:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/p$b;->D(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final v(Ljava/lang/Object;)Z
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/p$b;->A(Ljava/lang/Object;)Landroidx/mediarouter/media/p$b$c;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 2
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/p$b;->w(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_5

    .line 3
    invoke-virtual {p0}, Landroidx/mediarouter/media/p$b;->z()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "DEFAULT_ROUTE"

    goto :goto_2

    .line 4
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v2, [Ljava/lang/Object;

    .line 5
    iget-object v4, p0, Landroidx/mediarouter/media/c;->r:Landroid/content/Context;

    .line 6
    move-object v5, p1

    check-cast v5, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v5, v4}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 7
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    const-string v4, ""

    .line 8
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "ROUTE_%08x"

    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 9
    :goto_2
    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/p$b;->x(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_3

    goto :goto_4

    :cond_3
    const/4 v3, 0x2

    const/4 v4, 0x2

    .line 10
    :goto_3
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v0, v6, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "%s_%d"

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-virtual {p0, v5}, Landroidx/mediarouter/media/p$b;->x(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_4

    move-object v0, v5

    .line 12
    :goto_4
    new-instance v1, Landroidx/mediarouter/media/p$b$b;

    invoke-direct {v1, p1, v0}, Landroidx/mediarouter/media/p$b$b;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, v1}, Landroidx/mediarouter/media/p$b;->F(Landroidx/mediarouter/media/p$b$b;)V

    .line 14
    iget-object p1, p0, Landroidx/mediarouter/media/p$b;->H:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    return v1
.end method

.method public w(Ljava/lang/Object;)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/p$b;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Landroidx/mediarouter/media/p$b;->H:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/p$b$b;

    iget-object v2, v2, Landroidx/mediarouter/media/p$b$b;->a:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public x(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/p$b;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Landroidx/mediarouter/media/p$b;->H:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/p$b$b;

    iget-object v2, v2, Landroidx/mediarouter/media/p$b$b;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public y(Landroidx/mediarouter/media/g$h;)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/p$b;->I:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Landroidx/mediarouter/media/p$b;->I:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/p$b$c;

    iget-object v2, v2, Landroidx/mediarouter/media/p$b$c;->a:Landroidx/mediarouter/media/g$h;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public z()Ljava/lang/Object;
    .locals 0

    const p0, 0x0

    throw p0
.end method
