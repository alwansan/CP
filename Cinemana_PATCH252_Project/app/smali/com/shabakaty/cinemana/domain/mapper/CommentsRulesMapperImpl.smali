.class public Lcom/shabakaty/cinemana/domain/mapper/CommentsRulesMapperImpl;
.super Ljava/lang/Object;
.source "CommentsRulesMapperImpl.java"

# interfaces
.implements Lcom/shabakaty/cinemana/domain/mapper/CommentsRulesMapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapDtoToDomain(Lcom/shabakaty/downloader/w60;)Lcom/shabakaty/cinemana/domain/models/local/CommentsRules;
    .locals 3

    .line 2
    new-instance v0, Lcom/shabakaty/cinemana/domain/models/local/CommentsRules;

    invoke-direct {v0}, Lcom/shabakaty/cinemana/domain/models/local/CommentsRules;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, ""

    const-string v1, "<set-?>"

    .line 3
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object p1, v0, Lcom/shabakaty/cinemana/domain/models/local/CommentsRules;->commentRulesHead:Ljava/lang/String;

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object v2, v0, Lcom/shabakaty/cinemana/domain/models/local/CommentsRules;->commentRules:Ljava/util/List;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/w60;

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/domain/mapper/CommentsRulesMapperImpl;->mapDtoToDomain(Lcom/shabakaty/downloader/w60;)Lcom/shabakaty/cinemana/domain/models/local/CommentsRules;

    move-result-object p1

    return-object p1
.end method
