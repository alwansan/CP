.class public final Lcom/shabakaty/downloader/d47;
.super Ljava/util/AbstractList;
.source "com.google.android.gms:play-services-measurement-base@@19.0.1"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lcom/shabakaty/downloader/ww6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Lcom/shabakaty/downloader/ww6;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/ww6;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ww6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/d47;->r:Lcom/shabakaty/downloader/ww6;

    return-void
.end method


# virtual methods
.method public final B(Lcom/shabakaty/downloader/ir6;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 1
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final e()Lcom/shabakaty/downloader/ww6;
    .locals 0

    return-object p0
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/d47;->r:Lcom/shabakaty/downloader/ww6;

    .line 1
    invoke-interface {v0}, Lcom/shabakaty/downloader/ww6;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/d47;->r:Lcom/shabakaty/downloader/ww6;

    check-cast v0, Lcom/shabakaty/downloader/vw6;

    .line 1
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/vw6;->h(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/shabakaty/downloader/pa7;

    .line 1
    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/pa7;-><init>(Lcom/shabakaty/downloader/d47;)V

    return-object v0
.end method

.method public final k(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/d47;->r:Lcom/shabakaty/downloader/ww6;

    .line 1
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ww6;->k(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/shabakaty/downloader/aa7;

    .line 1
    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/aa7;-><init>(Lcom/shabakaty/downloader/d47;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/d47;->r:Lcom/shabakaty/downloader/ww6;

    .line 1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
