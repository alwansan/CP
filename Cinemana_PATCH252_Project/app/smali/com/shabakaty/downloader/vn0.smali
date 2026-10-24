.class public final Lcom/shabakaty/downloader/vn0;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManagerProvider.java"

# interfaces
.implements Lcom/shabakaty/downloader/w01;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lcom/shabakaty/downloader/dp2$e;

.field public c:Lcom/shabakaty/downloader/u01;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/vn0;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/dp2$e;)Lcom/shabakaty/downloader/u01;
    .locals 16

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Lcom/shabakaty/downloader/mo0$b;

    invoke-direct {v1}, Lcom/shabakaty/downloader/mo0$b;-><init>()V

    const/4 v2, 0x0

    .line 2
    iput-object v2, v1, Lcom/shabakaty/downloader/mo0$b;->b:Ljava/lang/String;

    .line 3
    new-instance v6, Lcom/shabakaty/downloader/mw1;

    .line 4
    iget-object v3, v0, Lcom/shabakaty/downloader/dp2$e;->b:Landroid/net/Uri;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-boolean v3, v0, Lcom/shabakaty/downloader/dp2$e;->f:Z

    invoke-direct {v6, v2, v3, v1}, Lcom/shabakaty/downloader/mw1;-><init>(Ljava/lang/String;ZLcom/shabakaty/downloader/fw1$b;)V

    .line 5
    iget-object v1, v0, Lcom/shabakaty/downloader/dp2$e;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v4, v6, Lcom/shabakaty/downloader/mw1;->d:Ljava/util/Map;

    monitor-enter v4

    .line 10
    :try_start_0
    iget-object v5, v6, Lcom/shabakaty/downloader/mw1;->d:Ljava/util/Map;

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 12
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 13
    sget-object v1, Lcom/shabakaty/downloader/jp;->d:Ljava/util/UUID;

    .line 14
    sget v1, Lcom/shabakaty/downloader/wl1;->d:I

    .line 15
    new-instance v11, Lcom/shabakaty/downloader/po0;

    invoke-direct {v11}, Lcom/shabakaty/downloader/po0;-><init>()V

    const-wide/32 v12, 0x493e0

    .line 16
    iget-object v4, v0, Lcom/shabakaty/downloader/dp2$e;->a:Ljava/util/UUID;

    sget-object v5, Lcom/shabakaty/downloader/vl1;->a:Lcom/shabakaty/downloader/vl1;

    .line 17
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-boolean v8, v0, Lcom/shabakaty/downloader/dp2$e;->d:Z

    .line 19
    iget-boolean v10, v0, Lcom/shabakaty/downloader/dp2$e;->e:Z

    .line 20
    iget-object v1, v0, Lcom/shabakaty/downloader/dp2$e;->g:Ljava/util/List;

    .line 21
    invoke-static {v1}, Lcom/shabakaty/downloader/k32;->b(Ljava/util/Collection;)[I

    move-result-object v1

    .line 22
    array-length v2, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_4

    aget v9, v1, v3

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eq v9, v14, :cond_3

    if-ne v9, v15, :cond_2

    goto :goto_3

    :cond_2
    const/4 v15, 0x0

    .line 23
    :cond_3
    :goto_3
    invoke-static {v15}, Lcom/shabakaty/downloader/md;->b(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 24
    :cond_4
    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [I

    .line 25
    new-instance v1, Lcom/shabakaty/downloader/un0;

    const/4 v14, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v14}, Lcom/shabakaty/downloader/un0;-><init>(Ljava/util/UUID;Lcom/shabakaty/downloader/h71$c;Lcom/shabakaty/downloader/ap2;Ljava/util/HashMap;Z[IZLcom/shabakaty/downloader/gj2;JLcom/shabakaty/downloader/un0$a;)V

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/dp2$e;->a()[B

    move-result-object v0

    .line 27
    iget-object v2, v1, Lcom/shabakaty/downloader/un0;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    invoke-static {v2}, Lcom/shabakaty/downloader/md;->e(Z)V

    const/4 v2, 0x0

    .line 28
    iput v2, v1, Lcom/shabakaty/downloader/un0;->v:I

    .line 29
    iput-object v0, v1, Lcom/shabakaty/downloader/un0;->w:[B

    return-object v1
.end method

.method public b(Lcom/shabakaty/downloader/dp2;)Lcom/shabakaty/downloader/u01;
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/dp2;->b:Lcom/shabakaty/downloader/dp2$g;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/dp2;->b:Lcom/shabakaty/downloader/dp2$g;

    iget-object p1, p1, Lcom/shabakaty/downloader/dp2$g;->c:Lcom/shabakaty/downloader/dp2$e;

    if-eqz p1, :cond_2

    .line 4
    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/vn0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/vn0;->b:Lcom/shabakaty/downloader/dp2$e;

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    iput-object p1, p0, Lcom/shabakaty/downloader/vn0;->b:Lcom/shabakaty/downloader/dp2$e;

    .line 8
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/vn0;->a(Lcom/shabakaty/downloader/dp2$e;)Lcom/shabakaty/downloader/u01;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/vn0;->c:Lcom/shabakaty/downloader/u01;

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/vn0;->c:Lcom/shabakaty/downloader/u01;

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 13
    :cond_2
    :goto_0
    sget-object p1, Lcom/shabakaty/downloader/u01;->a:Lcom/shabakaty/downloader/u01;

    return-object p1
.end method
