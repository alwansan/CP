.class public final Lcom/shabakaty/downloader/kt1;
.super Lcom/shabakaty/downloader/lt1;
.source "HlsMediaPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/kt1$c;,
        Lcom/shabakaty/downloader/kt1$e;,
        Lcom/shabakaty/downloader/kt1$b;,
        Lcom/shabakaty/downloader/kt1$d;,
        Lcom/shabakaty/downloader/kt1$f;
    }
.end annotation


# instance fields
.field public final d:I

.field public final e:J

.field public final f:Z

.field public final g:Z

.field public final h:J

.field public final i:Z

.field public final j:I

.field public final k:J

.field public final l:I

.field public final m:J

.field public final n:J

.field public final o:Z

.field public final p:Z

.field public final q:Lcom/shabakaty/downloader/o01;

.field public final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/kt1$d;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/kt1$b;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Lcom/shabakaty/downloader/kt1$c;",
            ">;"
        }
    .end annotation
.end field

.field public final u:J

.field public final v:Lcom/shabakaty/downloader/kt1$f;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;JZJZIJIJJZZZLcom/shabakaty/downloader/o01;Ljava/util/List;Ljava/util/List;Lcom/shabakaty/downloader/kt1$f;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JZJZIJIJJZZZ",
            "Lcom/shabakaty/downloader/o01;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/kt1$d;",
            ">;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/kt1$b;",
            ">;",
            "Lcom/shabakaty/downloader/kt1$f;",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Lcom/shabakaty/downloader/kt1$c;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-wide v1, p4

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p18

    .line 1
    invoke-direct {p0, p2, p3, v5}, Lcom/shabakaty/downloader/lt1;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    move v3, p1

    .line 2
    iput v3, v0, Lcom/shabakaty/downloader/kt1;->d:I

    move-wide/from16 v3, p7

    .line 3
    iput-wide v3, v0, Lcom/shabakaty/downloader/kt1;->h:J

    move/from16 v3, p6

    .line 4
    iput-boolean v3, v0, Lcom/shabakaty/downloader/kt1;->g:Z

    move/from16 v3, p9

    .line 5
    iput-boolean v3, v0, Lcom/shabakaty/downloader/kt1;->i:Z

    move/from16 v3, p10

    .line 6
    iput v3, v0, Lcom/shabakaty/downloader/kt1;->j:I

    move-wide/from16 v3, p11

    .line 7
    iput-wide v3, v0, Lcom/shabakaty/downloader/kt1;->k:J

    move/from16 v3, p13

    .line 8
    iput v3, v0, Lcom/shabakaty/downloader/kt1;->l:I

    move-wide/from16 v3, p14

    .line 9
    iput-wide v3, v0, Lcom/shabakaty/downloader/kt1;->m:J

    move-wide/from16 v3, p16

    .line 10
    iput-wide v3, v0, Lcom/shabakaty/downloader/kt1;->n:J

    move/from16 v3, p19

    .line 11
    iput-boolean v3, v0, Lcom/shabakaty/downloader/kt1;->o:Z

    move/from16 v3, p20

    .line 12
    iput-boolean v3, v0, Lcom/shabakaty/downloader/kt1;->p:Z

    move-object/from16 v3, p21

    .line 13
    iput-object v3, v0, Lcom/shabakaty/downloader/kt1;->q:Lcom/shabakaty/downloader/o01;

    .line 14
    invoke-static/range {p22 .. p22}, Lcom/google/common/collect/p;->z(Ljava/util/Collection;)Lcom/google/common/collect/p;

    move-result-object v3

    iput-object v3, v0, Lcom/shabakaty/downloader/kt1;->r:Ljava/util/List;

    .line 15
    invoke-static/range {p23 .. p23}, Lcom/google/common/collect/p;->z(Ljava/util/Collection;)Lcom/google/common/collect/p;

    move-result-object v3

    iput-object v3, v0, Lcom/shabakaty/downloader/kt1;->s:Ljava/util/List;

    .line 16
    invoke-static/range {p25 .. p25}, Lcom/google/common/collect/r;->a(Ljava/util/Map;)Lcom/google/common/collect/r;

    move-result-object v3

    iput-object v3, v0, Lcom/shabakaty/downloader/kt1;->t:Ljava/util/Map;

    .line 17
    invoke-interface/range {p23 .. p23}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_0

    .line 18
    invoke-static/range {p23 .. p23}, Lcom/google/common/collect/u;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/kt1$b;

    .line 19
    iget-wide v6, v3, Lcom/shabakaty/downloader/kt1$e;->v:J

    iget-wide v8, v3, Lcom/shabakaty/downloader/kt1$e;->t:J

    add-long/2addr v6, v8

    iput-wide v6, v0, Lcom/shabakaty/downloader/kt1;->u:J

    goto :goto_0

    .line 20
    :cond_0
    invoke-interface/range {p22 .. p22}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 21
    invoke-static/range {p22 .. p22}, Lcom/google/common/collect/u;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/kt1$d;

    .line 22
    iget-wide v6, v3, Lcom/shabakaty/downloader/kt1$e;->v:J

    iget-wide v8, v3, Lcom/shabakaty/downloader/kt1$e;->t:J

    add-long/2addr v6, v8

    iput-wide v6, v0, Lcom/shabakaty/downloader/kt1;->u:J

    goto :goto_0

    .line 23
    :cond_1
    iput-wide v4, v0, Lcom/shabakaty/downloader/kt1;->u:J

    :goto_0
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v6

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    cmp-long v3, v1, v4

    if-ltz v3, :cond_3

    .line 24
    iget-wide v6, v0, Lcom/shabakaty/downloader/kt1;->u:J

    invoke-static {v6, v7, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    goto :goto_1

    .line 25
    :cond_3
    iget-wide v6, v0, Lcom/shabakaty/downloader/kt1;->u:J

    add-long/2addr v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    :goto_1
    iput-wide v6, v0, Lcom/shabakaty/downloader/kt1;->e:J

    cmp-long v3, v1, v4

    if-ltz v3, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 26
    :goto_2
    iput-boolean v1, v0, Lcom/shabakaty/downloader/kt1;->f:Z

    move-object/from16 v1, p24

    .line 27
    iput-object v1, v0, Lcom/shabakaty/downloader/kt1;->v:Lcom/shabakaty/downloader/kt1$f;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public b()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/kt1;->h:J

    iget-wide v2, p0, Lcom/shabakaty/downloader/kt1;->u:J

    add-long/2addr v0, v2

    return-wide v0
.end method
