.class public final Lcom/shabakaty/downloader/d65$e;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/d65;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:Ljava/lang/CharSequence;

.field public d:I

.field public e:F

.field public f:I

.field public g:I

.field public h:F

.field public i:I

.field public j:F

.field public k:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/shabakaty/downloader/d65$e;->a:J

    .line 3
    iput-wide v0, p0, Lcom/shabakaty/downloader/d65$e;->b:J

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/shabakaty/downloader/d65$e;->d:I

    const v0, -0x800001

    .line 5
    iput v0, p0, Lcom/shabakaty/downloader/d65$e;->e:F

    const/4 v1, 0x1

    .line 6
    iput v1, p0, Lcom/shabakaty/downloader/d65$e;->f:I

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lcom/shabakaty/downloader/d65$e;->g:I

    .line 8
    iput v0, p0, Lcom/shabakaty/downloader/d65$e;->h:F

    const/high16 v0, -0x80000000

    .line 9
    iput v0, p0, Lcom/shabakaty/downloader/d65$e;->i:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    iput v1, p0, Lcom/shabakaty/downloader/d65$e;->j:F

    .line 11
    iput v0, p0, Lcom/shabakaty/downloader/d65$e;->k:I

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/vg0$b;
    .locals 13

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/d65$e;->h:F

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const v3, -0x800001

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x5

    const/4 v6, 0x4

    cmpl-float v7, v0, v3

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/d65$e;->d:I

    if-eq v0, v6, :cond_2

    if-eq v0, v5, :cond_1

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v7, p0, Lcom/shabakaty/downloader/d65$e;->i:I

    const/high16 v8, -0x80000000

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v7, v8, :cond_3

    goto :goto_1

    .line 3
    :cond_3
    iget v7, p0, Lcom/shabakaty/downloader/d65$e;->d:I

    if-eq v7, v11, :cond_5

    if-eq v7, v9, :cond_4

    if-eq v7, v6, :cond_5

    if-eq v7, v5, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x2

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    .line 4
    :goto_1
    new-instance v8, Lcom/shabakaty/downloader/vg0$b;

    invoke-direct {v8}, Lcom/shabakaty/downloader/vg0$b;-><init>()V

    iget v12, p0, Lcom/shabakaty/downloader/d65$e;->d:I

    if-eq v12, v11, :cond_8

    if-eq v12, v10, :cond_7

    if-eq v12, v9, :cond_6

    if-eq v12, v6, :cond_8

    if-eq v12, v5, :cond_6

    const/16 v5, 0x22

    const-string v6, "Unknown textAlignment: "

    const-string v9, "WebvttCueParser"

    .line 5
    invoke-static {v5, v6, v12, v9}, Lcom/shabakaty/downloader/me;->a(ILjava/lang/String;ILjava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_2

    .line 6
    :cond_6
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_2

    .line 7
    :cond_7
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_2

    .line 8
    :cond_8
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 9
    :goto_2
    iput-object v5, v8, Lcom/shabakaty/downloader/vg0$b;->c:Landroid/text/Layout$Alignment;

    .line 10
    iget v5, p0, Lcom/shabakaty/downloader/d65$e;->e:F

    iget v6, p0, Lcom/shabakaty/downloader/d65$e;->f:I

    cmpl-float v9, v5, v3

    if-eqz v9, :cond_9

    if-nez v6, :cond_9

    cmpg-float v2, v5, v2

    if-ltz v2, :cond_b

    cmpl-float v2, v5, v4

    if-lez v2, :cond_9

    goto :goto_3

    :cond_9
    if-eqz v9, :cond_a

    move v3, v5

    goto :goto_4

    :cond_a
    if-nez v6, :cond_c

    :cond_b
    :goto_3
    const/high16 v3, 0x3f800000    # 1.0f

    .line 11
    :cond_c
    :goto_4
    iput v3, v8, Lcom/shabakaty/downloader/vg0$b;->e:F

    .line 12
    iput v6, v8, Lcom/shabakaty/downloader/vg0$b;->f:I

    .line 13
    iget v2, p0, Lcom/shabakaty/downloader/d65$e;->g:I

    .line 14
    iput v2, v8, Lcom/shabakaty/downloader/vg0$b;->g:I

    .line 15
    iput v0, v8, Lcom/shabakaty/downloader/vg0$b;->h:F

    .line 16
    iput v7, v8, Lcom/shabakaty/downloader/vg0$b;->i:I

    .line 17
    iget v2, p0, Lcom/shabakaty/downloader/d65$e;->j:F

    if-eqz v7, :cond_10

    if-eq v7, v11, :cond_e

    if-ne v7, v10, :cond_d

    goto :goto_5

    .line 18
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_f

    mul-float v0, v0, v3

    goto :goto_5

    :cond_f
    sub-float/2addr v4, v0

    mul-float v0, v4, v3

    goto :goto_5

    :cond_10
    sub-float v0, v4, v0

    .line 19
    :goto_5
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 20
    iput v0, v8, Lcom/shabakaty/downloader/vg0$b;->l:F

    .line 21
    iget v0, p0, Lcom/shabakaty/downloader/d65$e;->k:I

    .line 22
    iput v0, v8, Lcom/shabakaty/downloader/vg0$b;->p:I

    .line 23
    iget-object v0, p0, Lcom/shabakaty/downloader/d65$e;->c:Ljava/lang/CharSequence;

    if-eqz v0, :cond_11

    .line 24
    iput-object v0, v8, Lcom/shabakaty/downloader/vg0$b;->a:Ljava/lang/CharSequence;

    :cond_11
    return-object v8
.end method
