.class public abstract Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;
.super Ljava/lang/Object;
.source "HomePageViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;,
        Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal;,
        Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad;,
        Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Franchises;,
        Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$BottomGroups;
    }
.end annotation


# instance fields
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
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    and-int/lit8 p1, p4, 0x1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    and-int/lit8 p3, p4, 0x4

    if-eqz p3, :cond_1

    const-string p3, "-1"

    goto :goto_1

    :cond_1
    move-object p3, p2

    .line 2
    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;->videos:Ljava/util/List;

    .line 4
    iput-object p2, p0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;->title:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;->title:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;->videos:Ljava/util/List;

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
    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;->videos:Ljava/util/List;

    return-void
.end method
