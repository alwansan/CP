.class public final Lcom/shabakaty/downloader/tk5;
.super Lcom/shabakaty/downloader/hh5;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# instance fields
.field public final a:Landroidx/mediarouter/media/g;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/mediarouter/media/f;",
            "Ljava/util/Set<",
            "Landroidx/mediarouter/media/g$b;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/hh5;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/tk5;->b:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/tk5;->a:Landroidx/mediarouter/media/g;

    return-void
.end method


# virtual methods
.method public final g2(Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tk5;->a:Landroidx/mediarouter/media/g;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-boolean v0, Landroidx/mediarouter/media/g;->c:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addMediaSessionCompat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    sget-object v0, Landroidx/mediarouter/media/g;->d:Landroidx/mediarouter/media/g$e;

    .line 5
    iput-object p1, v0, Landroidx/mediarouter/media/g$e;->z:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz p1, :cond_1

    .line 6
    new-instance v1, Landroidx/mediarouter/media/g$e$d;

    invoke-direct {v1, v0, p1}, Landroidx/mediarouter/media/g$e$d;-><init>(Landroidx/mediarouter/media/g$e;Landroid/support/v4/media/session/MediaSessionCompat;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object p1, v0, Landroidx/mediarouter/media/g$e;->y:Landroidx/mediarouter/media/g$e$d;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Landroidx/mediarouter/media/g$e$d;->a()V

    .line 9
    :cond_2
    iput-object v1, v0, Landroidx/mediarouter/media/g$e;->y:Landroidx/mediarouter/media/g$e$d;

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {v0}, Landroidx/mediarouter/media/g$e;->n()V

    :cond_3
    return-void
.end method

.method public final h2(Landroidx/mediarouter/media/f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tk5;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/g$b;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/tk5;->a:Landroidx/mediarouter/media/g;

    invoke-virtual {v1, v0}, Landroidx/mediarouter/media/g;->i(Landroidx/mediarouter/media/g$b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final i2(Landroidx/mediarouter/media/f;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tk5;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/g$b;

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/tk5;->a:Landroidx/mediarouter/media/g;

    invoke-virtual {v2, p1, v1, p2}, Landroidx/mediarouter/media/g;->a(Landroidx/mediarouter/media/f;Landroidx/mediarouter/media/g$b;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
