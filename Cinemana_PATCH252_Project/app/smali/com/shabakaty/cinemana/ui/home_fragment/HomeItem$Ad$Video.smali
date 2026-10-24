.class public final Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$Video;
.super Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad;
.source "HomePageViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Video"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0012\u0008\u0086\u0008\u0018\u00002\u00020\u0001B1\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\t\u001a\u00020\u00028\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u0004\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R$\u0010\u000c\u001a\u0004\u0018\u00010\u00028\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\u0004\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\"\u0010\u000f\u001a\u00020\u00028\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0004\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$Video;",
        "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad;",
        "",
        "video",
        "Ljava/lang/String;",
        "getVideo",
        "()Ljava/lang/String;",
        "setVideo",
        "(Ljava/lang/String;)V",
        "url",
        "getUrl",
        "setUrl",
        "beaconURL",
        "getBeaconURL",
        "setBeaconURL",
        "description",
        "getDescription",
        "setDescription",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "app_productionBetaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public beaconURL:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public video:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$Video;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "video"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v6, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$b$c;->a:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$b$c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xe

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$b;I)V

    .line 3
    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$Video;->video:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$Video;->url:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$Video;->beaconURL:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$Video;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$Video;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$Video;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$Video;->video:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$Video;->video:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 1
    :cond_2
    iget-object v1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$Video;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$Video;->url:Ljava/lang/String;

    .line 2
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 3
    :cond_3
    iget-object v1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$Video;->beaconURL:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$Video;->beaconURL:Ljava/lang/String;

    .line 4
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 5
    :cond_4
    iget-object v1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$Video;->description:Ljava/lang/String;

    iget-object p1, p1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$Video;->description:Ljava/lang/String;

    .line 6
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$Video;->video:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 1
    iget-object v1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$Video;->url:Ljava/lang/String;

    const/16 v2, 0x1f

    .line 2
    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$Video;->beaconURL:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$Video;->description:Ljava/lang/String;

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Video(video="

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$Video;->video:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1
    iget-object v1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$Video;->url:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", beaconURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$Video;->beaconURL:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad$Video;->description:Ljava/lang/String;

    const/16 v2, 0x29

    .line 6
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/h61;->a(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
