.class public final Lcom/shabakaty/downloader/z1;
.super Ljava/lang/Object;
.source "Ac4Extractor.java"

# interfaces
.implements Lcom/shabakaty/downloader/n91;


# instance fields
.field public final a:Lcom/shabakaty/downloader/a2;

.field public final b:Lcom/shabakaty/downloader/ka3;

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/iw3;->u:Lcom/shabakaty/downloader/iw3;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/a2;

    const/4 v1, 0x0

    .line 3
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/a2;-><init>(Ljava/lang/String;)V

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/z1;->a:Lcom/shabakaty/downloader/a2;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/ka3;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ka3;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/z1;->b:Lcom/shabakaty/downloader/ka3;

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
    iput-boolean p1, p0, Lcom/shabakaty/downloader/z1;->c:Z

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/z1;->a:Lcom/shabakaty/downloader/a2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/a2;->b()V

    return-void
.end method

.method public f(Lcom/shabakaty/downloader/o91;Lcom/shabakaty/downloader/ie3;)I
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/shabakaty/downloader/z1;->b:Lcom/shabakaty/downloader/ka3;

    .line 2
    iget-object p2, p2, Lcom/shabakaty/downloader/ka3;->a:[B

    const/16 v0, 0x4000

    const/4 v1, 0x0

    .line 3
    invoke-interface {p1, p2, v1, v0}, Lcom/shabakaty/downloader/o91;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/shabakaty/downloader/z1;->b:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 5
    iget-object p2, p0, Lcom/shabakaty/downloader/z1;->b:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/ka3;->D(I)V

    .line 6
    iget-boolean p1, p0, Lcom/shabakaty/downloader/z1;->c:Z

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/z1;->a:Lcom/shabakaty/downloader/a2;

    const-wide/16 v2, 0x0

    const/4 p2, 0x4

    invoke-virtual {p1, v2, v3, p2}, Lcom/shabakaty/downloader/a2;->e(JI)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/shabakaty/downloader/z1;->c:Z

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/z1;->a:Lcom/shabakaty/downloader/a2;

    iget-object p2, p0, Lcom/shabakaty/downloader/z1;->b:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/a2;->a(Lcom/shabakaty/downloader/ka3;)V

    return v1
.end method

.method public g(Lcom/shabakaty/downloader/p91;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/z1;->a:Lcom/shabakaty/downloader/a2;

    const-string v1, ""

    .line 2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/shabakaty/downloader/gl3;->a(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 3
    iput-object v1, v0, Lcom/shabakaty/downloader/a2;->d:Ljava/lang/String;

    const/4 v1, 0x1

    .line 4
    invoke-interface {p1, v3, v1}, Lcom/shabakaty/downloader/p91;->h(II)Lcom/shabakaty/downloader/fp4;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/a2;->e:Lcom/shabakaty/downloader/fp4;

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
    .locals 14

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

    move v4, v3

    :goto_1
    const/4 v1, 0x0

    .line 8
    :goto_2
    iget-object v5, v0, Lcom/shabakaty/downloader/ka3;->a:[B

    const/4 v7, 0x7

    .line 9
    invoke-interface {p1, v5, v2, v7}, Lcom/shabakaty/downloader/o91;->s([BII)V

    .line 10
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 11
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->y()I

    move-result v5

    const v8, 0xac40

    const v9, 0xac41

    if-eq v5, v8, :cond_1

    if-eq v5, v9, :cond_1

    .line 12
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->p()V

    add-int/lit8 v4, v4, 0x1

    sub-int v1, v4, v3

    const/16 v5, 0x2000

    if-lt v1, v5, :cond_0

    return v2

    .line 13
    :cond_0
    invoke-interface {p1, v4}, Lcom/shabakaty/downloader/o91;->l(I)V

    goto :goto_1

    :cond_1
    const/4 v8, 0x1

    add-int/2addr v1, v8

    const/4 v10, 0x4

    if-lt v1, v10, :cond_2

    return v8

    .line 14
    :cond_2
    iget-object v8, v0, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 15
    array-length v11, v8

    const/4 v12, -0x1

    if-ge v11, v7, :cond_3

    const/4 v11, -0x1

    goto :goto_4

    :cond_3
    const/4 v11, 0x2

    .line 16
    aget-byte v11, v8, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    aget-byte v13, v8, v6

    and-int/lit16 v13, v13, 0xff

    or-int/2addr v11, v13

    const v13, 0xffff

    if-ne v11, v13, :cond_4

    .line 17
    aget-byte v10, v8, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    const/4 v11, 0x5

    aget-byte v11, v8, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    const/4 v11, 0x6

    aget-byte v8, v8, v11

    and-int/lit16 v8, v8, 0xff

    or-int v11, v10, v8

    goto :goto_3

    :cond_4
    const/4 v7, 0x4

    :goto_3
    if-ne v5, v9, :cond_5

    add-int/lit8 v7, v7, 0x2

    :cond_5
    add-int/2addr v11, v7

    :goto_4
    if-ne v11, v12, :cond_6

    return v2

    :cond_6
    add-int/lit8 v11, v11, -0x7

    .line 18
    invoke-interface {p1, v11}, Lcom/shabakaty/downloader/o91;->l(I)V

    goto :goto_2

    .line 19
    :cond_7
    invoke-virtual {v0, v6}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 20
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->s()I

    move-result v4

    add-int/lit8 v5, v4, 0xa

    add-int/2addr v3, v5

    .line 21
    invoke-interface {p1, v4}, Lcom/shabakaty/downloader/o91;->l(I)V

    goto/16 :goto_0
.end method
