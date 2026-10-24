.class public Lcom/shabakaty/downloader/se1$a;
.super Ljava/lang/Object;
.source "Flow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/se1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/shabakaty/downloader/ec0;

.field public c:I

.field public d:Lcom/shabakaty/downloader/wb0;

.field public e:Lcom/shabakaty/downloader/wb0;

.field public f:Lcom/shabakaty/downloader/wb0;

.field public g:Lcom/shabakaty/downloader/wb0;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public final synthetic r:Lcom/shabakaty/downloader/se1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/se1;ILcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;I)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/se1$a;->r:Lcom/shabakaty/downloader/se1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/se1$a;->a:I

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/shabakaty/downloader/se1$a;->b:Lcom/shabakaty/downloader/ec0;

    .line 4
    iput v0, p0, Lcom/shabakaty/downloader/se1$a;->c:I

    .line 5
    iput v0, p0, Lcom/shabakaty/downloader/se1$a;->h:I

    .line 6
    iput v0, p0, Lcom/shabakaty/downloader/se1$a;->i:I

    .line 7
    iput v0, p0, Lcom/shabakaty/downloader/se1$a;->j:I

    .line 8
    iput v0, p0, Lcom/shabakaty/downloader/se1$a;->k:I

    .line 9
    iput v0, p0, Lcom/shabakaty/downloader/se1$a;->l:I

    .line 10
    iput v0, p0, Lcom/shabakaty/downloader/se1$a;->m:I

    .line 11
    iput v0, p0, Lcom/shabakaty/downloader/se1$a;->n:I

    .line 12
    iput v0, p0, Lcom/shabakaty/downloader/se1$a;->o:I

    .line 13
    iput v0, p0, Lcom/shabakaty/downloader/se1$a;->p:I

    .line 14
    iput v0, p0, Lcom/shabakaty/downloader/se1$a;->q:I

    .line 15
    iput p2, p0, Lcom/shabakaty/downloader/se1$a;->a:I

    .line 16
    iput-object p3, p0, Lcom/shabakaty/downloader/se1$a;->d:Lcom/shabakaty/downloader/wb0;

    .line 17
    iput-object p4, p0, Lcom/shabakaty/downloader/se1$a;->e:Lcom/shabakaty/downloader/wb0;

    .line 18
    iput-object p5, p0, Lcom/shabakaty/downloader/se1$a;->f:Lcom/shabakaty/downloader/wb0;

    .line 19
    iput-object p6, p0, Lcom/shabakaty/downloader/se1$a;->g:Lcom/shabakaty/downloader/wb0;

    .line 20
    iget p2, p1, Lcom/shabakaty/downloader/u45;->w0:I

    .line 21
    iput p2, p0, Lcom/shabakaty/downloader/se1$a;->h:I

    .line 22
    iget p2, p1, Lcom/shabakaty/downloader/u45;->s0:I

    .line 23
    iput p2, p0, Lcom/shabakaty/downloader/se1$a;->i:I

    .line 24
    iget p2, p1, Lcom/shabakaty/downloader/u45;->x0:I

    .line 25
    iput p2, p0, Lcom/shabakaty/downloader/se1$a;->j:I

    .line 26
    iget p1, p1, Lcom/shabakaty/downloader/u45;->t0:I

    .line 27
    iput p1, p0, Lcom/shabakaty/downloader/se1$a;->k:I

    .line 28
    iput p7, p0, Lcom/shabakaty/downloader/se1$a;->q:I

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/ec0;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/se1$a;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/16 v3, 0x8

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/se1$a;->r:Lcom/shabakaty/downloader/se1;

    iget v4, p0, Lcom/shabakaty/downloader/se1$a;->q:I

    .line 3
    invoke-virtual {v0, p1, v4}, Lcom/shabakaty/downloader/se1;->X(Lcom/shabakaty/downloader/ec0;I)I

    move-result v0

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ec0;->o()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 5
    iget v0, p0, Lcom/shabakaty/downloader/se1$a;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/se1$a;->p:I

    const/4 v0, 0x0

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/shabakaty/downloader/se1$a;->r:Lcom/shabakaty/downloader/se1;

    .line 7
    iget v4, v2, Lcom/shabakaty/downloader/se1;->P0:I

    .line 8
    iget v5, p1, Lcom/shabakaty/downloader/ec0;->h0:I

    if-ne v5, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    .line 9
    :goto_0
    iget v3, p0, Lcom/shabakaty/downloader/se1$a;->l:I

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    iput v0, p0, Lcom/shabakaty/downloader/se1$a;->l:I

    .line 10
    iget v0, p0, Lcom/shabakaty/downloader/se1$a;->q:I

    .line 11
    invoke-virtual {v2, p1, v0}, Lcom/shabakaty/downloader/se1;->W(Lcom/shabakaty/downloader/ec0;I)I

    move-result v0

    .line 12
    iget-object v1, p0, Lcom/shabakaty/downloader/se1$a;->b:Lcom/shabakaty/downloader/ec0;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/shabakaty/downloader/se1$a;->c:I

    if-ge v1, v0, :cond_7

    .line 13
    :cond_2
    iput-object p1, p0, Lcom/shabakaty/downloader/se1$a;->b:Lcom/shabakaty/downloader/ec0;

    .line 14
    iput v0, p0, Lcom/shabakaty/downloader/se1$a;->c:I

    .line 15
    iput v0, p0, Lcom/shabakaty/downloader/se1$a;->m:I

    goto :goto_2

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/se1$a;->r:Lcom/shabakaty/downloader/se1;

    iget v4, p0, Lcom/shabakaty/downloader/se1$a;->q:I

    .line 17
    invoke-virtual {v0, p1, v4}, Lcom/shabakaty/downloader/se1;->X(Lcom/shabakaty/downloader/ec0;I)I

    move-result v0

    .line 18
    iget-object v4, p0, Lcom/shabakaty/downloader/se1$a;->r:Lcom/shabakaty/downloader/se1;

    iget v5, p0, Lcom/shabakaty/downloader/se1$a;->q:I

    .line 19
    invoke-virtual {v4, p1, v5}, Lcom/shabakaty/downloader/se1;->W(Lcom/shabakaty/downloader/ec0;I)I

    move-result v4

    .line 20
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ec0;->s()I

    move-result v5

    if-ne v5, v2, :cond_4

    .line 21
    iget v2, p0, Lcom/shabakaty/downloader/se1$a;->p:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/shabakaty/downloader/se1$a;->p:I

    const/4 v4, 0x0

    .line 22
    :cond_4
    iget-object v2, p0, Lcom/shabakaty/downloader/se1$a;->r:Lcom/shabakaty/downloader/se1;

    .line 23
    iget v2, v2, Lcom/shabakaty/downloader/se1;->Q0:I

    .line 24
    iget v5, p1, Lcom/shabakaty/downloader/ec0;->h0:I

    if-ne v5, v3, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    .line 25
    :goto_1
    iget v2, p0, Lcom/shabakaty/downloader/se1$a;->m:I

    add-int/2addr v4, v1

    add-int/2addr v4, v2

    iput v4, p0, Lcom/shabakaty/downloader/se1$a;->m:I

    .line 26
    iget-object v1, p0, Lcom/shabakaty/downloader/se1$a;->b:Lcom/shabakaty/downloader/ec0;

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/shabakaty/downloader/se1$a;->c:I

    if-ge v1, v0, :cond_7

    .line 27
    :cond_6
    iput-object p1, p0, Lcom/shabakaty/downloader/se1$a;->b:Lcom/shabakaty/downloader/ec0;

    .line 28
    iput v0, p0, Lcom/shabakaty/downloader/se1$a;->c:I

    .line 29
    iput v0, p0, Lcom/shabakaty/downloader/se1$a;->l:I

    .line 30
    :cond_7
    :goto_2
    iget p1, p0, Lcom/shabakaty/downloader/se1$a;->o:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/shabakaty/downloader/se1$a;->o:I

    return-void
.end method

.method public b(ZIZ)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/shabakaty/downloader/se1$a;->o:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 2
    iget v4, v0, Lcom/shabakaty/downloader/se1$a;->n:I

    add-int/2addr v4, v3

    iget-object v5, v0, Lcom/shabakaty/downloader/se1$a;->r:Lcom/shabakaty/downloader/se1;

    .line 3
    iget v6, v5, Lcom/shabakaty/downloader/se1;->b1:I

    if-lt v4, v6, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v5, v5, Lcom/shabakaty/downloader/se1;->a1:[Lcom/shabakaty/downloader/ec0;

    .line 5
    aget-object v4, v5, v4

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v4}, Lcom/shabakaty/downloader/ec0;->F()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3a

    .line 7
    iget-object v3, v0, Lcom/shabakaty/downloader/se1$a;->b:Lcom/shabakaty/downloader/ec0;

    if-nez v3, :cond_3

    goto/16 :goto_1a

    :cond_3
    if-eqz p3, :cond_4

    if-nez p2, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    :goto_3
    if-ge v6, v1, :cond_9

    if-eqz p1, :cond_5

    add-int/lit8 v9, v1, -0x1

    sub-int/2addr v9, v6

    goto :goto_4

    :cond_5
    move v9, v6

    .line 8
    :goto_4
    iget v10, v0, Lcom/shabakaty/downloader/se1$a;->n:I

    add-int/2addr v10, v9

    iget-object v9, v0, Lcom/shabakaty/downloader/se1$a;->r:Lcom/shabakaty/downloader/se1;

    .line 9
    iget v11, v9, Lcom/shabakaty/downloader/se1;->b1:I

    if-lt v10, v11, :cond_6

    goto :goto_5

    .line 10
    :cond_6
    iget-object v9, v9, Lcom/shabakaty/downloader/se1;->a1:[Lcom/shabakaty/downloader/ec0;

    .line 11
    aget-object v9, v9, v10

    if-eqz v9, :cond_8

    .line 12
    iget v9, v9, Lcom/shabakaty/downloader/ec0;->h0:I

    if-nez v9, :cond_8

    if-ne v7, v5, :cond_7

    move v7, v6

    :cond_7
    move v8, v6

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 13
    :cond_9
    :goto_5
    iget v6, v0, Lcom/shabakaty/downloader/se1$a;->a:I

    const/4 v9, 0x0

    if-nez v6, :cond_23

    .line 14
    iget-object v6, v0, Lcom/shabakaty/downloader/se1$a;->b:Lcom/shabakaty/downloader/ec0;

    .line 15
    iget-object v10, v0, Lcom/shabakaty/downloader/se1$a;->r:Lcom/shabakaty/downloader/se1;

    .line 16
    iget v11, v10, Lcom/shabakaty/downloader/se1;->E0:I

    .line 17
    iput v11, v6, Lcom/shabakaty/downloader/ec0;->k0:I

    .line 18
    iget v11, v0, Lcom/shabakaty/downloader/se1$a;->i:I

    if-lez p2, :cond_a

    .line 19
    iget v10, v10, Lcom/shabakaty/downloader/se1;->Q0:I

    add-int/2addr v11, v10

    .line 20
    :cond_a
    iget-object v10, v6, Lcom/shabakaty/downloader/ec0;->J:Lcom/shabakaty/downloader/wb0;

    iget-object v12, v0, Lcom/shabakaty/downloader/se1$a;->e:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {v10, v12, v11}, Lcom/shabakaty/downloader/wb0;->a(Lcom/shabakaty/downloader/wb0;I)Z

    if-eqz p3, :cond_b

    .line 21
    iget-object v10, v6, Lcom/shabakaty/downloader/ec0;->L:Lcom/shabakaty/downloader/wb0;

    iget-object v11, v0, Lcom/shabakaty/downloader/se1$a;->g:Lcom/shabakaty/downloader/wb0;

    iget v12, v0, Lcom/shabakaty/downloader/se1$a;->k:I

    invoke-virtual {v10, v11, v12}, Lcom/shabakaty/downloader/wb0;->a(Lcom/shabakaty/downloader/wb0;I)Z

    :cond_b
    if-lez p2, :cond_c

    .line 22
    iget-object v10, v0, Lcom/shabakaty/downloader/se1$a;->e:Lcom/shabakaty/downloader/wb0;

    iget-object v10, v10, Lcom/shabakaty/downloader/wb0;->d:Lcom/shabakaty/downloader/ec0;

    iget-object v10, v10, Lcom/shabakaty/downloader/ec0;->L:Lcom/shabakaty/downloader/wb0;

    .line 23
    iget-object v11, v6, Lcom/shabakaty/downloader/ec0;->J:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {v10, v11, v2}, Lcom/shabakaty/downloader/wb0;->a(Lcom/shabakaty/downloader/wb0;I)Z

    .line 24
    :cond_c
    iget-object v10, v0, Lcom/shabakaty/downloader/se1$a;->r:Lcom/shabakaty/downloader/se1;

    .line 25
    iget v10, v10, Lcom/shabakaty/downloader/se1;->S0:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_10

    .line 26
    iget-boolean v10, v6, Lcom/shabakaty/downloader/ec0;->D:Z

    if-nez v10, :cond_10

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v1, :cond_10

    if-eqz p1, :cond_d

    add-int/lit8 v12, v1, -0x1

    sub-int/2addr v12, v10

    goto :goto_7

    :cond_d
    move v12, v10

    .line 27
    :goto_7
    iget v13, v0, Lcom/shabakaty/downloader/se1$a;->n:I

    add-int/2addr v13, v12

    iget-object v12, v0, Lcom/shabakaty/downloader/se1$a;->r:Lcom/shabakaty/downloader/se1;

    .line 28
    iget v14, v12, Lcom/shabakaty/downloader/se1;->b1:I

    if-lt v13, v14, :cond_e

    goto :goto_8

    .line 29
    :cond_e
    iget-object v12, v12, Lcom/shabakaty/downloader/se1;->a1:[Lcom/shabakaty/downloader/ec0;

    .line 30
    aget-object v12, v12, v13

    .line 31
    iget-boolean v13, v12, Lcom/shabakaty/downloader/ec0;->D:Z

    if-eqz v13, :cond_f

    goto :goto_9

    :cond_f
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_10
    :goto_8
    move-object v12, v6

    :goto_9
    const/4 v10, 0x0

    :goto_a
    if-ge v10, v1, :cond_3a

    if-eqz p1, :cond_11

    add-int/lit8 v13, v1, -0x1

    sub-int/2addr v13, v10

    goto :goto_b

    :cond_11
    move v13, v10

    .line 32
    :goto_b
    iget v14, v0, Lcom/shabakaty/downloader/se1$a;->n:I

    add-int/2addr v14, v13

    iget-object v15, v0, Lcom/shabakaty/downloader/se1$a;->r:Lcom/shabakaty/downloader/se1;

    .line 33
    iget v11, v15, Lcom/shabakaty/downloader/se1;->b1:I

    if-lt v14, v11, :cond_12

    goto/16 :goto_1a

    .line 34
    :cond_12
    iget-object v11, v15, Lcom/shabakaty/downloader/se1;->a1:[Lcom/shabakaty/downloader/ec0;

    .line 35
    aget-object v11, v11, v14

    if-nez v11, :cond_13

    const/4 v3, 0x3

    goto/16 :goto_11

    :cond_13
    if-nez v10, :cond_14

    .line 36
    iget-object v14, v11, Lcom/shabakaty/downloader/ec0;->I:Lcom/shabakaty/downloader/wb0;

    iget-object v15, v0, Lcom/shabakaty/downloader/se1$a;->d:Lcom/shabakaty/downloader/wb0;

    iget v3, v0, Lcom/shabakaty/downloader/se1$a;->h:I

    invoke-virtual {v11, v14, v15, v3}, Lcom/shabakaty/downloader/ec0;->h(Lcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;I)V

    :cond_14
    if-nez v13, :cond_1a

    .line 37
    iget-object v3, v0, Lcom/shabakaty/downloader/se1$a;->r:Lcom/shabakaty/downloader/se1;

    .line 38
    iget v13, v3, Lcom/shabakaty/downloader/se1;->D0:I

    const/high16 v14, 0x3f800000    # 1.0f

    if-eqz p1, :cond_15

    .line 39
    iget v15, v3, Lcom/shabakaty/downloader/se1;->J0:F

    sub-float v15, v14, v15

    goto :goto_c

    :cond_15
    iget v15, v3, Lcom/shabakaty/downloader/se1;->J0:F

    .line 40
    :goto_c
    iget v2, v0, Lcom/shabakaty/downloader/se1$a;->n:I

    if-nez v2, :cond_17

    .line 41
    iget v2, v3, Lcom/shabakaty/downloader/se1;->F0:I

    if-eq v2, v5, :cond_17

    if-eqz p1, :cond_16

    .line 42
    iget v3, v3, Lcom/shabakaty/downloader/se1;->L0:F

    goto :goto_d

    :cond_16
    iget v3, v3, Lcom/shabakaty/downloader/se1;->L0:F

    goto :goto_e

    :cond_17
    if-eqz p3, :cond_19

    .line 43
    iget v2, v3, Lcom/shabakaty/downloader/se1;->H0:I

    if-eq v2, v5, :cond_19

    if-eqz p1, :cond_18

    .line 44
    iget v3, v3, Lcom/shabakaty/downloader/se1;->N0:F

    :goto_d
    sub-float/2addr v14, v3

    move v13, v2

    move v15, v14

    goto :goto_f

    :cond_18
    iget v3, v3, Lcom/shabakaty/downloader/se1;->N0:F

    :goto_e
    move v13, v2

    move v15, v3

    .line 45
    :cond_19
    :goto_f
    iput v13, v11, Lcom/shabakaty/downloader/ec0;->j0:I

    .line 46
    iput v15, v11, Lcom/shabakaty/downloader/ec0;->e0:F

    :cond_1a
    add-int/lit8 v2, v1, -0x1

    if-ne v10, v2, :cond_1b

    .line 47
    iget-object v2, v11, Lcom/shabakaty/downloader/ec0;->K:Lcom/shabakaty/downloader/wb0;

    iget-object v3, v0, Lcom/shabakaty/downloader/se1$a;->f:Lcom/shabakaty/downloader/wb0;

    iget v13, v0, Lcom/shabakaty/downloader/se1$a;->j:I

    invoke-virtual {v11, v2, v3, v13}, Lcom/shabakaty/downloader/ec0;->h(Lcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;I)V

    :cond_1b
    if-eqz v9, :cond_1d

    .line 48
    iget-object v2, v11, Lcom/shabakaty/downloader/ec0;->I:Lcom/shabakaty/downloader/wb0;

    iget-object v3, v9, Lcom/shabakaty/downloader/ec0;->K:Lcom/shabakaty/downloader/wb0;

    iget-object v13, v0, Lcom/shabakaty/downloader/se1$a;->r:Lcom/shabakaty/downloader/se1;

    .line 49
    iget v13, v13, Lcom/shabakaty/downloader/se1;->P0:I

    .line 50
    invoke-virtual {v2, v3, v13}, Lcom/shabakaty/downloader/wb0;->a(Lcom/shabakaty/downloader/wb0;I)Z

    if-ne v10, v7, :cond_1c

    .line 51
    iget-object v2, v11, Lcom/shabakaty/downloader/ec0;->I:Lcom/shabakaty/downloader/wb0;

    iget v3, v0, Lcom/shabakaty/downloader/se1$a;->h:I

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/wb0;->n(I)V

    .line 52
    :cond_1c
    iget-object v2, v9, Lcom/shabakaty/downloader/ec0;->K:Lcom/shabakaty/downloader/wb0;

    iget-object v3, v11, Lcom/shabakaty/downloader/ec0;->I:Lcom/shabakaty/downloader/wb0;

    const/4 v13, 0x0

    invoke-virtual {v2, v3, v13}, Lcom/shabakaty/downloader/wb0;->a(Lcom/shabakaty/downloader/wb0;I)Z

    const/4 v2, 0x1

    add-int/lit8 v3, v8, 0x1

    if-ne v10, v3, :cond_1d

    .line 53
    iget-object v2, v9, Lcom/shabakaty/downloader/ec0;->K:Lcom/shabakaty/downloader/wb0;

    iget v3, v0, Lcom/shabakaty/downloader/se1$a;->j:I

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/wb0;->n(I)V

    :cond_1d
    if-eq v11, v6, :cond_22

    .line 54
    iget-object v2, v0, Lcom/shabakaty/downloader/se1$a;->r:Lcom/shabakaty/downloader/se1;

    .line 55
    iget v2, v2, Lcom/shabakaty/downloader/se1;->S0:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1e

    .line 56
    iget-boolean v9, v12, Lcom/shabakaty/downloader/ec0;->D:Z

    if-eqz v9, :cond_1e

    if-eq v11, v12, :cond_1e

    .line 57
    iget-boolean v9, v11, Lcom/shabakaty/downloader/ec0;->D:Z

    if-eqz v9, :cond_1e

    .line 58
    iget-object v2, v11, Lcom/shabakaty/downloader/ec0;->M:Lcom/shabakaty/downloader/wb0;

    iget-object v9, v12, Lcom/shabakaty/downloader/ec0;->M:Lcom/shabakaty/downloader/wb0;

    const/4 v13, 0x0

    invoke-virtual {v2, v9, v13}, Lcom/shabakaty/downloader/wb0;->a(Lcom/shabakaty/downloader/wb0;I)Z

    goto :goto_10

    :cond_1e
    if-eqz v2, :cond_21

    const/4 v9, 0x1

    if-eq v2, v9, :cond_20

    if-eqz v4, :cond_1f

    .line 59
    iget-object v2, v11, Lcom/shabakaty/downloader/ec0;->J:Lcom/shabakaty/downloader/wb0;

    iget-object v9, v0, Lcom/shabakaty/downloader/se1$a;->e:Lcom/shabakaty/downloader/wb0;

    iget v13, v0, Lcom/shabakaty/downloader/se1$a;->i:I

    invoke-virtual {v2, v9, v13}, Lcom/shabakaty/downloader/wb0;->a(Lcom/shabakaty/downloader/wb0;I)Z

    .line 60
    iget-object v2, v11, Lcom/shabakaty/downloader/ec0;->L:Lcom/shabakaty/downloader/wb0;

    iget-object v9, v0, Lcom/shabakaty/downloader/se1$a;->g:Lcom/shabakaty/downloader/wb0;

    iget v13, v0, Lcom/shabakaty/downloader/se1$a;->k:I

    invoke-virtual {v2, v9, v13}, Lcom/shabakaty/downloader/wb0;->a(Lcom/shabakaty/downloader/wb0;I)Z

    goto :goto_10

    .line 61
    :cond_1f
    iget-object v2, v11, Lcom/shabakaty/downloader/ec0;->J:Lcom/shabakaty/downloader/wb0;

    iget-object v9, v6, Lcom/shabakaty/downloader/ec0;->J:Lcom/shabakaty/downloader/wb0;

    const/4 v13, 0x0

    invoke-virtual {v2, v9, v13}, Lcom/shabakaty/downloader/wb0;->a(Lcom/shabakaty/downloader/wb0;I)Z

    .line 62
    iget-object v2, v11, Lcom/shabakaty/downloader/ec0;->L:Lcom/shabakaty/downloader/wb0;

    iget-object v9, v6, Lcom/shabakaty/downloader/ec0;->L:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {v2, v9, v13}, Lcom/shabakaty/downloader/wb0;->a(Lcom/shabakaty/downloader/wb0;I)Z

    goto :goto_10

    :cond_20
    const/4 v13, 0x0

    .line 63
    iget-object v2, v11, Lcom/shabakaty/downloader/ec0;->L:Lcom/shabakaty/downloader/wb0;

    iget-object v9, v6, Lcom/shabakaty/downloader/ec0;->L:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {v2, v9, v13}, Lcom/shabakaty/downloader/wb0;->a(Lcom/shabakaty/downloader/wb0;I)Z

    goto :goto_10

    :cond_21
    const/4 v13, 0x0

    .line 64
    iget-object v2, v11, Lcom/shabakaty/downloader/ec0;->J:Lcom/shabakaty/downloader/wb0;

    iget-object v9, v6, Lcom/shabakaty/downloader/ec0;->J:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {v2, v9, v13}, Lcom/shabakaty/downloader/wb0;->a(Lcom/shabakaty/downloader/wb0;I)Z

    :goto_10
    move-object v9, v11

    goto :goto_11

    :cond_22
    const/4 v3, 0x3

    goto :goto_10

    :goto_11
    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x0

    const/4 v11, 0x3

    goto/16 :goto_a

    .line 65
    :cond_23
    iget-object v2, v0, Lcom/shabakaty/downloader/se1$a;->b:Lcom/shabakaty/downloader/ec0;

    .line 66
    iget-object v3, v0, Lcom/shabakaty/downloader/se1$a;->r:Lcom/shabakaty/downloader/se1;

    .line 67
    iget v6, v3, Lcom/shabakaty/downloader/se1;->D0:I

    .line 68
    iput v6, v2, Lcom/shabakaty/downloader/ec0;->j0:I

    .line 69
    iget v6, v0, Lcom/shabakaty/downloader/se1$a;->h:I

    if-lez p2, :cond_24

    .line 70
    iget v3, v3, Lcom/shabakaty/downloader/se1;->P0:I

    add-int/2addr v6, v3

    :cond_24
    if-eqz p1, :cond_26

    .line 71
    iget-object v3, v2, Lcom/shabakaty/downloader/ec0;->K:Lcom/shabakaty/downloader/wb0;

    iget-object v10, v0, Lcom/shabakaty/downloader/se1$a;->f:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {v3, v10, v6}, Lcom/shabakaty/downloader/wb0;->a(Lcom/shabakaty/downloader/wb0;I)Z

    if-eqz p3, :cond_25

    .line 72
    iget-object v3, v2, Lcom/shabakaty/downloader/ec0;->I:Lcom/shabakaty/downloader/wb0;

    iget-object v6, v0, Lcom/shabakaty/downloader/se1$a;->d:Lcom/shabakaty/downloader/wb0;

    iget v10, v0, Lcom/shabakaty/downloader/se1$a;->j:I

    invoke-virtual {v3, v6, v10}, Lcom/shabakaty/downloader/wb0;->a(Lcom/shabakaty/downloader/wb0;I)Z

    :cond_25
    if-lez p2, :cond_28

    .line 73
    iget-object v3, v0, Lcom/shabakaty/downloader/se1$a;->f:Lcom/shabakaty/downloader/wb0;

    iget-object v3, v3, Lcom/shabakaty/downloader/wb0;->d:Lcom/shabakaty/downloader/ec0;

    iget-object v3, v3, Lcom/shabakaty/downloader/ec0;->I:Lcom/shabakaty/downloader/wb0;

    .line 74
    iget-object v6, v2, Lcom/shabakaty/downloader/ec0;->K:Lcom/shabakaty/downloader/wb0;

    const/4 v10, 0x0

    invoke-virtual {v3, v6, v10}, Lcom/shabakaty/downloader/wb0;->a(Lcom/shabakaty/downloader/wb0;I)Z

    goto :goto_12

    .line 75
    :cond_26
    iget-object v3, v2, Lcom/shabakaty/downloader/ec0;->I:Lcom/shabakaty/downloader/wb0;

    iget-object v10, v0, Lcom/shabakaty/downloader/se1$a;->d:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {v3, v10, v6}, Lcom/shabakaty/downloader/wb0;->a(Lcom/shabakaty/downloader/wb0;I)Z

    if-eqz p3, :cond_27

    .line 76
    iget-object v3, v2, Lcom/shabakaty/downloader/ec0;->K:Lcom/shabakaty/downloader/wb0;

    iget-object v6, v0, Lcom/shabakaty/downloader/se1$a;->f:Lcom/shabakaty/downloader/wb0;

    iget v10, v0, Lcom/shabakaty/downloader/se1$a;->j:I

    invoke-virtual {v3, v6, v10}, Lcom/shabakaty/downloader/wb0;->a(Lcom/shabakaty/downloader/wb0;I)Z

    :cond_27
    if-lez p2, :cond_28

    .line 77
    iget-object v3, v0, Lcom/shabakaty/downloader/se1$a;->d:Lcom/shabakaty/downloader/wb0;

    iget-object v3, v3, Lcom/shabakaty/downloader/wb0;->d:Lcom/shabakaty/downloader/ec0;

    iget-object v3, v3, Lcom/shabakaty/downloader/ec0;->K:Lcom/shabakaty/downloader/wb0;

    .line 78
    iget-object v6, v2, Lcom/shabakaty/downloader/ec0;->I:Lcom/shabakaty/downloader/wb0;

    const/4 v10, 0x0

    invoke-virtual {v3, v6, v10}, Lcom/shabakaty/downloader/wb0;->a(Lcom/shabakaty/downloader/wb0;I)Z

    :cond_28
    :goto_12
    const/4 v13, 0x0

    :goto_13
    if-ge v13, v1, :cond_3a

    .line 79
    iget v3, v0, Lcom/shabakaty/downloader/se1$a;->n:I

    add-int/2addr v3, v13

    iget-object v6, v0, Lcom/shabakaty/downloader/se1$a;->r:Lcom/shabakaty/downloader/se1;

    .line 80
    iget v10, v6, Lcom/shabakaty/downloader/se1;->b1:I

    if-lt v3, v10, :cond_29

    goto/16 :goto_1a

    .line 81
    :cond_29
    iget-object v6, v6, Lcom/shabakaty/downloader/se1;->a1:[Lcom/shabakaty/downloader/ec0;

    .line 82
    aget-object v3, v6, v3

    if-nez v3, :cond_2a

    const/4 v10, 0x1

    const/4 v11, 0x0

    goto/16 :goto_19

    :cond_2a
    if-nez v13, :cond_2d

    .line 83
    iget-object v6, v3, Lcom/shabakaty/downloader/ec0;->J:Lcom/shabakaty/downloader/wb0;

    iget-object v10, v0, Lcom/shabakaty/downloader/se1$a;->e:Lcom/shabakaty/downloader/wb0;

    iget v11, v0, Lcom/shabakaty/downloader/se1$a;->i:I

    invoke-virtual {v3, v6, v10, v11}, Lcom/shabakaty/downloader/ec0;->h(Lcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;I)V

    .line 84
    iget-object v6, v0, Lcom/shabakaty/downloader/se1$a;->r:Lcom/shabakaty/downloader/se1;

    .line 85
    iget v10, v6, Lcom/shabakaty/downloader/se1;->E0:I

    .line 86
    iget v11, v6, Lcom/shabakaty/downloader/se1;->K0:F

    .line 87
    iget v12, v0, Lcom/shabakaty/downloader/se1$a;->n:I

    if-nez v12, :cond_2b

    .line 88
    iget v12, v6, Lcom/shabakaty/downloader/se1;->G0:I

    if-eq v12, v5, :cond_2b

    .line 89
    iget v6, v6, Lcom/shabakaty/downloader/se1;->M0:F

    :goto_14
    move v11, v6

    move v10, v12

    goto :goto_15

    :cond_2b
    if-eqz p3, :cond_2c

    .line 90
    iget v12, v6, Lcom/shabakaty/downloader/se1;->I0:I

    if-eq v12, v5, :cond_2c

    .line 91
    iget v6, v6, Lcom/shabakaty/downloader/se1;->O0:F

    goto :goto_14

    .line 92
    :cond_2c
    :goto_15
    iput v10, v3, Lcom/shabakaty/downloader/ec0;->k0:I

    .line 93
    iput v11, v3, Lcom/shabakaty/downloader/ec0;->f0:F

    :cond_2d
    add-int/lit8 v6, v1, -0x1

    if-ne v13, v6, :cond_2e

    .line 94
    iget-object v6, v3, Lcom/shabakaty/downloader/ec0;->L:Lcom/shabakaty/downloader/wb0;

    iget-object v10, v0, Lcom/shabakaty/downloader/se1$a;->g:Lcom/shabakaty/downloader/wb0;

    iget v11, v0, Lcom/shabakaty/downloader/se1$a;->k:I

    invoke-virtual {v3, v6, v10, v11}, Lcom/shabakaty/downloader/ec0;->h(Lcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;I)V

    :cond_2e
    if-eqz v9, :cond_30

    .line 95
    iget-object v6, v3, Lcom/shabakaty/downloader/ec0;->J:Lcom/shabakaty/downloader/wb0;

    iget-object v10, v9, Lcom/shabakaty/downloader/ec0;->L:Lcom/shabakaty/downloader/wb0;

    iget-object v11, v0, Lcom/shabakaty/downloader/se1$a;->r:Lcom/shabakaty/downloader/se1;

    .line 96
    iget v11, v11, Lcom/shabakaty/downloader/se1;->Q0:I

    .line 97
    invoke-virtual {v6, v10, v11}, Lcom/shabakaty/downloader/wb0;->a(Lcom/shabakaty/downloader/wb0;I)Z

    if-ne v13, v7, :cond_2f

    .line 98
    iget-object v6, v3, Lcom/shabakaty/downloader/ec0;->J:Lcom/shabakaty/downloader/wb0;

    iget v10, v0, Lcom/shabakaty/downloader/se1$a;->i:I

    invoke-virtual {v6, v10}, Lcom/shabakaty/downloader/wb0;->n(I)V

    .line 99
    :cond_2f
    iget-object v6, v9, Lcom/shabakaty/downloader/ec0;->L:Lcom/shabakaty/downloader/wb0;

    iget-object v10, v3, Lcom/shabakaty/downloader/ec0;->J:Lcom/shabakaty/downloader/wb0;

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Lcom/shabakaty/downloader/wb0;->a(Lcom/shabakaty/downloader/wb0;I)Z

    const/4 v6, 0x1

    add-int/lit8 v10, v8, 0x1

    if-ne v13, v10, :cond_30

    .line 100
    iget-object v6, v9, Lcom/shabakaty/downloader/ec0;->L:Lcom/shabakaty/downloader/wb0;

    iget v9, v0, Lcom/shabakaty/downloader/se1$a;->k:I

    invoke-virtual {v6, v9}, Lcom/shabakaty/downloader/wb0;->n(I)V

    :cond_30
    if-eq v3, v2, :cond_39

    const/4 v6, 0x2

    if-eqz p1, :cond_34

    .line 101
    iget-object v9, v0, Lcom/shabakaty/downloader/se1$a;->r:Lcom/shabakaty/downloader/se1;

    .line 102
    iget v9, v9, Lcom/shabakaty/downloader/se1;->R0:I

    if-eqz v9, :cond_33

    const/4 v10, 0x1

    if-eq v9, v10, :cond_32

    if-eq v9, v6, :cond_31

    goto :goto_16

    .line 103
    :cond_31
    iget-object v6, v3, Lcom/shabakaty/downloader/ec0;->I:Lcom/shabakaty/downloader/wb0;

    iget-object v9, v2, Lcom/shabakaty/downloader/ec0;->I:Lcom/shabakaty/downloader/wb0;

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Lcom/shabakaty/downloader/wb0;->a(Lcom/shabakaty/downloader/wb0;I)Z

    .line 104
    iget-object v6, v3, Lcom/shabakaty/downloader/ec0;->K:Lcom/shabakaty/downloader/wb0;

    iget-object v9, v2, Lcom/shabakaty/downloader/ec0;->K:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {v6, v9, v10}, Lcom/shabakaty/downloader/wb0;->a(Lcom/shabakaty/downloader/wb0;I)Z

    goto :goto_16

    :cond_32
    const/4 v10, 0x0

    .line 105
    iget-object v6, v3, Lcom/shabakaty/downloader/ec0;->I:Lcom/shabakaty/downloader/wb0;

    iget-object v9, v2, Lcom/shabakaty/downloader/ec0;->I:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {v6, v9, v10}, Lcom/shabakaty/downloader/wb0;->a(Lcom/shabakaty/downloader/wb0;I)Z

    goto :goto_16

    :cond_33
    const/4 v10, 0x0

    .line 106
    iget-object v6, v3, Lcom/shabakaty/downloader/ec0;->K:Lcom/shabakaty/downloader/wb0;

    iget-object v9, v2, Lcom/shabakaty/downloader/ec0;->K:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {v6, v9, v10}, Lcom/shabakaty/downloader/wb0;->a(Lcom/shabakaty/downloader/wb0;I)Z

    goto :goto_16

    .line 107
    :cond_34
    iget-object v9, v0, Lcom/shabakaty/downloader/se1$a;->r:Lcom/shabakaty/downloader/se1;

    .line 108
    iget v9, v9, Lcom/shabakaty/downloader/se1;->R0:I

    if-eqz v9, :cond_38

    const/4 v10, 0x1

    if-eq v9, v10, :cond_37

    if-eq v9, v6, :cond_35

    goto :goto_17

    :cond_35
    if-eqz v4, :cond_36

    .line 109
    iget-object v6, v3, Lcom/shabakaty/downloader/ec0;->I:Lcom/shabakaty/downloader/wb0;

    iget-object v9, v0, Lcom/shabakaty/downloader/se1$a;->d:Lcom/shabakaty/downloader/wb0;

    iget v11, v0, Lcom/shabakaty/downloader/se1$a;->h:I

    invoke-virtual {v6, v9, v11}, Lcom/shabakaty/downloader/wb0;->a(Lcom/shabakaty/downloader/wb0;I)Z

    .line 110
    iget-object v6, v3, Lcom/shabakaty/downloader/ec0;->K:Lcom/shabakaty/downloader/wb0;

    iget-object v9, v0, Lcom/shabakaty/downloader/se1$a;->f:Lcom/shabakaty/downloader/wb0;

    iget v11, v0, Lcom/shabakaty/downloader/se1$a;->j:I

    invoke-virtual {v6, v9, v11}, Lcom/shabakaty/downloader/wb0;->a(Lcom/shabakaty/downloader/wb0;I)Z

    goto :goto_17

    .line 111
    :cond_36
    iget-object v6, v3, Lcom/shabakaty/downloader/ec0;->I:Lcom/shabakaty/downloader/wb0;

    iget-object v9, v2, Lcom/shabakaty/downloader/ec0;->I:Lcom/shabakaty/downloader/wb0;

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Lcom/shabakaty/downloader/wb0;->a(Lcom/shabakaty/downloader/wb0;I)Z

    .line 112
    iget-object v6, v3, Lcom/shabakaty/downloader/ec0;->K:Lcom/shabakaty/downloader/wb0;

    iget-object v9, v2, Lcom/shabakaty/downloader/ec0;->K:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {v6, v9, v11}, Lcom/shabakaty/downloader/wb0;->a(Lcom/shabakaty/downloader/wb0;I)Z

    goto :goto_18

    :cond_37
    const/4 v11, 0x0

    .line 113
    iget-object v6, v3, Lcom/shabakaty/downloader/ec0;->K:Lcom/shabakaty/downloader/wb0;

    iget-object v9, v2, Lcom/shabakaty/downloader/ec0;->K:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {v6, v9, v11}, Lcom/shabakaty/downloader/wb0;->a(Lcom/shabakaty/downloader/wb0;I)Z

    goto :goto_18

    :cond_38
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 114
    iget-object v6, v3, Lcom/shabakaty/downloader/ec0;->I:Lcom/shabakaty/downloader/wb0;

    iget-object v9, v2, Lcom/shabakaty/downloader/ec0;->I:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {v6, v9, v11}, Lcom/shabakaty/downloader/wb0;->a(Lcom/shabakaty/downloader/wb0;I)Z

    goto :goto_18

    :cond_39
    :goto_16
    const/4 v10, 0x1

    :goto_17
    const/4 v11, 0x0

    :goto_18
    move-object v9, v3

    :goto_19
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_13

    :cond_3a
    :goto_1a
    return-void
.end method

.method public c()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/se1$a;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/se1$a;->m:I

    iget-object v1, p0, Lcom/shabakaty/downloader/se1$a;->r:Lcom/shabakaty/downloader/se1;

    .line 3
    iget v1, v1, Lcom/shabakaty/downloader/se1;->Q0:I

    sub-int/2addr v0, v1

    return v0

    .line 4
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/se1$a;->m:I

    return v0
.end method

.method public d()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/se1$a;->a:I

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/se1$a;->l:I

    iget-object v1, p0, Lcom/shabakaty/downloader/se1$a;->r:Lcom/shabakaty/downloader/se1;

    .line 3
    iget v1, v1, Lcom/shabakaty/downloader/se1;->P0:I

    sub-int/2addr v0, v1

    return v0

    .line 4
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/se1$a;->l:I

    return v0
.end method

.method public e(I)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/se1$a;->p:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lcom/shabakaty/downloader/se1$a;->o:I

    .line 3
    div-int/2addr p1, v0

    const/4 v0, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v1, :cond_4

    .line 4
    iget v2, p0, Lcom/shabakaty/downloader/se1$a;->n:I

    add-int/2addr v2, v8

    iget-object v3, p0, Lcom/shabakaty/downloader/se1$a;->r:Lcom/shabakaty/downloader/se1;

    .line 5
    iget v4, v3, Lcom/shabakaty/downloader/se1;->b1:I

    if-lt v2, v4, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    iget-object v3, v3, Lcom/shabakaty/downloader/se1;->a1:[Lcom/shabakaty/downloader/ec0;

    .line 7
    aget-object v3, v3, v2

    .line 8
    iget v2, p0, Lcom/shabakaty/downloader/se1$a;->a:I

    const/4 v4, 0x3

    if-nez v2, :cond_2

    if-eqz v3, :cond_3

    .line 9
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ec0;->o()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 10
    iget v2, v3, Lcom/shabakaty/downloader/ec0;->q:I

    if-nez v2, :cond_3

    .line 11
    iget-object v2, p0, Lcom/shabakaty/downloader/se1$a;->r:Lcom/shabakaty/downloader/se1;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/ec0;->s()I

    move-result v6

    invoke-virtual {v3}, Lcom/shabakaty/downloader/ec0;->n()I

    move-result v7

    const/4 v4, 0x1

    move v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/shabakaty/downloader/u45;->V(Lcom/shabakaty/downloader/ec0;IIII)V

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    .line 12
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ec0;->s()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 13
    iget v2, v3, Lcom/shabakaty/downloader/ec0;->r:I

    if-nez v2, :cond_3

    .line 14
    iget-object v2, p0, Lcom/shabakaty/downloader/se1$a;->r:Lcom/shabakaty/downloader/se1;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/ec0;->o()I

    move-result v4

    invoke-virtual {v3}, Lcom/shabakaty/downloader/ec0;->t()I

    move-result v5

    const/4 v6, 0x1

    move v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/shabakaty/downloader/u45;->V(Lcom/shabakaty/downloader/ec0;IIII)V

    :cond_3
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 15
    :cond_4
    :goto_2
    iput v0, p0, Lcom/shabakaty/downloader/se1$a;->l:I

    .line 16
    iput v0, p0, Lcom/shabakaty/downloader/se1$a;->m:I

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/shabakaty/downloader/se1$a;->b:Lcom/shabakaty/downloader/ec0;

    .line 18
    iput v0, p0, Lcom/shabakaty/downloader/se1$a;->c:I

    .line 19
    iget p1, p0, Lcom/shabakaty/downloader/se1$a;->o:I

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p1, :cond_c

    .line 20
    iget v2, p0, Lcom/shabakaty/downloader/se1$a;->n:I

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/shabakaty/downloader/se1$a;->r:Lcom/shabakaty/downloader/se1;

    .line 21
    iget v4, v3, Lcom/shabakaty/downloader/se1;->b1:I

    if-lt v2, v4, :cond_5

    goto :goto_5

    .line 22
    :cond_5
    iget-object v4, v3, Lcom/shabakaty/downloader/se1;->a1:[Lcom/shabakaty/downloader/ec0;

    .line 23
    aget-object v2, v4, v2

    .line 24
    iget v4, p0, Lcom/shabakaty/downloader/se1$a;->a:I

    const/16 v5, 0x8

    if-nez v4, :cond_8

    .line 25
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ec0;->t()I

    move-result v3

    .line 26
    iget-object v4, p0, Lcom/shabakaty/downloader/se1$a;->r:Lcom/shabakaty/downloader/se1;

    .line 27
    iget v6, v4, Lcom/shabakaty/downloader/se1;->P0:I

    .line 28
    iget v7, v2, Lcom/shabakaty/downloader/ec0;->h0:I

    if-ne v7, v5, :cond_6

    const/4 v6, 0x0

    .line 29
    :cond_6
    iget v5, p0, Lcom/shabakaty/downloader/se1$a;->l:I

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    iput v3, p0, Lcom/shabakaty/downloader/se1$a;->l:I

    .line 30
    iget v3, p0, Lcom/shabakaty/downloader/se1$a;->q:I

    .line 31
    invoke-virtual {v4, v2, v3}, Lcom/shabakaty/downloader/se1;->W(Lcom/shabakaty/downloader/ec0;I)I

    move-result v3

    .line 32
    iget-object v4, p0, Lcom/shabakaty/downloader/se1$a;->b:Lcom/shabakaty/downloader/ec0;

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/shabakaty/downloader/se1$a;->c:I

    if-ge v4, v3, :cond_b

    .line 33
    :cond_7
    iput-object v2, p0, Lcom/shabakaty/downloader/se1$a;->b:Lcom/shabakaty/downloader/ec0;

    .line 34
    iput v3, p0, Lcom/shabakaty/downloader/se1$a;->c:I

    .line 35
    iput v3, p0, Lcom/shabakaty/downloader/se1$a;->m:I

    goto :goto_4

    .line 36
    :cond_8
    iget v4, p0, Lcom/shabakaty/downloader/se1$a;->q:I

    .line 37
    invoke-virtual {v3, v2, v4}, Lcom/shabakaty/downloader/se1;->X(Lcom/shabakaty/downloader/ec0;I)I

    move-result v3

    .line 38
    iget-object v4, p0, Lcom/shabakaty/downloader/se1$a;->r:Lcom/shabakaty/downloader/se1;

    iget v6, p0, Lcom/shabakaty/downloader/se1$a;->q:I

    .line 39
    invoke-virtual {v4, v2, v6}, Lcom/shabakaty/downloader/se1;->W(Lcom/shabakaty/downloader/ec0;I)I

    move-result v4

    .line 40
    iget-object v6, p0, Lcom/shabakaty/downloader/se1$a;->r:Lcom/shabakaty/downloader/se1;

    .line 41
    iget v6, v6, Lcom/shabakaty/downloader/se1;->Q0:I

    .line 42
    iget v7, v2, Lcom/shabakaty/downloader/ec0;->h0:I

    if-ne v7, v5, :cond_9

    const/4 v6, 0x0

    .line 43
    :cond_9
    iget v5, p0, Lcom/shabakaty/downloader/se1$a;->m:I

    add-int/2addr v4, v6

    add-int/2addr v4, v5

    iput v4, p0, Lcom/shabakaty/downloader/se1$a;->m:I

    .line 44
    iget-object v4, p0, Lcom/shabakaty/downloader/se1$a;->b:Lcom/shabakaty/downloader/ec0;

    if-eqz v4, :cond_a

    iget v4, p0, Lcom/shabakaty/downloader/se1$a;->c:I

    if-ge v4, v3, :cond_b

    .line 45
    :cond_a
    iput-object v2, p0, Lcom/shabakaty/downloader/se1$a;->b:Lcom/shabakaty/downloader/ec0;

    .line 46
    iput v3, p0, Lcom/shabakaty/downloader/se1$a;->c:I

    .line 47
    iput v3, p0, Lcom/shabakaty/downloader/se1$a;->l:I

    :cond_b
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    :goto_5
    return-void
.end method

.method public f(ILcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;Lcom/shabakaty/downloader/wb0;IIIII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shabakaty/downloader/se1$a;->a:I

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/se1$a;->d:Lcom/shabakaty/downloader/wb0;

    .line 3
    iput-object p3, p0, Lcom/shabakaty/downloader/se1$a;->e:Lcom/shabakaty/downloader/wb0;

    .line 4
    iput-object p4, p0, Lcom/shabakaty/downloader/se1$a;->f:Lcom/shabakaty/downloader/wb0;

    .line 5
    iput-object p5, p0, Lcom/shabakaty/downloader/se1$a;->g:Lcom/shabakaty/downloader/wb0;

    .line 6
    iput p6, p0, Lcom/shabakaty/downloader/se1$a;->h:I

    .line 7
    iput p7, p0, Lcom/shabakaty/downloader/se1$a;->i:I

    .line 8
    iput p8, p0, Lcom/shabakaty/downloader/se1$a;->j:I

    .line 9
    iput p9, p0, Lcom/shabakaty/downloader/se1$a;->k:I

    .line 10
    iput p10, p0, Lcom/shabakaty/downloader/se1$a;->q:I

    return-void
.end method
