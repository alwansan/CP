.class public final Lcom/shabakaty/downloader/sx1;
.super Ljava/lang/Object;
.source "Id3Reader.java"

# interfaces
.implements Lcom/shabakaty/downloader/l21;


# instance fields
.field public final a:Lcom/shabakaty/downloader/ka3;

.field public b:Lcom/shabakaty/downloader/fp4;

.field public c:Z

.field public d:J

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ka3;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ka3;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/sx1;->a:Lcom/shabakaty/downloader/ka3;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    iput-wide v0, p0, Lcom/shabakaty/downloader/sx1;->d:J

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/ka3;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sx1;->b:Lcom/shabakaty/downloader/fp4;

    invoke-static {v0}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Lcom/shabakaty/downloader/sx1;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v0

    .line 4
    iget v1, p0, Lcom/shabakaty/downloader/sx1;->f:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    rsub-int/lit8 v1, v1, 0xa

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 6
    iget-object v3, p1, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 7
    iget v4, p1, Lcom/shabakaty/downloader/ka3;->b:I

    .line 8
    iget-object v5, p0, Lcom/shabakaty/downloader/sx1;->a:Lcom/shabakaty/downloader/ka3;

    .line 9
    iget-object v5, v5, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 10
    iget v6, p0, Lcom/shabakaty/downloader/sx1;->f:I

    .line 11
    invoke-static {v3, v4, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget v3, p0, Lcom/shabakaty/downloader/sx1;->f:I

    add-int/2addr v3, v1

    if-ne v3, v2, :cond_3

    .line 13
    iget-object v1, p0, Lcom/shabakaty/downloader/sx1;->a:Lcom/shabakaty/downloader/ka3;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/ka3;->E(I)V

    const/16 v1, 0x49

    .line 14
    iget-object v4, p0, Lcom/shabakaty/downloader/sx1;->a:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v4

    if-ne v1, v4, :cond_2

    const/16 v1, 0x44

    iget-object v4, p0, Lcom/shabakaty/downloader/sx1;->a:Lcom/shabakaty/downloader/ka3;

    .line 15
    invoke-virtual {v4}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v4

    if-ne v1, v4, :cond_2

    const/16 v1, 0x33

    iget-object v4, p0, Lcom/shabakaty/downloader/sx1;->a:Lcom/shabakaty/downloader/ka3;

    .line 16
    invoke-virtual {v4}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v4

    if-eq v1, v4, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/sx1;->a:Lcom/shabakaty/downloader/ka3;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 18
    iget-object v1, p0, Lcom/shabakaty/downloader/sx1;->a:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ka3;->s()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/shabakaty/downloader/sx1;->e:I

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "Id3Reader"

    const-string v0, "Discarding invalid ID3 tag"

    .line 19
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iput-boolean v3, p0, Lcom/shabakaty/downloader/sx1;->c:Z

    return-void

    .line 21
    :cond_3
    :goto_1
    iget v1, p0, Lcom/shabakaty/downloader/sx1;->e:I

    iget v2, p0, Lcom/shabakaty/downloader/sx1;->f:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 22
    iget-object v1, p0, Lcom/shabakaty/downloader/sx1;->b:Lcom/shabakaty/downloader/fp4;

    invoke-interface {v1, p1, v0}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    .line 23
    iget p1, p0, Lcom/shabakaty/downloader/sx1;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/shabakaty/downloader/sx1;->f:I

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/sx1;->c:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    iput-wide v0, p0, Lcom/shabakaty/downloader/sx1;->d:J

    return-void
.end method

.method public c(Lcom/shabakaty/downloader/p91;Lcom/shabakaty/downloader/kr4$d;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/shabakaty/downloader/kr4$d;->a()V

    .line 2
    invoke-virtual {p2}, Lcom/shabakaty/downloader/kr4$d;->c()I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/p91;->h(II)Lcom/shabakaty/downloader/fp4;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/sx1;->b:Lcom/shabakaty/downloader/fp4;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    .line 4
    invoke-virtual {p2}, Lcom/shabakaty/downloader/kr4$d;->b()Ljava/lang/String;

    move-result-object p2

    .line 5
    iput-object p2, v0, Lcom/shabakaty/downloader/wh1$b;->a:Ljava/lang/String;

    const-string p2, "application/id3"

    .line 6
    iput-object p2, v0, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object p2

    .line 8
    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/fp4;->f(Lcom/shabakaty/downloader/wh1;)V

    return-void
.end method

.method public d()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sx1;->b:Lcom/shabakaty/downloader/fp4;

    invoke-static {v0}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Lcom/shabakaty/downloader/sx1;->c:Z

    if-eqz v0, :cond_2

    iget v5, p0, Lcom/shabakaty/downloader/sx1;->e:I

    if-eqz v5, :cond_2

    iget v0, p0, Lcom/shabakaty/downloader/sx1;->f:I

    if-eq v0, v5, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v2, p0, Lcom/shabakaty/downloader/sx1;->d:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/sx1;->b:Lcom/shabakaty/downloader/fp4;

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/shabakaty/downloader/fp4;->b(JIIILcom/shabakaty/downloader/fp4$a;)V

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/shabakaty/downloader/sx1;->c:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public e(JI)V
    .locals 2

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 1
    iput-boolean p3, p0, Lcom/shabakaty/downloader/sx1;->c:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_1

    .line 2
    iput-wide p1, p0, Lcom/shabakaty/downloader/sx1;->d:J

    :cond_1
    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/shabakaty/downloader/sx1;->e:I

    .line 4
    iput p1, p0, Lcom/shabakaty/downloader/sx1;->f:I

    return-void
.end method
