.class public abstract Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad;
.super Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;
.source "HomePageViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Ad"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$Video;,
        Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$Image;,
        Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$a;,
        Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$b;
    }
.end annotation


# instance fields
.field public beaconURL:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public type:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$b;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$b;I)V
    .locals 2

    and-int/lit8 p2, p6, 0x1

    const-string p3, ""

    if-eqz p2, :cond_0

    move-object p1, p3

    :cond_0
    and-int/lit8 p2, p6, 0x2

    const/4 p4, 0x0

    if-eqz p2, :cond_1

    move-object p2, p3

    goto :goto_0

    :cond_1
    move-object p2, p4

    :goto_0
    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_2

    move-object v0, p3

    goto :goto_1

    :cond_2
    move-object v0, p4

    :goto_1
    and-int/lit8 v1, p6, 0x8

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move-object p3, p4

    :goto_2
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 1
    sget-object p5, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$b$a;->a:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$b$a;

    :cond_4
    const/4 p6, 0x7

    .line 2
    invoke-direct {p0, p4, p4, p4, p6}, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3
    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad;->content:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad;->url:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad;->beaconURL:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad;->description:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad;->type:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$b;

    return-void
.end method
