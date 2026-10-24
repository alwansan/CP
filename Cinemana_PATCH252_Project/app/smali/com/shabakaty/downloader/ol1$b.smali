.class public final Lcom/shabakaty/downloader/ol1$b;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ol1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/fp4;

.field public final b:Lcom/shabakaty/downloader/zo4;

.field public final c:Lcom/shabakaty/downloader/ka3;

.field public d:Lcom/shabakaty/downloader/gp4;

.field public e:Lcom/shabakaty/downloader/uo0;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public final j:Lcom/shabakaty/downloader/ka3;

.field public final k:Lcom/shabakaty/downloader/ka3;

.field public l:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fp4;Lcom/shabakaty/downloader/gp4;Lcom/shabakaty/downloader/uo0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ol1$b;->a:Lcom/shabakaty/downloader/fp4;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/ol1$b;->d:Lcom/shabakaty/downloader/gp4;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/ol1$b;->e:Lcom/shabakaty/downloader/uo0;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/zo4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/zo4;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/ol1$b;->b:Lcom/shabakaty/downloader/zo4;

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/ka3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ka3;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/ol1$b;->c:Lcom/shabakaty/downloader/ka3;

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/ka3;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ka3;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/ol1$b;->j:Lcom/shabakaty/downloader/ka3;

    .line 8
    new-instance v0, Lcom/shabakaty/downloader/ka3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ka3;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/ol1$b;->k:Lcom/shabakaty/downloader/ka3;

    .line 9
    iput-object p2, p0, Lcom/shabakaty/downloader/ol1$b;->d:Lcom/shabakaty/downloader/gp4;

    .line 10
    iput-object p3, p0, Lcom/shabakaty/downloader/ol1$b;->e:Lcom/shabakaty/downloader/uo0;

    .line 11
    iget-object p2, p2, Lcom/shabakaty/downloader/gp4;->a:Lcom/shabakaty/downloader/wo4;

    iget-object p2, p2, Lcom/shabakaty/downloader/wo4;->f:Lcom/shabakaty/downloader/wh1;

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/fp4;->f(Lcom/shabakaty/downloader/wh1;)V

    .line 12
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ol1$b;->e()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ol1$b;->l:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ol1$b;->d:Lcom/shabakaty/downloader/gp4;

    iget-object v0, v0, Lcom/shabakaty/downloader/gp4;->c:[J

    iget v1, p0, Lcom/shabakaty/downloader/ol1$b;->f:I

    aget-wide v1, v0, v1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ol1$b;->b:Lcom/shabakaty/downloader/zo4;

    iget-object v0, v0, Lcom/shabakaty/downloader/zo4;->f:[J

    iget v1, p0, Lcom/shabakaty/downloader/ol1$b;->h:I

    aget-wide v1, v0, v1

    :goto_0
    return-wide v1
.end method

.method public b()Lcom/shabakaty/downloader/xo4;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ol1$b;->l:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ol1$b;->b:Lcom/shabakaty/downloader/zo4;

    iget-object v2, v0, Lcom/shabakaty/downloader/zo4;->a:Lcom/shabakaty/downloader/uo0;

    sget v3, Lcom/shabakaty/downloader/sy4;->a:I

    iget v2, v2, Lcom/shabakaty/downloader/uo0;->a:I

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/zo4;->n:Lcom/shabakaty/downloader/xo4;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/ol1$b;->d:Lcom/shabakaty/downloader/gp4;

    iget-object v0, v0, Lcom/shabakaty/downloader/gp4;->a:Lcom/shabakaty/downloader/wo4;

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/wo4;->a(I)Lcom/shabakaty/downloader/xo4;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 5
    iget-boolean v2, v0, Lcom/shabakaty/downloader/xo4;->a:Z

    if-eqz v2, :cond_2

    move-object v1, v0

    :cond_2
    return-object v1
.end method

.method public c()Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ol1$b;->f:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/shabakaty/downloader/ol1$b;->f:I

    .line 2
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ol1$b;->l:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 3
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/ol1$b;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/shabakaty/downloader/ol1$b;->g:I

    .line 4
    iget-object v3, p0, Lcom/shabakaty/downloader/ol1$b;->b:Lcom/shabakaty/downloader/zo4;

    iget-object v3, v3, Lcom/shabakaty/downloader/zo4;->g:[I

    iget v4, p0, Lcom/shabakaty/downloader/ol1$b;->h:I

    aget v3, v3, v4

    if-ne v0, v3, :cond_1

    add-int/2addr v4, v1

    .line 5
    iput v4, p0, Lcom/shabakaty/downloader/ol1$b;->h:I

    .line 6
    iput v2, p0, Lcom/shabakaty/downloader/ol1$b;->g:I

    return v2

    :cond_1
    return v1
.end method

.method public d(II)I
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ol1$b;->b()Lcom/shabakaty/downloader/xo4;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v2, v0, Lcom/shabakaty/downloader/xo4;->d:I

    if-eqz v2, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ol1$b;->b:Lcom/shabakaty/downloader/zo4;

    iget-object v0, v0, Lcom/shabakaty/downloader/zo4;->o:Lcom/shabakaty/downloader/ka3;

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, v0, Lcom/shabakaty/downloader/xo4;->e:[B

    sget v2, Lcom/shabakaty/downloader/sy4;->a:I

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/ol1$b;->k:Lcom/shabakaty/downloader/ka3;

    array-length v3, v0

    .line 6
    iput-object v0, v2, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 7
    iput v3, v2, Lcom/shabakaty/downloader/ka3;->c:I

    .line 8
    iput v1, v2, Lcom/shabakaty/downloader/ka3;->b:I

    .line 9
    array-length v0, v0

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    .line 10
    :goto_0
    iget-object v3, p0, Lcom/shabakaty/downloader/ol1$b;->b:Lcom/shabakaty/downloader/zo4;

    iget v4, p0, Lcom/shabakaty/downloader/ol1$b;->f:I

    .line 11
    iget-boolean v5, v3, Lcom/shabakaty/downloader/zo4;->l:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    iget-object v3, v3, Lcom/shabakaty/downloader/zo4;->m:[Z

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_4

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x1

    .line 12
    :goto_3
    iget-object v5, p0, Lcom/shabakaty/downloader/ol1$b;->j:Lcom/shabakaty/downloader/ka3;

    .line 13
    iget-object v7, v5, Lcom/shabakaty/downloader/ka3;->a:[B

    if-eqz v4, :cond_5

    const/16 v8, 0x80

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    :goto_4
    or-int/2addr v8, v2

    int-to-byte v8, v8

    .line 14
    aput-byte v8, v7, v1

    .line 15
    invoke-virtual {v5, v1}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 16
    iget-object v5, p0, Lcom/shabakaty/downloader/ol1$b;->a:Lcom/shabakaty/downloader/fp4;

    iget-object v7, p0, Lcom/shabakaty/downloader/ol1$b;->j:Lcom/shabakaty/downloader/ka3;

    invoke-interface {v5, v7, v6, v6}, Lcom/shabakaty/downloader/fp4;->c(Lcom/shabakaty/downloader/ka3;II)V

    .line 17
    iget-object v5, p0, Lcom/shabakaty/downloader/ol1$b;->a:Lcom/shabakaty/downloader/fp4;

    invoke-interface {v5, v0, v2, v6}, Lcom/shabakaty/downloader/fp4;->c(Lcom/shabakaty/downloader/ka3;II)V

    if-nez v4, :cond_6

    add-int/2addr v2, v6

    return v2

    :cond_6
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x6

    const/16 v7, 0x8

    if-nez v3, :cond_7

    .line 18
    iget-object v3, p0, Lcom/shabakaty/downloader/ol1$b;->c:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v3, v7}, Lcom/shabakaty/downloader/ka3;->A(I)V

    .line 19
    iget-object v3, p0, Lcom/shabakaty/downloader/ol1$b;->c:Lcom/shabakaty/downloader/ka3;

    .line 20
    iget-object v8, v3, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 21
    aput-byte v1, v8, v1

    .line 22
    aput-byte v6, v8, v6

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 23
    aput-byte v1, v8, v4

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 24
    aput-byte p2, v8, v0

    const/4 p2, 0x4

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 25
    aput-byte v0, v8, p2

    const/4 p2, 0x5

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 26
    aput-byte v0, v8, p2

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 27
    aput-byte p2, v8, v5

    const/4 p2, 0x7

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 28
    aput-byte p1, v8, p2

    .line 29
    iget-object p1, p0, Lcom/shabakaty/downloader/ol1$b;->a:Lcom/shabakaty/downloader/fp4;

    invoke-interface {p1, v3, v7, v6}, Lcom/shabakaty/downloader/fp4;->c(Lcom/shabakaty/downloader/ka3;II)V

    add-int/2addr v2, v6

    add-int/2addr v2, v7

    return v2

    .line 30
    :cond_7
    iget-object p1, p0, Lcom/shabakaty/downloader/ol1$b;->b:Lcom/shabakaty/downloader/zo4;

    iget-object p1, p1, Lcom/shabakaty/downloader/zo4;->o:Lcom/shabakaty/downloader/ka3;

    .line 31
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->y()I

    move-result v3

    const/4 v8, -0x2

    .line 32
    invoke-virtual {p1, v8}, Lcom/shabakaty/downloader/ka3;->F(I)V

    mul-int/lit8 v3, v3, 0x6

    add-int/2addr v3, v4

    if-eqz p2, :cond_8

    .line 33
    iget-object v5, p0, Lcom/shabakaty/downloader/ol1$b;->c:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v5, v3}, Lcom/shabakaty/downloader/ka3;->A(I)V

    .line 34
    iget-object v5, p0, Lcom/shabakaty/downloader/ol1$b;->c:Lcom/shabakaty/downloader/ka3;

    .line 35
    iget-object v5, v5, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 36
    invoke-virtual {p1, v5, v1, v3}, Lcom/shabakaty/downloader/ka3;->e([BII)V

    .line 37
    aget-byte p1, v5, v4

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v7

    aget-byte v1, v5, v0

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p1, v1

    add-int/2addr p1, p2

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 38
    aput-byte p2, v5, v4

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 39
    aput-byte p1, v5, v0

    .line 40
    iget-object p1, p0, Lcom/shabakaty/downloader/ol1$b;->c:Lcom/shabakaty/downloader/ka3;

    .line 41
    :cond_8
    iget-object p2, p0, Lcom/shabakaty/downloader/ol1$b;->a:Lcom/shabakaty/downloader/fp4;

    invoke-interface {p2, p1, v3, v6}, Lcom/shabakaty/downloader/fp4;->c(Lcom/shabakaty/downloader/ka3;II)V

    add-int/2addr v2, v6

    add-int/2addr v2, v3

    return v2
.end method

.method public e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ol1$b;->b:Lcom/shabakaty/downloader/zo4;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lcom/shabakaty/downloader/zo4;->d:I

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, v0, Lcom/shabakaty/downloader/zo4;->q:J

    .line 4
    iput-boolean v1, v0, Lcom/shabakaty/downloader/zo4;->r:Z

    .line 5
    iput-boolean v1, v0, Lcom/shabakaty/downloader/zo4;->l:Z

    .line 6
    iput-boolean v1, v0, Lcom/shabakaty/downloader/zo4;->p:Z

    const/4 v2, 0x0

    .line 7
    iput-object v2, v0, Lcom/shabakaty/downloader/zo4;->n:Lcom/shabakaty/downloader/xo4;

    .line 8
    iput v1, p0, Lcom/shabakaty/downloader/ol1$b;->f:I

    .line 9
    iput v1, p0, Lcom/shabakaty/downloader/ol1$b;->h:I

    .line 10
    iput v1, p0, Lcom/shabakaty/downloader/ol1$b;->g:I

    .line 11
    iput v1, p0, Lcom/shabakaty/downloader/ol1$b;->i:I

    .line 12
    iput-boolean v1, p0, Lcom/shabakaty/downloader/ol1$b;->l:Z

    return-void
.end method
