.class public final Lcom/shabakaty/downloader/m5;
.super Ljava/lang/Object;
.source "AmrExtractor.java"

# interfaces
.implements Lcom/shabakaty/downloader/n91;


# static fields
.field public static final o:[I

.field public static final p:[I

.field public static final q:[B

.field public static final r:[B

.field public static final s:I


# instance fields
.field public final a:[B

.field public b:Z

.field public c:J

.field public d:I

.field public e:I

.field public f:Z

.field public g:J

.field public h:I

.field public i:I

.field public j:J

.field public k:Lcom/shabakaty/downloader/p91;

.field public l:Lcom/shabakaty/downloader/fp4;

.field public m:Lcom/shabakaty/downloader/vz3;

.field public n:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/shabakaty/downloader/m5;->o:[I

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/shabakaty/downloader/m5;->p:[I

    const-string v1, "#!AMR\n"

    .line 3
    invoke-static {v1}, Lcom/shabakaty/downloader/sy4;->C(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/m5;->q:[B

    const-string v1, "#!AMR-WB\n"

    .line 4
    invoke-static {v1}, Lcom/shabakaty/downloader/sy4;->C(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/m5;->r:[B

    const/16 v1, 0x8

    .line 5
    aget v0, v0, v1

    sput v0, Lcom/shabakaty/downloader/m5;->s:I

    return-void

    nop

    :array_0
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/m5;->a:[B

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/m5;->h:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    new-array p1, p1, [B

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/m5;->a:[B

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/shabakaty/downloader/m5;->h:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(JJ)V
    .locals 2

    const-wide/16 p3, 0x0

    .line 1
    iput-wide p3, p0, Lcom/shabakaty/downloader/m5;->c:J

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/m5;->d:I

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/m5;->e:I

    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/m5;->m:Lcom/shabakaty/downloader/vz3;

    instance-of v1, v0, Lcom/shabakaty/downloader/ob0;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Lcom/shabakaty/downloader/ob0;

    .line 6
    iget-wide p3, v0, Lcom/shabakaty/downloader/ob0;->b:J

    iget v0, v0, Lcom/shabakaty/downloader/ob0;->e:I

    invoke-static {p1, p2, p3, p4, v0}, Lcom/shabakaty/downloader/ob0;->b(JJI)J

    move-result-wide p1

    .line 7
    iput-wide p1, p0, Lcom/shabakaty/downloader/m5;->j:J

    goto :goto_0

    .line 8
    :cond_0
    iput-wide p3, p0, Lcom/shabakaty/downloader/m5;->j:J

    :goto_0
    return-void
.end method

.method public final c(Lcom/shabakaty/downloader/o91;)I
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->p()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/m5;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/shabakaty/downloader/o91;->s([BII)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/m5;->a:[B

    aget-byte p1, p1, v1

    and-int/lit16 v0, p1, 0x83

    const/4 v2, 0x0

    if-gtz v0, :cond_9

    shr-int/lit8 p1, p1, 0x3

    const/16 v0, 0xf

    and-int/2addr p1, v0

    if-ltz p1, :cond_5

    if-gt p1, v0, :cond_5

    .line 4
    iget-boolean v0, p0, Lcom/shabakaty/downloader/m5;->b:Z

    if-eqz v0, :cond_1

    const/16 v3, 0xa

    if-lt p1, v3, :cond_0

    const/16 v3, 0xd

    if-le p1, v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_4

    if-nez v0, :cond_3

    const/16 v0, 0xc

    if-lt p1, v0, :cond_2

    const/16 v0, 0xe

    if-le p1, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    if-nez v1, :cond_7

    .line 5
    iget-boolean v0, p0, Lcom/shabakaty/downloader/m5;->b:Z

    if-eqz v0, :cond_6

    const-string v0, "WB"

    goto :goto_2

    :cond_6
    const-string v0, "NB"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x23

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Illegal AMR "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " frame type "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object p1

    throw p1

    .line 7
    :cond_7
    iget-boolean v0, p0, Lcom/shabakaty/downloader/m5;->b:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/shabakaty/downloader/m5;->p:[I

    aget p1, v0, p1

    goto :goto_3

    :cond_8
    sget-object v0, Lcom/shabakaty/downloader/m5;->o:[I

    aget p1, v0, p1

    :goto_3
    return p1

    :cond_9
    const/16 v0, 0x2a

    const-string v1, "Invalid padding bits for frame header "

    .line 8
    invoke-static {v0, v1, p1, v2}, Lcom/shabakaty/downloader/d55;->a(ILjava/lang/String;ILjava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object p1

    throw p1
.end method

.method public final d(Lcom/shabakaty/downloader/o91;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/m5;->q:[B

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->p()V

    .line 3
    array-length v1, v0

    new-array v1, v1, [B

    .line 4
    array-length v2, v0

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3, v2}, Lcom/shabakaty/downloader/o91;->s([BII)V

    .line 5
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 6
    iput-boolean v3, p0, Lcom/shabakaty/downloader/m5;->b:Z

    .line 7
    array-length v0, v0

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/o91;->q(I)V

    return v2

    .line 8
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/m5;->r:[B

    .line 9
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->p()V

    .line 10
    array-length v1, v0

    new-array v1, v1, [B

    .line 11
    array-length v4, v0

    invoke-interface {p1, v1, v3, v4}, Lcom/shabakaty/downloader/o91;->s([BII)V

    .line 12
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    iput-boolean v2, p0, Lcom/shabakaty/downloader/m5;->b:Z

    .line 14
    array-length v0, v0

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/o91;->q(I)V

    return v2

    :cond_1
    return v3
.end method

.method public f(Lcom/shabakaty/downloader/o91;Lcom/shabakaty/downloader/ie3;)I
    .locals 11

    .line 1
    iget-object p2, p0, Lcom/shabakaty/downloader/m5;->l:Lcom/shabakaty/downloader/fp4;

    invoke-static {p2}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget p2, Lcom/shabakaty/downloader/sy4;->a:I

    .line 3
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/m5;->d(Lcom/shabakaty/downloader/o91;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const-string p2, "Could not find AMR header."

    .line 5
    invoke-static {p2, p1}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object p1

    throw p1

    .line 6
    :cond_1
    :goto_0
    iget-boolean p2, p0, Lcom/shabakaty/downloader/m5;->n:Z

    const/4 v0, 0x1

    if-nez p2, :cond_4

    .line 7
    iput-boolean v0, p0, Lcom/shabakaty/downloader/m5;->n:Z

    .line 8
    iget-boolean p2, p0, Lcom/shabakaty/downloader/m5;->b:Z

    if-eqz p2, :cond_2

    const-string v1, "audio/amr-wb"

    goto :goto_1

    :cond_2
    const-string v1, "audio/3gpp"

    :goto_1
    if-eqz p2, :cond_3

    const/16 p2, 0x3e80

    goto :goto_2

    :cond_3
    const/16 p2, 0x1f40

    .line 9
    :goto_2
    iget-object v4, p0, Lcom/shabakaty/downloader/m5;->l:Lcom/shabakaty/downloader/fp4;

    new-instance v5, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v5}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    .line 10
    iput-object v1, v5, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 11
    sget v1, Lcom/shabakaty/downloader/m5;->s:I

    .line 12
    iput v1, v5, Lcom/shabakaty/downloader/wh1$b;->l:I

    .line 13
    iput v0, v5, Lcom/shabakaty/downloader/wh1$b;->x:I

    .line 14
    iput p2, v5, Lcom/shabakaty/downloader/wh1$b;->y:I

    .line 15
    invoke-virtual {v5}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object p2

    .line 16
    invoke-interface {v4, p2}, Lcom/shabakaty/downloader/fp4;->f(Lcom/shabakaty/downloader/wh1;)V

    .line 17
    :cond_4
    iget p2, p0, Lcom/shabakaty/downloader/m5;->e:I

    const/4 v1, -0x1

    if-nez p2, :cond_6

    .line 18
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/m5;->c(Lcom/shabakaty/downloader/o91;)I

    move-result p2

    iput p2, p0, Lcom/shabakaty/downloader/m5;->d:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    iput p2, p0, Lcom/shabakaty/downloader/m5;->e:I

    .line 20
    iget p2, p0, Lcom/shabakaty/downloader/m5;->h:I

    if-ne p2, v1, :cond_5

    .line 21
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/shabakaty/downloader/m5;->g:J

    .line 22
    iget p2, p0, Lcom/shabakaty/downloader/m5;->d:I

    iput p2, p0, Lcom/shabakaty/downloader/m5;->h:I

    .line 23
    :cond_5
    iget p2, p0, Lcom/shabakaty/downloader/m5;->h:I

    iget v4, p0, Lcom/shabakaty/downloader/m5;->d:I

    if-ne p2, v4, :cond_6

    .line 24
    iget p2, p0, Lcom/shabakaty/downloader/m5;->i:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/shabakaty/downloader/m5;->i:I

    .line 25
    :cond_6
    iget-object p2, p0, Lcom/shabakaty/downloader/m5;->l:Lcom/shabakaty/downloader/fp4;

    iget v4, p0, Lcom/shabakaty/downloader/m5;->e:I

    .line 26
    invoke-interface {p2, p1, v4, v0}, Lcom/shabakaty/downloader/fp4;->d(Lcom/shabakaty/downloader/rl0;IZ)I

    move-result p2

    if-ne p2, v1, :cond_7

    goto :goto_4

    .line 27
    :cond_7
    iget v1, p0, Lcom/shabakaty/downloader/m5;->e:I

    sub-int/2addr v1, p2

    iput v1, p0, Lcom/shabakaty/downloader/m5;->e:I

    const/4 p2, 0x0

    if-lez v1, :cond_8

    goto :goto_3

    .line 28
    :cond_8
    iget-object v4, p0, Lcom/shabakaty/downloader/m5;->l:Lcom/shabakaty/downloader/fp4;

    iget-wide v5, p0, Lcom/shabakaty/downloader/m5;->j:J

    iget-wide v7, p0, Lcom/shabakaty/downloader/m5;->c:J

    add-long/2addr v5, v7

    const/4 v7, 0x1

    iget v8, p0, Lcom/shabakaty/downloader/m5;->d:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/shabakaty/downloader/fp4;->b(JIIILcom/shabakaty/downloader/fp4$a;)V

    .line 29
    iget-wide v4, p0, Lcom/shabakaty/downloader/m5;->c:J

    const-wide/16 v6, 0x4e20

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/shabakaty/downloader/m5;->c:J

    :goto_3
    const/4 v1, 0x0

    .line 30
    :catch_0
    :goto_4
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->b()J

    .line 31
    iget-boolean p1, p0, Lcom/shabakaty/downloader/m5;->f:Z

    if-eqz p1, :cond_9

    goto :goto_5

    .line 32
    :cond_9
    new-instance p1, Lcom/shabakaty/downloader/vz3$b;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 33
    invoke-direct {p1, v4, v5, v2, v3}, Lcom/shabakaty/downloader/vz3$b;-><init>(JJ)V

    .line 34
    iput-object p1, p0, Lcom/shabakaty/downloader/m5;->m:Lcom/shabakaty/downloader/vz3;

    .line 35
    iget-object p2, p0, Lcom/shabakaty/downloader/m5;->k:Lcom/shabakaty/downloader/p91;

    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/p91;->d(Lcom/shabakaty/downloader/vz3;)V

    .line 36
    iput-boolean v0, p0, Lcom/shabakaty/downloader/m5;->f:Z

    :goto_5
    return v1
.end method

.method public g(Lcom/shabakaty/downloader/p91;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/m5;->k:Lcom/shabakaty/downloader/p91;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/p91;->h(II)Lcom/shabakaty/downloader/fp4;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/m5;->l:Lcom/shabakaty/downloader/fp4;

    .line 3
    invoke-interface {p1}, Lcom/shabakaty/downloader/p91;->b()V

    return-void
.end method

.method public h(Lcom/shabakaty/downloader/o91;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/m5;->d(Lcom/shabakaty/downloader/o91;)Z

    move-result p1

    return p1
.end method
