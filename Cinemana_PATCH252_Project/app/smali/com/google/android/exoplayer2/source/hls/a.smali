.class public Lcom/google/android/exoplayer2/source/hls/a;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/a$c;,
        Lcom/google/android/exoplayer2/source/hls/a$a;,
        Lcom/google/android/exoplayer2/source/hls/a$d;,
        Lcom/google/android/exoplayer2/source/hls/a$e;,
        Lcom/google/android/exoplayer2/source/hls/a$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/ht1;

.field public final b:Lcom/shabakaty/downloader/vl0;

.field public final c:Lcom/shabakaty/downloader/vl0;

.field public final d:Lcom/shabakaty/downloader/rn4;

.field public final e:[Landroid/net/Uri;

.field public final f:[Lcom/shabakaty/downloader/wh1;

.field public final g:Lcom/shabakaty/downloader/ot1;

.field public final h:Lcom/shabakaty/downloader/bp4;

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/wh1;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lcom/shabakaty/downloader/pm1;

.field public k:Z

.field public l:[B

.field public m:Ljava/io/IOException;

.field public n:Landroid/net/Uri;

.field public o:Z

.field public p:Lcom/shabakaty/downloader/f81;

.field public q:J

.field public r:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ht1;Lcom/shabakaty/downloader/ot1;[Landroid/net/Uri;[Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/gt1;Lcom/shabakaty/downloader/sp4;Lcom/shabakaty/downloader/rn4;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ht1;",
            "Lcom/shabakaty/downloader/ot1;",
            "[",
            "Landroid/net/Uri;",
            "[",
            "Lcom/google/android/exoplayer2/Format;",
            "Lcom/shabakaty/downloader/gt1;",
            "Lcom/shabakaty/downloader/sp4;",
            "Lcom/shabakaty/downloader/rn4;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/wh1;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/a;->a:Lcom/shabakaty/downloader/ht1;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/a;->g:Lcom/shabakaty/downloader/ot1;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/a;->e:[Landroid/net/Uri;

    .line 5
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/hls/a;->f:[Lcom/shabakaty/downloader/wh1;

    .line 6
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/hls/a;->d:Lcom/shabakaty/downloader/rn4;

    .line 7
    iput-object p8, p0, Lcom/google/android/exoplayer2/source/hls/a;->i:Ljava/util/List;

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/pm1;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/pm1;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/a;->j:Lcom/shabakaty/downloader/pm1;

    .line 9
    sget-object p1, Lcom/shabakaty/downloader/sy4;->f:[B

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/a;->l:[B

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/a;->q:J

    const/4 p1, 0x1

    .line 11
    invoke-interface {p5, p1}, Lcom/shabakaty/downloader/gt1;->a(I)Lcom/shabakaty/downloader/vl0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/a;->b:Lcom/shabakaty/downloader/vl0;

    if-eqz p6, :cond_0

    .line 12
    invoke-interface {p1, p6}, Lcom/shabakaty/downloader/vl0;->e(Lcom/shabakaty/downloader/sp4;)V

    :cond_0
    const/4 p1, 0x3

    .line 13
    invoke-interface {p5, p1}, Lcom/shabakaty/downloader/gt1;->a(I)Lcom/shabakaty/downloader/vl0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/a;->c:Lcom/shabakaty/downloader/vl0;

    .line 14
    new-instance p1, Lcom/shabakaty/downloader/bp4;

    invoke-direct {p1, p4}, Lcom/shabakaty/downloader/bp4;-><init>([Lcom/shabakaty/downloader/wh1;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/a;->h:Lcom/shabakaty/downloader/bp4;

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    .line 16
    :goto_0
    array-length p5, p3

    if-ge p2, p5, :cond_2

    .line 17
    aget-object p5, p4, p2

    iget p5, p5, Lcom/shabakaty/downloader/wh1;->v:I

    and-int/lit16 p5, p5, 0x4000

    if-nez p5, :cond_1

    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 19
    :cond_2
    new-instance p2, Lcom/google/android/exoplayer2/source/hls/a$d;

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/hls/a;->h:Lcom/shabakaty/downloader/bp4;

    .line 20
    invoke-static {p1}, Lcom/shabakaty/downloader/k32;->b(Ljava/util/Collection;)[I

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/google/android/exoplayer2/source/hls/a$d;-><init>(Lcom/shabakaty/downloader/bp4;[I)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/a;->p:Lcom/shabakaty/downloader/f81;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/source/hls/b;J)[Lcom/shabakaty/downloader/mo2;
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    const/4 v10, -0x1

    if-nez v9, :cond_0

    const/4 v11, -0x1

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/a;->h:Lcom/shabakaty/downloader/bp4;

    iget-object v1, v9, Lcom/shabakaty/downloader/zz;->d:Lcom/shabakaty/downloader/wh1;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/bp4;->a(Lcom/shabakaty/downloader/wh1;)I

    move-result v0

    move v11, v0

    .line 2
    :goto_0
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/a;->p:Lcom/shabakaty/downloader/f81;

    invoke-interface {v0}, Lcom/shabakaty/downloader/hp4;->length()I

    move-result v12

    new-array v13, v12, [Lcom/shabakaty/downloader/mo2;

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v12, :cond_b

    .line 3
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/hls/a;->p:Lcom/shabakaty/downloader/f81;

    invoke-interface {v0, v15}, Lcom/shabakaty/downloader/hp4;->d(I)I

    move-result v0

    .line 4
    iget-object v1, v8, Lcom/google/android/exoplayer2/source/hls/a;->e:[Landroid/net/Uri;

    aget-object v1, v1, v0

    .line 5
    iget-object v2, v8, Lcom/google/android/exoplayer2/source/hls/a;->g:Lcom/shabakaty/downloader/ot1;

    invoke-interface {v2, v1}, Lcom/shabakaty/downloader/ot1;->a(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    sget-object v0, Lcom/shabakaty/downloader/mo2;->a:Lcom/shabakaty/downloader/mo2;

    aput-object v0, v13, v15

    goto/16 :goto_6

    .line 7
    :cond_1
    iget-object v2, v8, Lcom/google/android/exoplayer2/source/hls/a;->g:Lcom/shabakaty/downloader/ot1;

    .line 8
    invoke-interface {v2, v1, v14}, Lcom/shabakaty/downloader/ot1;->o(Landroid/net/Uri;Z)Lcom/shabakaty/downloader/kt1;

    move-result-object v6

    .line 9
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-wide v1, v6, Lcom/shabakaty/downloader/kt1;->h:J

    iget-object v3, v8, Lcom/google/android/exoplayer2/source/hls/a;->g:Lcom/shabakaty/downloader/ot1;

    .line 11
    invoke-interface {v3}, Lcom/shabakaty/downloader/ot1;->d()J

    move-result-wide v3

    sub-long v4, v1, v3

    if-eq v0, v11, :cond_2

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v6

    move-wide/from16 v16, v4

    move-object v14, v6

    move-wide/from16 v6, p2

    .line 12
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/hls/a;->c(Lcom/google/android/exoplayer2/source/hls/b;ZLcom/shabakaty/downloader/kt1;JJ)Landroid/util/Pair;

    move-result-object v0

    .line 13
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 14
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 15
    new-instance v3, Lcom/google/android/exoplayer2/source/hls/a$c;

    iget-object v4, v14, Lcom/shabakaty/downloader/lt1;->a:Ljava/lang/String;

    .line 16
    iget-wide v5, v14, Lcom/shabakaty/downloader/kt1;->k:J

    sub-long/2addr v1, v5

    long-to-int v2, v1

    if-ltz v2, :cond_a

    .line 17
    iget-object v1, v14, Lcom/shabakaty/downloader/kt1;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v2, :cond_3

    goto :goto_4

    .line 18
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    iget-object v5, v14, Lcom/shabakaty/downloader/kt1;->r:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_7

    if-eq v0, v10, :cond_6

    .line 20
    iget-object v5, v14, Lcom/shabakaty/downloader/kt1;->r:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/kt1$d;

    if-nez v0, :cond_4

    .line 21
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 22
    :cond_4
    iget-object v6, v5, Lcom/shabakaty/downloader/kt1$d;->D:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_5

    .line 23
    iget-object v5, v5, Lcom/shabakaty/downloader/kt1$d;->D:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v5, v0, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 24
    :cond_6
    iget-object v0, v14, Lcom/shabakaty/downloader/kt1;->r:Ljava/util/List;

    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v0, v2, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 26
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    .line 27
    :cond_7
    iget-wide v5, v14, Lcom/shabakaty/downloader/kt1;->n:J

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v5, v18

    if-eqz v2, :cond_9

    if-ne v0, v10, :cond_8

    const/4 v0, 0x0

    .line 28
    :cond_8
    iget-object v2, v14, Lcom/shabakaty/downloader/kt1;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_9

    .line 29
    iget-object v2, v14, Lcom/shabakaty/downloader/kt1;->s:Ljava/util/List;

    .line 30
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v2, v0, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 31
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 32
    :cond_9
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_5

    .line 33
    :cond_a
    :goto_4
    sget-object v0, Lcom/google/common/collect/p;->s:Lcom/shabakaty/downloader/c0;

    .line 34
    sget-object v0, Lcom/shabakaty/downloader/oq3;->v:Lcom/google/common/collect/p;

    :goto_5
    move-wide/from16 v1, v16

    .line 35
    invoke-direct {v3, v4, v1, v2, v0}, Lcom/google/android/exoplayer2/source/hls/a$c;-><init>(Ljava/lang/String;JLjava/util/List;)V

    aput-object v3, v13, v15

    :goto_6
    add-int/lit8 v15, v15, 0x1

    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_b
    return-object v13
.end method

.method public b(Lcom/google/android/exoplayer2/source/hls/b;)I
    .locals 8

    .line 1
    iget v0, p1, Lcom/google/android/exoplayer2/source/hls/b;->o:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/a;->e:[Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/a;->h:Lcom/shabakaty/downloader/bp4;

    iget-object v3, p1, Lcom/shabakaty/downloader/zz;->d:Lcom/shabakaty/downloader/wh1;

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/bp4;->a(Lcom/shabakaty/downloader/wh1;)I

    move-result v2

    aget-object v0, v0, v2

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/a;->g:Lcom/shabakaty/downloader/ot1;

    const/4 v3, 0x0

    .line 4
    invoke-interface {v2, v0, v3}, Lcom/shabakaty/downloader/ot1;->o(Landroid/net/Uri;Z)Lcom/shabakaty/downloader/kt1;

    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-wide v4, p1, Lcom/shabakaty/downloader/lo2;->j:J

    iget-wide v6, v0, Lcom/shabakaty/downloader/kt1;->k:J

    sub-long/2addr v4, v6

    long-to-int v2, v4

    if-gez v2, :cond_1

    return v1

    .line 7
    :cond_1
    iget-object v4, v0, Lcom/shabakaty/downloader/kt1;->r:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 8
    iget-object v4, v0, Lcom/shabakaty/downloader/kt1;->r:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/kt1$d;

    iget-object v2, v2, Lcom/shabakaty/downloader/kt1$d;->D:Ljava/util/List;

    goto :goto_0

    .line 9
    :cond_2
    iget-object v2, v0, Lcom/shabakaty/downloader/kt1;->s:Ljava/util/List;

    .line 10
    :goto_0
    iget v4, p1, Lcom/google/android/exoplayer2/source/hls/b;->o:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-lt v4, v5, :cond_3

    return v6

    .line 11
    :cond_3
    iget v4, p1, Lcom/google/android/exoplayer2/source/hls/b;->o:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/kt1$b;

    .line 12
    iget-boolean v4, v2, Lcom/shabakaty/downloader/kt1$b;->D:Z

    if-eqz v4, :cond_4

    return v3

    .line 13
    :cond_4
    iget-object v0, v0, Lcom/shabakaty/downloader/lt1;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/shabakaty/downloader/kt1$e;->r:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/zw4;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 14
    iget-object p1, p1, Lcom/shabakaty/downloader/zz;->b:Lcom/shabakaty/downloader/yl0;

    iget-object p1, p1, Lcom/shabakaty/downloader/yl0;->a:Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x2

    :goto_1
    return v1
.end method

.method public final c(Lcom/google/android/exoplayer2/source/hls/b;ZLcom/shabakaty/downloader/kt1;JJ)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/hls/b;",
            "Z",
            "Lcom/shabakaty/downloader/kt1;",
            "JJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eqz p1, :cond_4

    if-eqz p2, :cond_0

    goto :goto_3

    .line 1
    :cond_0
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/source/hls/b;->H:Z

    if-eqz p2, :cond_3

    .line 2
    new-instance p2, Landroid/util/Pair;

    .line 3
    iget p3, p1, Lcom/google/android/exoplayer2/source/hls/b;->o:I

    if-ne p3, v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/lo2;->c()J

    move-result-wide p3

    goto :goto_0

    .line 5
    :cond_1
    iget-wide p3, p1, Lcom/shabakaty/downloader/lo2;->j:J

    .line 6
    :goto_0
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    .line 7
    iget p1, p1, Lcom/google/android/exoplayer2/source/hls/b;->o:I

    if-ne p1, v1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, p1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 8
    :cond_3
    new-instance p2, Landroid/util/Pair;

    iget-wide p3, p1, Lcom/shabakaty/downloader/lo2;->j:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    iget p1, p1, Lcom/google/android/exoplayer2/source/hls/b;->o:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    return-object p2

    .line 9
    :cond_4
    :goto_3
    iget-wide v2, p3, Lcom/shabakaty/downloader/kt1;->u:J

    add-long/2addr v2, p4

    if-eqz p1, :cond_6

    .line 10
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/source/hls/a;->o:Z

    if-eqz p2, :cond_5

    goto :goto_4

    :cond_5
    iget-wide p6, p1, Lcom/shabakaty/downloader/zz;->g:J

    .line 11
    :cond_6
    :goto_4
    iget-boolean p2, p3, Lcom/shabakaty/downloader/kt1;->o:Z

    if-nez p2, :cond_7

    cmp-long p2, p6, v2

    if-ltz p2, :cond_7

    .line 12
    new-instance p1, Landroid/util/Pair;

    iget-wide p4, p3, Lcom/shabakaty/downloader/kt1;->k:J

    iget-object p2, p3, Lcom/shabakaty/downloader/kt1;->r:Ljava/util/List;

    .line 13
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    int-to-long p2, p2

    add-long/2addr p4, p2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_7
    sub-long/2addr p6, p4

    .line 15
    iget-object p2, p3, Lcom/shabakaty/downloader/kt1;->r:Ljava/util/List;

    .line 16
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    iget-object p5, p0, Lcom/google/android/exoplayer2/source/hls/a;->g:Lcom/shabakaty/downloader/ot1;

    .line 17
    invoke-interface {p5}, Lcom/shabakaty/downloader/ot1;->e()Z

    move-result p5

    const/4 v2, 0x0

    if-eqz p5, :cond_9

    if-nez p1, :cond_8

    goto :goto_5

    :cond_8
    const/4 p1, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    const/4 p1, 0x1

    .line 18
    :goto_6
    invoke-static {p2, p4, v0, p1}, Lcom/shabakaty/downloader/sy4;->d(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result p1

    int-to-long p4, p1

    .line 19
    iget-wide v3, p3, Lcom/shabakaty/downloader/kt1;->k:J

    add-long/2addr p4, v3

    if-ltz p1, :cond_d

    .line 20
    iget-object p2, p3, Lcom/shabakaty/downloader/kt1;->r:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/kt1$d;

    .line 21
    iget-wide v3, p1, Lcom/shabakaty/downloader/kt1$e;->v:J

    iget-wide v5, p1, Lcom/shabakaty/downloader/kt1$e;->t:J

    add-long/2addr v3, v5

    cmp-long p2, p6, v3

    if-gez p2, :cond_a

    .line 22
    iget-object p1, p1, Lcom/shabakaty/downloader/kt1$d;->D:Ljava/util/List;

    goto :goto_7

    .line 23
    :cond_a
    iget-object p1, p3, Lcom/shabakaty/downloader/kt1;->s:Ljava/util/List;

    .line 24
    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v2, p2, :cond_d

    .line 25
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/kt1$b;

    .line 26
    iget-wide v3, p2, Lcom/shabakaty/downloader/kt1$e;->v:J

    iget-wide v5, p2, Lcom/shabakaty/downloader/kt1$e;->t:J

    add-long/2addr v3, v5

    cmp-long v0, p6, v3

    if-gez v0, :cond_c

    .line 27
    iget-boolean p2, p2, Lcom/shabakaty/downloader/kt1$b;->C:Z

    if-eqz p2, :cond_d

    .line 28
    iget-object p2, p3, Lcom/shabakaty/downloader/kt1;->s:Ljava/util/List;

    if-ne p1, p2, :cond_b

    const-wide/16 p1, 0x1

    goto :goto_8

    :cond_b
    const-wide/16 p1, 0x0

    :goto_8
    add-long/2addr p4, p1

    move v1, v2

    goto :goto_9

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 29
    :cond_d
    :goto_9
    new-instance p1, Landroid/util/Pair;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final d(Landroid/net/Uri;I)Lcom/shabakaty/downloader/zz;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    const/4 v1, 0x0

    if-nez v2, :cond_0

    return-object v1

    .line 1
    :cond_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/a;->j:Lcom/shabakaty/downloader/pm1;

    .line 2
    iget-object v3, v3, Lcom/shabakaty/downloader/pm1;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_1

    .line 3
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/a;->j:Lcom/shabakaty/downloader/pm1;

    .line 4
    iget-object v4, v4, Lcom/shabakaty/downloader/pm1;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    return-object v1

    :cond_1
    const/4 v14, 0x0

    const/4 v12, 0x0

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v7

    const-wide/16 v10, -0x1

    const/4 v13, 0x1

    .line 6
    new-instance v17, Lcom/shabakaty/downloader/yl0;

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    .line 7
    invoke-direct/range {v1 .. v14}, Lcom/shabakaty/downloader/yl0;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    .line 8
    new-instance v1, Lcom/google/android/exoplayer2/source/hls/a$a;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/a;->c:Lcom/shabakaty/downloader/vl0;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/a;->f:[Lcom/shabakaty/downloader/wh1;

    aget-object v18, v3, p2

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/a;->p:Lcom/shabakaty/downloader/f81;

    .line 9
    invoke-interface {v3}, Lcom/shabakaty/downloader/f81;->q()I

    move-result v19

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/a;->p:Lcom/shabakaty/downloader/f81;

    .line 10
    invoke-interface {v3}, Lcom/shabakaty/downloader/f81;->s()Ljava/lang/Object;

    move-result-object v20

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/a;->l:[B

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v21, v3

    invoke-direct/range {v15 .. v21}, Lcom/google/android/exoplayer2/source/hls/a$a;-><init>(Lcom/shabakaty/downloader/vl0;Lcom/shabakaty/downloader/yl0;Lcom/shabakaty/downloader/wh1;ILjava/lang/Object;[B)V

    return-object v1
.end method
