.class public final Lcom/shabakaty/downloader/ca7;
.super Ljava/util/AbstractList;
.source "com.google.android.gms:play-services-cast@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/z47;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/shabakaty/downloader/z47;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/z47;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/z47;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ca7;->r:Lcom/shabakaty/downloader/z47;

    return-void
.end method


# virtual methods
.method public final B1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ca7;->r:Lcom/shabakaty/downloader/z47;

    invoke-interface {v0}, Lcom/shabakaty/downloader/z47;->B1()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final R0()Lcom/shabakaty/downloader/z47;
    .locals 0

    return-object p0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ca7;->r:Lcom/shabakaty/downloader/z47;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

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

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pa7;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/pa7;-><init>(Lcom/shabakaty/downloader/ca7;)V

    return-object v0
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

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/aa7;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/aa7;-><init>(Lcom/shabakaty/downloader/ca7;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ca7;->r:Lcom/shabakaty/downloader/z47;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final x1(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ca7;->r:Lcom/shabakaty/downloader/z47;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/z47;->x1(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
