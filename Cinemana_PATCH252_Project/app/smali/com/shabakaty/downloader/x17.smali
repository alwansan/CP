.class public final Lcom/shabakaty/downloader/x17;
.super Lcom/shabakaty/downloader/o17;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/o17<",
        "Lcom/shabakaty/downloader/b37$c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/o17;-><init>()V

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

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/b37$c;

    .line 2
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method public final b(Lcom/shabakaty/downloader/ob7;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ob7;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/b37$c;

    .line 2
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method public final c(Ljava/lang/Object;)Lcom/shabakaty/downloader/d27;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/shabakaty/downloader/d27<",
            "Lcom/shabakaty/downloader/b37$c;",
            ">;"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/b37$d;

    iget-object p1, p1, Lcom/shabakaty/downloader/b37$d;->zzbre:Lcom/shabakaty/downloader/d27;

    return-object p1
.end method

.method public final d(Lcom/shabakaty/downloader/d77;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/shabakaty/downloader/b37$d;

    return p1
.end method

.method public final e(Ljava/lang/Object;)Lcom/shabakaty/downloader/d27;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/shabakaty/downloader/d27<",
            "Lcom/shabakaty/downloader/b37$c;",
            ">;"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/b37$d;

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/b37$d;->zzbre:Lcom/shabakaty/downloader/d27;

    .line 3
    iget-boolean v1, v0, Lcom/shabakaty/downloader/d27;->b:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d27;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/d27;

    iput-object v0, p1, Lcom/shabakaty/downloader/b37$d;->zzbre:Lcom/shabakaty/downloader/d27;

    .line 5
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/downloader/b37$d;->zzbre:Lcom/shabakaty/downloader/d27;

    return-object p1
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/b37$d;

    iget-object p1, p1, Lcom/shabakaty/downloader/b37$d;->zzbre:Lcom/shabakaty/downloader/d27;

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/d27;->m()V

    return-void
.end method
