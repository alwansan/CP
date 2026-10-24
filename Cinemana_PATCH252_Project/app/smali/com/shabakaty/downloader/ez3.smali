.class public final Lcom/shabakaty/downloader/ez3;
.super Lcom/shabakaty/downloader/ui4;
.source "SearchUseCases.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.domain.use_cases.SearchUseCases$addHistoryItem$2"
    f = "SearchUseCases.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/se0;",
        "Lcom/shabakaty/downloader/ud0<",
        "-",
        "Lcom/shabakaty/downloader/qv4;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic v:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

.field public final synthetic w:Lcom/shabakaty/downloader/fz3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/fz3;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            "Lcom/shabakaty/downloader/fz3;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/ez3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/ez3;->v:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    iput-object p2, p0, Lcom/shabakaty/downloader/ez3;->w:Lcom/shabakaty/downloader/fz3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/ez3;

    iget-object v0, p0, Lcom/shabakaty/downloader/ez3;->v:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    iget-object v1, p0, Lcom/shabakaty/downloader/ez3;->w:Lcom/shabakaty/downloader/fz3;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/ez3;-><init>(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/fz3;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/ez3;->t(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/ud0<",
            "*>;)",
            "Lcom/shabakaty/downloader/ud0<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/shabakaty/downloader/ez3;

    iget-object v0, p0, Lcom/shabakaty/downloader/ez3;->v:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    iget-object v1, p0, Lcom/shabakaty/downloader/ez3;->w:Lcom/shabakaty/downloader/fz3;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/ez3;-><init>(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/fz3;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/ez3;->v:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    iget-object v0, p0, Lcom/shabakaty/downloader/ez3;->w:Lcom/shabakaty/downloader/fz3;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/fz3;->b:Lcom/shabakaty/downloader/qm2;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "videoModel"

    .line 5
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/qm2;->s:Lcom/shabakaty/cinemana/domain/mapper/SearchItemMapper;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/nj;->mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;

    .line 7
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->categories:Ljava/util/List;

    .line 8
    invoke-static {v1}, Lcom/shabakaty/downloader/m50;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/domain/models/local/Category;

    const-string v2, ""

    if-nez v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, v1, Lcom/shabakaty/cinemana/domain/models/local/Category;->arTitle:Ljava/lang/String;

    if-nez v1, :cond_1

    :goto_0
    move-object v1, v2

    .line 10
    :cond_1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "<set-?>"

    .line 11
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object v1, v0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->categoryAr:Ljava/lang/String;

    .line 13
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->categories:Ljava/util/List;

    .line 14
    invoke-static {p1}, Lcom/shabakaty/downloader/m50;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/Category;

    if-nez p1, :cond_2

    goto :goto_1

    .line 15
    :cond_2
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/local/Category;->enTitle:Ljava/lang/String;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, p1

    .line 16
    :goto_1
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object v2, v0, Lcom/shabakaty/cinemana/data/db/search/SearchItem;->categoryEn:Ljava/lang/String;

    .line 18
    iget-object p1, p0, Lcom/shabakaty/downloader/ez3;->w:Lcom/shabakaty/downloader/fz3;

    .line 19
    iget-object p1, p1, Lcom/shabakaty/downloader/fz3;->c:Lcom/shabakaty/downloader/vy3;

    .line 20
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/vy3;->m(Lcom/shabakaty/cinemana/data/db/search/SearchItem;)V

    .line 21
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
