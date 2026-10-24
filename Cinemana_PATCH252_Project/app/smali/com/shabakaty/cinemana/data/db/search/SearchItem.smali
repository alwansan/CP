.class public final Lcom/shabakaty/cinemana/data/db/search/SearchItem;
.super Ljava/lang/Object;
.source "SearchEntity.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008-\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0089\u0001\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010!\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010$\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\'\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010*\u001a\u00020\u0002\u00a2\u0006\u0004\u0008-\u0010.R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u0004\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\"\u0010\u000c\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\u0004\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\"\u0010\u000f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0004\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\"\u0010\u0012\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0004\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\"\u0010\u0015\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0004\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008R\"\u0010\u0018\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0004\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\u0008R\"\u0010\u001b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u0004\u001a\u0004\u0008\u001c\u0010\u0006\"\u0004\u0008\u001d\u0010\u0008R\"\u0010\u001e\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u0004\u001a\u0004\u0008\u001f\u0010\u0006\"\u0004\u0008 \u0010\u0008R\"\u0010!\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\u0004\u001a\u0004\u0008\"\u0010\u0006\"\u0004\u0008#\u0010\u0008R\"\u0010$\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010\u0004\u001a\u0004\u0008%\u0010\u0006\"\u0004\u0008&\u0010\u0008R\"\u0010\'\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u0010\u0004\u001a\u0004\u0008(\u0010\u0006\"\u0004\u0008)\u0010\u0008R\"\u0010*\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010\u0004\u001a\u0004\u0008+\u0010\u0006\"\u0004\u0008,\u0010\u0008\u00a8\u0006/"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/data/db/search/SearchItem;",
        "Landroid/os/Parcelable;",
        "",
        "nb",
        "Ljava/lang/String;",
        "getNb",
        "()Ljava/lang/String;",
        "setNb",
        "(Ljava/lang/String;)V",
        "enTitle",
        "getEnTitle",
        "setEnTitle",
        "arTitle",
        "getArTitle",
        "setArTitle",
        "stars",
        "getStars",
        "setStars",
        "year",
        "getYear",
        "setYear",
        "kind",
        "getKind",
        "setKind",
        "season",
        "getSeason",
        "setSeason",
        "imgObjUrl",
        "getImgObjUrl",
        "setImgObjUrl",
        "episodeNummer",
        "getEpisodeNummer",
        "setEpisodeNummer",
        "rate",
        "getRate",
        "setRate",
        "imgMediumThumbObjUrl",
        "getImgMediumThumbObjUrl",
        "setImgMediumThumbObjUrl",
        "categoryEn",
        "getCategoryEn",
        "setCategoryEn",
        "categoryAr",
        "getCategoryAr",
        "setCategoryAr",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "app_productionBetaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/cinemana/data/db/search/SearchItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public arTitle:Ljava/lang/String;

.field public categoryAr:Ljava/lang/String;

.field public categoryEn:Ljava/lang/String;

.field public enTitle:Ljava/lang/String;

.field public episodeNummer:Ljava/lang/String;

.field public imgMediumThumbObjUrl:Ljava/lang/String;

.field public imgObjUrl:Ljava/lang/String;

.field public kind:Ljava/lang/String;

.field public nb:Ljava/lang/String;

.field public rate:Ljava/lang/String;

.field public season:Ljava/lang/String;

.field public stars:Ljava/lang/String;

.field public year:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/cinemana/data/db/search/SearchItem$a;

    invoke-direct {v0}, Lcom/shabakaty/cinemana/data/db/search/SearchItem$a;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    const-string v1, "0"

    const-string v13, ""

    move-object v0, p0

    move-object v2, v13

    move-object v3, v13

    move-object v4, v13

    move-object v5, v13

    move-object v6, v13

    move-object v7, v13

    move-object v8, v13

    move-object v9, v13

    move-object v10, v13

    move-object v11, v13

    move-object v12, v13

    .line 15
    invoke-direct/range {v0 .. v13}, Lcom/shabakaty/cinemana/data/db/search/SearchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "nb"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enTitle"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arTitle"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stars"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "year"

    invoke-static {p5, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p6, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "season"

    invoke-static {p7, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imgObjUrl"

    invoke-static {p8, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "episodeNummer"

    invoke-static {p9, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rate"

    invoke-static {p10, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imgMediumThumbObjUrl"

    invoke-static {p11, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categoryEn"

    invoke-static {p12, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categoryAr"

    invoke-static {p13, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->nb:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->enTitle:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->arTitle:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->stars:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->year:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->kind:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->season:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->imgObjUrl:Ljava/lang/String;

    .line 10
    iput-object p9, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->episodeNummer:Ljava/lang/String;

    .line 11
    iput-object p10, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->rate:Ljava/lang/String;

    .line 12
    iput-object p11, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->imgMediumThumbObjUrl:Ljava/lang/String;

    .line 13
    iput-object p12, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->categoryEn:Ljava/lang/String;

    .line 14
    iput-object p13, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->categoryAr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shabakaty/cinemana/data/db/search/SearchItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shabakaty/cinemana/data/db/search/SearchItem;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->nb:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->nb:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->enTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->enTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->arTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->arTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->stars:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->stars:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->year:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->year:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->kind:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->kind:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->season:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->season:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->imgObjUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->imgObjUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->episodeNummer:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->episodeNummer:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->rate:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->rate:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->imgMediumThumbObjUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->imgMediumThumbObjUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->categoryEn:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->categoryEn:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->categoryAr:Ljava/lang/String;

    iget-object p1, p1, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->categoryAr:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->nb:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->enTitle:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->arTitle:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->stars:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->year:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->kind:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->season:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->imgObjUrl:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->episodeNummer:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->rate:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->imgMediumThumbObjUrl:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->categoryEn:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->categoryAr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "SearchItem(nb="

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->nb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", enTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->enTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", arTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->arTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stars="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->stars:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->year:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", kind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->kind:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", season="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->season:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", imgObjUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->imgObjUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", episodeNummer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->episodeNummer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->rate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", imgMediumThumbObjUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->imgMediumThumbObjUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", categoryEn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->categoryEn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", categoryAr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->categoryAr:Ljava/lang/String;

    const/16 v2, 0x29

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/h61;->a(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "out"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->nb:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->enTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->arTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->stars:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->year:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->kind:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->season:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->imgObjUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->episodeNummer:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->rate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->imgMediumThumbObjUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->categoryEn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->categoryAr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
