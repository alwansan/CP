.class public abstract Lcom/shabakaty/downloader/bh5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@19.0.1"

# interfaces
.implements Lcom/shabakaty/downloader/gj5;
.implements Lcom/shabakaty/downloader/ai5;


# instance fields
.field public final r:Ljava/lang/String;

.field public final s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/gj5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/bh5;->s:Ljava/util/Map;

    iput-object p1, p0, Lcom/shabakaty/downloader/bh5;->r:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/shabakaty/downloader/np4;Ljava/util/List;)Lcom/shabakaty/downloader/gj5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/np4;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/gj5;",
            ">;)",
            "Lcom/shabakaty/downloader/gj5;"
        }
    .end annotation
.end method

.method public d()Lcom/shabakaty/downloader/gj5;
    .locals 0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/shabakaty/downloader/bh5;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/bh5;

    iget-object v0, p0, Lcom/shabakaty/downloader/bh5;->r:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/bh5;->r:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public final f()Ljava/lang/Double;
    .locals 2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/bh5;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/bh5;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final i()Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final l(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/bh5;->s:Ljava/util/Map;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final m(Ljava/lang/String;)Lcom/shabakaty/downloader/gj5;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/bh5;->s:Ljava/util/Map;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/bh5;->s:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gj5;

    return-object p1

    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/gj5;->i:Lcom/shabakaty/downloader/gj5;

    return-object p1
.end method

.method public final n(Ljava/lang/String;Lcom/shabakaty/downloader/gj5;)V
    .locals 1

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/shabakaty/downloader/bh5;->s:Ljava/util/Map;

    .line 1
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/bh5;->s:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final p()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/shabakaty/downloader/gj5;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/bh5;->s:Ljava/util/Map;

    .line 1
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/shabakaty/downloader/sh5;

    .line 2
    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/sh5;-><init>(Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final q(Ljava/lang/String;Lcom/shabakaty/downloader/np4;Ljava/util/List;)Lcom/shabakaty/downloader/gj5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/np4;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/gj5;",
            ">;)",
            "Lcom/shabakaty/downloader/gj5;"
        }
    .end annotation

    const-string v0, "toString"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/shabakaty/downloader/ck5;

    iget-object p2, p0, Lcom/shabakaty/downloader/bh5;->r:Ljava/lang/String;

    .line 2
    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/ck5;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/ck5;

    .line 3
    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/ck5;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p2, p3}, Lcom/shabakaty/downloader/ol3;->j(Lcom/shabakaty/downloader/ai5;Lcom/shabakaty/downloader/gj5;Lcom/shabakaty/downloader/np4;Ljava/util/List;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    return-object p1
.end method
