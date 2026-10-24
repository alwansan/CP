.class public final Lcom/shabakaty/downloader/v53;
.super Ljava/lang/Object;
.source "OggPageHeader.java"


# instance fields
.field public a:I

.field public b:J

.field public c:I

.field public d:I

.field public e:I

.field public final f:[I

.field public final g:Lcom/shabakaty/downloader/ka3;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    new-array v1, v0, [I

    .line 2
    iput-object v1, p0, Lcom/shabakaty/downloader/v53;->f:[I

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/ka3;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/ka3;-><init>(I)V

    iput-object v1, p0, Lcom/shabakaty/downloader/v53;->g:Lcom/shabakaty/downloader/ka3;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/o91;Z)Z
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/v53;->b()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/v53;->g:Lcom/shabakaty/downloader/ka3;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ka3;->A(I)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/v53;->g:Lcom/shabakaty/downloader/ka3;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/ka3;->a:[B

    const/4 v2, 0x0

    .line 5
    invoke-static {p1, v0, v2, v1, p2}, Lcom/shabakaty/downloader/q91;->b(Lcom/shabakaty/downloader/o91;[BIIZ)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/shabakaty/downloader/v53;->g:Lcom/shabakaty/downloader/ka3;

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->u()J

    move-result-wide v0

    const-wide/32 v3, 0x4f676753

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    goto/16 :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/v53;->g:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    return v2

    :cond_1
    const-string p1, "unsupported bit stream revision"

    .line 8
    invoke-static {p1}, Lcom/shabakaty/downloader/pa3;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/pa3;

    move-result-object p1

    throw p1

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/v53;->g:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/v53;->a:I

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/v53;->g:Lcom/shabakaty/downloader/ka3;

    .line 11
    iget-object v1, v0, Lcom/shabakaty/downloader/ka3;->a:[B

    iget v3, v0, Lcom/shabakaty/downloader/ka3;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/shabakaty/downloader/ka3;->b:I

    aget-byte v3, v1, v3

    int-to-long v5, v3

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, v0, Lcom/shabakaty/downloader/ka3;->b:I

    aget-byte v4, v1, v4

    int-to-long v9, v4

    and-long/2addr v9, v7

    const/16 v4, 0x8

    shl-long/2addr v9, v4

    or-long v4, v5, v9

    add-int/lit8 v6, v3, 0x1

    iput v6, v0, Lcom/shabakaty/downloader/ka3;->b:I

    aget-byte v3, v1, v3

    int-to-long v9, v3

    and-long/2addr v9, v7

    const/16 v3, 0x10

    shl-long/2addr v9, v3

    or-long v3, v4, v9

    add-int/lit8 v5, v6, 0x1

    iput v5, v0, Lcom/shabakaty/downloader/ka3;->b:I

    aget-byte v6, v1, v6

    int-to-long v9, v6

    and-long/2addr v9, v7

    const/16 v6, 0x18

    shl-long/2addr v9, v6

    or-long/2addr v3, v9

    add-int/lit8 v6, v5, 0x1

    iput v6, v0, Lcom/shabakaty/downloader/ka3;->b:I

    aget-byte v5, v1, v5

    int-to-long v9, v5

    and-long/2addr v9, v7

    const/16 v5, 0x20

    shl-long/2addr v9, v5

    or-long/2addr v3, v9

    add-int/lit8 v5, v6, 0x1

    iput v5, v0, Lcom/shabakaty/downloader/ka3;->b:I

    aget-byte v6, v1, v6

    int-to-long v9, v6

    and-long/2addr v9, v7

    const/16 v6, 0x28

    shl-long/2addr v9, v6

    or-long/2addr v3, v9

    add-int/lit8 v6, v5, 0x1

    iput v6, v0, Lcom/shabakaty/downloader/ka3;->b:I

    aget-byte v5, v1, v5

    int-to-long v9, v5

    and-long/2addr v9, v7

    const/16 v5, 0x30

    shl-long/2addr v9, v5

    or-long/2addr v3, v9

    add-int/lit8 v5, v6, 0x1

    iput v5, v0, Lcom/shabakaty/downloader/ka3;->b:I

    aget-byte v1, v1, v6

    int-to-long v5, v1

    and-long/2addr v5, v7

    const/16 v1, 0x38

    shl-long/2addr v5, v1

    or-long/2addr v3, v5

    .line 12
    iput-wide v3, p0, Lcom/shabakaty/downloader/v53;->b:J

    .line 13
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->j()J

    .line 14
    iget-object v0, p0, Lcom/shabakaty/downloader/v53;->g:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->j()J

    .line 15
    iget-object v0, p0, Lcom/shabakaty/downloader/v53;->g:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->j()J

    .line 16
    iget-object v0, p0, Lcom/shabakaty/downloader/v53;->g:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/v53;->c:I

    add-int/lit8 v1, v0, 0x1b

    .line 17
    iput v1, p0, Lcom/shabakaty/downloader/v53;->d:I

    .line 18
    iget-object v1, p0, Lcom/shabakaty/downloader/v53;->g:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/ka3;->A(I)V

    .line 19
    iget-object v0, p0, Lcom/shabakaty/downloader/v53;->g:Lcom/shabakaty/downloader/ka3;

    .line 20
    iget-object v0, v0, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 21
    iget v1, p0, Lcom/shabakaty/downloader/v53;->c:I

    invoke-static {p1, v0, v2, v1, p2}, Lcom/shabakaty/downloader/q91;->b(Lcom/shabakaty/downloader/o91;[BIIZ)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    .line 22
    :cond_3
    :goto_0
    iget p1, p0, Lcom/shabakaty/downloader/v53;->c:I

    if-ge v2, p1, :cond_4

    .line 23
    iget-object p1, p0, Lcom/shabakaty/downloader/v53;->f:[I

    iget-object p2, p0, Lcom/shabakaty/downloader/v53;->g:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result p2

    aput p2, p1, v2

    .line 24
    iget p1, p0, Lcom/shabakaty/downloader/v53;->e:I

    iget-object p2, p0, Lcom/shabakaty/downloader/v53;->f:[I

    aget p2, p2, v2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/shabakaty/downloader/v53;->e:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_1
    return v2
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/shabakaty/downloader/v53;->a:I

    const-wide/16 v1, 0x0

    .line 2
    iput-wide v1, p0, Lcom/shabakaty/downloader/v53;->b:J

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/v53;->c:I

    .line 4
    iput v0, p0, Lcom/shabakaty/downloader/v53;->d:I

    .line 5
    iput v0, p0, Lcom/shabakaty/downloader/v53;->e:I

    return-void
.end method

.method public c(Lcom/shabakaty/downloader/o91;J)Z
    .locals 8

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->j()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmp-long v6, v0, v2

    if-nez v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/v53;->g:Lcom/shabakaty/downloader/ka3;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ka3;->A(I)V

    :goto_1
    const-wide/16 v2, -0x1

    cmp-long v0, p2, v2

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v2

    const-wide/16 v6, 0x4

    add-long/2addr v2, v6

    cmp-long v6, v2, p2

    if-gez v6, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/shabakaty/downloader/v53;->g:Lcom/shabakaty/downloader/ka3;

    .line 4
    iget-object v2, v2, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 5
    invoke-static {p1, v2, v4, v1, v5}, Lcom/shabakaty/downloader/q91;->b(Lcom/shabakaty/downloader/o91;[BIIZ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/v53;->g:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/v53;->g:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->u()J

    move-result-wide v2

    const-wide/32 v6, 0x4f676753

    cmp-long v0, v2, v6

    if-nez v0, :cond_2

    .line 8
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->p()V

    return v5

    .line 9
    :cond_2
    invoke-interface {p1, v5}, Lcom/shabakaty/downloader/o91;->q(I)V

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 10
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v1

    cmp-long v3, v1, p2

    if-gez v3, :cond_5

    .line 11
    :cond_4
    invoke-interface {p1, v5}, Lcom/shabakaty/downloader/o91;->m(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    goto :goto_2

    :cond_5
    return v4
.end method
