.class public final synthetic Lcom/shabakaty/downloader/iu1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/in1;


# static fields
.field public static final synthetic r:Lcom/shabakaty/downloader/iu1;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/iu1;

    invoke-direct {v0}, Lcom/shabakaty/downloader/iu1;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/iu1;->r:Lcom/shabakaty/downloader/iu1;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;

    const-string v0, "group"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->listSortOrder:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-ne v0, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;->c()Ljava/util/List;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/pu1;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/pu1;-><init>(Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;)V

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/m50;->t0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;->d(Ljava/util/List;)V

    :cond_4
    return-object p1
.end method
