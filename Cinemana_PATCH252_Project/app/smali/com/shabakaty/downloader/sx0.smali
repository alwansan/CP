.class public final Lcom/shabakaty/downloader/sx0;
.super Lcom/shabakaty/downloader/ui4;
.source "DownloadItemsUseCases.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.profile_fragment.DownloadItemsUseCases$getCollections$2"
    f = "DownloadItemsUseCases.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/se0;",
        "Lcom/shabakaty/downloader/ud0<",
        "-",
        "Ljava/util/List<",
        "+",
        "Lcom/shabakaty/downloader/gz0;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic v:Lcom/shabakaty/downloader/qx0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qx0;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qx0;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/sx0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/sx0;->v:Lcom/shabakaty/downloader/qx0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/sx0;

    iget-object v0, p0, Lcom/shabakaty/downloader/sx0;->v:Lcom/shabakaty/downloader/qx0;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/sx0;-><init>(Lcom/shabakaty/downloader/qx0;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/sx0;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/ud0<",
            "*>;)",
            "Lcom/shabakaty/downloader/ud0<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/shabakaty/downloader/sx0;

    iget-object v0, p0, Lcom/shabakaty/downloader/sx0;->v:Lcom/shabakaty/downloader/qx0;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/sx0;-><init>(Lcom/shabakaty/downloader/qx0;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/sx0;->v:Lcom/shabakaty/downloader/qx0;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/qx0;->a:Lcom/shabakaty/downloader/jw0;

    .line 4
    invoke-interface {p1}, Lcom/shabakaty/downloader/jw0;->J()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 5
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Lcom/shabakaty/downloader/d50;

    .line 8
    iget-object v1, v1, Lcom/shabakaty/downloader/d50;->a:Lcom/shabakaty/downloader/gz0;

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_1
    return-object p1
.end method
