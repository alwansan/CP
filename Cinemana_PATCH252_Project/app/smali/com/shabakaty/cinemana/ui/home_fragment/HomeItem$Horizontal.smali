.class public abstract Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal;
.super Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;
.source "HomePageViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Horizontal"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$RecentlyAdded;,
        Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$FeaturedMovies;,
        Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$FeaturedTvShows;,
        Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$SecondGroupsSlice;
    }
.end annotation


# instance fields
.field public hasPagination:I

.field public id:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public videos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    and-int/lit8 p1, p5, 0x1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    and-int/lit8 p3, p5, 0x2

    if-eqz p3, :cond_1

    const-string p3, ""

    goto :goto_1

    :cond_1
    move-object p3, p2

    :goto_1
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_2

    const-string v0, "-1"

    goto :goto_2

    :cond_2
    move-object v0, p2

    :goto_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x0

    :cond_3
    const/4 p5, 0x7

    .line 2
    invoke-direct {p0, p2, p2, p2, p5}, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3
    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal;->videos:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal;->title:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal;->id:Ljava/lang/String;

    .line 6
    iput p4, p0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal;->hasPagination:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal;->id:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal;->title:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal;->videos:Ljava/util/List;

    return-object v0
.end method

.method public d(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal;->videos:Ljava/util/List;

    return-void
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal;->hasPagination:I

    return v0
.end method
