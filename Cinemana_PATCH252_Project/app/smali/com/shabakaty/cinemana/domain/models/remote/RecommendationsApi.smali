.class public final Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsApi;
.super Ljava/lang/Object;
.source "RecommendationsApi.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0086\u0008\u0018\u00002\u00020\u0001R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\"\u0010\u0010\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0004\u001a\u0004\u0008\u0011\u0010\u0006\"\u0004\u0008\u0012\u0010\u0008R(\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\"\u0010\u001c\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!\u00a8\u0006\""
    }
    d2 = {
        "Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsApi;",
        "",
        "",
        "expirationDate",
        "Ljava/lang/String;",
        "getExpirationDate",
        "()Ljava/lang/String;",
        "setExpirationDate",
        "(Ljava/lang/String;)V",
        "",
        "movieId",
        "I",
        "getMovieId",
        "()I",
        "setMovieId",
        "(I)V",
        "movieName",
        "getMovieName",
        "setMovieName",
        "",
        "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;",
        "recommendations",
        "Ljava/util/List;",
        "getRecommendations",
        "()Ljava/util/List;",
        "setRecommendations",
        "(Ljava/util/List;)V",
        "",
        "temp",
        "Z",
        "getTemp",
        "()Z",
        "setTemp",
        "(Z)V",
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
.field public expirationDate:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "expirationDate"
    .end annotation
.end field

.field public movieId:I
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "movieId"
    .end annotation
.end field

.field public movieName:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "movieName"
    .end annotation
.end field

.field public recommendations:Ljava/util/List;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "recommendations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;",
            ">;"
        }
    .end annotation
.end field

.field public temp:Z
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "temp"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, ""

    .line 1
    sget-object v1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    const-string v2, "expirationDate"

    .line 2
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "movieName"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "recommendations"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsApi;->expirationDate:Ljava/lang/String;

    const/4 v2, 0x0

    .line 5
    iput v2, p0, Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsApi;->movieId:I

    .line 6
    iput-object v0, p0, Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsApi;->movieName:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsApi;->recommendations:Ljava/util/List;

    .line 8
    iput-boolean v2, p0, Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsApi;->temp:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsApi;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsApi;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsApi;->expirationDate:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsApi;->expirationDate:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsApi;->movieId:I

    iget v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsApi;->movieId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsApi;->movieName:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsApi;->movieName:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsApi;->recommendations:Ljava/util/List;

    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsApi;->recommendations:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsApi;->temp:Z

    iget-boolean p1, p1, Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsApi;->temp:Z

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsApi;->expirationDate:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsApi;->movieId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsApi;->movieName:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsApi;->recommendations:Ljava/util/List;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/j60;->a(Ljava/util/List;II)I

    move-result v0

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsApi;->temp:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "RecommendationsApi(expirationDate="

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsApi;->expirationDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", movieId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsApi;->movieId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", movieName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsApi;->movieName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", recommendations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsApi;->recommendations:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", temp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/domain/models/remote/RecommendationsApi;->temp:Z

    const/16 v2, 0x29

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/xh2;->a(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
