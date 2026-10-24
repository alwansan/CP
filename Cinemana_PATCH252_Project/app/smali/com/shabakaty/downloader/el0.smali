.class public final Lcom/shabakaty/downloader/el0;
.super Ljava/lang/Object;
.source "DashUtil.java"


# direct methods
.method public static a(Lcom/shabakaty/downloader/ur3;Ljava/lang/String;Lcom/shabakaty/downloader/qm3;I)Lcom/shabakaty/downloader/yl0;
    .locals 15

    move-object/from16 v0, p2

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/qm3;->c:Ljava/lang/String;

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/zw4;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3
    iget-wide v7, v0, Lcom/shabakaty/downloader/qm3;->a:J

    .line 4
    iget-wide v9, v0, Lcom/shabakaty/downloader/qm3;->b:J

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ur3;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v11, v2

    goto :goto_0

    :cond_0
    move-object v2, p0

    .line 6
    iget-object v2, v2, Lcom/shabakaty/downloader/ur3;->s:Lcom/google/common/collect/p;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/nk;

    iget-object v2, v2, Lcom/shabakaty/downloader/nk;->a:Ljava/lang/String;

    .line 7
    iget-object v0, v0, Lcom/shabakaty/downloader/qm3;->c:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/shabakaty/downloader/zw4;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 9
    new-instance v14, Lcom/shabakaty/downloader/yl0;

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    const/4 v4, 0x1

    move-object v0, v14

    move/from16 v12, p3

    .line 10
    invoke-direct/range {v0 .. v13}, Lcom/shabakaty/downloader/yl0;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    return-object v14

    .line 11
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The uri must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
