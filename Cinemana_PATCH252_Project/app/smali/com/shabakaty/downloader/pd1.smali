.class public final Lcom/shabakaty/downloader/pd1;
.super Lcom/shabakaty/downloader/dm;
.source "FlacBinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/pd1$b;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vd1;IJJ)V
    .locals 16

    move-object/from16 v0, p1

    .line 1
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/shabakaty/downloader/cu;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/cu;-><init>(Lcom/shabakaty/downloader/vd1;)V

    new-instance v2, Lcom/shabakaty/downloader/pd1$b;

    const/4 v3, 0x0

    move/from16 v4, p2

    invoke-direct {v2, v0, v4, v3}, Lcom/shabakaty/downloader/pd1$b;-><init>(Lcom/shabakaty/downloader/vd1;ILcom/shabakaty/downloader/pd1$a;)V

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/vd1;->d()J

    move-result-wide v3

    iget-wide v7, v0, Lcom/shabakaty/downloader/vd1;->j:J

    .line 3
    iget v5, v0, Lcom/shabakaty/downloader/vd1;->d:I

    if-lez v5, :cond_0

    int-to-long v5, v5

    .line 4
    iget v9, v0, Lcom/shabakaty/downloader/vd1;->c:I

    int-to-long v9, v9

    add-long/2addr v5, v9

    const-wide/16 v9, 0x2

    div-long/2addr v5, v9

    const-wide/16 v9, 0x1

    goto :goto_1

    .line 5
    :cond_0
    iget v5, v0, Lcom/shabakaty/downloader/vd1;->a:I

    iget v6, v0, Lcom/shabakaty/downloader/vd1;->b:I

    if-ne v5, v6, :cond_1

    if-lez v5, :cond_1

    int-to-long v5, v5

    goto :goto_0

    :cond_1
    const-wide/16 v5, 0x1000

    .line 6
    :goto_0
    iget v9, v0, Lcom/shabakaty/downloader/vd1;->g:I

    int-to-long v9, v9

    mul-long v5, v5, v9

    iget v9, v0, Lcom/shabakaty/downloader/vd1;->h:I

    int-to-long v9, v9

    mul-long v5, v5, v9

    const-wide/16 v9, 0x8

    div-long/2addr v5, v9

    const-wide/16 v9, 0x40

    :goto_1
    add-long v13, v5, v9

    const/4 v5, 0x6

    .line 7
    iget v0, v0, Lcom/shabakaty/downloader/vd1;->c:I

    .line 8
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    .line 9
    invoke-direct/range {v0 .. v15}, Lcom/shabakaty/downloader/dm;-><init>(Lcom/shabakaty/downloader/dm$d;Lcom/shabakaty/downloader/dm$f;JJJJJJI)V

    return-void
.end method
