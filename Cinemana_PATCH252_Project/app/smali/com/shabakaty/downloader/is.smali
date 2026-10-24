.class public final Lcom/shabakaty/downloader/is;
.super Ljava/lang/Object;
.source "Camera2DeviceSurfaceManager.java"

# interfaces
.implements Lcom/shabakaty/downloader/mt;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/gi4;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/shabakaty/downloader/gr;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/hs;->a:Lcom/shabakaty/downloader/hs;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/shabakaty/downloader/is;->a:Ljava/util/Map;

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/is;->b:Lcom/shabakaty/downloader/gr;

    .line 5
    instance-of v0, p2, Lcom/shabakaty/downloader/wt;

    if-eqz v0, :cond_0

    .line 6
    check-cast p2, Lcom/shabakaty/downloader/wt;

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/shabakaty/downloader/xl2;->e()Landroid/os/Handler;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/wt;->a(Landroid/content/Context;Landroid/os/Handler;)Lcom/shabakaty/downloader/wt;

    move-result-object p2

    .line 8
    :goto_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/is;->a:Ljava/util/Map;

    new-instance v2, Lcom/shabakaty/downloader/gi4;

    iget-object v3, p0, Lcom/shabakaty/downloader/is;->b:Lcom/shabakaty/downloader/gr;

    invoke-direct {v2, p1, v0, p2, v3}, Lcom/shabakaty/downloader/gi4;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/shabakaty/downloader/wt;Lcom/shabakaty/downloader/gr;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method
