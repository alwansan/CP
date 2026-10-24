.class public final Lcom/shabakaty/downloader/r25;
.super Ljava/lang/Object;
.source "VideoStatusApi.kt"


# instance fields
.field public a:Z
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "like"
    .end annotation
.end field

.field public b:Z
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "watched"
    .end annotation
.end field

.field public c:Z
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "annoying"
    .end annotation
.end field

.field public d:Z
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "dislike"
    .end annotation
.end field

.field public e:Z
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "favorit"
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "watchLater"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, ""

    const-string v1, "watchLater"

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/shabakaty/downloader/r25;->a:Z

    .line 4
    iput-boolean v1, p0, Lcom/shabakaty/downloader/r25;->b:Z

    .line 5
    iput-boolean v1, p0, Lcom/shabakaty/downloader/r25;->c:Z

    .line 6
    iput-boolean v1, p0, Lcom/shabakaty/downloader/r25;->d:Z

    .line 7
    iput-boolean v1, p0, Lcom/shabakaty/downloader/r25;->e:Z

    .line 8
    iput-object v0, p0, Lcom/shabakaty/downloader/r25;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/r25;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/r25;

    iget-boolean v1, p0, Lcom/shabakaty/downloader/r25;->a:Z

    iget-boolean v3, p1, Lcom/shabakaty/downloader/r25;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/shabakaty/downloader/r25;->b:Z

    iget-boolean v3, p1, Lcom/shabakaty/downloader/r25;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/shabakaty/downloader/r25;->c:Z

    iget-boolean v3, p1, Lcom/shabakaty/downloader/r25;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/shabakaty/downloader/r25;->d:Z

    iget-boolean v3, p1, Lcom/shabakaty/downloader/r25;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/shabakaty/downloader/r25;->e:Z

    iget-boolean v3, p1, Lcom/shabakaty/downloader/r25;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/shabakaty/downloader/r25;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/shabakaty/downloader/r25;->f:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/shabakaty/downloader/r25;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/shabakaty/downloader/r25;->b:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/shabakaty/downloader/r25;->c:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/shabakaty/downloader/r25;->d:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/shabakaty/downloader/r25;->e:Z

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/downloader/r25;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "VideoStatusApi(liked="

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/shabakaty/downloader/r25;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", watched="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/shabakaty/downloader/r25;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", annoying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/shabakaty/downloader/r25;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", disLiked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/shabakaty/downloader/r25;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", favorite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/shabakaty/downloader/r25;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", watchLater="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/r25;->f:Ljava/lang/String;

    const/16 v2, 0x29

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/h61;->a(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
