.class public final Lcom/shabakaty/downloader/s10$b;
.super Lcom/shabakaty/downloader/ui4;
.source "CinemanaVideoPlayerViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.player.CinemanaVideoPlayerViewModel$getSeasonsAndEpisodes$1$episodes$1$1"
    f = "CinemanaVideoPlayerViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/s10;->t(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/se0;",
        "Lcom/shabakaty/downloader/ud0<",
        "-",
        "Lcom/shabakaty/downloader/bi2<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Lcom/shabakaty/downloader/b41;",
        ">;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic v:Lcom/shabakaty/downloader/y25;

.field public final synthetic w:Lcom/shabakaty/downloader/q10;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/y25;Lcom/shabakaty/downloader/q10;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/y25;",
            "Lcom/shabakaty/downloader/q10;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/s10$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/s10$b;->v:Lcom/shabakaty/downloader/y25;

    iput-object p2, p0, Lcom/shabakaty/downloader/s10$b;->w:Lcom/shabakaty/downloader/q10;

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
    new-instance p1, Lcom/shabakaty/downloader/s10$b;

    iget-object v0, p0, Lcom/shabakaty/downloader/s10$b;->v:Lcom/shabakaty/downloader/y25;

    iget-object v1, p0, Lcom/shabakaty/downloader/s10$b;->w:Lcom/shabakaty/downloader/q10;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/s10$b;-><init>(Lcom/shabakaty/downloader/y25;Lcom/shabakaty/downloader/q10;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/s10$b;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    new-instance p1, Lcom/shabakaty/downloader/s10$b;

    iget-object v0, p0, Lcom/shabakaty/downloader/s10$b;->v:Lcom/shabakaty/downloader/y25;

    iget-object v1, p0, Lcom/shabakaty/downloader/s10$b;->w:Lcom/shabakaty/downloader/q10;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/s10$b;-><init>(Lcom/shabakaty/downloader/y25;Lcom/shabakaty/downloader/q10;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/s10$b;->v:Lcom/shabakaty/downloader/y25;

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/ol0;->a:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/shabakaty/cinemana/ca1/Episodes107;->capture(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 4
    sput-object v1, Lcom/shabakaty/downloader/ol0;->a:Ljava/util/List;

    .line 5
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/s10$b;->w:Lcom/shabakaty/downloader/q10;

    .line 7
    iget-object v1, v1, Lcom/shabakaty/downloader/q10;->z:Lcom/shabakaty/downloader/xv2;

    .line 8
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez v1, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    iget-object v1, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    if-nez v1, :cond_2

    :goto_1
    const-string v1, ""

    .line 10
    :cond_2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 11
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    .line 12
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 14
    check-cast v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 15
    iget-object v4, v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->season:Ljava/lang/String;

    .line 16
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 17
    :cond_4
    invoke-static {p1}, Lcom/shabakaty/downloader/m50;->U(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 18
    new-instance v3, Lcom/shabakaty/downloader/x25;

    invoke-direct {v3}, Lcom/shabakaty/downloader/x25;-><init>()V

    invoke-static {p1, v3}, Lcom/shabakaty/downloader/m50;->t0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 19
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-static {v4}, Lcom/shabakaty/downloader/kf5;->i(I)I

    move-result v4

    const/16 v5, 0x10

    if-ge v4, v5, :cond_5

    const/16 v4, 0x10

    :cond_5
    invoke-direct {v3, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 20
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 21
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    .line 22
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 24
    iget-object v9, v9, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->season:Ljava/lang/String;

    .line 25
    invoke-static {v9, v5}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 26
    :cond_7
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v6, v2}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 28
    check-cast v7, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 29
    new-instance v8, Lcom/shabakaty/downloader/b41;

    .line 30
    iget-object v9, v7, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 31
    invoke-static {v1, v9}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    invoke-direct {v8, v9, v7}, Lcom/shabakaty/downloader/b41;-><init>(ZLcom/shabakaty/cinemana/domain/models/local/VideoModel;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 32
    :cond_8
    new-instance v6, Lcom/shabakaty/downloader/w25;

    invoke-direct {v6}, Lcom/shabakaty/downloader/w25;-><init>()V

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/m50;->t0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v5

    .line 33
    invoke-static {v5}, Lcom/shabakaty/downloader/m50;->z0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v5

    .line 34
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 35
    :cond_9
    new-instance p1, Lcom/shabakaty/downloader/bi2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/bi2;-><init>()V

    .line 36
    invoke-virtual {p1, v3}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    return-object p1
.end method
