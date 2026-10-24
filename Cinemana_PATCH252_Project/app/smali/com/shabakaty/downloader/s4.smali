.class public final Lcom/shabakaty/downloader/s4;
.super Ljava/lang/Object;
.source "AdtsExtractor.java"

# interfaces
.implements Lcom/shabakaty/downloader/n91;


# instance fields
.field public final a:Lcom/shabakaty/downloader/t4;

.field public final b:Lcom/shabakaty/downloader/ka3;

.field public final c:Lcom/shabakaty/downloader/ka3;

.field public final d:Lcom/shabakaty/downloader/a55;

.field public e:Lcom/shabakaty/downloader/p91;

.field public f:J

.field public g:J

.field public h:I

.field public i:Z

.field public j:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/jw3;->t:Lcom/shabakaty/downloader/jw3;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/t4;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    invoke-direct {p1, v0, v1}, Lcom/shabakaty/downloader/t4;-><init>(ZLjava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/s4;->a:Lcom/shabakaty/downloader/t4;

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/ka3;

    const/16 v2, 0x800

    invoke-direct {p1, v2}, Lcom/shabakaty/downloader/ka3;-><init>(I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/s4;->b:Lcom/shabakaty/downloader/ka3;

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/shabakaty/downloader/s4;->h:I

    const-wide/16 v2, -0x1

    .line 7
    iput-wide v2, p0, Lcom/shabakaty/downloader/s4;->g:J

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/ka3;

    const/16 v2, 0xa

    invoke-direct {p1, v2}, Lcom/shabakaty/downloader/ka3;-><init>(I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/s4;->c:Lcom/shabakaty/downloader/ka3;

    .line 9
    new-instance v2, Lcom/shabakaty/downloader/a55;

    .line 10
    iget-object p1, p1, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 11
    invoke-direct {v2, p1, v0, v1}, Lcom/shabakaty/downloader/a55;-><init>([BILcom/shabakaty/downloader/io2;)V

    iput-object v2, p0, Lcom/shabakaty/downloader/s4;->d:Lcom/shabakaty/downloader/a55;

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
    iput-boolean p1, p0, Lcom/shabakaty/downloader/s4;->i:Z

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/s4;->a:Lcom/shabakaty/downloader/t4;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/t4;->b()V

    .line 3
    iput-wide p3, p0, Lcom/shabakaty/downloader/s4;->f:J

    return-void
.end method

.method public final c(Lcom/shabakaty/downloader/o91;)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/s4;->c:Lcom/shabakaty/downloader/ka3;

    .line 2
    iget-object v2, v2, Lcom/shabakaty/downloader/ka3;->a:[B

    const/16 v3, 0xa

    .line 3
    invoke-interface {p1, v2, v0, v3}, Lcom/shabakaty/downloader/o91;->s([BII)V

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/s4;->c:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/s4;->c:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->v()I

    move-result v2

    const v3, 0x494433

    if-eq v2, v3, :cond_1

    .line 6
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->p()V

    .line 7
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/o91;->l(I)V

    .line 8
    iget-wide v2, p0, Lcom/shabakaty/downloader/s4;->g:J

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    int-to-long v2, v1

    .line 9
    iput-wide v2, p0, Lcom/shabakaty/downloader/s4;->g:J

    :cond_0
    return v1

    .line 10
    :cond_1
    iget-object v2, p0, Lcom/shabakaty/downloader/s4;->c:Lcom/shabakaty/downloader/ka3;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 11
    iget-object v2, p0, Lcom/shabakaty/downloader/s4;->c:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->s()I

    move-result v2

    add-int/lit8 v3, v2, 0xa

    add-int/2addr v1, v3

    .line 12
    invoke-interface {p1, v2}, Lcom/shabakaty/downloader/o91;->l(I)V

    goto :goto_0
.end method

.method public f(Lcom/shabakaty/downloader/o91;Lcom/shabakaty/downloader/ie3;)I
    .locals 9

    .line 1
    iget-object p2, p0, Lcom/shabakaty/downloader/s4;->e:Lcom/shabakaty/downloader/p91;

    invoke-static {p2}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->b()J

    .line 3
    iget-object p2, p0, Lcom/shabakaty/downloader/s4;->b:Lcom/shabakaty/downloader/ka3;

    .line 4
    iget-object p2, p2, Lcom/shabakaty/downloader/ka3;->a:[B

    const/16 v0, 0x800

    const/4 v1, 0x0

    .line 5
    invoke-interface {p1, p2, v1, v0}, Lcom/shabakaty/downloader/o91;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 6
    :goto_0
    iget-boolean v3, p0, Lcom/shabakaty/downloader/s4;->j:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iget-object v5, p0, Lcom/shabakaty/downloader/s4;->e:Lcom/shabakaty/downloader/p91;

    new-instance v6, Lcom/shabakaty/downloader/vz3$b;

    const-wide/16 v7, 0x0

    .line 8
    invoke-direct {v6, v3, v4, v7, v8}, Lcom/shabakaty/downloader/vz3$b;-><init>(JJ)V

    .line 9
    invoke-interface {v5, v6}, Lcom/shabakaty/downloader/p91;->d(Lcom/shabakaty/downloader/vz3;)V

    .line 10
    iput-boolean v0, p0, Lcom/shabakaty/downloader/s4;->j:Z

    :goto_1
    if-eqz v2, :cond_2

    return p2

    .line 11
    :cond_2
    iget-object p2, p0, Lcom/shabakaty/downloader/s4;->b:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 12
    iget-object p2, p0, Lcom/shabakaty/downloader/s4;->b:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/ka3;->D(I)V

    .line 13
    iget-boolean p1, p0, Lcom/shabakaty/downloader/s4;->i:Z

    if-nez p1, :cond_3

    .line 14
    iget-object p1, p0, Lcom/shabakaty/downloader/s4;->a:Lcom/shabakaty/downloader/t4;

    iget-wide v2, p0, Lcom/shabakaty/downloader/s4;->f:J

    const/4 p2, 0x4

    invoke-virtual {p1, v2, v3, p2}, Lcom/shabakaty/downloader/t4;->e(JI)V

    .line 15
    iput-boolean v0, p0, Lcom/shabakaty/downloader/s4;->i:Z

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/shabakaty/downloader/s4;->a:Lcom/shabakaty/downloader/t4;

    iget-object p2, p0, Lcom/shabakaty/downloader/s4;->b:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/t4;->a(Lcom/shabakaty/downloader/ka3;)V

    return v1
.end method

.method public g(Lcom/shabakaty/downloader/p91;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/s4;->e:Lcom/shabakaty/downloader/p91;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/s4;->a:Lcom/shabakaty/downloader/t4;

    new-instance v1, Lcom/shabakaty/downloader/kr4$d;

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lcom/shabakaty/downloader/kr4$d;-><init>(III)V

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/shabakaty/downloader/t4;->c(Lcom/shabakaty/downloader/p91;Lcom/shabakaty/downloader/kr4$d;)V

    .line 5
    invoke-interface {p1}, Lcom/shabakaty/downloader/p91;->b()V

    return-void
.end method

.method public h(Lcom/shabakaty/downloader/o91;)Z
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/s4;->c(Lcom/shabakaty/downloader/o91;)I

    move-result v0

    const/4 v1, 0x0

    move v3, v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 2
    :cond_0
    iget-object v5, p0, Lcom/shabakaty/downloader/s4;->c:Lcom/shabakaty/downloader/ka3;

    .line 3
    iget-object v5, v5, Lcom/shabakaty/downloader/ka3;->a:[B

    const/4 v6, 0x2

    .line 4
    invoke-interface {p1, v5, v1, v6}, Lcom/shabakaty/downloader/o91;->s([BII)V

    .line 5
    iget-object v5, p0, Lcom/shabakaty/downloader/s4;->c:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v5, v1}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 6
    iget-object v5, p0, Lcom/shabakaty/downloader/s4;->c:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->y()I

    move-result v5

    .line 7
    invoke-static {v5}, Lcom/shabakaty/downloader/t4;->g(I)Z

    move-result v5

    if-nez v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 8
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->p()V

    .line 9
    invoke-interface {p1, v3}, Lcom/shabakaty/downloader/o91;->l(I)V

    :goto_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    add-int/2addr v2, v5

    const/4 v6, 0x4

    if-lt v2, v6, :cond_2

    const/16 v7, 0xbc

    if-le v4, v7, :cond_2

    return v5

    .line 10
    :cond_2
    iget-object v5, p0, Lcom/shabakaty/downloader/s4;->c:Lcom/shabakaty/downloader/ka3;

    .line 11
    iget-object v5, v5, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 12
    invoke-interface {p1, v5, v1, v6}, Lcom/shabakaty/downloader/o91;->s([BII)V

    .line 13
    iget-object v5, p0, Lcom/shabakaty/downloader/s4;->d:Lcom/shabakaty/downloader/a55;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/a55;->s(I)V

    .line 14
    iget-object v5, p0, Lcom/shabakaty/downloader/s4;->d:Lcom/shabakaty/downloader/a55;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v5

    const/4 v6, 0x6

    if-gt v5, v6, :cond_3

    add-int/lit8 v3, v3, 0x1

    .line 15
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->p()V

    .line 16
    invoke-interface {p1, v3}, Lcom/shabakaty/downloader/o91;->l(I)V

    goto :goto_0

    :cond_3
    add-int/lit8 v6, v5, -0x6

    .line 17
    invoke-interface {p1, v6}, Lcom/shabakaty/downloader/o91;->l(I)V

    add-int/2addr v4, v5

    :goto_1
    sub-int v5, v3, v0

    const/16 v6, 0x2000

    if-lt v5, v6, :cond_0

    return v1
.end method
