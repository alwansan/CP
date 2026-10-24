.class public final Lcom/shabakaty/downloader/vm3;
.super Ljava/lang/Object;
.source "RawCcExtractor.java"

# interfaces
.implements Lcom/shabakaty/downloader/n91;


# instance fields
.field public final a:Lcom/shabakaty/downloader/wh1;

.field public final b:Lcom/shabakaty/downloader/ka3;

.field public c:Lcom/shabakaty/downloader/fp4;

.field public d:I

.field public e:I

.field public f:J

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wh1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/vm3;->a:Lcom/shabakaty/downloader/wh1;

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/ka3;

    const/16 v0, 0x9

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/ka3;-><init>(I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/vm3;->b:Lcom/shabakaty/downloader/ka3;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/shabakaty/downloader/vm3;->d:I

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
    iput p1, p0, Lcom/shabakaty/downloader/vm3;->d:I

    return-void
.end method

.method public f(Lcom/shabakaty/downloader/o91;Lcom/shabakaty/downloader/ie3;)I
    .locals 10

    .line 1
    iget-object p2, p0, Lcom/shabakaty/downloader/vm3;->c:Lcom/shabakaty/downloader/fp4;

    invoke-static {p2}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :goto_0
    iget p2, p0, Lcom/shabakaty/downloader/vm3;->d:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_9

    const/4 v3, 0x2

    if-eq p2, v2, :cond_3

    if-ne p2, v3, :cond_2

    .line 3
    :goto_1
    iget p2, p0, Lcom/shabakaty/downloader/vm3;->g:I

    if-lez p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/shabakaty/downloader/vm3;->b:Lcom/shabakaty/downloader/ka3;

    const/4 v3, 0x3

    invoke-virtual {p2, v3}, Lcom/shabakaty/downloader/ka3;->A(I)V

    .line 5
    iget-object p2, p0, Lcom/shabakaty/downloader/vm3;->b:Lcom/shabakaty/downloader/ka3;

    .line 6
    iget-object p2, p2, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 7
    invoke-interface {p1, p2, v1, v3}, Lcom/shabakaty/downloader/o91;->readFully([BII)V

    .line 8
    iget-object p2, p0, Lcom/shabakaty/downloader/vm3;->c:Lcom/shabakaty/downloader/fp4;

    iget-object v4, p0, Lcom/shabakaty/downloader/vm3;->b:Lcom/shabakaty/downloader/ka3;

    invoke-interface {p2, v4, v3}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    .line 9
    iget p2, p0, Lcom/shabakaty/downloader/vm3;->h:I

    add-int/2addr p2, v3

    iput p2, p0, Lcom/shabakaty/downloader/vm3;->h:I

    .line 10
    iget p2, p0, Lcom/shabakaty/downloader/vm3;->g:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/shabakaty/downloader/vm3;->g:I

    goto :goto_1

    .line 11
    :cond_0
    iget v7, p0, Lcom/shabakaty/downloader/vm3;->h:I

    if-lez v7, :cond_1

    .line 12
    iget-object v3, p0, Lcom/shabakaty/downloader/vm3;->c:Lcom/shabakaty/downloader/fp4;

    iget-wide v4, p0, Lcom/shabakaty/downloader/vm3;->f:J

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/shabakaty/downloader/fp4;->b(JIIILcom/shabakaty/downloader/fp4$a;)V

    .line 13
    :cond_1
    iput v2, p0, Lcom/shabakaty/downloader/vm3;->d:I

    return v1

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 15
    :cond_3
    iget p2, p0, Lcom/shabakaty/downloader/vm3;->e:I

    if-nez p2, :cond_5

    .line 16
    iget-object p2, p0, Lcom/shabakaty/downloader/vm3;->b:Lcom/shabakaty/downloader/ka3;

    const/4 v4, 0x5

    invoke-virtual {p2, v4}, Lcom/shabakaty/downloader/ka3;->A(I)V

    .line 17
    iget-object p2, p0, Lcom/shabakaty/downloader/vm3;->b:Lcom/shabakaty/downloader/ka3;

    .line 18
    iget-object p2, p2, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 19
    invoke-interface {p1, p2, v1, v4, v2}, Lcom/shabakaty/downloader/o91;->f([BIIZ)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_2

    .line 20
    :cond_4
    iget-object p2, p0, Lcom/shabakaty/downloader/vm3;->b:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ka3;->u()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    const-wide/16 v6, 0x2d

    div-long/2addr v4, v6

    iput-wide v4, p0, Lcom/shabakaty/downloader/vm3;->f:J

    goto :goto_3

    :cond_5
    if-ne p2, v2, :cond_8

    .line 21
    iget-object p2, p0, Lcom/shabakaty/downloader/vm3;->b:Lcom/shabakaty/downloader/ka3;

    const/16 v4, 0x9

    invoke-virtual {p2, v4}, Lcom/shabakaty/downloader/ka3;->A(I)V

    .line 22
    iget-object p2, p0, Lcom/shabakaty/downloader/vm3;->b:Lcom/shabakaty/downloader/ka3;

    .line 23
    iget-object p2, p2, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 24
    invoke-interface {p1, p2, v1, v4, v2}, Lcom/shabakaty/downloader/o91;->f([BIIZ)Z

    move-result p2

    if-nez p2, :cond_6

    :goto_2
    const/4 v2, 0x0

    goto :goto_4

    .line 25
    :cond_6
    iget-object p2, p0, Lcom/shabakaty/downloader/vm3;->b:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ka3;->m()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/shabakaty/downloader/vm3;->f:J

    .line 26
    :goto_3
    iget-object p2, p0, Lcom/shabakaty/downloader/vm3;->b:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result p2

    iput p2, p0, Lcom/shabakaty/downloader/vm3;->g:I

    .line 27
    iput v1, p0, Lcom/shabakaty/downloader/vm3;->h:I

    :goto_4
    if-eqz v2, :cond_7

    .line 28
    iput v3, p0, Lcom/shabakaty/downloader/vm3;->d:I

    goto/16 :goto_0

    .line 29
    :cond_7
    iput v1, p0, Lcom/shabakaty/downloader/vm3;->d:I

    return v0

    :cond_8
    const/16 p1, 0x27

    const-string v0, "Unsupported version number: "

    const/4 v1, 0x0

    .line 30
    invoke-static {p1, v0, p2, v1}, Lcom/shabakaty/downloader/d55;->a(ILjava/lang/String;ILjava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object p1

    throw p1

    .line 31
    :cond_9
    iget-object p2, p0, Lcom/shabakaty/downloader/vm3;->b:Lcom/shabakaty/downloader/ka3;

    const/16 v3, 0x8

    invoke-virtual {p2, v3}, Lcom/shabakaty/downloader/ka3;->A(I)V

    .line 32
    iget-object p2, p0, Lcom/shabakaty/downloader/vm3;->b:Lcom/shabakaty/downloader/ka3;

    .line 33
    iget-object p2, p2, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 34
    invoke-interface {p1, p2, v1, v3, v2}, Lcom/shabakaty/downloader/o91;->f([BIIZ)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 35
    iget-object p2, p0, Lcom/shabakaty/downloader/vm3;->b:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result p2

    const v1, 0x52434301

    if-ne p2, v1, :cond_a

    .line 36
    iget-object p2, p0, Lcom/shabakaty/downloader/vm3;->b:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result p2

    iput p2, p0, Lcom/shabakaty/downloader/vm3;->e:I

    const/4 v1, 0x1

    goto :goto_5

    .line 37
    :cond_a
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Input not RawCC"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_5
    if-eqz v1, :cond_c

    .line 38
    iput v2, p0, Lcom/shabakaty/downloader/vm3;->d:I

    goto/16 :goto_0

    :cond_c
    return v0
.end method

.method public g(Lcom/shabakaty/downloader/p91;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/vz3$b;

    const-wide/16 v1, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/shabakaty/downloader/vz3$b;-><init>(JJ)V

    .line 3
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/p91;->d(Lcom/shabakaty/downloader/vz3;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 4
    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/p91;->h(II)Lcom/shabakaty/downloader/fp4;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/vm3;->c:Lcom/shabakaty/downloader/fp4;

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/vm3;->a:Lcom/shabakaty/downloader/wh1;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/fp4;->f(Lcom/shabakaty/downloader/wh1;)V

    .line 6
    invoke-interface {p1}, Lcom/shabakaty/downloader/p91;->b()V

    return-void
.end method

.method public h(Lcom/shabakaty/downloader/o91;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vm3;->b:Lcom/shabakaty/downloader/ka3;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ka3;->A(I)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/vm3;->b:Lcom/shabakaty/downloader/ka3;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/ka3;->a:[B

    const/4 v2, 0x0

    .line 4
    invoke-interface {p1, v0, v2, v1}, Lcom/shabakaty/downloader/o91;->s([BII)V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/vm3;->b:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result p1

    const v0, 0x52434301

    if-ne p1, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method
