.class public final Lcom/shabakaty/downloader/i71;
.super Lcom/shabakaty/downloader/xc3;
.source "ExoPlaybackException.java"


# instance fields
.field public final t:I

.field public final u:Ljava/lang/String;

.field public final v:I

.field public final w:Lcom/shabakaty/downloader/wh1;

.field public final x:I

.field public final y:Lcom/shabakaty/downloader/mp2;

.field public final z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/iw3;->s:Lcom/shabakaty/downloader/iw3;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;I)V
    .locals 10

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/shabakaty/downloader/i71;-><init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILcom/shabakaty/downloader/wh1;IZ)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILcom/shabakaty/downloader/wh1;IZ)V
    .locals 13

    move v4, p1

    move-object/from16 v5, p5

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    if-eq v4, v0, :cond_1

    const/4 v0, 0x3

    if-eq v4, v0, :cond_0

    const-string v0, "Unexpected runtime error"

    goto :goto_0

    :cond_0
    const-string v0, "Remote error"

    :goto_0
    move/from16 v6, p6

    goto :goto_1

    .line 12
    :cond_1
    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static/range {p8 .. p8}, Lcom/shabakaty/downloader/jp;->b(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v5, v2}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error, index="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", format="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", format_supported="

    invoke-static {v3, v0, v2, v1}, Lcom/shabakaty/downloader/il3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move/from16 v6, p6

    const-string v0, "Source error"

    :goto_1
    const/4 v1, 0x0

    .line 14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 15
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    const-string v3, "null"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    const-string v2, ": "

    invoke-static {v3, v0, v2, v1}, Lcom/shabakaty/downloader/bc0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    move-object v1, v0

    const/4 v9, 0x0

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object v0, p0

    move-object v2, p2

    move/from16 v3, p4

    move v4, p1

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v12, p9

    .line 17
    invoke-direct/range {v0 .. v12}, Lcom/shabakaty/downloader/i71;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILcom/shabakaty/downloader/wh1;ILcom/shabakaty/downloader/mp2;JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILcom/shabakaty/downloader/wh1;ILcom/shabakaty/downloader/mp2;JZ)V
    .locals 9

    move-object v6, p0

    move v7, p4

    move/from16 v8, p12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p10

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/xc3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IJ)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v8, :cond_1

    if-ne v7, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 3
    :goto_1
    invoke-static {v2}, Lcom/shabakaty/downloader/md;->b(Z)V

    if-nez p2, :cond_2

    const/4 v2, 0x3

    if-ne v7, v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 4
    :cond_3
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 5
    iput v7, v6, Lcom/shabakaty/downloader/i71;->t:I

    move-object v0, p5

    .line 6
    iput-object v0, v6, Lcom/shabakaty/downloader/i71;->u:Ljava/lang/String;

    move v0, p6

    .line 7
    iput v0, v6, Lcom/shabakaty/downloader/i71;->v:I

    move-object/from16 v0, p7

    .line 8
    iput-object v0, v6, Lcom/shabakaty/downloader/i71;->w:Lcom/shabakaty/downloader/wh1;

    move/from16 v0, p8

    .line 9
    iput v0, v6, Lcom/shabakaty/downloader/i71;->x:I

    move-object/from16 v0, p9

    .line 10
    iput-object v0, v6, Lcom/shabakaty/downloader/i71;->y:Lcom/shabakaty/downloader/mp2;

    .line 11
    iput-boolean v8, v6, Lcom/shabakaty/downloader/i71;->z:Z

    return-void
.end method

.method public static b(Ljava/lang/RuntimeException;I)Lcom/shabakaty/downloader/i71;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/i71;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Lcom/shabakaty/downloader/i71;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/mp2;)Lcom/shabakaty/downloader/i71;
    .locals 14

    .line 1
    new-instance v13, Lcom/shabakaty/downloader/i71;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    iget v3, p0, Lcom/shabakaty/downloader/xc3;->r:I

    iget v4, p0, Lcom/shabakaty/downloader/i71;->t:I

    iget-object v5, p0, Lcom/shabakaty/downloader/i71;->u:Ljava/lang/String;

    iget v6, p0, Lcom/shabakaty/downloader/i71;->v:I

    iget-object v7, p0, Lcom/shabakaty/downloader/i71;->w:Lcom/shabakaty/downloader/wh1;

    iget v8, p0, Lcom/shabakaty/downloader/i71;->x:I

    iget-wide v10, p0, Lcom/shabakaty/downloader/xc3;->s:J

    iget-boolean v12, p0, Lcom/shabakaty/downloader/i71;->z:Z

    move-object v0, v13

    move-object v9, p1

    invoke-direct/range {v0 .. v12}, Lcom/shabakaty/downloader/i71;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILcom/shabakaty/downloader/wh1;ILcom/shabakaty/downloader/mp2;JZ)V

    return-object v13
.end method
