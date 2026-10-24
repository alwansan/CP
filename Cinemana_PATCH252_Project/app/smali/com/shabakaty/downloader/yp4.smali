.class public Lcom/shabakaty/downloader/yp4;
.super Ljava/lang/Object;
.source "Transformations.java"


# direct methods
.method public static a(Landroidx/lifecycle/LiveData;Lcom/shabakaty/downloader/rn1;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TX;>;",
            "Lcom/shabakaty/downloader/rn1<",
            "TX;TY;>;)",
            "Landroidx/lifecycle/LiveData<",
            "TY;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/gr2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/gr2;-><init>()V

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/yp4$a;

    invoke-direct {v1, v0, p1}, Lcom/shabakaty/downloader/yp4$a;-><init>(Lcom/shabakaty/downloader/gr2;Lcom/shabakaty/downloader/rn1;)V

    invoke-virtual {v0, p0, v1}, Lcom/shabakaty/downloader/gr2;->a(Landroidx/lifecycle/LiveData;Lcom/shabakaty/downloader/r53;)V

    return-object v0
.end method
