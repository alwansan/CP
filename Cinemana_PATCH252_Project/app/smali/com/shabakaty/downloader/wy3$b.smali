.class public Lcom/shabakaty/downloader/wy3$b;
.super Lcom/shabakaty/downloader/x31;
.source "SearchDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/wy3;-><init>(Lcom/shabakaty/downloader/vt3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/x31<",
        "Lcom/shabakaty/cinemana/data/db/search/SearchItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wy3;Lcom/shabakaty/downloader/vt3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/x31;-><init>(Lcom/shabakaty/downloader/vt3;)V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `search_table` (`nb`,`enTitle`,`arTitle`,`stars`,`year`,`kind`,`season`,`imgObjUrl`,`episodeNummer`,`rate`,`imgMediumThumbObjUrl`,`categoryEn`,`categoryAr`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method

.method public e(Lcom/shabakaty/downloader/ci4;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Lcom/shabakaty/cinemana/data/db/search/SearchItem;

    .line 2
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->nb:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->enTitle:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 6
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 8
    :goto_1
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->arTitle:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 9
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_2

    .line 10
    :cond_2
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 11
    :goto_2
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->stars:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_3

    .line 12
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_3

    .line 13
    :cond_3
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 14
    :goto_3
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->year:Ljava/lang/String;

    const/4 v1, 0x5

    if-nez v0, :cond_4

    .line 15
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_4

    .line 16
    :cond_4
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 17
    :goto_4
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->kind:Ljava/lang/String;

    const/4 v1, 0x6

    if-nez v0, :cond_5

    .line 18
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_5

    .line 19
    :cond_5
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 20
    :goto_5
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->season:Ljava/lang/String;

    const/4 v1, 0x7

    if-nez v0, :cond_6

    .line 21
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_6

    .line 22
    :cond_6
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 23
    :goto_6
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->imgObjUrl:Ljava/lang/String;

    const/16 v1, 0x8

    if-nez v0, :cond_7

    .line 24
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_7

    .line 25
    :cond_7
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 26
    :goto_7
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->episodeNummer:Ljava/lang/String;

    const/16 v1, 0x9

    if-nez v0, :cond_8

    .line 27
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_8

    .line 28
    :cond_8
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 29
    :goto_8
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->rate:Ljava/lang/String;

    const/16 v1, 0xa

    if-nez v0, :cond_9

    .line 30
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_9

    .line 31
    :cond_9
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 32
    :goto_9
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->imgMediumThumbObjUrl:Ljava/lang/String;

    const/16 v1, 0xb

    if-nez v0, :cond_a

    .line 33
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_a

    .line 34
    :cond_a
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 35
    :goto_a
    iget-object v0, p2, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->categoryEn:Ljava/lang/String;

    const/16 v1, 0xc

    if-nez v0, :cond_b

    .line 36
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_b

    .line 37
    :cond_b
    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 38
    :goto_b
    iget-object p2, p2, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->categoryAr:Ljava/lang/String;

    const/16 v0, 0xd

    if-nez p2, :cond_c

    .line 39
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_c

    .line 40
    :cond_c
    invoke-interface {p1, v0, p2}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    :goto_c
    return-void
.end method
