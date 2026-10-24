.class public final Lcom/shabakaty/downloader/wr5;
.super Lcom/shabakaty/downloader/vr5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/vr5<",
        "Lcom/shabakaty/downloader/kv5$d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/shabakaty/downloader/vr5;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map$Entry;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/kv5$d;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ljava/lang/Object;)Lcom/shabakaty/downloader/ms5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/shabakaty/downloader/ms5<",
            "Lcom/shabakaty/downloader/kv5$d;",
            ">;"
        }
    .end annotation

    check-cast p1, Lcom/shabakaty/downloader/kv5$c;

    iget-object p1, p1, Lcom/shabakaty/downloader/kv5$c;->zzjv:Lcom/shabakaty/downloader/ms5;

    return-object p1
.end method

.method public final c(Lcom/shabakaty/downloader/ie6;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ie6;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/kv5$d;

    sget-object p2, Lcom/shabakaty/downloader/fs5;->a:[I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method

.method public final d(Ljava/lang/Object;)Lcom/shabakaty/downloader/ms5;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/shabakaty/downloader/ms5<",
            "Lcom/shabakaty/downloader/kv5$d;",
            ">;"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/kv5$c;

    iget-object v0, p1, Lcom/shabakaty/downloader/kv5$c;->zzjv:Lcom/shabakaty/downloader/ms5;

    .line 2
    iget-boolean v1, v0, Lcom/shabakaty/downloader/ms5;->b:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ms5;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ms5;

    .line 4
    iput-object v0, p1, Lcom/shabakaty/downloader/kv5$c;->zzjv:Lcom/shabakaty/downloader/ms5;

    :cond_0
    return-object v0
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/kv5$c;

    iget-object p1, p1, Lcom/shabakaty/downloader/kv5$c;->zzjv:Lcom/shabakaty/downloader/ms5;

    .line 2
    iget-boolean v0, p1, Lcom/shabakaty/downloader/ms5;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/shabakaty/downloader/ms5;->a:Lcom/shabakaty/downloader/c76;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/c76;->j()V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/shabakaty/downloader/ms5;->b:Z

    :goto_0
    return-void
.end method

.method public final f(Lcom/shabakaty/downloader/y26;)Z
    .locals 0

    instance-of p1, p1, Lcom/shabakaty/downloader/kv5$c;

    return p1
.end method
