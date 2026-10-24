.class public final Lcom/shabakaty/downloader/w1;
.super Ljava/lang/Object;
.source "Ac3Extractor.java"

# interfaces
.implements Lcom/shabakaty/downloader/n91;


# instance fields
.field public final a:Lcom/shabakaty/downloader/x1;

.field public final b:Lcom/shabakaty/downloader/ka3;

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ex4;->x:Lcom/shabakaty/downloader/ex4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/x1;

    const/4 v1, 0x0

    .line 3
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/x1;-><init>(Ljava/lang/String;)V

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/w1;->a:Lcom/shabakaty/downloader/x1;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/ka3;

    const/16 v1, 0xae2

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ka3;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/w1;->b:Lcom/shabakaty/downloader/ka3;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/shabakaty/downloader/w1;->c:Z

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/w1;->a:Lcom/shabakaty/downloader/x1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/x1;->b()V

    return-void
.end method

.method public f(Lcom/shabakaty/downloader/o91;Lcom/shabakaty/downloader/ie3;)I
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/shabakaty/downloader/w1;->b:Lcom/shabakaty/downloader/ka3;

    .line 2
    iget-object p2, p2, Lcom/shabakaty/downloader/ka3;->a:[B

    const/16 v0, 0xae2

    const/4 v1, 0x0

    .line 3
    invoke-interface {p1, p2, v1, v0}, Lcom/shabakaty/downloader/o91;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/shabakaty/downloader/w1;->b:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 5
    iget-object p2, p0, Lcom/shabakaty/downloader/w1;->b:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/ka3;->D(I)V

    .line 6
    iget-boolean p1, p0, Lcom/shabakaty/downloader/w1;->c:Z

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/w1;->a:Lcom/shabakaty/downloader/x1;

    const-wide/16 v2, 0x0

    const/4 p2, 0x4

    invoke-virtual {p1, v2, v3, p2}, Lcom/shabakaty/downloader/x1;->e(JI)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/shabakaty/downloader/w1;->c:Z

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/w1;->a:Lcom/shabakaty/downloader/x1;

    iget-object p2, p0, Lcom/shabakaty/downloader/w1;->b:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/x1;->a(Lcom/shabakaty/downloader/ka3;)V

    return v1
.end method

.method public g(Lcom/shabakaty/downloader/p91;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w1;->a:Lcom/shabakaty/downloader/x1;

    const-string v1, ""

    .line 2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/shabakaty/downloader/gl3;->a(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 3
    iput-object v1, v0, Lcom/shabakaty/downloader/x1;->d:Ljava/lang/String;

    const/4 v1, 0x1

    .line 4
    invoke-interface {p1, v3, v1}, Lcom/shabakaty/downloader/p91;->h(II)Lcom/shabakaty/downloader/fp4;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/x1;->e:Lcom/shabakaty/downloader/fp4;

    .line 5
    invoke-interface {p1}, Lcom/shabakaty/downloader/p91;->b()V

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/vz3$b;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v3, 0x0

    .line 7
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/vz3$b;-><init>(JJ)V

    .line 8
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/p91;->d(Lcom/shabakaty/downloader/vz3;)V

    return-void
.end method

.method public h(Lcom/shabakaty/downloader/o91;)Z
    .locals 13

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ka3;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ka3;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_0
    iget-object v4, v0, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 3
    invoke-interface {p1, v4, v2, v1}, Lcom/shabakaty/downloader/o91;->s([BII)V

    .line 4
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->v()I

    move-result v4

    const v5, 0x494433

    const/4 v6, 0x3

    if-eq v4, v5, :cond_7

    .line 6
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->p()V

    .line 7
    invoke-interface {p1, v3}, Lcom/shabakaty/downloader/o91;->l(I)V

    move v5, v3

    :goto_1
    const/4 v4, 0x0

    .line 8
    :goto_2
    iget-object v7, v0, Lcom/shabakaty/downloader/ka3;->a:[B

    const/4 v8, 0x6

    .line 9
    invoke-interface {p1, v7, v2, v8}, Lcom/shabakaty/downloader/o91;->s([BII)V

    .line 10
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 11
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->y()I

    move-result v7

    const/16 v9, 0xb77

    if-eq v7, v9, :cond_1

    .line 12
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->p()V

    add-int/lit8 v5, v5, 0x1

    sub-int v4, v5, v3

    const/16 v7, 0x2000

    if-lt v4, v7, :cond_0

    return v2

    .line 13
    :cond_0
    invoke-interface {p1, v5}, Lcom/shabakaty/downloader/o91;->l(I)V

    goto :goto_1

    :cond_1
    const/4 v7, 0x1

    add-int/2addr v4, v7

    const/4 v9, 0x4

    if-lt v4, v9, :cond_2

    return v7

    .line 14
    :cond_2
    iget-object v10, v0, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 15
    array-length v11, v10

    const/4 v12, -0x1

    if-ge v11, v8, :cond_3

    const/4 v9, -0x1

    goto :goto_4

    :cond_3
    const/4 v11, 0x5

    .line 16
    aget-byte v11, v10, v11

    and-int/lit16 v11, v11, 0xf8

    shr-int/2addr v11, v6

    if-le v11, v1, :cond_4

    const/4 v11, 0x1

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    :goto_3
    if-eqz v11, :cond_5

    const/4 v8, 0x2

    .line 17
    aget-byte v9, v10, v8

    and-int/lit8 v9, v9, 0x7

    shl-int/lit8 v9, v9, 0x8

    .line 18
    aget-byte v10, v10, v6

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    add-int/2addr v9, v7

    mul-int/lit8 v9, v9, 0x2

    goto :goto_4

    .line 19
    :cond_5
    aget-byte v7, v10, v9

    and-int/lit16 v7, v7, 0xc0

    shr-int/2addr v7, v8

    .line 20
    aget-byte v8, v10, v9

    and-int/lit8 v8, v8, 0x3f

    .line 21
    invoke-static {v7, v8}, Lcom/shabakaty/downloader/y1;->a(II)I

    move-result v9

    :goto_4
    if-ne v9, v12, :cond_6

    return v2

    :cond_6
    add-int/lit8 v9, v9, -0x6

    .line 22
    invoke-interface {p1, v9}, Lcom/shabakaty/downloader/o91;->l(I)V

    goto :goto_2

    .line 23
    :cond_7
    invoke-virtual {v0, v6}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 24
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->s()I

    move-result v4

    add-int/lit8 v5, v4, 0xa

    add-int/2addr v3, v5

    .line 25
    invoke-interface {p1, v4}, Lcom/shabakaty/downloader/o91;->l(I)V

    goto/16 :goto_0
.end method
