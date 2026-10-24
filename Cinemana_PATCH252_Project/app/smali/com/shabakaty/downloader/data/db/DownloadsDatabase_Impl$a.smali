.class public Lcom/shabakaty/downloader/data/db/DownloadsDatabase_Impl$a;
.super Lcom/shabakaty/downloader/xt3$a;
.source "DownloadsDatabase_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/data/db/DownloadsDatabase_Impl;->d(Lcom/shabakaty/downloader/bm0;)Lcom/shabakaty/downloader/zh4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/shabakaty/downloader/data/db/DownloadsDatabase_Impl;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/data/db/DownloadsDatabase_Impl;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/data/db/DownloadsDatabase_Impl$a;->b:Lcom/shabakaty/downloader/data/db/DownloadsDatabase_Impl;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/xt3$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/yh4;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `Downloads` (`task_id` INTEGER NOT NULL, `external_id` TEXT NOT NULL, `progress_bytes` INTEGER NOT NULL, `title` TEXT NOT NULL, `url` TEXT NOT NULL, `img` TEXT NOT NULL, `path` TEXT NOT NULL, `size_bytes` INTEGER NOT NULL, `status` INTEGER NOT NULL, `last_updated` TEXT NOT NULL, PRIMARY KEY(`task_id`, `external_id`))"

    .line 1
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS `id` ON `Downloads` (`task_id`, `external_id`)"

    .line 2
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 3
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'31dc2143b4d2e185b32e53ba0a60c329\')"

    .line 4
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/shabakaty/downloader/yh4;)V
    .locals 2

    const-string v0, "DROP TABLE IF EXISTS `Downloads`"

    .line 1
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/data/db/DownloadsDatabase_Impl$a;->b:Lcom/shabakaty/downloader/data/db/DownloadsDatabase_Impl;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/vt3;->g:Ljava/util/List;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_0
    if-ge v0, p1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/data/db/DownloadsDatabase_Impl$a;->b:Lcom/shabakaty/downloader/data/db/DownloadsDatabase_Impl;

    .line 6
    iget-object v1, v1, Lcom/shabakaty/downloader/vt3;->g:Ljava/util/List;

    .line 7
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/vt3$b;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Lcom/shabakaty/downloader/yh4;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/data/db/DownloadsDatabase_Impl$a;->b:Lcom/shabakaty/downloader/data/db/DownloadsDatabase_Impl;

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/vt3;->g:Ljava/util/List;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_0
    if-ge v0, p1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/data/db/DownloadsDatabase_Impl$a;->b:Lcom/shabakaty/downloader/data/db/DownloadsDatabase_Impl;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/downloader/vt3;->g:Ljava/util/List;

    .line 6
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/vt3$b;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Lcom/shabakaty/downloader/yh4;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/data/db/DownloadsDatabase_Impl$a;->b:Lcom/shabakaty/downloader/data/db/DownloadsDatabase_Impl;

    .line 2
    iput-object p1, v0, Lcom/shabakaty/downloader/vt3;->a:Lcom/shabakaty/downloader/yh4;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/data/db/DownloadsDatabase_Impl$a;->b:Lcom/shabakaty/downloader/data/db/DownloadsDatabase_Impl;

    .line 4
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/vt3;->k(Lcom/shabakaty/downloader/yh4;)V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/data/db/DownloadsDatabase_Impl$a;->b:Lcom/shabakaty/downloader/data/db/DownloadsDatabase_Impl;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/vt3;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 8
    iget-object v2, p0, Lcom/shabakaty/downloader/data/db/DownloadsDatabase_Impl$a;->b:Lcom/shabakaty/downloader/data/db/DownloadsDatabase_Impl;

    .line 9
    iget-object v2, v2, Lcom/shabakaty/downloader/vt3;->g:Ljava/util/List;

    .line 10
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/vt3$b;

    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/vt3$b;->a(Lcom/shabakaty/downloader/yh4;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Lcom/shabakaty/downloader/yh4;)V
    .locals 0

    return-void
.end method

.method public f(Lcom/shabakaty/downloader/yh4;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/lh0;->a(Lcom/shabakaty/downloader/yh4;)V

    return-void
.end method

.method public g(Lcom/shabakaty/downloader/yh4;)Lcom/shabakaty/downloader/xt3$b;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/hk4$a;

    const-string v3, "task_id"

    const-string v4, "INTEGER"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "task_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/hk4$a;

    const-string v4, "external_id"

    const-string v5, "TEXT"

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "external_id"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/hk4$a;

    const-string v5, "progress_bytes"

    const-string v6, "INTEGER"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "progress_bytes"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/hk4$a;

    const-string v6, "title"

    const-string v7, "TEXT"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "title"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/hk4$a;

    const-string v6, "url"

    const-string v7, "TEXT"

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "url"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v1, Lcom/shabakaty/downloader/hk4$a;

    const-string v6, "img"

    const-string v7, "TEXT"

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "img"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Lcom/shabakaty/downloader/hk4$a;

    const-string v6, "path"

    const-string v7, "TEXT"

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "path"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v1, Lcom/shabakaty/downloader/hk4$a;

    const-string v6, "size_bytes"

    const-string v7, "INTEGER"

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "size_bytes"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v1, Lcom/shabakaty/downloader/hk4$a;

    const-string v6, "status"

    const-string v7, "INTEGER"

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "status"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v1, Lcom/shabakaty/downloader/hk4$a;

    const-string v6, "last_updated"

    const-string v7, "TEXT"

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lcom/shabakaty/downloader/hk4$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "last_updated"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v1, Ljava/util/HashSet;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 13
    new-instance v5, Ljava/util/HashSet;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 14
    new-instance v7, Lcom/shabakaty/downloader/hk4$d;

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "id"

    invoke-direct {v7, v3, v6, v2}, Lcom/shabakaty/downloader/hk4$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v2, Lcom/shabakaty/downloader/hk4;

    const-string v3, "Downloads"

    invoke-direct {v2, v3, v0, v1, v5}, Lcom/shabakaty/downloader/hk4;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 16
    invoke-static {p1, v3}, Lcom/shabakaty/downloader/hk4;->a(Lcom/shabakaty/downloader/yh4;Ljava/lang/String;)Lcom/shabakaty/downloader/hk4;

    move-result-object p1

    .line 17
    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/hk4;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/shabakaty/downloader/xt3$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downloads(com.shabakaty.downloader.data.db.DownloadItem).\n Expected:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n Found:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v4, p1}, Lcom/shabakaty/downloader/xt3$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 19
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/xt3$b;

    const/4 v0, 0x0

    invoke-direct {p1, v6, v0}, Lcom/shabakaty/downloader/xt3$b;-><init>(ZLjava/lang/String;)V

    return-object p1
.end method
