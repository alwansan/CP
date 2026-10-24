.class public final Lcom/shabakaty/downloader/yc3;
.super Ljava/lang/Object;
.source "PlaybackInfo.java"


# static fields
.field public static final t:Lcom/shabakaty/downloader/uq2$a;


# instance fields
.field public final a:Lcom/shabakaty/downloader/nn4;

.field public final b:Lcom/shabakaty/downloader/uq2$a;

.field public final c:J

.field public final d:J

.field public final e:I

.field public final f:Lcom/shabakaty/downloader/i71;

.field public final g:Z

.field public final h:Lcom/shabakaty/downloader/cp4;

.field public final i:Lcom/shabakaty/downloader/mp4;

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ps2;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lcom/shabakaty/downloader/uq2$a;

.field public final l:Z

.field public final m:I

.field public final n:Lcom/shabakaty/downloader/ad3;

.field public final o:Z

.field public final p:Z

.field public volatile q:J

.field public volatile r:J

.field public volatile s:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/uq2$a;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/uq2$a;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/shabakaty/downloader/yc3;->t:Lcom/shabakaty/downloader/uq2$a;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;JJILcom/shabakaty/downloader/i71;ZLcom/shabakaty/downloader/cp4;Lcom/shabakaty/downloader/mp4;Ljava/util/List;Lcom/shabakaty/downloader/uq2$a;ZILcom/shabakaty/downloader/ad3;JJJZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/nn4;",
            "Lcom/shabakaty/downloader/uq2$a;",
            "JJI",
            "Lcom/shabakaty/downloader/i71;",
            "Z",
            "Lcom/shabakaty/downloader/cp4;",
            "Lcom/shabakaty/downloader/mp4;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ps2;",
            ">;",
            "Lcom/shabakaty/downloader/uq2$a;",
            "ZI",
            "Lcom/shabakaty/downloader/ad3;",
            "JJJZZ)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    move-wide v1, p3

    .line 4
    iput-wide v1, v0, Lcom/shabakaty/downloader/yc3;->c:J

    move-wide v1, p5

    .line 5
    iput-wide v1, v0, Lcom/shabakaty/downloader/yc3;->d:J

    move v1, p7

    .line 6
    iput v1, v0, Lcom/shabakaty/downloader/yc3;->e:I

    move-object v1, p8

    .line 7
    iput-object v1, v0, Lcom/shabakaty/downloader/yc3;->f:Lcom/shabakaty/downloader/i71;

    move v1, p9

    .line 8
    iput-boolean v1, v0, Lcom/shabakaty/downloader/yc3;->g:Z

    move-object v1, p10

    .line 9
    iput-object v1, v0, Lcom/shabakaty/downloader/yc3;->h:Lcom/shabakaty/downloader/cp4;

    move-object v1, p11

    .line 10
    iput-object v1, v0, Lcom/shabakaty/downloader/yc3;->i:Lcom/shabakaty/downloader/mp4;

    move-object v1, p12

    .line 11
    iput-object v1, v0, Lcom/shabakaty/downloader/yc3;->j:Ljava/util/List;

    move-object/from16 v1, p13

    .line 12
    iput-object v1, v0, Lcom/shabakaty/downloader/yc3;->k:Lcom/shabakaty/downloader/uq2$a;

    move/from16 v1, p14

    .line 13
    iput-boolean v1, v0, Lcom/shabakaty/downloader/yc3;->l:Z

    move/from16 v1, p15

    .line 14
    iput v1, v0, Lcom/shabakaty/downloader/yc3;->m:I

    move-object/from16 v1, p16

    .line 15
    iput-object v1, v0, Lcom/shabakaty/downloader/yc3;->n:Lcom/shabakaty/downloader/ad3;

    move-wide/from16 v1, p17

    .line 16
    iput-wide v1, v0, Lcom/shabakaty/downloader/yc3;->q:J

    move-wide/from16 v1, p19

    .line 17
    iput-wide v1, v0, Lcom/shabakaty/downloader/yc3;->r:J

    move-wide/from16 v1, p21

    .line 18
    iput-wide v1, v0, Lcom/shabakaty/downloader/yc3;->s:J

    move/from16 v1, p23

    .line 19
    iput-boolean v1, v0, Lcom/shabakaty/downloader/yc3;->o:Z

    move/from16 v1, p24

    .line 20
    iput-boolean v1, v0, Lcom/shabakaty/downloader/yc3;->p:Z

    return-void
.end method

.method public static i(Lcom/shabakaty/downloader/mp4;)Lcom/shabakaty/downloader/yc3;
    .locals 26

    .line 1
    new-instance v25, Lcom/shabakaty/downloader/yc3;

    sget-object v1, Lcom/shabakaty/downloader/nn4;->a:Lcom/shabakaty/downloader/nn4;

    sget-object v13, Lcom/shabakaty/downloader/yc3;->t:Lcom/shabakaty/downloader/uq2$a;

    sget-object v10, Lcom/shabakaty/downloader/cp4;->u:Lcom/shabakaty/downloader/cp4;

    .line 2
    sget-object v0, Lcom/google/common/collect/p;->s:Lcom/shabakaty/downloader/c0;

    .line 3
    sget-object v12, Lcom/shabakaty/downloader/oq3;->v:Lcom/google/common/collect/p;

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 4
    sget-object v16, Lcom/shabakaty/downloader/ad3;->d:Lcom/shabakaty/downloader/ad3;

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v25

    move-object v2, v13

    move-object/from16 v11, p0

    invoke-direct/range {v0 .. v24}, Lcom/shabakaty/downloader/yc3;-><init>(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;JJILcom/shabakaty/downloader/i71;ZLcom/shabakaty/downloader/cp4;Lcom/shabakaty/downloader/mp4;Ljava/util/List;Lcom/shabakaty/downloader/uq2$a;ZILcom/shabakaty/downloader/ad3;JJJZZ)V

    return-object v25
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/yc3;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    .line 1
    new-instance v26, Lcom/shabakaty/downloader/yc3;

    move-object/from16 v1, v26

    iget-object v2, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget-object v3, v0, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget-wide v4, v0, Lcom/shabakaty/downloader/yc3;->c:J

    iget-wide v6, v0, Lcom/shabakaty/downloader/yc3;->d:J

    iget v8, v0, Lcom/shabakaty/downloader/yc3;->e:I

    iget-object v9, v0, Lcom/shabakaty/downloader/yc3;->f:Lcom/shabakaty/downloader/i71;

    iget-boolean v10, v0, Lcom/shabakaty/downloader/yc3;->g:Z

    iget-object v11, v0, Lcom/shabakaty/downloader/yc3;->h:Lcom/shabakaty/downloader/cp4;

    iget-object v12, v0, Lcom/shabakaty/downloader/yc3;->i:Lcom/shabakaty/downloader/mp4;

    iget-object v13, v0, Lcom/shabakaty/downloader/yc3;->j:Ljava/util/List;

    iget-boolean v15, v0, Lcom/shabakaty/downloader/yc3;->l:Z

    move-object/from16 p1, v1

    iget v1, v0, Lcom/shabakaty/downloader/yc3;->m:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/shabakaty/downloader/yc3;->n:Lcom/shabakaty/downloader/ad3;

    move-object/from16 v17, v1

    move-object/from16 v27, v2

    iget-wide v1, v0, Lcom/shabakaty/downloader/yc3;->q:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/shabakaty/downloader/yc3;->r:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/shabakaty/downloader/yc3;->s:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lcom/shabakaty/downloader/yc3;->o:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lcom/shabakaty/downloader/yc3;->p:Z

    move/from16 v25, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct/range {v1 .. v25}, Lcom/shabakaty/downloader/yc3;-><init>(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;JJILcom/shabakaty/downloader/i71;ZLcom/shabakaty/downloader/cp4;Lcom/shabakaty/downloader/mp4;Ljava/util/List;Lcom/shabakaty/downloader/uq2$a;ZILcom/shabakaty/downloader/ad3;JJJZZ)V

    return-object v26
.end method

.method public b(Lcom/shabakaty/downloader/uq2$a;JJJJLcom/shabakaty/downloader/cp4;Lcom/shabakaty/downloader/mp4;Ljava/util/List;)Lcom/shabakaty/downloader/yc3;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/uq2$a;",
            "JJJJ",
            "Lcom/shabakaty/downloader/cp4;",
            "Lcom/shabakaty/downloader/mp4;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ps2;",
            ">;)",
            "Lcom/shabakaty/downloader/yc3;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-wide/from16 v22, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v20, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    .line 1
    new-instance v26, Lcom/shabakaty/downloader/yc3;

    move-object/from16 v1, v26

    iget-object v2, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget v8, v0, Lcom/shabakaty/downloader/yc3;->e:I

    iget-object v9, v0, Lcom/shabakaty/downloader/yc3;->f:Lcom/shabakaty/downloader/i71;

    iget-boolean v10, v0, Lcom/shabakaty/downloader/yc3;->g:Z

    iget-object v14, v0, Lcom/shabakaty/downloader/yc3;->k:Lcom/shabakaty/downloader/uq2$a;

    iget-boolean v15, v0, Lcom/shabakaty/downloader/yc3;->l:Z

    move-object/from16 p1, v1

    iget v1, v0, Lcom/shabakaty/downloader/yc3;->m:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/shabakaty/downloader/yc3;->n:Lcom/shabakaty/downloader/ad3;

    move-object/from16 v17, v1

    move-object/from16 p2, v2

    iget-wide v1, v0, Lcom/shabakaty/downloader/yc3;->q:J

    move-wide/from16 v18, v1

    iget-boolean v1, v0, Lcom/shabakaty/downloader/yc3;->o:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lcom/shabakaty/downloader/yc3;->p:Z

    move/from16 v25, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v25}, Lcom/shabakaty/downloader/yc3;-><init>(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;JJILcom/shabakaty/downloader/i71;ZLcom/shabakaty/downloader/cp4;Lcom/shabakaty/downloader/mp4;Ljava/util/List;Lcom/shabakaty/downloader/uq2$a;ZILcom/shabakaty/downloader/ad3;JJJZZ)V

    return-object v26
.end method

.method public c(Z)Lcom/shabakaty/downloader/yc3;
    .locals 28

    move-object/from16 v0, p0

    move/from16 v24, p1

    .line 1
    new-instance v26, Lcom/shabakaty/downloader/yc3;

    move-object/from16 v1, v26

    iget-object v2, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget-object v3, v0, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget-wide v4, v0, Lcom/shabakaty/downloader/yc3;->c:J

    iget-wide v6, v0, Lcom/shabakaty/downloader/yc3;->d:J

    iget v8, v0, Lcom/shabakaty/downloader/yc3;->e:I

    iget-object v9, v0, Lcom/shabakaty/downloader/yc3;->f:Lcom/shabakaty/downloader/i71;

    iget-boolean v10, v0, Lcom/shabakaty/downloader/yc3;->g:Z

    iget-object v11, v0, Lcom/shabakaty/downloader/yc3;->h:Lcom/shabakaty/downloader/cp4;

    iget-object v12, v0, Lcom/shabakaty/downloader/yc3;->i:Lcom/shabakaty/downloader/mp4;

    iget-object v13, v0, Lcom/shabakaty/downloader/yc3;->j:Ljava/util/List;

    iget-object v14, v0, Lcom/shabakaty/downloader/yc3;->k:Lcom/shabakaty/downloader/uq2$a;

    iget-boolean v15, v0, Lcom/shabakaty/downloader/yc3;->l:Z

    move-object/from16 p1, v1

    iget v1, v0, Lcom/shabakaty/downloader/yc3;->m:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/shabakaty/downloader/yc3;->n:Lcom/shabakaty/downloader/ad3;

    move-object/from16 v17, v1

    move-object/from16 v27, v2

    iget-wide v1, v0, Lcom/shabakaty/downloader/yc3;->q:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/shabakaty/downloader/yc3;->r:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/shabakaty/downloader/yc3;->s:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lcom/shabakaty/downloader/yc3;->p:Z

    move/from16 v25, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct/range {v1 .. v25}, Lcom/shabakaty/downloader/yc3;-><init>(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;JJILcom/shabakaty/downloader/i71;ZLcom/shabakaty/downloader/cp4;Lcom/shabakaty/downloader/mp4;Ljava/util/List;Lcom/shabakaty/downloader/uq2$a;ZILcom/shabakaty/downloader/ad3;JJJZZ)V

    return-object v26
.end method

.method public d(ZI)Lcom/shabakaty/downloader/yc3;
    .locals 27

    move-object/from16 v0, p0

    move/from16 v15, p1

    move/from16 v16, p2

    .line 1
    new-instance v26, Lcom/shabakaty/downloader/yc3;

    move-object/from16 v1, v26

    iget-object v2, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget-object v3, v0, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget-wide v4, v0, Lcom/shabakaty/downloader/yc3;->c:J

    iget-wide v6, v0, Lcom/shabakaty/downloader/yc3;->d:J

    iget v8, v0, Lcom/shabakaty/downloader/yc3;->e:I

    iget-object v9, v0, Lcom/shabakaty/downloader/yc3;->f:Lcom/shabakaty/downloader/i71;

    iget-boolean v10, v0, Lcom/shabakaty/downloader/yc3;->g:Z

    iget-object v11, v0, Lcom/shabakaty/downloader/yc3;->h:Lcom/shabakaty/downloader/cp4;

    iget-object v12, v0, Lcom/shabakaty/downloader/yc3;->i:Lcom/shabakaty/downloader/mp4;

    iget-object v13, v0, Lcom/shabakaty/downloader/yc3;->j:Ljava/util/List;

    iget-object v14, v0, Lcom/shabakaty/downloader/yc3;->k:Lcom/shabakaty/downloader/uq2$a;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/shabakaty/downloader/yc3;->n:Lcom/shabakaty/downloader/ad3;

    move-object/from16 v17, v1

    move-object/from16 p2, v2

    iget-wide v1, v0, Lcom/shabakaty/downloader/yc3;->q:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/shabakaty/downloader/yc3;->r:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/shabakaty/downloader/yc3;->s:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lcom/shabakaty/downloader/yc3;->o:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lcom/shabakaty/downloader/yc3;->p:Z

    move/from16 v25, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v25}, Lcom/shabakaty/downloader/yc3;-><init>(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;JJILcom/shabakaty/downloader/i71;ZLcom/shabakaty/downloader/cp4;Lcom/shabakaty/downloader/mp4;Ljava/util/List;Lcom/shabakaty/downloader/uq2$a;ZILcom/shabakaty/downloader/ad3;JJJZZ)V

    return-object v26
.end method

.method public e(Lcom/shabakaty/downloader/i71;)Lcom/shabakaty/downloader/yc3;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 1
    new-instance v26, Lcom/shabakaty/downloader/yc3;

    move-object/from16 v1, v26

    iget-object v2, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget-object v3, v0, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget-wide v4, v0, Lcom/shabakaty/downloader/yc3;->c:J

    iget-wide v6, v0, Lcom/shabakaty/downloader/yc3;->d:J

    iget v8, v0, Lcom/shabakaty/downloader/yc3;->e:I

    iget-boolean v10, v0, Lcom/shabakaty/downloader/yc3;->g:Z

    iget-object v11, v0, Lcom/shabakaty/downloader/yc3;->h:Lcom/shabakaty/downloader/cp4;

    iget-object v12, v0, Lcom/shabakaty/downloader/yc3;->i:Lcom/shabakaty/downloader/mp4;

    iget-object v13, v0, Lcom/shabakaty/downloader/yc3;->j:Ljava/util/List;

    iget-object v14, v0, Lcom/shabakaty/downloader/yc3;->k:Lcom/shabakaty/downloader/uq2$a;

    iget-boolean v15, v0, Lcom/shabakaty/downloader/yc3;->l:Z

    move-object/from16 p1, v1

    iget v1, v0, Lcom/shabakaty/downloader/yc3;->m:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/shabakaty/downloader/yc3;->n:Lcom/shabakaty/downloader/ad3;

    move-object/from16 v17, v1

    move-object/from16 v27, v2

    iget-wide v1, v0, Lcom/shabakaty/downloader/yc3;->q:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/shabakaty/downloader/yc3;->r:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/shabakaty/downloader/yc3;->s:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lcom/shabakaty/downloader/yc3;->o:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lcom/shabakaty/downloader/yc3;->p:Z

    move/from16 v25, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct/range {v1 .. v25}, Lcom/shabakaty/downloader/yc3;-><init>(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;JJILcom/shabakaty/downloader/i71;ZLcom/shabakaty/downloader/cp4;Lcom/shabakaty/downloader/mp4;Ljava/util/List;Lcom/shabakaty/downloader/uq2$a;ZILcom/shabakaty/downloader/ad3;JJJZZ)V

    return-object v26
.end method

.method public f(Lcom/shabakaty/downloader/ad3;)Lcom/shabakaty/downloader/yc3;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v17, p1

    .line 1
    new-instance v26, Lcom/shabakaty/downloader/yc3;

    move-object/from16 v1, v26

    iget-object v2, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget-object v3, v0, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget-wide v4, v0, Lcom/shabakaty/downloader/yc3;->c:J

    iget-wide v6, v0, Lcom/shabakaty/downloader/yc3;->d:J

    iget v8, v0, Lcom/shabakaty/downloader/yc3;->e:I

    iget-object v9, v0, Lcom/shabakaty/downloader/yc3;->f:Lcom/shabakaty/downloader/i71;

    iget-boolean v10, v0, Lcom/shabakaty/downloader/yc3;->g:Z

    iget-object v11, v0, Lcom/shabakaty/downloader/yc3;->h:Lcom/shabakaty/downloader/cp4;

    iget-object v12, v0, Lcom/shabakaty/downloader/yc3;->i:Lcom/shabakaty/downloader/mp4;

    iget-object v13, v0, Lcom/shabakaty/downloader/yc3;->j:Ljava/util/List;

    iget-object v14, v0, Lcom/shabakaty/downloader/yc3;->k:Lcom/shabakaty/downloader/uq2$a;

    iget-boolean v15, v0, Lcom/shabakaty/downloader/yc3;->l:Z

    move-object/from16 p1, v1

    iget v1, v0, Lcom/shabakaty/downloader/yc3;->m:I

    move/from16 v16, v1

    move-object/from16 v27, v2

    iget-wide v1, v0, Lcom/shabakaty/downloader/yc3;->q:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/shabakaty/downloader/yc3;->r:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/shabakaty/downloader/yc3;->s:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lcom/shabakaty/downloader/yc3;->o:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lcom/shabakaty/downloader/yc3;->p:Z

    move/from16 v25, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct/range {v1 .. v25}, Lcom/shabakaty/downloader/yc3;-><init>(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;JJILcom/shabakaty/downloader/i71;ZLcom/shabakaty/downloader/cp4;Lcom/shabakaty/downloader/mp4;Ljava/util/List;Lcom/shabakaty/downloader/uq2$a;ZILcom/shabakaty/downloader/ad3;JJJZZ)V

    return-object v26
.end method

.method public g(I)Lcom/shabakaty/downloader/yc3;
    .locals 28

    move-object/from16 v0, p0

    move/from16 v8, p1

    .line 1
    new-instance v26, Lcom/shabakaty/downloader/yc3;

    move-object/from16 v1, v26

    iget-object v2, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget-object v3, v0, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget-wide v4, v0, Lcom/shabakaty/downloader/yc3;->c:J

    iget-wide v6, v0, Lcom/shabakaty/downloader/yc3;->d:J

    iget-object v9, v0, Lcom/shabakaty/downloader/yc3;->f:Lcom/shabakaty/downloader/i71;

    iget-boolean v10, v0, Lcom/shabakaty/downloader/yc3;->g:Z

    iget-object v11, v0, Lcom/shabakaty/downloader/yc3;->h:Lcom/shabakaty/downloader/cp4;

    iget-object v12, v0, Lcom/shabakaty/downloader/yc3;->i:Lcom/shabakaty/downloader/mp4;

    iget-object v13, v0, Lcom/shabakaty/downloader/yc3;->j:Ljava/util/List;

    iget-object v14, v0, Lcom/shabakaty/downloader/yc3;->k:Lcom/shabakaty/downloader/uq2$a;

    iget-boolean v15, v0, Lcom/shabakaty/downloader/yc3;->l:Z

    move-object/from16 p1, v1

    iget v1, v0, Lcom/shabakaty/downloader/yc3;->m:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/shabakaty/downloader/yc3;->n:Lcom/shabakaty/downloader/ad3;

    move-object/from16 v17, v1

    move-object/from16 v27, v2

    iget-wide v1, v0, Lcom/shabakaty/downloader/yc3;->q:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/shabakaty/downloader/yc3;->r:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/shabakaty/downloader/yc3;->s:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lcom/shabakaty/downloader/yc3;->o:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lcom/shabakaty/downloader/yc3;->p:Z

    move/from16 v25, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct/range {v1 .. v25}, Lcom/shabakaty/downloader/yc3;-><init>(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;JJILcom/shabakaty/downloader/i71;ZLcom/shabakaty/downloader/cp4;Lcom/shabakaty/downloader/mp4;Ljava/util/List;Lcom/shabakaty/downloader/uq2$a;ZILcom/shabakaty/downloader/ad3;JJJZZ)V

    return-object v26
.end method

.method public h(Lcom/shabakaty/downloader/nn4;)Lcom/shabakaty/downloader/yc3;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 1
    new-instance v26, Lcom/shabakaty/downloader/yc3;

    move-object/from16 v1, v26

    iget-object v3, v0, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget-wide v4, v0, Lcom/shabakaty/downloader/yc3;->c:J

    iget-wide v6, v0, Lcom/shabakaty/downloader/yc3;->d:J

    iget v8, v0, Lcom/shabakaty/downloader/yc3;->e:I

    iget-object v9, v0, Lcom/shabakaty/downloader/yc3;->f:Lcom/shabakaty/downloader/i71;

    iget-boolean v10, v0, Lcom/shabakaty/downloader/yc3;->g:Z

    iget-object v11, v0, Lcom/shabakaty/downloader/yc3;->h:Lcom/shabakaty/downloader/cp4;

    iget-object v12, v0, Lcom/shabakaty/downloader/yc3;->i:Lcom/shabakaty/downloader/mp4;

    iget-object v13, v0, Lcom/shabakaty/downloader/yc3;->j:Ljava/util/List;

    iget-object v14, v0, Lcom/shabakaty/downloader/yc3;->k:Lcom/shabakaty/downloader/uq2$a;

    iget-boolean v15, v0, Lcom/shabakaty/downloader/yc3;->l:Z

    move-object/from16 p1, v1

    iget v1, v0, Lcom/shabakaty/downloader/yc3;->m:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/shabakaty/downloader/yc3;->n:Lcom/shabakaty/downloader/ad3;

    move-object/from16 v17, v1

    move-object/from16 v27, v2

    iget-wide v1, v0, Lcom/shabakaty/downloader/yc3;->q:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/shabakaty/downloader/yc3;->r:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/shabakaty/downloader/yc3;->s:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lcom/shabakaty/downloader/yc3;->o:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lcom/shabakaty/downloader/yc3;->p:Z

    move/from16 v25, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct/range {v1 .. v25}, Lcom/shabakaty/downloader/yc3;-><init>(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;JJILcom/shabakaty/downloader/i71;ZLcom/shabakaty/downloader/cp4;Lcom/shabakaty/downloader/mp4;Ljava/util/List;Lcom/shabakaty/downloader/uq2$a;ZILcom/shabakaty/downloader/ad3;JJJZZ)V

    return-object v26
.end method
