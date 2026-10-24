.class public Lcom/shabakaty/cinemana/domain/mapper/LogoutResponseMapperImpl;
.super Ljava/lang/Object;
.source "LogoutResponseMapperImpl.java"

# interfaces
.implements Lcom/shabakaty/cinemana/domain/mapper/LogoutResponseMapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/user/LogoutResponseApi;)Lcom/shabakaty/cinemana/domain/models/local/user/LogoutResponse;
    .locals 2

    .line 2
    new-instance v0, Lcom/shabakaty/cinemana/domain/models/local/user/LogoutResponse;

    const-string v1, ""

    .line 3
    invoke-direct {v0, v1, v1, v1}, Lcom/shabakaty/cinemana/domain/models/local/user/LogoutResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 4
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/remote/user/LogoutResponseApi;->status:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5
    iput-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/user/LogoutResponse;->status:Ljava/lang/String;

    .line 6
    :cond_0
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/remote/user/LogoutResponseApi;->likeNumber:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 7
    iput-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/user/LogoutResponse;->likeNumber:Ljava/lang/String;

    .line 8
    :cond_1
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/remote/user/LogoutResponseApi;->dislikeNumber:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 9
    iput-object p1, v0, Lcom/shabakaty/cinemana/domain/models/local/user/LogoutResponse;->dislikeNumber:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method public bridge synthetic mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/remote/user/LogoutResponseApi;

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/domain/mapper/LogoutResponseMapperImpl;->mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/user/LogoutResponseApi;)Lcom/shabakaty/cinemana/domain/models/local/user/LogoutResponse;

    move-result-object p1

    return-object p1
.end method
