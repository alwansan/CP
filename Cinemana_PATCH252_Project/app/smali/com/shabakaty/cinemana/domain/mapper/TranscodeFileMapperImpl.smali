.class public Lcom/shabakaty/cinemana/domain/mapper/TranscodeFileMapperImpl;
.super Ljava/lang/Object;
.source "TranscodeFileMapperImpl.java"

# interfaces
.implements Lcom/shabakaty/cinemana/domain/mapper/TranscodeFileMapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/TranscodeFileApi;)Lcom/shabakaty/cinemana/domain/models/local/TranscodeFile;
    .locals 7

    .line 2
    new-instance v6, Lcom/shabakaty/cinemana/domain/models/local/TranscodeFile;

    const-string v5, ""

    const-string v2, "240p"

    move-object v0, v6

    move-object v1, v5

    move-object v3, v5

    move-object v4, v5

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/cinemana/domain/models/local/TranscodeFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 4
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/remote/TranscodeFileApi;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5
    iput-object v0, v6, Lcom/shabakaty/cinemana/domain/models/local/TranscodeFile;->name:Ljava/lang/String;

    .line 6
    :cond_0
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/remote/TranscodeFileApi;->resolution:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 7
    iput-object v0, v6, Lcom/shabakaty/cinemana/domain/models/local/TranscodeFile;->resolution:Ljava/lang/String;

    .line 8
    :cond_1
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/remote/TranscodeFileApi;->container:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 9
    iput-object v0, v6, Lcom/shabakaty/cinemana/domain/models/local/TranscodeFile;->container:Ljava/lang/String;

    .line 10
    :cond_2
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/remote/TranscodeFileApi;->transcoddedFileName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 11
    iput-object v0, v6, Lcom/shabakaty/cinemana/domain/models/local/TranscodeFile;->transcoddedFileName:Ljava/lang/String;

    .line 12
    :cond_3
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/remote/TranscodeFileApi;->videoUrl:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 13
    iput-object p1, v6, Lcom/shabakaty/cinemana/domain/models/local/TranscodeFile;->videoUrl:Ljava/lang/String;

    :cond_4
    return-object v6
.end method

.method public bridge synthetic mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/remote/TranscodeFileApi;

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/domain/mapper/TranscodeFileMapperImpl;->mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/TranscodeFileApi;)Lcom/shabakaty/cinemana/domain/models/local/TranscodeFile;

    move-result-object p1

    return-object p1
.end method
