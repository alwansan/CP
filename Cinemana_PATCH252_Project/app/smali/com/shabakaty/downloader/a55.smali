.class public final Lcom/shabakaty/downloader/a55;
.super Ljava/lang/Object;
.source "VorbisBitArray.java"


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/a55;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/sy4;->f:[B

    iput-object v0, p0, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 5

    const/4 v0, 0x3

    iput v0, p0, Lcom/shabakaty/downloader/a55;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-array v0, p1, [Lcom/shabakaty/downloader/u74;

    iput-object v0, p0, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    check-cast v1, [Lcom/shabakaty/downloader/u74;

    new-instance v2, Lcom/shabakaty/downloader/u74;

    add-int/lit8 v3, p2, 0x4

    mul-int/lit8 v3, v3, 0x11

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x8

    invoke-direct {v2, v3, v4}, Lcom/shabakaty/downloader/u74;-><init>(II)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 p2, p2, 0x11

    .line 6
    iput p2, p0, Lcom/shabakaty/downloader/a55;->e:I

    .line 7
    iput p1, p0, Lcom/shabakaty/downloader/a55;->d:I

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lcom/shabakaty/downloader/a55;->c:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/a55;->a:I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    .line 24
    iput p2, p0, Lcom/shabakaty/downloader/a55;->e:I

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/a55;->a:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    .line 11
    iput p2, p0, Lcom/shabakaty/downloader/a55;->d:I

    .line 12
    iput p3, p0, Lcom/shabakaty/downloader/a55;->c:I

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/shabakaty/downloader/a55;->e:I

    .line 14
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a55;->a()V

    return-void
.end method

.method public constructor <init>([BILcom/shabakaty/downloader/io2;)V
    .locals 0

    iput p2, p0, Lcom/shabakaty/downloader/a55;->a:I

    const/4 p3, 0x1

    if-eq p2, p3, :cond_0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    .line 17
    array-length p1, p1

    iput p1, p0, Lcom/shabakaty/downloader/a55;->c:I

    return-void

    .line 18
    :cond_0
    array-length p2, p1

    iput p3, p0, Lcom/shabakaty/downloader/a55;->a:I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    .line 21
    iput p2, p0, Lcom/shabakaty/downloader/a55;->e:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/a55;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget v0, p0, Lcom/shabakaty/downloader/a55;->c:I

    if-ltz v0, :cond_1

    iget v3, p0, Lcom/shabakaty/downloader/a55;->e:I

    if-lt v0, v3, :cond_0

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/shabakaty/downloader/a55;->d:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Lcom/shabakaty/downloader/md;->e(Z)V

    return-void

    .line 2
    :pswitch_1
    iget v0, p0, Lcom/shabakaty/downloader/a55;->d:I

    if-ltz v0, :cond_3

    iget v3, p0, Lcom/shabakaty/downloader/a55;->c:I

    if-lt v0, v3, :cond_2

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/shabakaty/downloader/a55;->e:I

    if-nez v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    invoke-static {v1}, Lcom/shabakaty/downloader/md;->e(Z)V

    return-void

    .line 3
    :goto_0
    iget v0, p0, Lcom/shabakaty/downloader/a55;->d:I

    if-ltz v0, :cond_5

    iget v3, p0, Lcom/shabakaty/downloader/a55;->c:I

    if-lt v0, v3, :cond_4

    if-ne v0, v3, :cond_5

    iget v0, p0, Lcom/shabakaty/downloader/a55;->e:I

    if-nez v0, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    invoke-static {v1}, Lcom/shabakaty/downloader/md;->e(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/a55;->e:I

    iget v1, p0, Lcom/shabakaty/downloader/a55;->c:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/shabakaty/downloader/a55;->d:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public c()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/a55;->d:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/a55;->d:I

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/a55;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/a55;->c:I

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a55;->a()V

    return-void
.end method

.method public d(I)Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/a55;->d:I

    .line 2
    div-int/lit8 v1, p1, 0x8

    add-int v2, v0, v1

    .line 3
    iget v3, p0, Lcom/shabakaty/downloader/a55;->e:I

    add-int/2addr v3, p1

    mul-int/lit8 v1, v1, 0x8

    sub-int/2addr v3, v1

    const/4 p1, 0x7

    if-le v3, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, -0x8

    :cond_0
    const/4 p1, 0x1

    :cond_1
    :goto_0
    add-int/2addr v0, p1

    if-gt v0, v2, :cond_2

    .line 4
    iget v1, p0, Lcom/shabakaty/downloader/a55;->c:I

    if-ge v2, v1, :cond_2

    .line 5
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/a55;->t(I)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 6
    :cond_2
    iget v0, p0, Lcom/shabakaty/downloader/a55;->c:I

    if-lt v2, v0, :cond_4

    if-ne v2, v0, :cond_3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :cond_4
    :goto_1
    return p1
.end method

.method public e()Z
    .locals 7

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/a55;->d:I

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/a55;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v4, p0, Lcom/shabakaty/downloader/a55;->d:I

    iget v5, p0, Lcom/shabakaty/downloader/a55;->c:I

    if-ge v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/a55;->j()Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget v4, p0, Lcom/shabakaty/downloader/a55;->d:I

    iget v5, p0, Lcom/shabakaty/downloader/a55;->c:I

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 5
    :goto_1
    iput v0, p0, Lcom/shabakaty/downloader/a55;->d:I

    .line 6
    iput v1, p0, Lcom/shabakaty/downloader/a55;->e:I

    if-nez v4, :cond_2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v6

    .line 7
    invoke-virtual {p0, v3}, Lcom/shabakaty/downloader/a55;->d(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/a55;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/a55;->c:I

    return v0
.end method

.method public g()Lcom/shabakaty/downloader/u74;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    check-cast v0, [Lcom/shabakaty/downloader/u74;

    iget v1, p0, Lcom/shabakaty/downloader/a55;->c:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public h()I
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/a55;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    iget v0, p0, Lcom/shabakaty/downloader/a55;->d:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/shabakaty/downloader/a55;->e:I

    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 2
    :goto_1
    iget v0, p0, Lcom/shabakaty/downloader/a55;->c:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/shabakaty/downloader/a55;->d:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public i(II)[[B
    .locals 12

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/a55;->d:I

    mul-int v0, v0, p2

    iget v1, p0, Lcom/shabakaty/downloader/a55;->e:I

    mul-int v1, v1, p1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, B

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    .line 2
    iget v2, p0, Lcom/shabakaty/downloader/a55;->d:I

    mul-int v2, v2, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    sub-int v5, v2, v4

    sub-int/2addr v5, v3

    .line 3
    iget-object v6, p0, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    check-cast v6, [Lcom/shabakaty/downloader/u74;

    div-int v7, v4, p2

    aget-object v6, v6, v7

    .line 4
    iget-object v7, v6, Lcom/shabakaty/downloader/u74;->b:Ljava/lang/Object;

    check-cast v7, [B

    array-length v7, v7

    mul-int v7, v7, p1

    new-array v8, v7, [B

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v7, :cond_0

    .line 5
    iget-object v10, v6, Lcom/shabakaty/downloader/u74;->b:Ljava/lang/Object;

    check-cast v10, [B

    div-int v11, v9, p1

    aget-byte v10, v10, v11

    aput-byte v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 6
    :cond_0
    aput-object v8, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public j()Z
    .locals 5

    iget v0, p0, Lcom/shabakaty/downloader/a55;->a:I

    const/4 v1, 0x1

    const/16 v2, 0x80

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    check-cast v0, [B

    iget v4, p0, Lcom/shabakaty/downloader/a55;->c:I

    aget-byte v0, v0, v4

    iget v4, p0, Lcom/shabakaty/downloader/a55;->d:I

    shr-int/2addr v2, v4

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a55;->u()V

    return v1

    .line 3
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    check-cast v0, [B

    iget v2, p0, Lcom/shabakaty/downloader/a55;->d:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    iget v2, p0, Lcom/shabakaty/downloader/a55;->e:I

    shr-int/2addr v0, v2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    const/4 v3, 0x1

    .line 4
    :cond_1
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/a55;->v(I)V

    return v3

    .line 5
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    check-cast v0, [B

    iget v4, p0, Lcom/shabakaty/downloader/a55;->d:I

    aget-byte v0, v0, v4

    iget v4, p0, Lcom/shabakaty/downloader/a55;->e:I

    shr-int/2addr v2, v4

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 6
    :goto_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a55;->u()V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public k(I)I
    .locals 10

    iget v0, p0, Lcom/shabakaty/downloader/a55;->a:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/16 v5, 0xff

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    if-nez p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/a55;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/shabakaty/downloader/a55;->d:I

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v6, p0, Lcom/shabakaty/downloader/a55;->d:I

    if-le v6, v2, :cond_1

    add-int/lit8 v6, v6, -0x8

    .line 3
    iput v6, p0, Lcom/shabakaty/downloader/a55;->d:I

    .line 4
    iget-object v7, p0, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    check-cast v7, [B

    iget v8, p0, Lcom/shabakaty/downloader/a55;->c:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/shabakaty/downloader/a55;->c:I

    aget-byte v7, v7, v8

    and-int/2addr v7, v5

    shl-int v6, v7, v6

    or-int/2addr v0, v6

    goto :goto_0

    .line 5
    :cond_1
    iget-object v7, p0, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    check-cast v7, [B

    iget v8, p0, Lcom/shabakaty/downloader/a55;->c:I

    aget-byte v7, v7, v8

    and-int/2addr v5, v7

    rsub-int/lit8 v7, v6, 0x8

    shr-int/2addr v5, v7

    or-int/2addr v0, v5

    rsub-int/lit8 p1, p1, 0x20

    ushr-int p1, v4, p1

    and-int/2addr p1, v0

    if-ne v6, v2, :cond_2

    .line 6
    iput v1, p0, Lcom/shabakaty/downloader/a55;->d:I

    add-int/2addr v8, v3

    .line 7
    iput v8, p0, Lcom/shabakaty/downloader/a55;->c:I

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a55;->a()V

    move v1, p1

    :goto_1
    return v1

    .line 9
    :pswitch_1
    iget v0, p0, Lcom/shabakaty/downloader/a55;->d:I

    .line 10
    iget v1, p0, Lcom/shabakaty/downloader/a55;->e:I

    sub-int/2addr v2, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 11
    iget-object v2, p0, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    check-cast v2, [B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    and-int/2addr v0, v5

    iget v2, p0, Lcom/shabakaty/downloader/a55;->e:I

    shr-int/2addr v0, v2

    rsub-int/lit8 v2, v1, 0x8

    shr-int v2, v5, v2

    and-int/2addr v0, v2

    :goto_2
    if-ge v1, p1, :cond_3

    .line 12
    iget-object v2, p0, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    check-cast v2, [B

    add-int/lit8 v6, v3, 0x1

    aget-byte v2, v2, v3

    and-int/2addr v2, v5

    shl-int/2addr v2, v1

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x8

    move v3, v6

    goto :goto_2

    :cond_3
    rsub-int/lit8 v1, p1, 0x20

    ushr-int v1, v4, v1

    and-int/2addr v0, v1

    .line 13
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/a55;->v(I)V

    return v0

    .line 14
    :goto_3
    iget v0, p0, Lcom/shabakaty/downloader/a55;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/shabakaty/downloader/a55;->e:I

    const/4 v0, 0x0

    .line 15
    :goto_4
    iget v6, p0, Lcom/shabakaty/downloader/a55;->e:I

    const/4 v7, 0x2

    if-le v6, v2, :cond_5

    add-int/lit8 v6, v6, -0x8

    .line 16
    iput v6, p0, Lcom/shabakaty/downloader/a55;->e:I

    .line 17
    iget-object v8, p0, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    check-cast v8, [B

    iget v9, p0, Lcom/shabakaty/downloader/a55;->d:I

    aget-byte v8, v8, v9

    and-int/2addr v8, v5

    shl-int v6, v8, v6

    or-int/2addr v0, v6

    add-int/lit8 v6, v9, 0x1

    .line 18
    invoke-virtual {p0, v6}, Lcom/shabakaty/downloader/a55;->t(I)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_5

    :cond_4
    const/4 v7, 0x1

    :goto_5
    add-int/2addr v9, v7

    iput v9, p0, Lcom/shabakaty/downloader/a55;->d:I

    goto :goto_4

    .line 19
    :cond_5
    iget-object v8, p0, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    check-cast v8, [B

    iget v9, p0, Lcom/shabakaty/downloader/a55;->d:I

    aget-byte v8, v8, v9

    and-int/2addr v5, v8

    rsub-int/lit8 v8, v6, 0x8

    shr-int/2addr v5, v8

    or-int/2addr v0, v5

    rsub-int/lit8 p1, p1, 0x20

    ushr-int p1, v4, p1

    and-int/2addr p1, v0

    if-ne v6, v2, :cond_7

    .line 20
    iput v1, p0, Lcom/shabakaty/downloader/a55;->e:I

    add-int/lit8 v0, v9, 0x1

    .line 21
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/a55;->t(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v3, 0x2

    :cond_6
    add-int/2addr v9, v3

    iput v9, p0, Lcom/shabakaty/downloader/a55;->d:I

    .line 22
    :cond_7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a55;->a()V

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public l([BII)V
    .locals 7

    shr-int/lit8 v0, p3, 0x3

    add-int/2addr v0, p2

    :goto_0
    const/16 v1, 0xff

    const/16 v2, 0x8

    if-ge p2, v0, :cond_0

    .line 1
    iget-object v3, p0, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, [B

    iget v5, p0, Lcom/shabakaty/downloader/a55;->c:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/shabakaty/downloader/a55;->c:I

    aget-byte v4, v4, v5

    iget v5, p0, Lcom/shabakaty/downloader/a55;->d:I

    shl-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, p2

    .line 2
    aget-byte v4, p1, p2

    check-cast v3, [B

    aget-byte v3, v3, v6

    and-int/2addr v1, v3

    sub-int/2addr v2, v5

    shr-int/2addr v1, v2

    or-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    and-int/lit8 p2, p3, 0x7

    if-nez p2, :cond_1

    return-void

    .line 3
    :cond_1
    aget-byte p3, p1, v0

    shr-int v3, v1, p2

    and-int/2addr p3, v3

    int-to-byte p3, p3

    aput-byte p3, p1, v0

    .line 4
    iget p3, p0, Lcom/shabakaty/downloader/a55;->d:I

    add-int v3, p3, p2

    if-le v3, v2, :cond_2

    .line 5
    aget-byte v3, p1, v0

    iget-object v4, p0, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    check-cast v4, [B

    iget v5, p0, Lcom/shabakaty/downloader/a55;->c:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/shabakaty/downloader/a55;->c:I

    aget-byte v4, v4, v5

    and-int/2addr v4, v1

    shl-int/2addr v4, p3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    sub-int/2addr p3, v2

    .line 6
    iput p3, p0, Lcom/shabakaty/downloader/a55;->d:I

    .line 7
    :cond_2
    iget p3, p0, Lcom/shabakaty/downloader/a55;->d:I

    add-int/2addr p3, p2

    iput p3, p0, Lcom/shabakaty/downloader/a55;->d:I

    .line 8
    iget-object v3, p0, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    check-cast v3, [B

    iget v4, p0, Lcom/shabakaty/downloader/a55;->c:I

    aget-byte v3, v3, v4

    and-int/2addr v1, v3

    rsub-int/lit8 v3, p3, 0x8

    shr-int/2addr v1, v3

    .line 9
    aget-byte v3, p1, v0

    rsub-int/lit8 p2, p2, 0x8

    shl-int p2, v1, p2

    int-to-byte p2, p2

    or-int/2addr p2, v3

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    if-ne p3, v2, :cond_3

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/shabakaty/downloader/a55;->d:I

    add-int/lit8 v4, v4, 0x1

    .line 11
    iput v4, p0, Lcom/shabakaty/downloader/a55;->c:I

    .line 12
    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a55;->a()V

    return-void
.end method

.method public m([BII)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/a55;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p0, Lcom/shabakaty/downloader/a55;->c:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget p1, p0, Lcom/shabakaty/downloader/a55;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/shabakaty/downloader/a55;->c:I

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a55;->a()V

    return-void
.end method

.method public n()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a55;->j()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    shl-int v3, v2, v1

    sub-int/2addr v3, v2

    if-lez v1, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v0

    :cond_1
    add-int/2addr v3, v0

    return v3
.end method

.method public o()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a55;->n()I

    move-result v0

    .line 2
    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    mul-int v0, v0, v1

    return v0
.end method

.method public p([B)V
    .locals 1

    .line 1
    array-length v0, p1

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/shabakaty/downloader/a55;->c:I

    .line 4
    iput p1, p0, Lcom/shabakaty/downloader/a55;->d:I

    .line 5
    iput v0, p0, Lcom/shabakaty/downloader/a55;->e:I

    return-void
.end method

.method public q([BI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/a55;->c:I

    .line 3
    iput p1, p0, Lcom/shabakaty/downloader/a55;->d:I

    .line 4
    iput p2, p0, Lcom/shabakaty/downloader/a55;->e:I

    return-void
.end method

.method public r([BII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    .line 2
    iput p2, p0, Lcom/shabakaty/downloader/a55;->d:I

    .line 3
    iput p3, p0, Lcom/shabakaty/downloader/a55;->c:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/shabakaty/downloader/a55;->e:I

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a55;->a()V

    return-void
.end method

.method public s(I)V
    .locals 1

    .line 1
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lcom/shabakaty/downloader/a55;->c:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/a55;->d:I

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a55;->a()V

    return-void
.end method

.method public t(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-gt v1, p1, :cond_0

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/a55;->c:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, [B

    aget-byte v2, v2, p1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    move-object v2, v1

    check-cast v2, [B

    add-int/lit8 v3, p1, -0x2

    aget-byte v2, v2, v3

    if-nez v2, :cond_0

    check-cast v1, [B

    sub-int/2addr p1, v0

    aget-byte p1, v1, p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public u()V
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/a55;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget v0, p0, Lcom/shabakaty/downloader/a55;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/shabakaty/downloader/a55;->d:I

    if-ne v0, v3, :cond_0

    .line 2
    iput v2, p0, Lcom/shabakaty/downloader/a55;->d:I

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/a55;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/shabakaty/downloader/a55;->c:I

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a55;->a()V

    return-void

    .line 5
    :goto_0
    iget v0, p0, Lcom/shabakaty/downloader/a55;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/shabakaty/downloader/a55;->e:I

    if-ne v0, v3, :cond_2

    .line 6
    iput v2, p0, Lcom/shabakaty/downloader/a55;->e:I

    .line 7
    iget v0, p0, Lcom/shabakaty/downloader/a55;->d:I

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/a55;->t(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    :cond_1
    add-int/2addr v0, v1

    iput v0, p0, Lcom/shabakaty/downloader/a55;->d:I

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a55;->a()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public v(I)V
    .locals 6

    iget v0, p0, Lcom/shabakaty/downloader/a55;->a:I

    const/4 v1, 0x7

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    .line 1
    :pswitch_0
    div-int/lit8 v0, p1, 0x8

    .line 2
    iget v3, p0, Lcom/shabakaty/downloader/a55;->c:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/shabakaty/downloader/a55;->c:I

    .line 3
    iget v4, p0, Lcom/shabakaty/downloader/a55;->d:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    add-int/2addr p1, v4

    iput p1, p0, Lcom/shabakaty/downloader/a55;->d:I

    if-le p1, v1, :cond_0

    add-int/2addr v3, v2

    .line 4
    iput v3, p0, Lcom/shabakaty/downloader/a55;->c:I

    add-int/lit8 p1, p1, -0x8

    .line 5
    iput p1, p0, Lcom/shabakaty/downloader/a55;->d:I

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a55;->a()V

    return-void

    .line 7
    :pswitch_1
    div-int/lit8 v3, p1, 0x8

    .line 8
    iget v4, p0, Lcom/shabakaty/downloader/a55;->d:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/shabakaty/downloader/a55;->d:I

    .line 9
    iget v5, p0, Lcom/shabakaty/downloader/a55;->e:I

    mul-int/lit8 v3, v3, 0x8

    sub-int/2addr p1, v3

    add-int/2addr p1, v5

    iput p1, p0, Lcom/shabakaty/downloader/a55;->e:I

    if-le p1, v1, :cond_1

    add-int/2addr v4, v2

    .line 10
    iput v4, p0, Lcom/shabakaty/downloader/a55;->d:I

    add-int/lit8 p1, p1, -0x8

    .line 11
    iput p1, p0, Lcom/shabakaty/downloader/a55;->e:I

    :cond_1
    const/4 p1, 0x0

    packed-switch v0, :pswitch_data_1

    goto :goto_2

    .line 12
    :pswitch_2
    iget v0, p0, Lcom/shabakaty/downloader/a55;->c:I

    if-ltz v0, :cond_2

    iget v1, p0, Lcom/shabakaty/downloader/a55;->e:I

    if-lt v0, v1, :cond_3

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/shabakaty/downloader/a55;->d:I

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_0
    invoke-static {v2}, Lcom/shabakaty/downloader/md;->e(Z)V

    goto :goto_4

    .line 13
    :pswitch_3
    iget v0, p0, Lcom/shabakaty/downloader/a55;->d:I

    if-ltz v0, :cond_4

    iget v1, p0, Lcom/shabakaty/downloader/a55;->c:I

    if-lt v0, v1, :cond_5

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/shabakaty/downloader/a55;->e:I

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_1
    invoke-static {v2}, Lcom/shabakaty/downloader/md;->e(Z)V

    goto :goto_4

    .line 14
    :goto_2
    iget v0, p0, Lcom/shabakaty/downloader/a55;->d:I

    if-ltz v0, :cond_6

    iget v1, p0, Lcom/shabakaty/downloader/a55;->c:I

    if-lt v0, v1, :cond_7

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/shabakaty/downloader/a55;->e:I

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :cond_7
    :goto_3
    invoke-static {v2}, Lcom/shabakaty/downloader/md;->e(Z)V

    :goto_4
    return-void

    .line 15
    :goto_5
    iget v0, p0, Lcom/shabakaty/downloader/a55;->d:I

    .line 16
    div-int/lit8 v3, p1, 0x8

    add-int v4, v0, v3

    .line 17
    iput v4, p0, Lcom/shabakaty/downloader/a55;->d:I

    .line 18
    iget v5, p0, Lcom/shabakaty/downloader/a55;->e:I

    mul-int/lit8 v3, v3, 0x8

    sub-int/2addr p1, v3

    add-int/2addr p1, v5

    iput p1, p0, Lcom/shabakaty/downloader/a55;->e:I

    if-le p1, v1, :cond_8

    add-int/2addr v4, v2

    .line 19
    iput v4, p0, Lcom/shabakaty/downloader/a55;->d:I

    add-int/lit8 p1, p1, -0x8

    .line 20
    iput p1, p0, Lcom/shabakaty/downloader/a55;->e:I

    :cond_8
    :goto_6
    add-int/2addr v0, v2

    .line 21
    iget p1, p0, Lcom/shabakaty/downloader/a55;->d:I

    if-gt v0, p1, :cond_9

    .line 22
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/a55;->t(I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 23
    iget p1, p0, Lcom/shabakaty/downloader/a55;->d:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/shabakaty/downloader/a55;->d:I

    add-int/lit8 v0, v0, 0x2

    goto :goto_6

    .line 24
    :cond_9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a55;->a()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public w(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/a55;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/a55;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/shabakaty/downloader/a55;->c:I

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a55;->a()V

    return-void
.end method
