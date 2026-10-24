.class public Lcom/shabakaty/cinemana/domain/mapper/CommentMapperImpl;
.super Ljava/lang/Object;
.source "CommentMapperImpl.java"

# interfaces
.implements Lcom/shabakaty/cinemana/domain/mapper/CommentMapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapDtoToDomain(Lcom/shabakaty/downloader/p60;)Lcom/shabakaty/cinemana/domain/models/local/Comment;
    .locals 9

    .line 2
    new-instance v8, Lcom/shabakaty/cinemana/domain/models/local/Comment;

    const-string v1, "0"

    const-string v7, ""

    move-object v0, v8

    move-object v2, v7

    move-object v3, v7

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    .line 3
    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/cinemana/domain/models/local/Comment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    .line 4
    iget v0, p1, Lcom/shabakaty/downloader/p60;->a:I

    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<set-?>"

    .line 6
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object v0, v8, Lcom/shabakaty/cinemana/domain/models/local/Comment;->videoNb:Ljava/lang/String;

    .line 8
    iget-object v0, p1, Lcom/shabakaty/downloader/p60;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 9
    iput-object v0, v8, Lcom/shabakaty/cinemana/domain/models/local/Comment;->commentNb:Ljava/lang/String;

    .line 10
    :cond_0
    iget-object v0, p1, Lcom/shabakaty/downloader/p60;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 11
    iput-object v0, v8, Lcom/shabakaty/cinemana/domain/models/local/Comment;->userName:Ljava/lang/String;

    .line 12
    :cond_1
    iget-object v0, p1, Lcom/shabakaty/downloader/p60;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 13
    iput-object v0, v8, Lcom/shabakaty/cinemana/domain/models/local/Comment;->userProfilePic:Ljava/lang/String;

    .line 14
    :cond_2
    iget-object v0, p1, Lcom/shabakaty/downloader/p60;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 15
    iput-object v0, v8, Lcom/shabakaty/cinemana/domain/models/local/Comment;->date:Ljava/lang/String;

    .line 16
    :cond_3
    iget-object v0, p1, Lcom/shabakaty/downloader/p60;->f:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 17
    iput-object v0, v8, Lcom/shabakaty/cinemana/domain/models/local/Comment;->text:Ljava/lang/String;

    .line 18
    :cond_4
    iget-object p1, p1, Lcom/shabakaty/downloader/p60;->g:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 19
    iput-object p1, v8, Lcom/shabakaty/cinemana/domain/models/local/Comment;->permission:Ljava/lang/String;

    :cond_5
    return-object v8
.end method

.method public bridge synthetic mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/p60;

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/domain/mapper/CommentMapperImpl;->mapDtoToDomain(Lcom/shabakaty/downloader/p60;)Lcom/shabakaty/cinemana/domain/models/local/Comment;

    move-result-object p1

    return-object p1
.end method
