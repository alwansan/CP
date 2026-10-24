.class public final Lcom/shabakaty/downloader/u25;
.super Lcom/shabakaty/downloader/mk4;
.source "VideoTagPayloadReader.java"


# instance fields
.field public final b:Lcom/shabakaty/downloader/ka3;

.field public final c:Lcom/shabakaty/downloader/ka3;

.field public d:I

.field public e:Z

.field public f:Z

.field public g:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fp4;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/mk4;-><init>(Lcom/shabakaty/downloader/fp4;)V

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/ka3;

    sget-object v0, Lcom/shabakaty/downloader/gw2;->a:[B

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/ka3;-><init>([B)V

    iput-object p1, p0, Lcom/shabakaty/downloader/u25;->b:Lcom/shabakaty/downloader/ka3;

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/ka3;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/ka3;-><init>(I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/u25;->c:Lcom/shabakaty/downloader/ka3;

    return-void
.end method


# virtual methods
.method public b(Lcom/shabakaty/downloader/ka3;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result p1

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    and-int/lit8 p1, p1, 0xf

    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/u25;->g:I

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 3
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/mk4$a;

    const/16 v1, 0x27

    const-string v2, "Video format not supported: "

    invoke-static {v1, v2, p1}, Lcom/shabakaty/downloader/gl3;->a(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/mk4$a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Lcom/shabakaty/downloader/ka3;J)Z
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v0

    .line 2
    iget-object v1, p1, Lcom/shabakaty/downloader/ka3;->a:[B

    iget v2, p1, Lcom/shabakaty/downloader/ka3;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p1, Lcom/shabakaty/downloader/ka3;->b:I

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    shr-int/lit8 v2, v2, 0x8

    add-int/lit8 v4, v3, 0x1

    iput v4, p1, Lcom/shabakaty/downloader/ka3;->b:I

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v4, 0x1

    iput v3, p1, Lcom/shabakaty/downloader/ka3;->b:I

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    add-long v4, v1, p2

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez v0, :cond_0

    .line 3
    iget-boolean v1, p0, Lcom/shabakaty/downloader/u25;->e:Z

    if-nez v1, :cond_0

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v1

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ka3;-><init>([B)V

    .line 5
    iget-object v1, v0, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v2

    invoke-virtual {p1, v1, p3, v2}, Lcom/shabakaty/downloader/ka3;->e([BII)V

    .line 7
    invoke-static {v0}, Lcom/shabakaty/downloader/di;->b(Lcom/shabakaty/downloader/ka3;)Lcom/shabakaty/downloader/di;

    move-result-object p1

    .line 8
    iget v0, p1, Lcom/shabakaty/downloader/di;->b:I

    iput v0, p0, Lcom/shabakaty/downloader/u25;->d:I

    .line 9
    new-instance v0, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    const-string v1, "video/avc"

    .line 10
    iput-object v1, v0, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 11
    iget-object v1, p1, Lcom/shabakaty/downloader/di;->f:Ljava/lang/String;

    .line 12
    iput-object v1, v0, Lcom/shabakaty/downloader/wh1$b;->h:Ljava/lang/String;

    .line 13
    iget v1, p1, Lcom/shabakaty/downloader/di;->c:I

    .line 14
    iput v1, v0, Lcom/shabakaty/downloader/wh1$b;->p:I

    .line 15
    iget v1, p1, Lcom/shabakaty/downloader/di;->d:I

    .line 16
    iput v1, v0, Lcom/shabakaty/downloader/wh1$b;->q:I

    .line 17
    iget v1, p1, Lcom/shabakaty/downloader/di;->e:F

    .line 18
    iput v1, v0, Lcom/shabakaty/downloader/wh1$b;->t:F

    .line 19
    iget-object p1, p1, Lcom/shabakaty/downloader/di;->a:Ljava/util/List;

    .line 20
    iput-object p1, v0, Lcom/shabakaty/downloader/wh1$b;->m:Ljava/util/List;

    .line 21
    invoke-virtual {v0}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object p1

    .line 22
    iget-object v0, p0, Lcom/shabakaty/downloader/mk4;->a:Lcom/shabakaty/downloader/fp4;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/fp4;->f(Lcom/shabakaty/downloader/wh1;)V

    .line 23
    iput-boolean p2, p0, Lcom/shabakaty/downloader/u25;->e:Z

    return p3

    :cond_0
    if-ne v0, p2, :cond_4

    .line 24
    iget-boolean v0, p0, Lcom/shabakaty/downloader/u25;->e:Z

    if-eqz v0, :cond_4

    .line 25
    iget v0, p0, Lcom/shabakaty/downloader/u25;->g:I

    if-ne v0, p2, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 26
    :goto_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/u25;->f:Z

    if-nez v0, :cond_2

    if-nez v6, :cond_2

    return p3

    .line 27
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/u25;->c:Lcom/shabakaty/downloader/ka3;

    .line 28
    iget-object v0, v0, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 29
    aput-byte p3, v0, p3

    .line 30
    aput-byte p3, v0, p2

    const/4 v1, 0x2

    .line 31
    aput-byte p3, v0, v1

    .line 32
    iget v0, p0, Lcom/shabakaty/downloader/u25;->d:I

    const/4 v1, 0x4

    rsub-int/lit8 v0, v0, 0x4

    const/4 v7, 0x0

    .line 33
    :goto_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v2

    if-lez v2, :cond_3

    .line 34
    iget-object v2, p0, Lcom/shabakaty/downloader/u25;->c:Lcom/shabakaty/downloader/ka3;

    .line 35
    iget-object v2, v2, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 36
    iget v3, p0, Lcom/shabakaty/downloader/u25;->d:I

    invoke-virtual {p1, v2, v0, v3}, Lcom/shabakaty/downloader/ka3;->e([BII)V

    .line 37
    iget-object v2, p0, Lcom/shabakaty/downloader/u25;->c:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v2, p3}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 38
    iget-object v2, p0, Lcom/shabakaty/downloader/u25;->c:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->w()I

    move-result v2

    .line 39
    iget-object v3, p0, Lcom/shabakaty/downloader/u25;->b:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v3, p3}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 40
    iget-object v3, p0, Lcom/shabakaty/downloader/mk4;->a:Lcom/shabakaty/downloader/fp4;

    iget-object v8, p0, Lcom/shabakaty/downloader/u25;->b:Lcom/shabakaty/downloader/ka3;

    invoke-interface {v3, v8, v1}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    add-int/lit8 v7, v7, 0x4

    .line 41
    iget-object v3, p0, Lcom/shabakaty/downloader/mk4;->a:Lcom/shabakaty/downloader/fp4;

    invoke-interface {v3, p1, v2}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    add-int/2addr v7, v2

    goto :goto_1

    .line 42
    :cond_3
    iget-object v3, p0, Lcom/shabakaty/downloader/mk4;->a:Lcom/shabakaty/downloader/fp4;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/shabakaty/downloader/fp4;->b(JIIILcom/shabakaty/downloader/fp4$a;)V

    .line 43
    iput-boolean p2, p0, Lcom/shabakaty/downloader/u25;->f:Z

    return p2

    :cond_4
    return p3
.end method
