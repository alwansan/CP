.class public final Lcom/shabakaty/downloader/t25;
.super Ljava/lang/Object;
.source "VideoStatusDao_Impl.java"

# interfaces
.implements Lcom/shabakaty/downloader/s25;


# instance fields
.field public final a:Lcom/shabakaty/downloader/vt3;

.field public final b:Lcom/shabakaty/downloader/x31;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/x31<",
            "Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/shabakaty/downloader/f54;

.field public final d:Lcom/shabakaty/downloader/f54;

.field public final e:Lcom/shabakaty/downloader/f54;

.field public final f:Lcom/shabakaty/downloader/f54;

.field public final g:Lcom/shabakaty/downloader/f54;

.field public final h:Lcom/shabakaty/downloader/f54;

.field public final i:Lcom/shabakaty/downloader/f54;

.field public final j:Lcom/shabakaty/downloader/f54;

.field public final k:Lcom/shabakaty/downloader/f54;

.field public final l:Lcom/shabakaty/downloader/f54;

.field public final m:Lcom/shabakaty/downloader/f54;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vt3;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/t25$f;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/t25$f;-><init>(Lcom/shabakaty/downloader/t25;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/t25;->b:Lcom/shabakaty/downloader/x31;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/t25$k;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/t25$k;-><init>(Lcom/shabakaty/downloader/t25;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/t25;->c:Lcom/shabakaty/downloader/f54;

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/t25$l;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/t25$l;-><init>(Lcom/shabakaty/downloader/t25;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/t25;->d:Lcom/shabakaty/downloader/f54;

    .line 8
    new-instance v0, Lcom/shabakaty/downloader/t25$m;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/t25$m;-><init>(Lcom/shabakaty/downloader/t25;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/t25;->e:Lcom/shabakaty/downloader/f54;

    .line 9
    new-instance v0, Lcom/shabakaty/downloader/t25$n;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/t25$n;-><init>(Lcom/shabakaty/downloader/t25;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/t25;->f:Lcom/shabakaty/downloader/f54;

    .line 10
    new-instance v0, Lcom/shabakaty/downloader/t25$o;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/t25$o;-><init>(Lcom/shabakaty/downloader/t25;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/t25;->g:Lcom/shabakaty/downloader/f54;

    .line 11
    new-instance v0, Lcom/shabakaty/downloader/t25$p;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/t25$p;-><init>(Lcom/shabakaty/downloader/t25;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/t25;->h:Lcom/shabakaty/downloader/f54;

    .line 12
    new-instance v0, Lcom/shabakaty/downloader/t25$a;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/t25$a;-><init>(Lcom/shabakaty/downloader/t25;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/t25;->i:Lcom/shabakaty/downloader/f54;

    .line 13
    new-instance v0, Lcom/shabakaty/downloader/t25$b;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/t25$b;-><init>(Lcom/shabakaty/downloader/t25;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/t25;->j:Lcom/shabakaty/downloader/f54;

    .line 14
    new-instance v0, Lcom/shabakaty/downloader/t25$c;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/t25$c;-><init>(Lcom/shabakaty/downloader/t25;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/t25;->k:Lcom/shabakaty/downloader/f54;

    .line 15
    new-instance v0, Lcom/shabakaty/downloader/t25$d;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/t25$d;-><init>(Lcom/shabakaty/downloader/t25;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/t25;->l:Lcom/shabakaty/downloader/f54;

    .line 16
    new-instance v0, Lcom/shabakaty/downloader/t25$e;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/t25$e;-><init>(Lcom/shabakaty/downloader/t25;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/t25;->m:Lcom/shabakaty/downloader/f54;

    return-void
.end method


# virtual methods
.method public D(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "\n\t\t\t\tSELECT EXISTS (\n\t\t\t\t\tSELECT * \n\t\t\t\t\tFROM video_status\n\t\t\t\t\tWHERE ? = id AND watched = 1\n\t\t\t\t\t)\n\t\t\t\t"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/yt3;->a(Ljava/lang/String;I)Lcom/shabakaty/downloader/yt3;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/yt3;->I(ILjava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->b()V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v2}, Lcom/shabakaty/downloader/lh0;->b(Lcom/shabakaty/downloader/vt3;Lcom/shabakaty/downloader/bi4;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 5
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v3, v1

    .line 7
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yt3;->c()V

    return v3

    :catchall_0
    move-exception v1

    .line 9
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 10
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yt3;->c()V

    .line 11
    throw v1
.end method

.method public E(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->b()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/t25;->i:Lcom/shabakaty/downloader/f54;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/f54;->a()Lcom/shabakaty/downloader/ci4;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1, p1}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 8
    :try_start_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/ci4;->P()I

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 11
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->i:Lcom/shabakaty/downloader/f54;

    .line 13
    iget-object v1, p1, Lcom/shabakaty/downloader/f54;->c:Lcom/shabakaty/downloader/ci4;

    if-ne v0, v1, :cond_1

    .line 14
    iget-object p1, p1, Lcom/shabakaty/downloader/f54;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 15
    iget-object v1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 16
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 17
    iget-object v1, p0, Lcom/shabakaty/downloader/t25;->i:Lcom/shabakaty/downloader/f54;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/f54;->d(Lcom/shabakaty/downloader/ci4;)V

    .line 18
    throw p1
.end method

.method public F(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0
    invoke-static {p1, v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->watchedChanged(Ljava/lang/String;Z)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->b()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/t25;->l:Lcom/shabakaty/downloader/f54;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/f54;->a()Lcom/shabakaty/downloader/ci4;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1, p1}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 8
    :try_start_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/ci4;->P()I

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 11
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->l:Lcom/shabakaty/downloader/f54;

    .line 13
    iget-object v1, p1, Lcom/shabakaty/downloader/f54;->c:Lcom/shabakaty/downloader/ci4;

    if-ne v0, v1, :cond_1

    .line 14
    iget-object p1, p1, Lcom/shabakaty/downloader/f54;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 15
    iget-object v1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 16
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 17
    iget-object v1, p0, Lcom/shabakaty/downloader/t25;->l:Lcom/shabakaty/downloader/f54;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/f54;->d(Lcom/shabakaty/downloader/ci4;)V

    .line 18
    throw p1
.end method

.method public a(Ljava/lang/String;)Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "SELECT * FROM video_status WHERE id = ?"

    const/4 v3, 0x1

    .line 1
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/yt3;->a(Ljava/lang/String;I)Lcom/shabakaty/downloader/yt3;

    move-result-object v2

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/yt3;->T0(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v2, v3, v0}, Lcom/shabakaty/downloader/yt3;->I(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object v0, v1, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->b()V

    .line 5
    iget-object v0, v1, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v2, v4, v5}, Lcom/shabakaty/downloader/lh0;->b(Lcom/shabakaty/downloader/vt3;Lcom/shabakaty/downloader/bi4;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    const-string v0, "id"

    .line 6
    invoke-static {v6, v0}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "videoId"

    .line 7
    invoke-static {v6, v7}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "liked"

    .line 8
    invoke-static {v6, v8}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "watched"

    .line 9
    invoke-static {v6, v9}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "annoying"

    .line 10
    invoke-static {v6, v10}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "disLiked"

    .line 11
    invoke-static {v6, v11}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "favorite"

    .line 12
    invoke-static {v6, v12}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "watchLater"

    .line 13
    invoke-static {v6, v13}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "videoProgress"

    .line 14
    invoke-static {v6, v14}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 15
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 16
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1

    move-object/from16 v16, v5

    goto :goto_1

    .line 17
    :cond_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    .line 18
    :goto_1
    invoke-interface {v6, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v17, v5

    goto :goto_2

    .line 19
    :cond_2
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    .line 20
    :goto_2
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v18, 0x1

    goto :goto_3

    :cond_3
    const/16 v18, 0x0

    .line 21
    :goto_3
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v19, 0x1

    goto :goto_4

    :cond_4
    const/16 v19, 0x0

    .line 22
    :goto_4
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v20, 0x1

    goto :goto_5

    :cond_5
    const/16 v20, 0x0

    .line 23
    :goto_5
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v21, 0x1

    goto :goto_6

    :cond_6
    const/16 v21, 0x0

    .line 24
    :goto_6
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v22, 0x1

    goto :goto_7

    :cond_7
    const/16 v22, 0x0

    .line 25
    :goto_7
    invoke-interface {v6, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_8
    move-object/from16 v23, v5

    goto :goto_9

    .line 26
    :cond_8
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    .line 27
    :goto_9
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 28
    new-instance v5, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;

    move-object v15, v5

    invoke-direct/range {v15 .. v25}, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 30
    invoke-virtual {v2}, Lcom/shabakaty/downloader/yt3;->c()V

    return-object v5

    :catchall_0
    move-exception v0

    .line 31
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 32
    invoke-virtual {v2}, Lcom/shabakaty/downloader/yt3;->c()V

    .line 33
    throw v0
.end method

.method public b(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    new-instance v1, Lcom/shabakaty/downloader/t25$g;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/t25$g;-><init>(Lcom/shabakaty/downloader/t25;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p1}, Lcom/shabakaty/downloader/af0;->c(Lcom/shabakaty/downloader/vt3;ZLjava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->b()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/t25;->h:Lcom/shabakaty/downloader/f54;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/f54;->a()Lcom/shabakaty/downloader/ci4;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1, p1}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 8
    :try_start_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/ci4;->P()I

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 11
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->h:Lcom/shabakaty/downloader/f54;

    .line 13
    iget-object v1, p1, Lcom/shabakaty/downloader/f54;->c:Lcom/shabakaty/downloader/ci4;

    if-ne v0, v1, :cond_1

    .line 14
    iget-object p1, p1, Lcom/shabakaty/downloader/f54;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 15
    iget-object v1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 16
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 17
    iget-object v1, p0, Lcom/shabakaty/downloader/t25;->h:Lcom/shabakaty/downloader/f54;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/f54;->d(Lcom/shabakaty/downloader/ci4;)V

    .line 18
    throw p1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "SELECT EXISTS (SELECT * FROM video_status WHERE ? = id)"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/yt3;->a(Ljava/lang/String;I)Lcom/shabakaty/downloader/yt3;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/yt3;->T0(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/yt3;->I(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->b()V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v2}, Lcom/shabakaty/downloader/lh0;->b(Lcom/shabakaty/downloader/vt3;Lcom/shabakaty/downloader/bi4;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 6
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move v3, v1

    .line 8
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 9
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yt3;->c()V

    return v3

    :catchall_0
    move-exception v1

    .line 10
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 11
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yt3;->c()V

    .line 12
    throw v1
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->b()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/t25;->d:Lcom/shabakaty/downloader/f54;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/f54;->a()Lcom/shabakaty/downloader/ci4;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1, p1}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 8
    :try_start_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/ci4;->P()I

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 11
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->d:Lcom/shabakaty/downloader/f54;

    .line 13
    iget-object v1, p1, Lcom/shabakaty/downloader/f54;->c:Lcom/shabakaty/downloader/ci4;

    if-ne v0, v1, :cond_1

    .line 14
    iget-object p1, p1, Lcom/shabakaty/downloader/f54;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 15
    iget-object v1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 16
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 17
    iget-object v1, p0, Lcom/shabakaty/downloader/t25;->d:Lcom/shabakaty/downloader/f54;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/f54;->d(Lcom/shabakaty/downloader/ci4;)V

    .line 18
    throw p1
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1
    invoke-static {p1, v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->watchedChanged(Ljava/lang/String;Z)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->b()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/t25;->k:Lcom/shabakaty/downloader/f54;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/f54;->a()Lcom/shabakaty/downloader/ci4;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1, p1}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 8
    :try_start_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/ci4;->P()I

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 11
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->k:Lcom/shabakaty/downloader/f54;

    .line 13
    iget-object v1, p1, Lcom/shabakaty/downloader/f54;->c:Lcom/shabakaty/downloader/ci4;

    if-ne v0, v1, :cond_1

    .line 14
    iget-object p1, p1, Lcom/shabakaty/downloader/f54;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 15
    iget-object v1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 16
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 17
    iget-object v1, p0, Lcom/shabakaty/downloader/t25;->k:Lcom/shabakaty/downloader/f54;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/f54;->d(Lcom/shabakaty/downloader/ci4;)V

    .line 18
    throw p1
.end method

.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->b()V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/t25;->b:Lcom/shabakaty/downloader/x31;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/x31;->f(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 9
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->j()V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 11
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 12
    throw p1
.end method

.method public k(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->b()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/t25;->f:Lcom/shabakaty/downloader/f54;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/f54;->a()Lcom/shabakaty/downloader/ci4;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1, p1}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 8
    :try_start_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/ci4;->P()I

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 11
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->f:Lcom/shabakaty/downloader/f54;

    .line 13
    iget-object v1, p1, Lcom/shabakaty/downloader/f54;->c:Lcom/shabakaty/downloader/ci4;

    if-ne v0, v1, :cond_1

    .line 14
    iget-object p1, p1, Lcom/shabakaty/downloader/f54;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 15
    iget-object v1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 16
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 17
    iget-object v1, p0, Lcom/shabakaty/downloader/t25;->f:Lcom/shabakaty/downloader/f54;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/f54;->d(Lcom/shabakaty/downloader/ci4;)V

    .line 18
    throw p1
.end method

.method public p(Ljava/lang/String;)I
    .locals 3

    const-string v0, "\n\t\t\t\t\tSELECT Count(*)\n\t\t\t\t\tFROM video_model\n\t\t\t\t\tINNER JOIN video_status ON video_model.nb = video_status.videoId\t\n\t\t\t\t\tWHERE video_model.rootSeries = ? AND (video_status.videoProgress != 0 OR video_status.watched = 1) AND (video_model.kind = 2)\n\t\t\t\t\t"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/yt3;->a(Ljava/lang/String;I)Lcom/shabakaty/downloader/yt3;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/yt3;->T0(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/yt3;->I(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->b()V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lcom/shabakaty/downloader/lh0;->b(Lcom/shabakaty/downloader/vt3;Lcom/shabakaty/downloader/bi4;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 6
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 9
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yt3;->c()V

    return v2

    :catchall_0
    move-exception v1

    .line 10
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 11
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yt3;->c()V

    .line 12
    throw v1
.end method

.method public q(Ljava/lang/String;JLcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/shabakaty/cinemana/local/LocalRuntime;->progress(Ljava/lang/String;J)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    new-instance v1, Lcom/shabakaty/downloader/t25$h;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/shabakaty/downloader/t25$h;-><init>(Lcom/shabakaty/downloader/t25;JLjava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p4}, Lcom/shabakaty/downloader/af0;->c(Lcom/shabakaty/downloader/vt3;ZLjava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public v(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->b()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/t25;->g:Lcom/shabakaty/downloader/f54;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/f54;->a()Lcom/shabakaty/downloader/ci4;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1, p1}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 8
    :try_start_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/ci4;->P()I

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 11
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->g:Lcom/shabakaty/downloader/f54;

    .line 13
    iget-object v1, p1, Lcom/shabakaty/downloader/f54;->c:Lcom/shabakaty/downloader/ci4;

    if-ne v0, v1, :cond_1

    .line 14
    iget-object p1, p1, Lcom/shabakaty/downloader/f54;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 15
    iget-object v1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 16
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 17
    iget-object v1, p0, Lcom/shabakaty/downloader/t25;->g:Lcom/shabakaty/downloader/f54;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/f54;->d(Lcom/shabakaty/downloader/ci4;)V

    .line 18
    throw p1
.end method

.method public w(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "\n\t\t\t\t\tSELECT videoProgress\n\t\t\t\t\tFROM video_status\n\t\t\t\t\tWHERE ? = id \n\t\t\t\t"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/yt3;->a(Ljava/lang/String;I)Lcom/shabakaty/downloader/yt3;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/yt3;->T0(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/yt3;->I(ILjava/lang/String;)V

    .line 4
    :goto_0
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    const/4 v2, 0x0

    new-instance v3, Lcom/shabakaty/downloader/t25$j;

    invoke-direct {v3, p0, v0}, Lcom/shabakaty/downloader/t25$j;-><init>(Lcom/shabakaty/downloader/t25;Lcom/shabakaty/downloader/yt3;)V

    invoke-static {v1, v2, p1, v3, p2}, Lcom/shabakaty/downloader/af0;->b(Lcom/shabakaty/downloader/vt3;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public x(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->b()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/t25;->j:Lcom/shabakaty/downloader/f54;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/f54;->a()Lcom/shabakaty/downloader/ci4;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1, p1}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 8
    :try_start_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/ci4;->P()I

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 11
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->j:Lcom/shabakaty/downloader/f54;

    .line 13
    iget-object v1, p1, Lcom/shabakaty/downloader/f54;->c:Lcom/shabakaty/downloader/ci4;

    if-ne v0, v1, :cond_1

    .line 14
    iget-object p1, p1, Lcom/shabakaty/downloader/f54;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 15
    iget-object v1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 16
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 17
    iget-object v1, p0, Lcom/shabakaty/downloader/t25;->j:Lcom/shabakaty/downloader/f54;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/f54;->d(Lcom/shabakaty/downloader/ci4;)V

    .line 18
    throw p1
.end method

.method public y(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->b()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/t25;->e:Lcom/shabakaty/downloader/f54;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/f54;->a()Lcom/shabakaty/downloader/ci4;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1, p1}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 8
    :try_start_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/ci4;->P()I

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 11
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/t25;->e:Lcom/shabakaty/downloader/f54;

    .line 13
    iget-object v1, p1, Lcom/shabakaty/downloader/f54;->c:Lcom/shabakaty/downloader/ci4;

    if-ne v0, v1, :cond_1

    .line 14
    iget-object p1, p1, Lcom/shabakaty/downloader/f54;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 15
    iget-object v1, p0, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 16
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 17
    iget-object v1, p0, Lcom/shabakaty/downloader/t25;->e:Lcom/shabakaty/downloader/f54;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/f54;->d(Lcom/shabakaty/downloader/ci4;)V

    .line 18
    throw p1
.end method

.method public z(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/cinemana/data/db/videostatus/VideoStatusEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM video_status WHERE id = ?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/yt3;->a(Ljava/lang/String;I)Lcom/shabakaty/downloader/yt3;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/yt3;->T0(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/yt3;->I(ILjava/lang/String;)V

    .line 4
    :goto_0
    new-instance p1, Lcom/shabakaty/downloader/t25$i;

    invoke-direct {p1, p0, v0}, Lcom/shabakaty/downloader/t25$i;-><init>(Lcom/shabakaty/downloader/t25;Lcom/shabakaty/downloader/yt3;)V

    sget-object v0, Lcom/shabakaty/downloader/bw3;->a:Ljava/lang/Object;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/aw3;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/aw3;-><init>(Ljava/util/concurrent/Callable;)V

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/j74;

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/j74;-><init>(Lcom/shabakaty/downloader/a84;)V

    return-object p1
.end method
