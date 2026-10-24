.class public final Lcom/shabakaty/downloader/uc4;
.super Ljava/lang/Object;
.source "StatsDataSource.java"

# interfaces
.implements Lcom/shabakaty/downloader/vl0;


# instance fields
.field public final a:Lcom/shabakaty/downloader/vl0;

.field public b:J

.field public c:Landroid/net/Uri;

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vl0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/uc4;->a:Lcom/shabakaty/downloader/vl0;

    .line 4
    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object p1, p0, Lcom/shabakaty/downloader/uc4;->c:Landroid/net/Uri;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/uc4;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/yl0;)J
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/yl0;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/shabakaty/downloader/uc4;->c:Landroid/net/Uri;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/uc4;->d:Ljava/util/Map;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/uc4;->a:Lcom/shabakaty/downloader/vl0;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/vl0;->a(Lcom/shabakaty/downloader/yl0;)J

    move-result-wide v0

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uc4;->r()Landroid/net/Uri;

    move-result-object p1

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iput-object p1, p0, Lcom/shabakaty/downloader/uc4;->c:Landroid/net/Uri;

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uc4;->o()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/uc4;->d:Ljava/util/Map;

    return-wide v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uc4;->a:Lcom/shabakaty/downloader/vl0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/vl0;->close()V

    return-void
.end method

.method public e(Lcom/shabakaty/downloader/sp4;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/uc4;->a:Lcom/shabakaty/downloader/vl0;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/vl0;->e(Lcom/shabakaty/downloader/sp4;)V

    return-void
.end method

.method public o()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uc4;->a:Lcom/shabakaty/downloader/vl0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/vl0;->o()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public r()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uc4;->a:Lcom/shabakaty/downloader/vl0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/vl0;->r()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public read([BII)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uc4;->a:Lcom/shabakaty/downloader/vl0;

    invoke-interface {v0, p1, p2, p3}, Lcom/shabakaty/downloader/rl0;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 2
    iget-wide p2, p0, Lcom/shabakaty/downloader/uc4;->b:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/shabakaty/downloader/uc4;->b:J

    :cond_0
    return p1
.end method
