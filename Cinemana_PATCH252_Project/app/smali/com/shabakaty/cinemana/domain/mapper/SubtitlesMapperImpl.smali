.class public Lcom/shabakaty/cinemana/domain/mapper/SubtitlesMapperImpl;
.super Ljava/lang/Object;
.source "SubtitlesMapperImpl.java"

# interfaces
.implements Lcom/shabakaty/cinemana/domain/mapper/SubtitlesMapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$a;)Lcom/shabakaty/cinemana/domain/models/local/Subtitle;
    .locals 7

    .line 2
    new-instance v6, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    const-string v1, "0"

    const-string v5, ""

    move-object v0, v6

    move-object v2, v5

    move-object v3, v5

    move-object v4, v5

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 4
    iget v0, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$a;->a:I

    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<set-?>"

    .line 6
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object v0, v6, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->id:Ljava/lang/String;

    .line 8
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 9
    iput-object v0, v6, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->name:Ljava/lang/String;

    .line 10
    :cond_0
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 11
    iput-object v0, v6, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->type:Ljava/lang/String;

    .line 12
    :cond_1
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 13
    iput-object v0, v6, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->extention:Ljava/lang/String;

    .line 14
    :cond_2
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$a;->e:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 15
    iput-object p1, v6, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->file:Ljava/lang/String;

    :cond_3
    return-object v6
.end method

.method public bridge synthetic mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$a;

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/domain/mapper/SubtitlesMapperImpl;->mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi$a;)Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    move-result-object p1

    return-object p1
.end method
