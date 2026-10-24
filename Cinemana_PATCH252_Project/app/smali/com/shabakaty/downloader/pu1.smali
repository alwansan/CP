.class public final Lcom/shabakaty/downloader/pu1;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/pu1;->r:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 2
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->listSortOrder:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/me4;->z(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/pu1;->r:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 4
    iget-object v0, p2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->listSortOrder:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/me4;->z(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/pu1;->r:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/md0;->h(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
