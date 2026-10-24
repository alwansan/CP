.class public interface abstract Lcom/shabakaty/downloader/vy3;
.super Ljava/lang/Object;
.source "SearchDao.kt"

# interfaces
.implements Lcom/shabakaty/downloader/cj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/cj<",
        "Lcom/shabakaty/cinemana/data/db/search/SearchItem;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract G()V
.end method

.method public abstract m(Lcom/shabakaty/cinemana/data/db/search/SearchItem;)V
.end method

.method public abstract s()Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/data/db/search/SearchItem;",
            ">;>;"
        }
    .end annotation
.end method
