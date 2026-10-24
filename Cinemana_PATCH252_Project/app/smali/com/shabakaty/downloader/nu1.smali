.class public final synthetic Lcom/shabakaty/downloader/nu1;
.super Lcom/shabakaty/downloader/m4;
.source "HomePageUseCases.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/m4;",
        "Lcom/shabakaty/downloader/tm1<",
        "Ljava/util/List<",
        "+",
        "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
        ">;",
        "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;",
        ">;"
    }
.end annotation


# static fields
.field public static final y:Lcom/shabakaty/downloader/nu1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/nu1;

    invoke-direct {v0}, Lcom/shabakaty/downloader/nu1;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/nu1;->y:Lcom/shabakaty/downloader/nu1;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const-class v3, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;

    .line 1
    sget-object v2, Lcom/shabakaty/downloader/uq;->NO_RECEIVER:Ljava/lang/Object;

    const/4 v1, 0x1

    const-string v4, "<init>"

    const-string v5, "<init>(Ljava/util/List;Ljava/lang/String;)V"

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/m4;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/util/List;

    const-string v0, "p0"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2}, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    return-object v0
.end method
