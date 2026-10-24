.class public final Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;
.super Lcom/shabakaty/downloader/rj;
.source "HlsMediaSource.java"

# interfaces
.implements Lcom/shabakaty/downloader/ot1$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;
    }
.end annotation


# instance fields
.field public final A:Lcom/shabakaty/downloader/kd;

.field public final B:Lcom/shabakaty/downloader/u01;

.field public final C:Lcom/shabakaty/downloader/gj2;

.field public final D:Z

.field public final E:I

.field public final F:Z

.field public final G:Lcom/shabakaty/downloader/ot1;

.field public final H:J

.field public final I:Lcom/shabakaty/downloader/dp2;

.field public J:Lcom/shabakaty/downloader/dp2$f;

.field public K:Lcom/shabakaty/downloader/sp4;

.field public final x:Lcom/shabakaty/downloader/ht1;

.field public final y:Lcom/shabakaty/downloader/dp2$g;

.field public final z:Lcom/shabakaty/downloader/gt1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.hls"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/t71;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/dp2;Lcom/shabakaty/downloader/gt1;Lcom/shabakaty/downloader/ht1;Lcom/shabakaty/downloader/kd;Lcom/shabakaty/downloader/u01;Lcom/shabakaty/downloader/gj2;Lcom/shabakaty/downloader/ot1;JZIZLcom/google/android/exoplayer2/source/hls/HlsMediaSource$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/rj;-><init>()V

    .line 2
    iget-object p13, p1, Lcom/shabakaty/downloader/dp2;->b:Lcom/shabakaty/downloader/dp2$g;

    .line 3
    invoke-static {p13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p13, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->y:Lcom/shabakaty/downloader/dp2$g;

    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->I:Lcom/shabakaty/downloader/dp2;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/dp2;->c:Lcom/shabakaty/downloader/dp2$f;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->J:Lcom/shabakaty/downloader/dp2$f;

    .line 7
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->z:Lcom/shabakaty/downloader/gt1;

    .line 8
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->x:Lcom/shabakaty/downloader/ht1;

    .line 9
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->A:Lcom/shabakaty/downloader/kd;

    .line 10
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->B:Lcom/shabakaty/downloader/u01;

    .line 11
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->C:Lcom/shabakaty/downloader/gj2;

    .line 12
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->G:Lcom/shabakaty/downloader/ot1;

    .line 13
    iput-wide p8, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->H:J

    .line 14
    iput-boolean p10, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->D:Z

    .line 15
    iput p11, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->E:I

    .line 16
    iput-boolean p12, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->F:Z

    return-void
.end method

.method public static y(Ljava/util/List;J)Lcom/shabakaty/downloader/kt1$b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/kt1$b;",
            ">;J)",
            "Lcom/shabakaty/downloader/kt1$b;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/kt1$b;

    .line 3
    iget-wide v3, v2, Lcom/shabakaty/downloader/kt1$e;->v:J

    cmp-long v5, v3, p1

    if-gtz v5, :cond_0

    iget-boolean v5, v2, Lcom/shabakaty/downloader/kt1$b;->C:Z

    if-eqz v5, :cond_0

    move-object v0, v2

    goto :goto_1

    :cond_0
    cmp-long v2, v3, p1

    if-lez v2, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v0
.end method


# virtual methods
.method public d(Lcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/fn0;J)Lcom/shabakaty/downloader/kp2;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/shabakaty/downloader/rj;->t:Lcom/shabakaty/downloader/yq2$a;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v1, v3, v4}, Lcom/shabakaty/downloader/yq2$a;->r(ILcom/shabakaty/downloader/uq2$a;J)Lcom/shabakaty/downloader/yq2$a;

    move-result-object v14

    .line 2
    iget-object v2, v0, Lcom/shabakaty/downloader/rj;->u:Lcom/shabakaty/downloader/s01$a;

    invoke-virtual {v2, v5, v1}, Lcom/shabakaty/downloader/s01$a;->g(ILcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/s01$a;

    move-result-object v12

    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/source/hls/c;

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->x:Lcom/shabakaty/downloader/ht1;

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->G:Lcom/shabakaty/downloader/ot1;

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->z:Lcom/shabakaty/downloader/gt1;

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->K:Lcom/shabakaty/downloader/sp4;

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->B:Lcom/shabakaty/downloader/u01;

    iget-object v13, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->C:Lcom/shabakaty/downloader/gj2;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->A:Lcom/shabakaty/downloader/kd;

    iget-boolean v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->D:Z

    iget v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->E:I

    iget-boolean v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->F:Z

    move-object v6, v1

    move-object/from16 v15, p2

    move-object/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    invoke-direct/range {v6 .. v19}, Lcom/google/android/exoplayer2/source/hls/c;-><init>(Lcom/shabakaty/downloader/ht1;Lcom/shabakaty/downloader/ot1;Lcom/shabakaty/downloader/gt1;Lcom/shabakaty/downloader/sp4;Lcom/shabakaty/downloader/u01;Lcom/shabakaty/downloader/s01$a;Lcom/shabakaty/downloader/gj2;Lcom/shabakaty/downloader/yq2$a;Lcom/shabakaty/downloader/fn0;Lcom/shabakaty/downloader/kd;ZIZ)V

    return-object v1
.end method

.method public h()Lcom/shabakaty/downloader/dp2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->I:Lcom/shabakaty/downloader/dp2;

    return-object v0
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->G:Lcom/shabakaty/downloader/ot1;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ot1;->j()V

    return-void
.end method

.method public m(Lcom/shabakaty/downloader/kp2;)V
    .locals 10

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/source/hls/c;

    .line 2
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/hls/c;->s:Lcom/shabakaty/downloader/ot1;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ot1;->m(Lcom/shabakaty/downloader/ot1$b;)V

    .line 3
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/hls/c;->J:[Lcom/google/android/exoplayer2/source/hls/d;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 4
    iget-boolean v6, v5, Lcom/google/android/exoplayer2/source/hls/d;->T:Z

    if-eqz v6, :cond_0

    .line 5
    iget-object v6, v5, Lcom/google/android/exoplayer2/source/hls/d;->L:[Lcom/google/android/exoplayer2/source/hls/d$d;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_0

    aget-object v9, v6, v8

    .line 6
    invoke-virtual {v9}, Lcom/shabakaty/downloader/bx3;->B()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 7
    :cond_0
    iget-object v6, v5, Lcom/google/android/exoplayer2/source/hls/d;->z:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {v6, v5}, Lcom/shabakaty/downloader/ij2;->g(Lcom/shabakaty/downloader/ij2$f;)V

    .line 8
    iget-object v6, v5, Lcom/google/android/exoplayer2/source/hls/d;->H:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v4, 0x1

    .line 9
    iput-boolean v4, v5, Lcom/google/android/exoplayer2/source/hls/d;->X:Z

    .line 10
    iget-object v4, v5, Lcom/google/android/exoplayer2/source/hls/d;->I:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_1
    iput-object v4, p1, Lcom/google/android/exoplayer2/source/hls/c;->G:Lcom/shabakaty/downloader/kp2$a;

    return-void
.end method

.method public v(Lcom/shabakaty/downloader/sp4;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->K:Lcom/shabakaty/downloader/sp4;

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->B:Lcom/shabakaty/downloader/u01;

    invoke-interface {p1}, Lcom/shabakaty/downloader/u01;->g()V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/rj;->s(Lcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/yq2$a;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->G:Lcom/shabakaty/downloader/ot1;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->y:Lcom/shabakaty/downloader/dp2$g;

    iget-object v1, v1, Lcom/shabakaty/downloader/dp2$g;->a:Landroid/net/Uri;

    invoke-interface {v0, v1, p1, p0}, Lcom/shabakaty/downloader/ot1;->c(Landroid/net/Uri;Lcom/shabakaty/downloader/yq2$a;Lcom/shabakaty/downloader/ot1$e;)V

    return-void
.end method

.method public x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->G:Lcom/shabakaty/downloader/ot1;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ot1;->stop()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->B:Lcom/shabakaty/downloader/u01;

    invoke-interface {v0}, Lcom/shabakaty/downloader/u01;->a()V

    return-void
.end method

.method public z(Lcom/shabakaty/downloader/kt1;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-boolean v2, v1, Lcom/shabakaty/downloader/kt1;->p:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_0

    iget-wide v5, v1, Lcom/shabakaty/downloader/kt1;->h:J

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/jp;->d(J)J

    move-result-wide v5

    move-wide v10, v5

    goto :goto_0

    :cond_0
    move-wide v10, v3

    .line 2
    :goto_0
    iget v2, v1, Lcom/shabakaty/downloader/kt1;->d:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v5, :cond_2

    if-ne v2, v6, :cond_1

    goto :goto_1

    :cond_1
    move-wide v8, v3

    goto :goto_2

    :cond_2
    :goto_1
    move-wide v8, v10

    .line 3
    :goto_2
    new-instance v2, Lcom/shabakaty/downloader/yh1;

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->G:Lcom/shabakaty/downloader/ot1;

    .line 4
    invoke-interface {v7}, Lcom/shabakaty/downloader/ot1;->i()Lcom/shabakaty/downloader/it1;

    move-result-object v7

    .line 5
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-direct {v2, v7, v1}, Lcom/shabakaty/downloader/yh1;-><init>(Lcom/shabakaty/downloader/it1;Lcom/shabakaty/downloader/kt1;)V

    .line 7
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->G:Lcom/shabakaty/downloader/ot1;

    invoke-interface {v7}, Lcom/shabakaty/downloader/ot1;->e()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 8
    iget-wide v14, v1, Lcom/shabakaty/downloader/kt1;->h:J

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->G:Lcom/shabakaty/downloader/ot1;

    .line 9
    invoke-interface {v7}, Lcom/shabakaty/downloader/ot1;->d()J

    move-result-wide v16

    sub-long v18, v14, v16

    .line 10
    iget-boolean v7, v1, Lcom/shabakaty/downloader/kt1;->o:Z

    if-eqz v7, :cond_3

    iget-wide v14, v1, Lcom/shabakaty/downloader/kt1;->u:J

    add-long v14, v18, v14

    goto :goto_3

    :cond_3
    move-wide v14, v3

    .line 11
    :goto_3
    iget-boolean v7, v1, Lcom/shabakaty/downloader/kt1;->p:Z

    if-eqz v7, :cond_4

    .line 12
    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->H:J

    invoke-static {v12, v13}, Lcom/shabakaty/downloader/sy4;->v(J)J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/kt1;->b()J

    move-result-wide v20

    sub-long v12, v12, v20

    goto :goto_4

    :cond_4
    const-wide/16 v12, 0x0

    .line 13
    :goto_4
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->J:Lcom/shabakaty/downloader/dp2$f;

    iget-wide v5, v7, Lcom/shabakaty/downloader/dp2$f;->a:J

    cmp-long v7, v5, v3

    if-eqz v7, :cond_5

    .line 14
    invoke-static {v5, v6}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v5

    move-wide/from16 v20, v5

    goto :goto_6

    .line 15
    :cond_5
    iget-object v5, v1, Lcom/shabakaty/downloader/kt1;->v:Lcom/shabakaty/downloader/kt1$f;

    .line 16
    iget-wide v6, v1, Lcom/shabakaty/downloader/kt1;->e:J

    cmp-long v20, v6, v3

    if-eqz v20, :cond_6

    .line 17
    iget-wide v3, v1, Lcom/shabakaty/downloader/kt1;->u:J

    sub-long/2addr v3, v6

    goto :goto_5

    .line 18
    :cond_6
    iget-wide v3, v5, Lcom/shabakaty/downloader/kt1$f;->d:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v20, v3, v6

    if-eqz v20, :cond_7

    move-wide/from16 v20, v3

    iget-wide v3, v1, Lcom/shabakaty/downloader/kt1;->n:J

    cmp-long v22, v3, v6

    if-eqz v22, :cond_7

    move-wide/from16 v3, v20

    goto :goto_5

    .line 19
    :cond_7
    iget-wide v3, v5, Lcom/shabakaty/downloader/kt1$f;->c:J

    cmp-long v5, v3, v6

    if-eqz v5, :cond_8

    goto :goto_5

    :cond_8
    const-wide/16 v3, 0x3

    .line 20
    iget-wide v5, v1, Lcom/shabakaty/downloader/kt1;->m:J

    mul-long v3, v3, v5

    :goto_5
    add-long/2addr v3, v12

    move-wide/from16 v20, v3

    .line 21
    :goto_6
    iget-wide v3, v1, Lcom/shabakaty/downloader/kt1;->u:J

    add-long v24, v3, v12

    move-wide/from16 v22, v12

    .line 22
    invoke-static/range {v20 .. v25}, Lcom/shabakaty/downloader/sy4;->j(JJJ)J

    move-result-wide v3

    .line 23
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/jp;->d(J)J

    move-result-wide v3

    .line 24
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->J:Lcom/shabakaty/downloader/dp2$f;

    iget-wide v5, v5, Lcom/shabakaty/downloader/dp2$f;->a:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_9

    .line 25
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->I:Lcom/shabakaty/downloader/dp2;

    .line 26
    invoke-virtual {v5}, Lcom/shabakaty/downloader/dp2;->a()Lcom/shabakaty/downloader/dp2$c;

    move-result-object v5

    .line 27
    iput-wide v3, v5, Lcom/shabakaty/downloader/dp2$c;->w:J

    .line 28
    invoke-virtual {v5}, Lcom/shabakaty/downloader/dp2$c;->a()Lcom/shabakaty/downloader/dp2;

    move-result-object v3

    iget-object v3, v3, Lcom/shabakaty/downloader/dp2;->c:Lcom/shabakaty/downloader/dp2$f;

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->J:Lcom/shabakaty/downloader/dp2$f;

    .line 29
    :cond_9
    iget-wide v3, v1, Lcom/shabakaty/downloader/kt1;->e:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-eqz v7, :cond_a

    goto :goto_7

    .line 30
    :cond_a
    iget-wide v3, v1, Lcom/shabakaty/downloader/kt1;->u:J

    add-long/2addr v3, v12

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->J:Lcom/shabakaty/downloader/dp2$f;

    iget-wide v5, v5, Lcom/shabakaty/downloader/dp2$f;->a:J

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 31
    :goto_7
    iget-boolean v5, v1, Lcom/shabakaty/downloader/kt1;->g:Z

    if-eqz v5, :cond_b

    :goto_8
    move-wide/from16 v20, v3

    goto :goto_9

    .line 32
    :cond_b
    iget-object v5, v1, Lcom/shabakaty/downloader/kt1;->s:Ljava/util/List;

    .line 33
    invoke-static {v5, v3, v4}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->y(Ljava/util/List;J)Lcom/shabakaty/downloader/kt1$b;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 34
    iget-wide v3, v5, Lcom/shabakaty/downloader/kt1$e;->v:J

    goto :goto_8

    .line 35
    :cond_c
    iget-object v5, v1, Lcom/shabakaty/downloader/kt1;->r:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_d

    const-wide/16 v20, 0x0

    goto :goto_9

    .line 36
    :cond_d
    iget-object v5, v1, Lcom/shabakaty/downloader/kt1;->r:Ljava/util/List;

    .line 37
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    .line 38
    invoke-static {v5, v6, v7, v7}, Lcom/shabakaty/downloader/sy4;->d(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result v6

    .line 39
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/kt1$d;

    .line 40
    iget-object v6, v5, Lcom/shabakaty/downloader/kt1$d;->D:Ljava/util/List;

    invoke-static {v6, v3, v4}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->y(Ljava/util/List;J)Lcom/shabakaty/downloader/kt1$b;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 41
    iget-wide v3, v3, Lcom/shabakaty/downloader/kt1$e;->v:J

    goto :goto_8

    .line 42
    :cond_e
    iget-wide v3, v5, Lcom/shabakaty/downloader/kt1$e;->v:J

    goto :goto_8

    .line 43
    :goto_9
    iget v3, v1, Lcom/shabakaty/downloader/kt1;->d:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_f

    iget-boolean v3, v1, Lcom/shabakaty/downloader/kt1;->f:Z

    if-eqz v3, :cond_f

    const/16 v24, 0x1

    goto :goto_a

    :cond_f
    const/4 v3, 0x0

    const/16 v24, 0x0

    .line 44
    :goto_a
    new-instance v3, Lcom/shabakaty/downloader/b84;

    move-object v7, v3

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    iget-wide v4, v1, Lcom/shabakaty/downloader/kt1;->u:J

    move-wide/from16 v16, v4

    const/16 v22, 0x1

    iget-boolean v1, v1, Lcom/shabakaty/downloader/kt1;->o:Z

    const/4 v4, 0x1

    xor-int/lit8 v23, v1, 0x1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->I:Lcom/shabakaty/downloader/dp2;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->J:Lcom/shabakaty/downloader/dp2$f;

    move-object/from16 v27, v1

    move-object/from16 v25, v2

    invoke-direct/range {v7 .. v27}, Lcom/shabakaty/downloader/b84;-><init>(JJJJJJJZZZLjava/lang/Object;Lcom/shabakaty/downloader/dp2;Lcom/shabakaty/downloader/dp2$f;)V

    goto :goto_f

    .line 45
    :cond_10
    iget-wide v3, v1, Lcom/shabakaty/downloader/kt1;->e:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-eqz v7, :cond_14

    iget-object v3, v1, Lcom/shabakaty/downloader/kt1;->r:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_d

    .line 46
    :cond_11
    iget-boolean v3, v1, Lcom/shabakaty/downloader/kt1;->g:Z

    if-nez v3, :cond_13

    iget-wide v3, v1, Lcom/shabakaty/downloader/kt1;->e:J

    iget-wide v5, v1, Lcom/shabakaty/downloader/kt1;->u:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_12

    goto :goto_b

    .line 47
    :cond_12
    iget-object v5, v1, Lcom/shabakaty/downloader/kt1;->r:Ljava/util/List;

    .line 48
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    .line 49
    invoke-static {v5, v3, v4, v4}, Lcom/shabakaty/downloader/sy4;->d(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result v3

    .line 50
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/kt1$d;

    .line 51
    iget-wide v3, v3, Lcom/shabakaty/downloader/kt1$e;->v:J

    goto :goto_c

    .line 52
    :cond_13
    :goto_b
    iget-wide v3, v1, Lcom/shabakaty/downloader/kt1;->e:J

    :goto_c
    move-wide/from16 v20, v3

    goto :goto_e

    :cond_14
    :goto_d
    const-wide/16 v20, 0x0

    .line 53
    :goto_e
    new-instance v3, Lcom/shabakaty/downloader/b84;

    move-object v7, v3

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    iget-wide v14, v1, Lcom/shabakaty/downloader/kt1;->u:J

    move-wide/from16 v16, v14

    const-wide/16 v18, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->I:Lcom/shabakaty/downloader/dp2;

    move-object/from16 v26, v1

    const/16 v27, 0x0

    move-object/from16 v25, v2

    invoke-direct/range {v7 .. v27}, Lcom/shabakaty/downloader/b84;-><init>(JJJJJJJZZZLjava/lang/Object;Lcom/shabakaty/downloader/dp2;Lcom/shabakaty/downloader/dp2$f;)V

    .line 54
    :goto_f
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/rj;->w(Lcom/shabakaty/downloader/nn4;)V

    return-void
.end method
