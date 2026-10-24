.class public final Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;
.super Lcom/shabakaty/downloader/rj;
.source "SsMediaSource.java"

# interfaces
.implements Lcom/shabakaty/downloader/ij2$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/rj;",
        "Lcom/shabakaty/downloader/ij2$b<",
        "Lcom/shabakaty/downloader/ra3<",
        "Lcom/shabakaty/downloader/wa4;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final synthetic Q:I


# instance fields
.field public final A:Lcom/shabakaty/downloader/vl0$a;

.field public final B:Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;

.field public final C:Lcom/shabakaty/downloader/kd;

.field public final D:Lcom/shabakaty/downloader/u01;

.field public final E:Lcom/shabakaty/downloader/gj2;

.field public final F:J

.field public final G:Lcom/shabakaty/downloader/yq2$a;

.field public final H:Lcom/shabakaty/downloader/ra3$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ra3$a<",
            "+",
            "Lcom/shabakaty/downloader/wa4;",
            ">;"
        }
    .end annotation
.end field

.field public final I:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/c;",
            ">;"
        }
    .end annotation
.end field

.field public J:Lcom/shabakaty/downloader/vl0;

.field public K:Lcom/shabakaty/downloader/ij2;

.field public L:Lcom/shabakaty/downloader/kj2;

.field public M:Lcom/shabakaty/downloader/sp4;

.field public N:J

.field public O:Lcom/shabakaty/downloader/wa4;

.field public P:Landroid/os/Handler;

.field public final x:Z

.field public final y:Landroid/net/Uri;

.field public final z:Lcom/shabakaty/downloader/dp2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.smoothstreaming"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/t71;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/dp2;Lcom/shabakaty/downloader/wa4;Lcom/shabakaty/downloader/vl0$a;Lcom/shabakaty/downloader/ra3$a;Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;Lcom/shabakaty/downloader/kd;Lcom/shabakaty/downloader/u01;Lcom/shabakaty/downloader/gj2;JLcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/rj;-><init>()V

    const/4 p2, 0x1

    .line 2
    invoke-static {p2}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->z:Lcom/shabakaty/downloader/dp2;

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/dp2;->b:Lcom/shabakaty/downloader/dp2$g;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p11, 0x0

    .line 6
    iput-object p11, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->O:Lcom/shabakaty/downloader/wa4;

    .line 7
    iget-object v0, p1, Lcom/shabakaty/downloader/dp2$g;->a:Landroid/net/Uri;

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p11

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/downloader/dp2$g;->a:Landroid/net/Uri;

    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    .line 9
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    sget-object v1, Lcom/shabakaty/downloader/sy4;->j:Ljava/util/regex/Pattern;

    invoke-static {v0}, Lcom/shabakaty/downloader/j96;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p2, "Manifest"

    .line 12
    invoke-static {p1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 13
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->y:Landroid/net/Uri;

    .line 14
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->A:Lcom/shabakaty/downloader/vl0$a;

    .line 15
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->H:Lcom/shabakaty/downloader/ra3$a;

    .line 16
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->B:Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;

    .line 17
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->C:Lcom/shabakaty/downloader/kd;

    .line 18
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->D:Lcom/shabakaty/downloader/u01;

    .line 19
    iput-object p8, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->E:Lcom/shabakaty/downloader/gj2;

    .line 20
    iput-wide p9, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->F:J

    .line 21
    invoke-virtual {p0, p11}, Lcom/shabakaty/downloader/rj;->s(Lcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/yq2$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->G:Lcom/shabakaty/downloader/yq2$a;

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->x:Z

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->I:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public d(Lcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/fn0;J)Lcom/shabakaty/downloader/kp2;
    .locals 17

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
    new-instance v1, Lcom/google/android/exoplayer2/source/smoothstreaming/c;

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->O:Lcom/shabakaty/downloader/wa4;

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->B:Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->M:Lcom/shabakaty/downloader/sp4;

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->C:Lcom/shabakaty/downloader/kd;

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->D:Lcom/shabakaty/downloader/u01;

    iget-object v13, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->E:Lcom/shabakaty/downloader/gj2;

    iget-object v15, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->L:Lcom/shabakaty/downloader/kj2;

    move-object v6, v1

    move-object/from16 v16, p2

    invoke-direct/range {v6 .. v16}, Lcom/google/android/exoplayer2/source/smoothstreaming/c;-><init>(Lcom/shabakaty/downloader/wa4;Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;Lcom/shabakaty/downloader/sp4;Lcom/shabakaty/downloader/kd;Lcom/shabakaty/downloader/u01;Lcom/shabakaty/downloader/s01$a;Lcom/shabakaty/downloader/gj2;Lcom/shabakaty/downloader/yq2$a;Lcom/shabakaty/downloader/kj2;Lcom/shabakaty/downloader/fn0;)V

    .line 4
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->I:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public f(Lcom/shabakaty/downloader/ij2$e;JJLjava/io/IOException;I)Lcom/shabakaty/downloader/ij2$c;
    .locals 16

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
    iget-object v7, v3, Lcom/shabakaty/downloader/uc4;->c:Landroid/net/Uri;

    .line 5
    iget-object v8, v3, Lcom/shabakaty/downloader/uc4;->d:Ljava/util/Map;

    .line 6
    iget-wide v13, v3, Lcom/shabakaty/downloader/uc4;->b:J

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    .line 7
    invoke-direct/range {v3 .. v14}, Lcom/shabakaty/downloader/hj2;-><init>(JLcom/shabakaty/downloader/yl0;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 8
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->E:Lcom/shabakaty/downloader/gj2;

    .line 9
    check-cast v3, Lcom/shabakaty/downloader/po0;

    .line 10
    instance-of v3, v1, Lcom/shabakaty/downloader/pa3;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v3, :cond_1

    instance-of v3, v1, Ljava/io/FileNotFoundException;

    if-nez v3, :cond_1

    instance-of v3, v1, Lcom/shabakaty/downloader/fw1$a;

    if-nez v3, :cond_1

    instance-of v3, v1, Lcom/shabakaty/downloader/ij2$h;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, p7, -0x1

    mul-int/lit16 v3, v3, 0x3e8

    const/16 v6, 0x1388

    .line 11
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-long v6, v3

    goto :goto_1

    :cond_1
    :goto_0
    move-wide v6, v4

    :goto_1
    cmp-long v3, v6, v4

    if-nez v3, :cond_2

    .line 12
    sget-object v3, Lcom/shabakaty/downloader/ij2;->f:Lcom/shabakaty/downloader/ij2$c;

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 13
    invoke-static {v3, v6, v7}, Lcom/shabakaty/downloader/ij2;->c(ZJ)Lcom/shabakaty/downloader/ij2$c;

    move-result-object v3

    .line 14
    :goto_2
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ij2$c;->a()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 15
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->G:Lcom/shabakaty/downloader/yq2$a;

    iget v2, v2, Lcom/shabakaty/downloader/ra3;->c:I

    invoke-virtual {v5, v15, v2, v1, v4}, Lcom/shabakaty/downloader/yq2$a;->k(Lcom/shabakaty/downloader/hj2;ILjava/io/IOException;Z)V

    if-eqz v4, :cond_3

    .line 16
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->E:Lcom/shabakaty/downloader/gj2;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v3
.end method

.method public g(Lcom/shabakaty/downloader/ij2$e;JJ)V
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
    iget-object v2, v1, Lcom/shabakaty/downloader/ra3;->d:Lcom/shabakaty/downloader/uc4;

    .line 4
    iget-object v6, v2, Lcom/shabakaty/downloader/uc4;->c:Landroid/net/Uri;

    .line 5
    iget-object v7, v2, Lcom/shabakaty/downloader/uc4;->d:Ljava/util/Map;

    .line 6
    iget-wide v12, v2, Lcom/shabakaty/downloader/uc4;->b:J

    move-object v2, v14

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    .line 7
    invoke-direct/range {v2 .. v13}, Lcom/shabakaty/downloader/hj2;-><init>(JLcom/shabakaty/downloader/yl0;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 8
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->E:Lcom/shabakaty/downloader/gj2;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->G:Lcom/shabakaty/downloader/yq2$a;

    iget v3, v1, Lcom/shabakaty/downloader/ra3;->c:I

    invoke-virtual {v2, v14, v3}, Lcom/shabakaty/downloader/yq2$a;->g(Lcom/shabakaty/downloader/hj2;I)V

    .line 10
    iget-object v1, v1, Lcom/shabakaty/downloader/ra3;->f:Ljava/lang/Object;

    .line 11
    check-cast v1, Lcom/shabakaty/downloader/wa4;

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->O:Lcom/shabakaty/downloader/wa4;

    sub-long v1, p2, p4

    .line 12
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->N:J

    .line 13
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->y()V

    .line 14
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->O:Lcom/shabakaty/downloader/wa4;

    iget-boolean v1, v1, Lcom/shabakaty/downloader/wa4;->d:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->N:J

    const-wide/16 v3, 0x1388

    add-long/2addr v1, v3

    const-wide/16 v3, 0x0

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v1, v5

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 17
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->P:Landroid/os/Handler;

    new-instance v4, Lcom/shabakaty/downloader/rr;

    invoke-direct {v4, p0}, Lcom/shabakaty/downloader/rr;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;)V

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public h()Lcom/shabakaty/downloader/dp2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->z:Lcom/shabakaty/downloader/dp2;

    return-object v0
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->L:Lcom/shabakaty/downloader/kj2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kj2;->b()V

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
    iget-object v2, v1, Lcom/shabakaty/downloader/ra3;->d:Lcom/shabakaty/downloader/uc4;

    .line 4
    iget-object v6, v2, Lcom/shabakaty/downloader/uc4;->c:Landroid/net/Uri;

    .line 5
    iget-object v7, v2, Lcom/shabakaty/downloader/uc4;->d:Ljava/util/Map;

    .line 6
    iget-wide v12, v2, Lcom/shabakaty/downloader/uc4;->b:J

    move-object v2, v14

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    .line 7
    invoke-direct/range {v2 .. v13}, Lcom/shabakaty/downloader/hj2;-><init>(JLcom/shabakaty/downloader/yl0;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 8
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->E:Lcom/shabakaty/downloader/gj2;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->G:Lcom/shabakaty/downloader/yq2$a;

    iget v1, v1, Lcom/shabakaty/downloader/ra3;->c:I

    invoke-virtual {v2, v14, v1}, Lcom/shabakaty/downloader/yq2$a;->d(Lcom/shabakaty/downloader/hj2;I)V

    return-void
.end method

.method public m(Lcom/shabakaty/downloader/kp2;)V
    .locals 6

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;

    .line 2
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->D:[Lcom/shabakaty/downloader/d00;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v2, :cond_0

    aget-object v5, v1, v3

    .line 3
    invoke-virtual {v5, v4}, Lcom/shabakaty/downloader/d00;->u(Lcom/shabakaty/downloader/d00$b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iput-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->B:Lcom/shabakaty/downloader/kp2$a;

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->I:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public v(Lcom/shabakaty/downloader/sp4;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->M:Lcom/shabakaty/downloader/sp4;

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->D:Lcom/shabakaty/downloader/u01;

    invoke-interface {p1}, Lcom/shabakaty/downloader/u01;->g()V

    .line 3
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->x:Z

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/kj2$a;

    invoke-direct {p1}, Lcom/shabakaty/downloader/kj2$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->L:Lcom/shabakaty/downloader/kj2;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->y()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->A:Lcom/shabakaty/downloader/vl0$a;

    invoke-interface {p1}, Lcom/shabakaty/downloader/vl0$a;->a()Lcom/shabakaty/downloader/vl0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->J:Lcom/shabakaty/downloader/vl0;

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/ij2;

    const-string v0, "SsMediaSource"

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/ij2;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->K:Lcom/shabakaty/downloader/ij2;

    .line 8
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->L:Lcom/shabakaty/downloader/kj2;

    .line 9
    invoke-static {}, Lcom/shabakaty/downloader/sy4;->l()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->P:Landroid/os/Handler;

    .line 10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->z()V

    :goto_0
    return-void
.end method

.method public x()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->x:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->O:Lcom/shabakaty/downloader/wa4;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->O:Lcom/shabakaty/downloader/wa4;

    .line 2
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->J:Lcom/shabakaty/downloader/vl0;

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->N:J

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->K:Lcom/shabakaty/downloader/ij2;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ij2;->g(Lcom/shabakaty/downloader/ij2$f;)V

    .line 6
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->K:Lcom/shabakaty/downloader/ij2;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->P:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->P:Landroid/os/Handler;

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->D:Lcom/shabakaty/downloader/u01;

    invoke-interface {v0}, Lcom/shabakaty/downloader/u01;->a()V

    return-void
.end method

.method public final y()V
    .locals 30

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->I:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->I:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/smoothstreaming/c;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->O:Lcom/shabakaty/downloader/wa4;

    .line 3
    iput-object v4, v3, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->C:Lcom/shabakaty/downloader/wa4;

    .line 4
    iget-object v5, v3, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->D:[Lcom/shabakaty/downloader/d00;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    .line 5
    iget-object v8, v8, Lcom/shabakaty/downloader/d00;->v:Lcom/shabakaty/downloader/e00;

    .line 6
    check-cast v8, Lcom/google/android/exoplayer2/source/smoothstreaming/b;

    invoke-interface {v8, v4}, Lcom/google/android/exoplayer2/source/smoothstreaming/b;->e(Lcom/shabakaty/downloader/wa4;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 7
    :cond_0
    iget-object v4, v3, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->B:Lcom/shabakaty/downloader/kp2$a;

    invoke-interface {v4, v3}, Lcom/shabakaty/downloader/o04$a;->b(Lcom/shabakaty/downloader/o04;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-wide/high16 v2, -0x8000000000000000L

    .line 8
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->O:Lcom/shabakaty/downloader/wa4;

    iget-object v4, v4, Lcom/shabakaty/downloader/wa4;->f:[Lcom/shabakaty/downloader/wa4$b;

    array-length v5, v4

    const-wide v6, 0x7fffffffffffffffL

    move-wide v14, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v5, :cond_3

    aget-object v9, v4, v8

    .line 9
    iget v10, v9, Lcom/shabakaty/downloader/wa4$b;->k:I

    if-lez v10, :cond_2

    .line 10
    iget-object v10, v9, Lcom/shabakaty/downloader/wa4$b;->o:[J

    aget-wide v11, v10, v1

    .line 11
    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 12
    iget v10, v9, Lcom/shabakaty/downloader/wa4$b;->k:I

    add-int/lit8 v11, v10, -0x1

    .line 13
    iget-object v12, v9, Lcom/shabakaty/downloader/wa4$b;->o:[J

    aget-wide v11, v12, v11

    add-int/lit8 v10, v10, -0x1

    .line 14
    invoke-virtual {v9, v10}, Lcom/shabakaty/downloader/wa4$b;->b(I)J

    move-result-wide v9

    add-long/2addr v9, v11

    .line 15
    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    const-wide/16 v4, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v14, v6

    if-nez v1, :cond_5

    .line 16
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->O:Lcom/shabakaty/downloader/wa4;

    iget-boolean v1, v1, Lcom/shabakaty/downloader/wa4;->d:Z

    if-eqz v1, :cond_4

    move-wide v11, v8

    goto :goto_3

    :cond_4
    move-wide v11, v4

    .line 17
    :goto_3
    new-instance v1, Lcom/shabakaty/downloader/b84;

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x1

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->O:Lcom/shabakaty/downloader/wa4;

    iget-boolean v3, v2, Lcom/shabakaty/downloader/wa4;->d:Z

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->z:Lcom/shabakaty/downloader/dp2;

    move-object v10, v1

    move/from16 v20, v3

    move/from16 v21, v3

    move-object/from16 v22, v2

    move-object/from16 v23, v4

    invoke-direct/range {v10 .. v23}, Lcom/shabakaty/downloader/b84;-><init>(JJJJZZZLjava/lang/Object;Lcom/shabakaty/downloader/dp2;)V

    goto/16 :goto_5

    .line 18
    :cond_5
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->O:Lcom/shabakaty/downloader/wa4;

    iget-boolean v6, v1, Lcom/shabakaty/downloader/wa4;->d:Z

    if-eqz v6, :cond_8

    .line 19
    iget-wide v6, v1, Lcom/shabakaty/downloader/wa4;->h:J

    cmp-long v1, v6, v8

    if-eqz v1, :cond_6

    cmp-long v1, v6, v4

    if-lez v1, :cond_6

    sub-long v4, v2, v6

    .line 20
    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    :cond_6
    move-wide/from16 v21, v14

    sub-long v19, v2, v21

    .line 21
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->F:J

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v1

    sub-long v1, v19, v1

    const-wide/32 v3, 0x4c4b40

    cmp-long v5, v1, v3

    if-gez v5, :cond_7

    const-wide/16 v1, 0x2

    .line 22
    div-long v1, v19, v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :cond_7
    move-wide/from16 v23, v1

    .line 23
    new-instance v1, Lcom/shabakaty/downloader/b84;

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v25, 0x1

    const/16 v26, 0x1

    const/16 v27, 0x1

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->O:Lcom/shabakaty/downloader/wa4;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->z:Lcom/shabakaty/downloader/dp2;

    move-object/from16 v16, v1

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    invoke-direct/range {v16 .. v29}, Lcom/shabakaty/downloader/b84;-><init>(JJJJZZZLjava/lang/Object;Lcom/shabakaty/downloader/dp2;)V

    goto :goto_5

    .line 24
    :cond_8
    iget-wide v4, v1, Lcom/shabakaty/downloader/wa4;->g:J

    cmp-long v1, v4, v8

    if-eqz v1, :cond_9

    move-wide v12, v4

    goto :goto_4

    :cond_9
    sub-long/2addr v2, v14

    move-wide v12, v2

    .line 25
    :goto_4
    new-instance v1, Lcom/shabakaty/downloader/b84;

    add-long v10, v14, v12

    const-wide/16 v16, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->O:Lcom/shabakaty/downloader/wa4;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->z:Lcom/shabakaty/downloader/dp2;

    move-object v9, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-direct/range {v9 .. v22}, Lcom/shabakaty/downloader/b84;-><init>(JJJJZZZLjava/lang/Object;Lcom/shabakaty/downloader/dp2;)V

    .line 26
    :goto_5
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/rj;->w(Lcom/shabakaty/downloader/nn4;)V

    return-void
.end method

.method public final z()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->K:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ij2;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/ra3;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->J:Lcom/shabakaty/downloader/vl0;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->y:Landroid/net/Uri;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->H:Lcom/shabakaty/downloader/ra3$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/ra3;-><init>(Lcom/shabakaty/downloader/vl0;Landroid/net/Uri;ILcom/shabakaty/downloader/ra3$a;)V

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->K:Lcom/shabakaty/downloader/ij2;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->E:Lcom/shabakaty/downloader/gj2;

    iget v3, v0, Lcom/shabakaty/downloader/ra3;->c:I

    .line 4
    check-cast v2, Lcom/shabakaty/downloader/po0;

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/po0;->b(I)I

    move-result v2

    .line 5
    invoke-virtual {v1, v0, p0, v2}, Lcom/shabakaty/downloader/ij2;->h(Lcom/shabakaty/downloader/ij2$e;Lcom/shabakaty/downloader/ij2$b;I)J

    move-result-wide v7

    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->G:Lcom/shabakaty/downloader/yq2$a;

    new-instance v2, Lcom/shabakaty/downloader/hj2;

    iget-wide v4, v0, Lcom/shabakaty/downloader/ra3;->a:J

    iget-object v6, v0, Lcom/shabakaty/downloader/ra3;->b:Lcom/shabakaty/downloader/yl0;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/shabakaty/downloader/hj2;-><init>(JLcom/shabakaty/downloader/yl0;J)V

    iget v0, v0, Lcom/shabakaty/downloader/ra3;->c:I

    invoke-virtual {v1, v2, v0}, Lcom/shabakaty/downloader/yq2$a;->m(Lcom/shabakaty/downloader/hj2;I)V

    return-void
.end method
