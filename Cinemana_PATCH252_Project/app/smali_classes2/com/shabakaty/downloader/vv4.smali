.class public Lcom/shabakaty/downloader/vv4;
.super Ljava/util/AbstractList;
.source "UnmodifiableLazyStringList.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lcom/shabakaty/downloader/ug2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Lcom/shabakaty/downloader/ug2;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/ug2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ug2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/vv4;->r:Lcom/shabakaty/downloader/ug2;

    return-void
.end method


# virtual methods
.method public Y0(I)Lcom/shabakaty/downloader/ep;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vv4;->r:Lcom/shabakaty/downloader/ug2;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ug2;->Y0(I)Lcom/shabakaty/downloader/ep;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vv4;->r:Lcom/shabakaty/downloader/ug2;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
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
    new-instance v0, Lcom/shabakaty/downloader/vv4$b;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/vv4$b;-><init>(Lcom/shabakaty/downloader/vv4;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
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
    new-instance v0, Lcom/shabakaty/downloader/vv4$a;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/vv4$a;-><init>(Lcom/shabakaty/downloader/vv4;I)V

    return-object v0
.end method

.method public o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vv4;->r:Lcom/shabakaty/downloader/ug2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ug2;->o()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vv4;->r:Lcom/shabakaty/downloader/ug2;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public v0(Lcom/shabakaty/downloader/ep;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public w()Lcom/shabakaty/downloader/ug2;
    .locals 0

    return-object p0
.end method
