.class public final Lcom/shabakaty/epom_view/models/ImageEpomResponse$a;
.super Lcom/shabakaty/downloader/af2;
.source "ImageEpomResponse.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/epom_view/models/ImageEpomResponse;->asImageAd()Lcom/shabakaty/downloader/f41$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/f41$c;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/epom_view/models/ImageEpomResponse;


# direct methods
.method public constructor <init>(Lcom/shabakaty/epom_view/models/ImageEpomResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/epom_view/models/ImageEpomResponse$a;->r:Lcom/shabakaty/epom_view/models/ImageEpomResponse;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/f41$c;

    const-string v0, "$this$imageAd"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/epom_view/models/ImageEpomResponse$a;->r:Lcom/shabakaty/epom_view/models/ImageEpomResponse;

    invoke-virtual {v0}, Lcom/shabakaty/epom_view/models/ImageEpomResponse;->getLinkUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<set-?>"

    .line 4
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput-object v0, p1, Lcom/shabakaty/downloader/f41$c;->x:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/shabakaty/epom_view/models/ImageEpomResponse$a;->r:Lcom/shabakaty/epom_view/models/ImageEpomResponse;

    invoke-virtual {v0}, Lcom/shabakaty/epom_view/models/ImageEpomResponse;->getBeaconUrl()Ljava/lang/String;

    move-result-object v0

    .line 7
    iput-object v0, p1, Lcom/shabakaty/downloader/f41$c;->y:Ljava/lang/String;

    .line 8
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
