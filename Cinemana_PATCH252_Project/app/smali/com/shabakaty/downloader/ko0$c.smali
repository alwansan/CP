.class public final Lcom/shabakaty/downloader/ko0$c;
.super Ljava/lang/Object;
.source "DefaultHlsPlaylistTracker.java"

# interfaces
.implements Lcom/shabakaty/downloader/ij2$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ko0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ij2$b<",
        "Lcom/shabakaty/downloader/ra3<",
        "Lcom/shabakaty/downloader/lt1;",
        ">;>;"
    }
.end annotation


# instance fields
.field public A:Ljava/io/IOException;

.field public final synthetic B:Lcom/shabakaty/downloader/ko0;

.field public final r:Landroid/net/Uri;

.field public final s:Lcom/shabakaty/downloader/ij2;

.field public final t:Lcom/shabakaty/downloader/vl0;

.field public u:Lcom/shabakaty/downloader/kt1;

.field public v:J

.field public w:J

.field public x:J

.field public y:J

.field public z:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ko0;Landroid/net/Uri;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ko0$c;->B:Lcom/shabakaty/downloader/ko0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/ko0$c;->r:Landroid/net/Uri;

    .line 3
    new-instance p2, Lcom/shabakaty/downloader/ij2;

    const-string v0, "DefaultHlsPlaylistTracker:MediaPlaylist"

    invoke-direct {p2, v0}, Lcom/shabakaty/downloader/ij2;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/ko0$c;->s:Lcom/shabakaty/downloader/ij2;

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/ko0;->r:Lcom/shabakaty/downloader/gt1;

    const/4 p2, 0x4

    .line 5
    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/gt1;->a(I)Lcom/shabakaty/downloader/vl0;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ko0$c;->t:Lcom/shabakaty/downloader/vl0;

    return-void
.end method

.method public static a(Lcom/shabakaty/downloader/ko0$c;J)Z
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/shabakaty/downloader/ko0$c;->y:J

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/ko0$c;->r:Landroid/net/Uri;

    iget-object p2, p0, Lcom/shabakaty/downloader/ko0$c;->B:Lcom/shabakaty/downloader/ko0;

    .line 3
    iget-object p2, p2, Lcom/shabakaty/downloader/ko0;->B:Landroid/net/Uri;

    .line 4
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/shabakaty/downloader/ko0$c;->B:Lcom/shabakaty/downloader/ko0;

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/ko0;->A:Lcom/shabakaty/downloader/it1;

    iget-object p1, p1, Lcom/shabakaty/downloader/it1;->e:Ljava/util/List;

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 8
    iget-object v5, p0, Lcom/shabakaty/downloader/ko0;->u:Ljava/util/HashMap;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/it1$b;

    iget-object v6, v6, Lcom/shabakaty/downloader/it1$b;->a:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/ko0$c;

    .line 9
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-wide v6, v5, Lcom/shabakaty/downloader/ko0$c;->y:J

    cmp-long v8, v2, v6

    if-lez v8, :cond_0

    .line 11
    iget-object p1, v5, Lcom/shabakaty/downloader/ko0$c;->r:Landroid/net/Uri;

    .line 12
    iput-object p1, p0, Lcom/shabakaty/downloader/ko0;->B:Landroid/net/Uri;

    .line 13
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ko0;->r(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    .line 14
    invoke-virtual {v5, p0}, Lcom/shabakaty/downloader/ko0$c;->c(Landroid/net/Uri;)V

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    return p2
.end method


# virtual methods
.method public final b(Landroid/net/Uri;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ko0$c;->B:Lcom/shabakaty/downloader/ko0;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/ko0;->s:Lcom/shabakaty/downloader/nt1;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/ko0;->A:Lcom/shabakaty/downloader/it1;

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/ko0$c;->u:Lcom/shabakaty/downloader/kt1;

    invoke-interface {v1, v0, v2}, Lcom/shabakaty/downloader/nt1;->a(Lcom/shabakaty/downloader/it1;Lcom/shabakaty/downloader/kt1;)Lcom/shabakaty/downloader/ra3$a;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/ra3;

    iget-object v2, p0, Lcom/shabakaty/downloader/ko0$c;->t:Lcom/shabakaty/downloader/vl0;

    const/4 v3, 0x4

    invoke-direct {v1, v2, p1, v3, v0}, Lcom/shabakaty/downloader/ra3;-><init>(Lcom/shabakaty/downloader/vl0;Landroid/net/Uri;ILcom/shabakaty/downloader/ra3$a;)V

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/ko0$c;->s:Lcom/shabakaty/downloader/ij2;

    iget-object v0, p0, Lcom/shabakaty/downloader/ko0$c;->B:Lcom/shabakaty/downloader/ko0;

    .line 7
    iget-object v0, v0, Lcom/shabakaty/downloader/ko0;->t:Lcom/shabakaty/downloader/gj2;

    .line 8
    iget v2, v1, Lcom/shabakaty/downloader/ra3;->c:I

    check-cast v0, Lcom/shabakaty/downloader/po0;

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/po0;->b(I)I

    move-result v0

    .line 9
    invoke-virtual {p1, v1, p0, v0}, Lcom/shabakaty/downloader/ij2;->h(Lcom/shabakaty/downloader/ij2$e;Lcom/shabakaty/downloader/ij2$b;I)J

    move-result-wide v6

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/ko0$c;->B:Lcom/shabakaty/downloader/ko0;

    .line 11
    iget-object p1, p1, Lcom/shabakaty/downloader/ko0;->w:Lcom/shabakaty/downloader/yq2$a;

    .line 12
    new-instance v0, Lcom/shabakaty/downloader/hj2;

    iget-wide v3, v1, Lcom/shabakaty/downloader/ra3;->a:J

    iget-object v5, v1, Lcom/shabakaty/downloader/ra3;->b:Lcom/shabakaty/downloader/yl0;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/hj2;-><init>(JLcom/shabakaty/downloader/yl0;J)V

    iget v1, v1, Lcom/shabakaty/downloader/ra3;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/yq2$a;->m(Lcom/shabakaty/downloader/hj2;I)V

    return-void
.end method

.method public final c(Landroid/net/Uri;)V
    .locals 6

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/shabakaty/downloader/ko0$c;->y:J

    .line 2
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ko0$c;->z:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/shabakaty/downloader/ko0$c;->s:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ij2;->e()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/shabakaty/downloader/ko0$c;->s:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ij2;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 4
    iget-wide v2, p0, Lcom/shabakaty/downloader/ko0$c;->x:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const/4 v4, 0x1

    .line 5
    iput-boolean v4, p0, Lcom/shabakaty/downloader/ko0$c;->z:Z

    .line 6
    iget-object v4, p0, Lcom/shabakaty/downloader/ko0$c;->B:Lcom/shabakaty/downloader/ko0;

    .line 7
    iget-object v4, v4, Lcom/shabakaty/downloader/ko0;->y:Landroid/os/Handler;

    .line 8
    new-instance v5, Lcom/shabakaty/downloader/or;

    invoke-direct {v5, p0, p1}, Lcom/shabakaty/downloader/or;-><init>(Lcom/shabakaty/downloader/ko0$c;Landroid/net/Uri;)V

    sub-long/2addr v2, v0

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ko0$c;->b(Landroid/net/Uri;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final d(Lcom/shabakaty/downloader/kt1;Lcom/shabakaty/downloader/hj2;)V
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/shabakaty/downloader/ko0$c;->u:Lcom/shabakaty/downloader/kt1;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 3
    iput-wide v3, v0, Lcom/shabakaty/downloader/ko0$c;->v:J

    .line 4
    iget-object v5, v0, Lcom/shabakaty/downloader/ko0$c;->B:Lcom/shabakaty/downloader/ko0;

    sget-object v6, Lcom/shabakaty/downloader/ko0;->F:Lcom/shabakaty/downloader/ot1$a;

    .line 5
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    .line 7
    iget-wide v8, v1, Lcom/shabakaty/downloader/kt1;->k:J

    iget-wide v10, v2, Lcom/shabakaty/downloader/kt1;->k:J

    cmp-long v12, v8, v10

    if-lez v12, :cond_0

    goto :goto_1

    :cond_0
    if-gez v12, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v8, v1, Lcom/shabakaty/downloader/kt1;->r:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    iget-object v9, v2, Lcom/shabakaty/downloader/kt1;->r:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v8, v9

    if-eqz v8, :cond_2

    if-lez v8, :cond_3

    goto :goto_1

    .line 9
    :cond_2
    iget-object v8, v1, Lcom/shabakaty/downloader/kt1;->s:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    .line 10
    iget-object v9, v2, Lcom/shabakaty/downloader/kt1;->s:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-gt v8, v9, :cond_4

    if-ne v8, v9, :cond_3

    .line 11
    iget-boolean v8, v1, Lcom/shabakaty/downloader/kt1;->o:Z

    if-eqz v8, :cond_3

    iget-boolean v8, v2, Lcom/shabakaty/downloader/kt1;->o:Z

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v8, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v8, 0x1

    :goto_2
    if-nez v8, :cond_7

    .line 12
    iget-boolean v5, v1, Lcom/shabakaty/downloader/kt1;->o:Z

    if-eqz v5, :cond_6

    .line 13
    iget-boolean v5, v2, Lcom/shabakaty/downloader/kt1;->o:Z

    if-eqz v5, :cond_5

    goto :goto_3

    .line 14
    :cond_5
    new-instance v5, Lcom/shabakaty/downloader/kt1;

    move-object v11, v5

    iget v12, v2, Lcom/shabakaty/downloader/kt1;->d:I

    iget-object v13, v2, Lcom/shabakaty/downloader/lt1;->a:Ljava/lang/String;

    iget-object v14, v2, Lcom/shabakaty/downloader/lt1;->b:Ljava/util/List;

    iget-wide v9, v2, Lcom/shabakaty/downloader/kt1;->e:J

    move-wide v15, v9

    iget-boolean v8, v2, Lcom/shabakaty/downloader/kt1;->g:Z

    move/from16 v17, v8

    iget-wide v8, v2, Lcom/shabakaty/downloader/kt1;->h:J

    move-wide/from16 v18, v8

    iget-boolean v8, v2, Lcom/shabakaty/downloader/kt1;->i:Z

    move/from16 v20, v8

    iget v8, v2, Lcom/shabakaty/downloader/kt1;->j:I

    move/from16 v21, v8

    iget-wide v8, v2, Lcom/shabakaty/downloader/kt1;->k:J

    move-wide/from16 v22, v8

    iget v8, v2, Lcom/shabakaty/downloader/kt1;->l:I

    move/from16 v24, v8

    iget-wide v8, v2, Lcom/shabakaty/downloader/kt1;->m:J

    move-wide/from16 v25, v8

    iget-wide v8, v2, Lcom/shabakaty/downloader/kt1;->n:J

    move-wide/from16 v27, v8

    iget-boolean v8, v2, Lcom/shabakaty/downloader/lt1;->c:Z

    move/from16 v29, v8

    const/16 v30, 0x1

    iget-boolean v8, v2, Lcom/shabakaty/downloader/kt1;->p:Z

    move/from16 v31, v8

    iget-object v8, v2, Lcom/shabakaty/downloader/kt1;->q:Lcom/shabakaty/downloader/o01;

    move-object/from16 v32, v8

    iget-object v8, v2, Lcom/shabakaty/downloader/kt1;->r:Ljava/util/List;

    move-object/from16 v33, v8

    iget-object v8, v2, Lcom/shabakaty/downloader/kt1;->s:Ljava/util/List;

    move-object/from16 v34, v8

    iget-object v8, v2, Lcom/shabakaty/downloader/kt1;->v:Lcom/shabakaty/downloader/kt1$f;

    move-object/from16 v35, v8

    iget-object v8, v2, Lcom/shabakaty/downloader/kt1;->t:Ljava/util/Map;

    move-object/from16 v36, v8

    invoke-direct/range {v11 .. v36}, Lcom/shabakaty/downloader/kt1;-><init>(ILjava/lang/String;Ljava/util/List;JZJZIJIJJZZZLcom/shabakaty/downloader/o01;Ljava/util/List;Ljava/util/List;Lcom/shabakaty/downloader/kt1$f;Ljava/util/Map;)V

    goto/16 :goto_a

    :cond_6
    :goto_3
    move-object v5, v2

    goto/16 :goto_a

    .line 15
    :cond_7
    iget-boolean v8, v1, Lcom/shabakaty/downloader/kt1;->p:Z

    if-eqz v8, :cond_9

    .line 16
    iget-wide v8, v1, Lcom/shabakaty/downloader/kt1;->h:J

    :cond_8
    :goto_4
    move-wide/from16 v17, v8

    goto :goto_6

    .line 17
    :cond_9
    iget-object v8, v5, Lcom/shabakaty/downloader/ko0;->C:Lcom/shabakaty/downloader/kt1;

    if-eqz v8, :cond_a

    iget-wide v8, v8, Lcom/shabakaty/downloader/kt1;->h:J

    goto :goto_5

    :cond_a
    const-wide/16 v8, 0x0

    :goto_5
    if-nez v2, :cond_b

    goto :goto_4

    .line 18
    :cond_b
    iget-object v10, v2, Lcom/shabakaty/downloader/kt1;->r:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    .line 19
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/ko0;->q(Lcom/shabakaty/downloader/kt1;Lcom/shabakaty/downloader/kt1;)Lcom/shabakaty/downloader/kt1$d;

    move-result-object v11

    if-eqz v11, :cond_c

    .line 20
    iget-wide v8, v2, Lcom/shabakaty/downloader/kt1;->h:J

    iget-wide v10, v11, Lcom/shabakaty/downloader/kt1$e;->v:J

    add-long/2addr v8, v10

    goto :goto_4

    :cond_c
    int-to-long v10, v10

    .line 21
    iget-wide v12, v1, Lcom/shabakaty/downloader/kt1;->k:J

    iget-wide v14, v2, Lcom/shabakaty/downloader/kt1;->k:J

    sub-long/2addr v12, v14

    cmp-long v14, v10, v12

    if-nez v14, :cond_8

    .line 22
    invoke-virtual {v2}, Lcom/shabakaty/downloader/kt1;->b()J

    move-result-wide v8

    goto :goto_4

    .line 23
    :goto_6
    iget-boolean v8, v1, Lcom/shabakaty/downloader/kt1;->i:Z

    if-eqz v8, :cond_e

    .line 24
    iget v5, v1, Lcom/shabakaty/downloader/kt1;->j:I

    :cond_d
    :goto_7
    move/from16 v20, v5

    goto :goto_9

    .line 25
    :cond_e
    iget-object v5, v5, Lcom/shabakaty/downloader/ko0;->C:Lcom/shabakaty/downloader/kt1;

    if-eqz v5, :cond_f

    .line 26
    iget v5, v5, Lcom/shabakaty/downloader/kt1;->j:I

    goto :goto_8

    :cond_f
    const/4 v5, 0x0

    :goto_8
    if-nez v2, :cond_10

    goto :goto_7

    .line 27
    :cond_10
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/ko0;->q(Lcom/shabakaty/downloader/kt1;Lcom/shabakaty/downloader/kt1;)Lcom/shabakaty/downloader/kt1$d;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 28
    iget v5, v2, Lcom/shabakaty/downloader/kt1;->j:I

    iget v8, v8, Lcom/shabakaty/downloader/kt1$e;->u:I

    add-int/2addr v5, v8

    iget-object v8, v1, Lcom/shabakaty/downloader/kt1;->r:Ljava/util/List;

    .line 29
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/downloader/kt1$d;

    iget v8, v8, Lcom/shabakaty/downloader/kt1$e;->u:I

    sub-int/2addr v5, v8

    goto :goto_7

    .line 30
    :goto_9
    new-instance v5, Lcom/shabakaty/downloader/kt1;

    move-object v10, v5

    iget v11, v1, Lcom/shabakaty/downloader/kt1;->d:I

    iget-object v12, v1, Lcom/shabakaty/downloader/lt1;->a:Ljava/lang/String;

    iget-object v13, v1, Lcom/shabakaty/downloader/lt1;->b:Ljava/util/List;

    iget-wide v14, v1, Lcom/shabakaty/downloader/kt1;->e:J

    iget-boolean v8, v1, Lcom/shabakaty/downloader/kt1;->g:Z

    move/from16 v16, v8

    iget-wide v8, v1, Lcom/shabakaty/downloader/kt1;->k:J

    move-wide/from16 v21, v8

    iget v8, v1, Lcom/shabakaty/downloader/kt1;->l:I

    move/from16 v23, v8

    iget-wide v8, v1, Lcom/shabakaty/downloader/kt1;->m:J

    move-wide/from16 v24, v8

    iget-wide v8, v1, Lcom/shabakaty/downloader/kt1;->n:J

    move-wide/from16 v26, v8

    iget-boolean v8, v1, Lcom/shabakaty/downloader/lt1;->c:Z

    move/from16 v28, v8

    iget-boolean v8, v1, Lcom/shabakaty/downloader/kt1;->o:Z

    move/from16 v29, v8

    iget-boolean v8, v1, Lcom/shabakaty/downloader/kt1;->p:Z

    move/from16 v30, v8

    iget-object v8, v1, Lcom/shabakaty/downloader/kt1;->q:Lcom/shabakaty/downloader/o01;

    move-object/from16 v31, v8

    iget-object v8, v1, Lcom/shabakaty/downloader/kt1;->r:Ljava/util/List;

    move-object/from16 v32, v8

    iget-object v8, v1, Lcom/shabakaty/downloader/kt1;->s:Ljava/util/List;

    move-object/from16 v33, v8

    iget-object v8, v1, Lcom/shabakaty/downloader/kt1;->v:Lcom/shabakaty/downloader/kt1$f;

    move-object/from16 v34, v8

    iget-object v8, v1, Lcom/shabakaty/downloader/kt1;->t:Ljava/util/Map;

    move-object/from16 v35, v8

    const/16 v19, 0x1

    invoke-direct/range {v10 .. v35}, Lcom/shabakaty/downloader/kt1;-><init>(ILjava/lang/String;Ljava/util/List;JZJZIJIJJZZZLcom/shabakaty/downloader/o01;Ljava/util/List;Ljava/util/List;Lcom/shabakaty/downloader/kt1$f;Ljava/util/Map;)V

    .line 31
    :goto_a
    iput-object v5, v0, Lcom/shabakaty/downloader/ko0$c;->u:Lcom/shabakaty/downloader/kt1;

    const/4 v8, 0x0

    if-eq v5, v2, :cond_13

    .line 32
    iput-object v8, v0, Lcom/shabakaty/downloader/ko0$c;->A:Ljava/io/IOException;

    .line 33
    iput-wide v3, v0, Lcom/shabakaty/downloader/ko0$c;->w:J

    .line 34
    iget-object v1, v0, Lcom/shabakaty/downloader/ko0$c;->B:Lcom/shabakaty/downloader/ko0;

    iget-object v8, v0, Lcom/shabakaty/downloader/ko0$c;->r:Landroid/net/Uri;

    .line 35
    iget-object v9, v1, Lcom/shabakaty/downloader/ko0;->B:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 36
    iget-object v8, v1, Lcom/shabakaty/downloader/ko0;->C:Lcom/shabakaty/downloader/kt1;

    if-nez v8, :cond_11

    .line 37
    iget-boolean v8, v5, Lcom/shabakaty/downloader/kt1;->o:Z

    xor-int/2addr v8, v6

    iput-boolean v8, v1, Lcom/shabakaty/downloader/ko0;->D:Z

    .line 38
    iget-wide v8, v5, Lcom/shabakaty/downloader/kt1;->h:J

    iput-wide v8, v1, Lcom/shabakaty/downloader/ko0;->E:J

    .line 39
    :cond_11
    iput-object v5, v1, Lcom/shabakaty/downloader/ko0;->C:Lcom/shabakaty/downloader/kt1;

    .line 40
    iget-object v8, v1, Lcom/shabakaty/downloader/ko0;->z:Lcom/shabakaty/downloader/ot1$e;

    check-cast v8, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    invoke-virtual {v8, v5}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->z(Lcom/shabakaty/downloader/kt1;)V

    .line 41
    :cond_12
    iget-object v1, v1, Lcom/shabakaty/downloader/ko0;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/ot1$b;

    .line 42
    invoke-interface {v5}, Lcom/shabakaty/downloader/ot1$b;->a()V

    goto :goto_b

    .line 43
    :cond_13
    iget-boolean v5, v5, Lcom/shabakaty/downloader/kt1;->o:Z

    if-nez v5, :cond_16

    .line 44
    iget-wide v9, v1, Lcom/shabakaty/downloader/kt1;->k:J

    iget-object v1, v1, Lcom/shabakaty/downloader/kt1;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v11, v1

    add-long/2addr v9, v11

    iget-object v1, v0, Lcom/shabakaty/downloader/ko0$c;->u:Lcom/shabakaty/downloader/kt1;

    iget-wide v11, v1, Lcom/shabakaty/downloader/kt1;->k:J

    cmp-long v5, v9, v11

    if-gez v5, :cond_14

    .line 45
    new-instance v1, Lcom/shabakaty/downloader/ot1$c;

    iget-object v5, v0, Lcom/shabakaty/downloader/ko0$c;->r:Landroid/net/Uri;

    invoke-direct {v1, v5}, Lcom/shabakaty/downloader/ot1$c;-><init>(Landroid/net/Uri;)V

    const/4 v5, 0x1

    goto :goto_c

    .line 46
    :cond_14
    iget-wide v9, v0, Lcom/shabakaty/downloader/ko0$c;->w:J

    sub-long v9, v3, v9

    long-to-double v9, v9

    iget-wide v11, v1, Lcom/shabakaty/downloader/kt1;->m:J

    .line 47
    invoke-static {v11, v12}, Lcom/shabakaty/downloader/jp;->d(J)J

    move-result-wide v11

    long-to-double v11, v11

    iget-object v1, v0, Lcom/shabakaty/downloader/ko0$c;->B:Lcom/shabakaty/downloader/ko0;

    .line 48
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/high16 v13, 0x400c000000000000L    # 3.5

    mul-double v11, v11, v13

    cmpl-double v1, v9, v11

    if-lez v1, :cond_15

    .line 49
    new-instance v8, Lcom/shabakaty/downloader/ot1$d;

    iget-object v1, v0, Lcom/shabakaty/downloader/ko0$c;->r:Landroid/net/Uri;

    invoke-direct {v8, v1}, Lcom/shabakaty/downloader/ot1$d;-><init>(Landroid/net/Uri;)V

    :cond_15
    move-object v1, v8

    const/4 v5, 0x0

    :goto_c
    if-eqz v1, :cond_16

    .line 50
    iput-object v1, v0, Lcom/shabakaty/downloader/ko0$c;->A:Ljava/io/IOException;

    .line 51
    iget-object v8, v0, Lcom/shabakaty/downloader/ko0$c;->B:Lcom/shabakaty/downloader/ko0;

    iget-object v9, v0, Lcom/shabakaty/downloader/ko0$c;->r:Landroid/net/Uri;

    new-instance v10, Lcom/shabakaty/downloader/gj2$c;

    new-instance v11, Lcom/shabakaty/downloader/fp2;

    const/4 v12, 0x4

    invoke-direct {v11, v12}, Lcom/shabakaty/downloader/fp2;-><init>(I)V

    move-object/from16 v12, p2

    invoke-direct {v10, v12, v11, v1, v6}, Lcom/shabakaty/downloader/gj2$c;-><init>(Lcom/shabakaty/downloader/hj2;Lcom/shabakaty/downloader/fp2;Ljava/io/IOException;I)V

    invoke-static {v8, v9, v10, v5}, Lcom/shabakaty/downloader/ko0;->p(Lcom/shabakaty/downloader/ko0;Landroid/net/Uri;Lcom/shabakaty/downloader/gj2$c;Z)Z

    .line 52
    :cond_16
    iget-object v1, v0, Lcom/shabakaty/downloader/ko0$c;->u:Lcom/shabakaty/downloader/kt1;

    iget-object v5, v1, Lcom/shabakaty/downloader/kt1;->v:Lcom/shabakaty/downloader/kt1$f;

    iget-boolean v5, v5, Lcom/shabakaty/downloader/kt1$f;->e:Z

    if-nez v5, :cond_18

    if-eq v1, v2, :cond_17

    .line 53
    iget-wide v1, v1, Lcom/shabakaty/downloader/kt1;->m:J

    goto :goto_d

    .line 54
    :cond_17
    iget-wide v1, v1, Lcom/shabakaty/downloader/kt1;->m:J

    const-wide/16 v8, 0x2

    div-long/2addr v1, v8

    :goto_d
    move-wide v9, v1

    goto :goto_e

    :cond_18
    const-wide/16 v9, 0x0

    .line 55
    :goto_e
    invoke-static {v9, v10}, Lcom/shabakaty/downloader/jp;->d(J)J

    move-result-wide v1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/shabakaty/downloader/ko0$c;->x:J

    .line 56
    iget-object v1, v0, Lcom/shabakaty/downloader/ko0$c;->u:Lcom/shabakaty/downloader/kt1;

    iget-wide v1, v1, Lcom/shabakaty/downloader/kt1;->n:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_1a

    iget-object v1, v0, Lcom/shabakaty/downloader/ko0$c;->r:Landroid/net/Uri;

    iget-object v2, v0, Lcom/shabakaty/downloader/ko0$c;->B:Lcom/shabakaty/downloader/ko0;

    .line 57
    iget-object v2, v2, Lcom/shabakaty/downloader/ko0;->B:Landroid/net/Uri;

    .line 58
    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_f

    :cond_19
    const/4 v6, 0x0

    :cond_1a
    :goto_f
    if-eqz v6, :cond_20

    .line 59
    iget-object v1, v0, Lcom/shabakaty/downloader/ko0$c;->u:Lcom/shabakaty/downloader/kt1;

    iget-boolean v2, v1, Lcom/shabakaty/downloader/kt1;->o:Z

    if-nez v2, :cond_20

    .line 60
    iget-object v1, v1, Lcom/shabakaty/downloader/kt1;->v:Lcom/shabakaty/downloader/kt1$f;

    iget-wide v5, v1, Lcom/shabakaty/downloader/kt1$f;->a:J

    cmp-long v2, v5, v3

    if-nez v2, :cond_1b

    iget-boolean v1, v1, Lcom/shabakaty/downloader/kt1$f;->e:Z

    if-nez v1, :cond_1b

    .line 61
    iget-object v1, v0, Lcom/shabakaty/downloader/ko0$c;->r:Landroid/net/Uri;

    goto :goto_11

    .line 62
    :cond_1b
    iget-object v1, v0, Lcom/shabakaty/downloader/ko0$c;->r:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 63
    iget-object v2, v0, Lcom/shabakaty/downloader/ko0$c;->u:Lcom/shabakaty/downloader/kt1;

    iget-object v5, v2, Lcom/shabakaty/downloader/kt1;->v:Lcom/shabakaty/downloader/kt1$f;

    iget-boolean v5, v5, Lcom/shabakaty/downloader/kt1$f;->e:Z

    if-eqz v5, :cond_1d

    .line 64
    iget-wide v5, v2, Lcom/shabakaty/downloader/kt1;->k:J

    iget-object v2, v2, Lcom/shabakaty/downloader/kt1;->r:Ljava/util/List;

    .line 65
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v7, v2

    add-long/2addr v5, v7

    .line 66
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v5, "_HLS_msn"

    invoke-virtual {v1, v5, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 67
    iget-object v2, v0, Lcom/shabakaty/downloader/ko0$c;->u:Lcom/shabakaty/downloader/kt1;

    iget-wide v5, v2, Lcom/shabakaty/downloader/kt1;->n:J

    cmp-long v7, v5, v3

    if-eqz v7, :cond_1d

    .line 68
    iget-object v2, v2, Lcom/shabakaty/downloader/kt1;->s:Ljava/util/List;

    .line 69
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .line 70
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1c

    invoke-static {v2}, Lcom/google/common/collect/u;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/kt1$b;

    iget-boolean v2, v2, Lcom/shabakaty/downloader/kt1$b;->D:Z

    if-eqz v2, :cond_1c

    add-int/lit8 v5, v5, -0x1

    .line 71
    :cond_1c
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "_HLS_part"

    invoke-virtual {v1, v5, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 72
    :cond_1d
    iget-object v2, v0, Lcom/shabakaty/downloader/ko0$c;->u:Lcom/shabakaty/downloader/kt1;

    iget-object v2, v2, Lcom/shabakaty/downloader/kt1;->v:Lcom/shabakaty/downloader/kt1$f;

    iget-wide v5, v2, Lcom/shabakaty/downloader/kt1$f;->a:J

    cmp-long v7, v5, v3

    if-eqz v7, :cond_1f

    .line 73
    iget-boolean v2, v2, Lcom/shabakaty/downloader/kt1$f;->b:Z

    if-eqz v2, :cond_1e

    const-string v2, "v2"

    goto :goto_10

    :cond_1e
    const-string v2, "YES"

    :goto_10
    const-string v3, "_HLS_skip"

    .line 74
    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 75
    :cond_1f
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 76
    :goto_11
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ko0$c;->c(Landroid/net/Uri;)V

    :cond_20
    return-void
.end method

.method public f(Lcom/shabakaty/downloader/ij2$e;JJLjava/io/IOException;I)Lcom/shabakaty/downloader/ij2$c;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    .line 1
    move-object/from16 v2, p1

    check-cast v2, Lcom/shabakaty/downloader/ra3;

    .line 2
    new-instance v15, Lcom/shabakaty/downloader/hj2;

    iget-wide v4, v2, Lcom/shabakaty/downloader/ra3;->a:J

    iget-object v6, v2, Lcom/shabakaty/downloader/ra3;->b:Lcom/shabakaty/downloader/yl0;

    .line 3
    iget-object v3, v2, Lcom/shabakaty/downloader/ra3;->d:Lcom/shabakaty/downloader/uc4;

    .line 4
    iget-object v13, v3, Lcom/shabakaty/downloader/uc4;->c:Landroid/net/Uri;

    .line 5
    iget-object v8, v3, Lcom/shabakaty/downloader/uc4;->d:Ljava/util/Map;

    .line 6
    iget-wide v11, v3, Lcom/shabakaty/downloader/uc4;->b:J

    move-object v3, v15

    move-object v7, v13

    move-wide/from16 v9, p2

    move-wide/from16 v16, v11

    move-wide/from16 v11, p4

    move-object v0, v13

    move-wide/from16 v13, v16

    .line 7
    invoke-direct/range {v3 .. v14}, Lcom/shabakaty/downloader/hj2;-><init>(JLcom/shabakaty/downloader/yl0;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    const-string v3, "_HLS_msn"

    .line 8
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    instance-of v5, v1, Lcom/shabakaty/downloader/mt1$a;

    if-nez v0, :cond_1

    if-eqz v5, :cond_3

    :cond_1
    const v0, 0x7fffffff

    .line 10
    instance-of v6, v1, Lcom/shabakaty/downloader/fw1$e;

    if-eqz v6, :cond_2

    .line 11
    move-object v0, v1

    check-cast v0, Lcom/shabakaty/downloader/fw1$e;

    iget v0, v0, Lcom/shabakaty/downloader/fw1$e;->s:I

    :cond_2
    if-nez v5, :cond_6

    const/16 v5, 0x190

    if-eq v0, v5, :cond_6

    const/16 v5, 0x1f7

    if-ne v0, v5, :cond_3

    goto :goto_2

    .line 12
    :cond_3
    new-instance v0, Lcom/shabakaty/downloader/fp2;

    iget v5, v2, Lcom/shabakaty/downloader/ra3;->c:I

    invoke-direct {v0, v5}, Lcom/shabakaty/downloader/fp2;-><init>(I)V

    .line 13
    new-instance v5, Lcom/shabakaty/downloader/gj2$c;

    move/from16 v6, p7

    invoke-direct {v5, v15, v0, v1, v6}, Lcom/shabakaty/downloader/gj2$c;-><init>(Lcom/shabakaty/downloader/hj2;Lcom/shabakaty/downloader/fp2;Ljava/io/IOException;I)V

    move-object/from16 v0, p0

    .line 14
    iget-object v6, v0, Lcom/shabakaty/downloader/ko0$c;->B:Lcom/shabakaty/downloader/ko0;

    iget-object v7, v0, Lcom/shabakaty/downloader/ko0$c;->r:Landroid/net/Uri;

    .line 15
    invoke-static {v6, v7, v5, v3}, Lcom/shabakaty/downloader/ko0;->p(Lcom/shabakaty/downloader/ko0;Landroid/net/Uri;Lcom/shabakaty/downloader/gj2$c;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 16
    iget-object v6, v0, Lcom/shabakaty/downloader/ko0$c;->B:Lcom/shabakaty/downloader/ko0;

    .line 17
    iget-object v6, v6, Lcom/shabakaty/downloader/ko0;->t:Lcom/shabakaty/downloader/gj2;

    .line 18
    check-cast v6, Lcom/shabakaty/downloader/po0;

    invoke-virtual {v6, v5}, Lcom/shabakaty/downloader/po0;->c(Lcom/shabakaty/downloader/gj2$c;)J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v5, v7

    if-eqz v9, :cond_4

    .line 19
    invoke-static {v3, v5, v6}, Lcom/shabakaty/downloader/ij2;->c(ZJ)Lcom/shabakaty/downloader/ij2$c;

    move-result-object v3

    goto :goto_1

    .line 20
    :cond_4
    sget-object v3, Lcom/shabakaty/downloader/ij2;->f:Lcom/shabakaty/downloader/ij2$c;

    goto :goto_1

    .line 21
    :cond_5
    sget-object v3, Lcom/shabakaty/downloader/ij2;->e:Lcom/shabakaty/downloader/ij2$c;

    .line 22
    :goto_1
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ij2$c;->a()Z

    move-result v5

    xor-int/2addr v4, v5

    .line 23
    iget-object v5, v0, Lcom/shabakaty/downloader/ko0$c;->B:Lcom/shabakaty/downloader/ko0;

    .line 24
    iget-object v5, v5, Lcom/shabakaty/downloader/ko0;->w:Lcom/shabakaty/downloader/yq2$a;

    .line 25
    iget v2, v2, Lcom/shabakaty/downloader/ra3;->c:I

    invoke-virtual {v5, v15, v2, v1, v4}, Lcom/shabakaty/downloader/yq2$a;->k(Lcom/shabakaty/downloader/hj2;ILjava/io/IOException;Z)V

    if-eqz v4, :cond_7

    .line 26
    iget-object v1, v0, Lcom/shabakaty/downloader/ko0$c;->B:Lcom/shabakaty/downloader/ko0;

    .line 27
    iget-object v1, v1, Lcom/shabakaty/downloader/ko0;->t:Lcom/shabakaty/downloader/gj2;

    .line 28
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    :goto_2
    move-object/from16 v0, p0

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/shabakaty/downloader/ko0$c;->x:J

    .line 30
    iget-object v3, v0, Lcom/shabakaty/downloader/ko0$c;->r:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/ko0$c;->c(Landroid/net/Uri;)V

    .line 31
    iget-object v3, v0, Lcom/shabakaty/downloader/ko0$c;->B:Lcom/shabakaty/downloader/ko0;

    .line 32
    iget-object v3, v3, Lcom/shabakaty/downloader/ko0;->w:Lcom/shabakaty/downloader/yq2$a;

    .line 33
    sget v5, Lcom/shabakaty/downloader/sy4;->a:I

    iget v2, v2, Lcom/shabakaty/downloader/ra3;->c:I

    .line 34
    invoke-virtual {v3, v15, v2, v1, v4}, Lcom/shabakaty/downloader/yq2$a;->k(Lcom/shabakaty/downloader/hj2;ILjava/io/IOException;Z)V

    .line 35
    sget-object v3, Lcom/shabakaty/downloader/ij2;->e:Lcom/shabakaty/downloader/ij2$c;

    :cond_7
    :goto_3
    return-object v3
.end method

.method public g(Lcom/shabakaty/downloader/ij2$e;JJ)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lcom/shabakaty/downloader/ra3;

    .line 2
    iget-object v2, v1, Lcom/shabakaty/downloader/ra3;->f:Ljava/lang/Object;

    .line 3
    check-cast v2, Lcom/shabakaty/downloader/lt1;

    .line 4
    new-instance v15, Lcom/shabakaty/downloader/hj2;

    iget-wide v4, v1, Lcom/shabakaty/downloader/ra3;->a:J

    iget-object v6, v1, Lcom/shabakaty/downloader/ra3;->b:Lcom/shabakaty/downloader/yl0;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/downloader/ra3;->d:Lcom/shabakaty/downloader/uc4;

    .line 6
    iget-object v7, v1, Lcom/shabakaty/downloader/uc4;->c:Landroid/net/Uri;

    .line 7
    iget-object v8, v1, Lcom/shabakaty/downloader/uc4;->d:Ljava/util/Map;

    .line 8
    iget-wide v13, v1, Lcom/shabakaty/downloader/uc4;->b:J

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    .line 9
    invoke-direct/range {v3 .. v14}, Lcom/shabakaty/downloader/hj2;-><init>(JLcom/shabakaty/downloader/yl0;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 10
    instance-of v1, v2, Lcom/shabakaty/downloader/kt1;

    const/4 v3, 0x4

    if-eqz v1, :cond_0

    .line 11
    check-cast v2, Lcom/shabakaty/downloader/kt1;

    invoke-virtual {v0, v2, v15}, Lcom/shabakaty/downloader/ko0$c;->d(Lcom/shabakaty/downloader/kt1;Lcom/shabakaty/downloader/hj2;)V

    .line 12
    iget-object v1, v0, Lcom/shabakaty/downloader/ko0$c;->B:Lcom/shabakaty/downloader/ko0;

    .line 13
    iget-object v1, v1, Lcom/shabakaty/downloader/ko0;->w:Lcom/shabakaty/downloader/yq2$a;

    .line 14
    invoke-virtual {v1, v15, v3}, Lcom/shabakaty/downloader/yq2$a;->g(Lcom/shabakaty/downloader/hj2;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "Loaded playlist has unexpected type."

    .line 15
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/pa3;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/ko0$c;->A:Ljava/io/IOException;

    .line 16
    iget-object v2, v0, Lcom/shabakaty/downloader/ko0$c;->B:Lcom/shabakaty/downloader/ko0;

    .line 17
    iget-object v2, v2, Lcom/shabakaty/downloader/ko0;->w:Lcom/shabakaty/downloader/yq2$a;

    const/4 v4, 0x1

    .line 18
    invoke-virtual {v2, v15, v3, v1, v4}, Lcom/shabakaty/downloader/yq2$a;->k(Lcom/shabakaty/downloader/hj2;ILjava/io/IOException;Z)V

    .line 19
    :goto_0
    iget-object v1, v0, Lcom/shabakaty/downloader/ko0$c;->B:Lcom/shabakaty/downloader/ko0;

    .line 20
    iget-object v1, v1, Lcom/shabakaty/downloader/ko0;->t:Lcom/shabakaty/downloader/gj2;

    .line 21
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public l(Lcom/shabakaty/downloader/ij2$e;JJZ)V
    .locals 15

    move-object v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lcom/shabakaty/downloader/ra3;

    .line 2
    new-instance v14, Lcom/shabakaty/downloader/hj2;

    iget-wide v3, v1, Lcom/shabakaty/downloader/ra3;->a:J

    iget-object v5, v1, Lcom/shabakaty/downloader/ra3;->b:Lcom/shabakaty/downloader/yl0;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/ra3;->d:Lcom/shabakaty/downloader/uc4;

    .line 4
    iget-object v6, v1, Lcom/shabakaty/downloader/uc4;->c:Landroid/net/Uri;

    .line 5
    iget-object v7, v1, Lcom/shabakaty/downloader/uc4;->d:Ljava/util/Map;

    .line 6
    iget-wide v12, v1, Lcom/shabakaty/downloader/uc4;->b:J

    move-object v2, v14

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    .line 7
    invoke-direct/range {v2 .. v13}, Lcom/shabakaty/downloader/hj2;-><init>(JLcom/shabakaty/downloader/yl0;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 8
    iget-object v1, v0, Lcom/shabakaty/downloader/ko0$c;->B:Lcom/shabakaty/downloader/ko0;

    .line 9
    iget-object v1, v1, Lcom/shabakaty/downloader/ko0;->t:Lcom/shabakaty/downloader/gj2;

    .line 10
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, v0, Lcom/shabakaty/downloader/ko0$c;->B:Lcom/shabakaty/downloader/ko0;

    .line 12
    iget-object v1, v1, Lcom/shabakaty/downloader/ko0;->w:Lcom/shabakaty/downloader/yq2$a;

    const/4 v2, 0x4

    .line 13
    invoke-virtual {v1, v14, v2}, Lcom/shabakaty/downloader/yq2$a;->d(Lcom/shabakaty/downloader/hj2;I)V

    return-void
.end method
