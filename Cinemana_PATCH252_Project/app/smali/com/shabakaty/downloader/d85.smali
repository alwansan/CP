.class public final Lcom/shabakaty/downloader/d85;
.super Ljava/lang/Object;
.source "WorkSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/d85$a;
    }
.end annotation


# static fields
.field public static final r:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroidx/work/d;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Landroidx/work/b;

.field public f:Landroidx/work/b;

.field public g:J

.field public h:J

.field public i:J

.field public j:Lcom/shabakaty/downloader/gc0;

.field public k:I

.field public l:Landroidx/work/a;

.field public m:J

.field public n:J

.field public o:J

.field public p:J

.field public q:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkSpec"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/ok2;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/d85;->r:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/d85;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Landroidx/work/d;->r:Landroidx/work/d;

    iput-object v0, p0, Lcom/shabakaty/downloader/d85;->b:Landroidx/work/d;

    .line 13
    sget-object v0, Landroidx/work/b;->c:Landroidx/work/b;

    iput-object v0, p0, Lcom/shabakaty/downloader/d85;->e:Landroidx/work/b;

    .line 14
    iput-object v0, p0, Lcom/shabakaty/downloader/d85;->f:Landroidx/work/b;

    .line 15
    sget-object v0, Lcom/shabakaty/downloader/gc0;->i:Lcom/shabakaty/downloader/gc0;

    iput-object v0, p0, Lcom/shabakaty/downloader/d85;->j:Lcom/shabakaty/downloader/gc0;

    .line 16
    sget-object v0, Landroidx/work/a;->r:Landroidx/work/a;

    iput-object v0, p0, Lcom/shabakaty/downloader/d85;->l:Landroidx/work/a;

    const-wide/16 v0, 0x7530

    .line 17
    iput-wide v0, p0, Lcom/shabakaty/downloader/d85;->m:J

    const-wide/16 v0, -0x1

    .line 18
    iput-wide v0, p0, Lcom/shabakaty/downloader/d85;->p:J

    .line 19
    iget-object v0, p1, Lcom/shabakaty/downloader/d85;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/shabakaty/downloader/d85;->a:Ljava/lang/String;

    .line 20
    iget-object v0, p1, Lcom/shabakaty/downloader/d85;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/shabakaty/downloader/d85;->c:Ljava/lang/String;

    .line 21
    iget-object v0, p1, Lcom/shabakaty/downloader/d85;->b:Landroidx/work/d;

    iput-object v0, p0, Lcom/shabakaty/downloader/d85;->b:Landroidx/work/d;

    .line 22
    iget-object v0, p1, Lcom/shabakaty/downloader/d85;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/shabakaty/downloader/d85;->d:Ljava/lang/String;

    .line 23
    new-instance v0, Landroidx/work/b;

    iget-object v1, p1, Lcom/shabakaty/downloader/d85;->e:Landroidx/work/b;

    invoke-direct {v0, v1}, Landroidx/work/b;-><init>(Landroidx/work/b;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/d85;->e:Landroidx/work/b;

    .line 24
    new-instance v0, Landroidx/work/b;

    iget-object v1, p1, Lcom/shabakaty/downloader/d85;->f:Landroidx/work/b;

    invoke-direct {v0, v1}, Landroidx/work/b;-><init>(Landroidx/work/b;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/d85;->f:Landroidx/work/b;

    .line 25
    iget-wide v0, p1, Lcom/shabakaty/downloader/d85;->g:J

    iput-wide v0, p0, Lcom/shabakaty/downloader/d85;->g:J

    .line 26
    iget-wide v0, p1, Lcom/shabakaty/downloader/d85;->h:J

    iput-wide v0, p0, Lcom/shabakaty/downloader/d85;->h:J

    .line 27
    iget-wide v0, p1, Lcom/shabakaty/downloader/d85;->i:J

    iput-wide v0, p0, Lcom/shabakaty/downloader/d85;->i:J

    .line 28
    new-instance v0, Lcom/shabakaty/downloader/gc0;

    iget-object v1, p1, Lcom/shabakaty/downloader/d85;->j:Lcom/shabakaty/downloader/gc0;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/gc0;-><init>(Lcom/shabakaty/downloader/gc0;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/d85;->j:Lcom/shabakaty/downloader/gc0;

    .line 29
    iget v0, p1, Lcom/shabakaty/downloader/d85;->k:I

    iput v0, p0, Lcom/shabakaty/downloader/d85;->k:I

    .line 30
    iget-object v0, p1, Lcom/shabakaty/downloader/d85;->l:Landroidx/work/a;

    iput-object v0, p0, Lcom/shabakaty/downloader/d85;->l:Landroidx/work/a;

    .line 31
    iget-wide v0, p1, Lcom/shabakaty/downloader/d85;->m:J

    iput-wide v0, p0, Lcom/shabakaty/downloader/d85;->m:J

    .line 32
    iget-wide v0, p1, Lcom/shabakaty/downloader/d85;->n:J

    iput-wide v0, p0, Lcom/shabakaty/downloader/d85;->n:J

    .line 33
    iget-wide v0, p1, Lcom/shabakaty/downloader/d85;->o:J

    iput-wide v0, p0, Lcom/shabakaty/downloader/d85;->o:J

    .line 34
    iget-wide v0, p1, Lcom/shabakaty/downloader/d85;->p:J

    iput-wide v0, p0, Lcom/shabakaty/downloader/d85;->p:J

    .line 35
    iget-boolean p1, p1, Lcom/shabakaty/downloader/d85;->q:Z

    iput-boolean p1, p0, Lcom/shabakaty/downloader/d85;->q:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroidx/work/d;->r:Landroidx/work/d;

    iput-object v0, p0, Lcom/shabakaty/downloader/d85;->b:Landroidx/work/d;

    .line 3
    sget-object v0, Landroidx/work/b;->c:Landroidx/work/b;

    iput-object v0, p0, Lcom/shabakaty/downloader/d85;->e:Landroidx/work/b;

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/d85;->f:Landroidx/work/b;

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/gc0;->i:Lcom/shabakaty/downloader/gc0;

    iput-object v0, p0, Lcom/shabakaty/downloader/d85;->j:Lcom/shabakaty/downloader/gc0;

    .line 6
    sget-object v0, Landroidx/work/a;->r:Landroidx/work/a;

    iput-object v0, p0, Lcom/shabakaty/downloader/d85;->l:Landroidx/work/a;

    const-wide/16 v0, 0x7530

    .line 7
    iput-wide v0, p0, Lcom/shabakaty/downloader/d85;->m:J

    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Lcom/shabakaty/downloader/d85;->p:J

    .line 9
    iput-object p1, p0, Lcom/shabakaty/downloader/d85;->a:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/shabakaty/downloader/d85;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d85;->b:Landroidx/work/d;

    sget-object v1, Landroidx/work/d;->r:Landroidx/work/d;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/shabakaty/downloader/d85;->k:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/d85;->l:Landroidx/work/a;

    sget-object v1, Landroidx/work/a;->s:Landroidx/work/a;

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_2

    .line 3
    iget-wide v0, p0, Lcom/shabakaty/downloader/d85;->m:J

    iget v2, p0, Lcom/shabakaty/downloader/d85;->k:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    goto :goto_1

    .line 4
    :cond_2
    iget-wide v0, p0, Lcom/shabakaty/downloader/d85;->m:J

    long-to-float v0, v0

    iget v1, p0, Lcom/shabakaty/downloader/d85;->k:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    float-to-long v0, v0

    .line 5
    :goto_1
    iget-wide v2, p0, Lcom/shabakaty/downloader/d85;->n:J

    const-wide/32 v4, 0x112a880

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_2
    add-long/2addr v0, v2

    return-wide v0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d85;->c()Z

    move-result v0

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_9

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 8
    iget-wide v6, p0, Lcom/shabakaty/downloader/d85;->n:J

    cmp-long v8, v6, v4

    if-nez v8, :cond_4

    iget-wide v6, p0, Lcom/shabakaty/downloader/d85;->g:J

    add-long/2addr v6, v0

    .line 9
    :cond_4
    iget-wide v0, p0, Lcom/shabakaty/downloader/d85;->i:J

    iget-wide v9, p0, Lcom/shabakaty/downloader/d85;->h:J

    cmp-long v11, v0, v9

    if-eqz v11, :cond_5

    const/4 v2, 0x1

    :cond_5
    if-eqz v2, :cond_7

    if-nez v8, :cond_6

    const-wide/16 v2, -0x1

    mul-long v4, v0, v2

    :cond_6
    add-long/2addr v6, v9

    add-long/2addr v6, v4

    return-wide v6

    :cond_7
    if-nez v8, :cond_8

    goto :goto_3

    :cond_8
    move-wide v4, v9

    :goto_3
    add-long/2addr v6, v4

    return-wide v6

    .line 10
    :cond_9
    iget-wide v0, p0, Lcom/shabakaty/downloader/d85;->n:J

    cmp-long v2, v0, v4

    if-nez v2, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 11
    :cond_a
    iget-wide v2, p0, Lcom/shabakaty/downloader/d85;->g:J

    goto :goto_2
.end method

.method public b()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/gc0;->i:Lcom/shabakaty/downloader/gc0;

    iget-object v1, p0, Lcom/shabakaty/downloader/d85;->j:Lcom/shabakaty/downloader/gc0;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/gc0;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/d85;->h:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/d85;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/d85;

    .line 3
    iget-wide v3, p0, Lcom/shabakaty/downloader/d85;->g:J

    iget-wide v5, p1, Lcom/shabakaty/downloader/d85;->g:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    .line 4
    :cond_2
    iget-wide v3, p0, Lcom/shabakaty/downloader/d85;->h:J

    iget-wide v5, p1, Lcom/shabakaty/downloader/d85;->h:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    .line 5
    :cond_3
    iget-wide v3, p0, Lcom/shabakaty/downloader/d85;->i:J

    iget-wide v5, p1, Lcom/shabakaty/downloader/d85;->i:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    .line 6
    :cond_4
    iget v1, p0, Lcom/shabakaty/downloader/d85;->k:I

    iget v3, p1, Lcom/shabakaty/downloader/d85;->k:I

    if-eq v1, v3, :cond_5

    return v2

    .line 7
    :cond_5
    iget-wide v3, p0, Lcom/shabakaty/downloader/d85;->m:J

    iget-wide v5, p1, Lcom/shabakaty/downloader/d85;->m:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    .line 8
    :cond_6
    iget-wide v3, p0, Lcom/shabakaty/downloader/d85;->n:J

    iget-wide v5, p1, Lcom/shabakaty/downloader/d85;->n:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    .line 9
    :cond_7
    iget-wide v3, p0, Lcom/shabakaty/downloader/d85;->o:J

    iget-wide v5, p1, Lcom/shabakaty/downloader/d85;->o:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    .line 10
    :cond_8
    iget-wide v3, p0, Lcom/shabakaty/downloader/d85;->p:J

    iget-wide v5, p1, Lcom/shabakaty/downloader/d85;->p:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    return v2

    .line 11
    :cond_9
    iget-boolean v1, p0, Lcom/shabakaty/downloader/d85;->q:Z

    iget-boolean v3, p1, Lcom/shabakaty/downloader/d85;->q:Z

    if-eq v1, v3, :cond_a

    return v2

    .line 12
    :cond_a
    iget-object v1, p0, Lcom/shabakaty/downloader/d85;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/d85;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 13
    :cond_b
    iget-object v1, p0, Lcom/shabakaty/downloader/d85;->b:Landroidx/work/d;

    iget-object v3, p1, Lcom/shabakaty/downloader/d85;->b:Landroidx/work/d;

    if-eq v1, v3, :cond_c

    return v2

    .line 14
    :cond_c
    iget-object v1, p0, Lcom/shabakaty/downloader/d85;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/d85;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 15
    :cond_d
    iget-object v1, p0, Lcom/shabakaty/downloader/d85;->d:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v3, p1, Lcom/shabakaty/downloader/d85;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_0

    :cond_e
    iget-object v1, p1, Lcom/shabakaty/downloader/d85;->d:Ljava/lang/String;

    if-eqz v1, :cond_f

    :goto_0
    return v2

    .line 16
    :cond_f
    iget-object v1, p0, Lcom/shabakaty/downloader/d85;->e:Landroidx/work/b;

    iget-object v3, p1, Lcom/shabakaty/downloader/d85;->e:Landroidx/work/b;

    invoke-virtual {v1, v3}, Landroidx/work/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    .line 17
    :cond_10
    iget-object v1, p0, Lcom/shabakaty/downloader/d85;->f:Landroidx/work/b;

    iget-object v3, p1, Lcom/shabakaty/downloader/d85;->f:Landroidx/work/b;

    invoke-virtual {v1, v3}, Landroidx/work/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 18
    :cond_11
    iget-object v1, p0, Lcom/shabakaty/downloader/d85;->j:Lcom/shabakaty/downloader/gc0;

    iget-object v3, p1, Lcom/shabakaty/downloader/d85;->j:Lcom/shabakaty/downloader/gc0;

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/gc0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    .line 19
    :cond_12
    iget-object v1, p0, Lcom/shabakaty/downloader/d85;->l:Landroidx/work/a;

    iget-object p1, p1, Lcom/shabakaty/downloader/d85;->l:Landroidx/work/a;

    if-ne v1, p1, :cond_13

    goto :goto_1

    :cond_13
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d85;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/d85;->b:Landroidx/work/d;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/d85;->c:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/d85;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/d85;->e:Landroidx/work/b;

    invoke-virtual {v1}, Landroidx/work/b;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/d85;->f:Landroidx/work/b;

    invoke-virtual {v0}, Landroidx/work/b;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-wide v1, p0, Lcom/shabakaty/downloader/d85;->g:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-wide v1, p0, Lcom/shabakaty/downloader/d85;->h:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-wide v1, p0, Lcom/shabakaty/downloader/d85;->i:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/d85;->j:Lcom/shabakaty/downloader/gc0;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/gc0;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 11
    iget v0, p0, Lcom/shabakaty/downloader/d85;->k:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 12
    iget-object v0, p0, Lcom/shabakaty/downloader/d85;->l:Landroidx/work/a;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget-wide v1, p0, Lcom/shabakaty/downloader/d85;->m:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 14
    iget-wide v1, p0, Lcom/shabakaty/downloader/d85;->n:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 15
    iget-wide v1, p0, Lcom/shabakaty/downloader/d85;->o:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 16
    iget-wide v1, p0, Lcom/shabakaty/downloader/d85;->p:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 17
    iget-boolean v1, p0, Lcom/shabakaty/downloader/d85;->q:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "{WorkSpec: "

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/d85;->a:Ljava/lang/String;

    const-string v2, "}"

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/ni4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
