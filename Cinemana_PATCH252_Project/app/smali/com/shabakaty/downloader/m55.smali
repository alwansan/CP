.class public final Lcom/shabakaty/downloader/m55;
.super Ljava/lang/Object;
.source "WavExtractor.java"

# interfaces
.implements Lcom/shabakaty/downloader/n91;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/m55$a;,
        Lcom/shabakaty/downloader/m55$c;,
        Lcom/shabakaty/downloader/m55$b;
    }
.end annotation


# instance fields
.field public a:Lcom/shabakaty/downloader/p91;

.field public b:Lcom/shabakaty/downloader/fp4;

.field public c:Lcom/shabakaty/downloader/m55$b;

.field public d:I

.field public e:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/dx4;->w:Lcom/shabakaty/downloader/dx4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/m55;->d:I

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/shabakaty/downloader/m55;->e:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(JJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/m55;->c:Lcom/shabakaty/downloader/m55$b;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p3, p4}, Lcom/shabakaty/downloader/m55$b;->b(J)V

    :cond_0
    return-void
.end method

.method public f(Lcom/shabakaty/downloader/o91;Lcom/shabakaty/downloader/ie3;)I
    .locals 13

    .line 1
    iget-object p2, p0, Lcom/shabakaty/downloader/m55;->b:Lcom/shabakaty/downloader/fp4;

    invoke-static {p2}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget p2, Lcom/shabakaty/downloader/sy4;->a:I

    .line 3
    iget-object p2, p0, Lcom/shabakaty/downloader/m55;->c:Lcom/shabakaty/downloader/m55$b;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_8

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/o55;->a(Lcom/shabakaty/downloader/o91;)Lcom/shabakaty/downloader/n55;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 5
    iget p2, v5, Lcom/shabakaty/downloader/n55;->a:I

    const/16 v2, 0x11

    if-ne p2, v2, :cond_0

    .line 6
    new-instance p2, Lcom/shabakaty/downloader/m55$a;

    iget-object v2, p0, Lcom/shabakaty/downloader/m55;->a:Lcom/shabakaty/downloader/p91;

    iget-object v3, p0, Lcom/shabakaty/downloader/m55;->b:Lcom/shabakaty/downloader/fp4;

    invoke-direct {p2, v2, v3, v5}, Lcom/shabakaty/downloader/m55$a;-><init>(Lcom/shabakaty/downloader/p91;Lcom/shabakaty/downloader/fp4;Lcom/shabakaty/downloader/n55;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/m55;->c:Lcom/shabakaty/downloader/m55$b;

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x6

    if-ne p2, v2, :cond_1

    .line 7
    new-instance p2, Lcom/shabakaty/downloader/m55$c;

    iget-object v3, p0, Lcom/shabakaty/downloader/m55;->a:Lcom/shabakaty/downloader/p91;

    iget-object v4, p0, Lcom/shabakaty/downloader/m55;->b:Lcom/shabakaty/downloader/fp4;

    const/4 v7, -0x1

    const-string v6, "audio/g711-alaw"

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/m55$c;-><init>(Lcom/shabakaty/downloader/p91;Lcom/shabakaty/downloader/fp4;Lcom/shabakaty/downloader/n55;Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/shabakaty/downloader/m55;->c:Lcom/shabakaty/downloader/m55$b;

    goto :goto_2

    :cond_1
    const/4 v2, 0x7

    if-ne p2, v2, :cond_2

    .line 8
    new-instance p2, Lcom/shabakaty/downloader/m55$c;

    iget-object v3, p0, Lcom/shabakaty/downloader/m55;->a:Lcom/shabakaty/downloader/p91;

    iget-object v4, p0, Lcom/shabakaty/downloader/m55;->b:Lcom/shabakaty/downloader/fp4;

    const/4 v7, -0x1

    const-string v6, "audio/g711-mlaw"

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/m55$c;-><init>(Lcom/shabakaty/downloader/p91;Lcom/shabakaty/downloader/fp4;Lcom/shabakaty/downloader/n55;Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/shabakaty/downloader/m55;->c:Lcom/shabakaty/downloader/m55$b;

    goto :goto_2

    .line 9
    :cond_2
    iget v2, v5, Lcom/shabakaty/downloader/n55;->e:I

    if-eq p2, v0, :cond_5

    const/4 v3, 0x3

    if-eq p2, v3, :cond_3

    const v3, 0xfffe

    if-eq p2, v3, :cond_5

    const/4 p2, 0x0

    const/4 v7, 0x0

    goto :goto_1

    :cond_3
    const/16 p2, 0x20

    if-ne v2, p2, :cond_4

    const/4 p2, 0x4

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    goto :goto_0

    .line 10
    :cond_5
    invoke-static {v2}, Lcom/shabakaty/downloader/sy4;->w(I)I

    move-result p2

    :goto_0
    move v7, p2

    :goto_1
    if-eqz v7, :cond_6

    .line 11
    new-instance p2, Lcom/shabakaty/downloader/m55$c;

    iget-object v3, p0, Lcom/shabakaty/downloader/m55;->a:Lcom/shabakaty/downloader/p91;

    iget-object v4, p0, Lcom/shabakaty/downloader/m55;->b:Lcom/shabakaty/downloader/fp4;

    const-string v6, "audio/raw"

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/m55$c;-><init>(Lcom/shabakaty/downloader/p91;Lcom/shabakaty/downloader/fp4;Lcom/shabakaty/downloader/n55;Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/shabakaty/downloader/m55;->c:Lcom/shabakaty/downloader/m55$b;

    goto :goto_2

    .line 12
    :cond_6
    iget p1, v5, Lcom/shabakaty/downloader/n55;->a:I

    const/16 p2, 0x28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Unsupported WAV format type: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/pa3;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/pa3;

    move-result-object p1

    throw p1

    :cond_7
    const/4 p1, 0x0

    const-string p2, "Unsupported or unrecognized wav header."

    .line 13
    invoke-static {p2, p1}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object p1

    throw p1

    .line 14
    :cond_8
    :goto_2
    iget p2, p0, Lcom/shabakaty/downloader/m55;->d:I

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    if-ne p2, v4, :cond_e

    .line 15
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->p()V

    .line 17
    new-instance p2, Lcom/shabakaty/downloader/ka3;

    const/16 v4, 0x8

    invoke-direct {p2, v4}, Lcom/shabakaty/downloader/ka3;-><init>(I)V

    .line 18
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/o55$a;->a(Lcom/shabakaty/downloader/o91;Lcom/shabakaty/downloader/ka3;)Lcom/shabakaty/downloader/o55$a;

    move-result-object v5

    .line 19
    :goto_3
    iget v6, v5, Lcom/shabakaty/downloader/o55$a;->a:I

    const v7, 0x64617461

    const-string v8, "WavHeaderReader"

    if-eq v6, v7, :cond_c

    const v7, 0x52494646

    if-eq v6, v7, :cond_9

    const v9, 0x666d7420

    if-eq v6, v9, :cond_9

    const/16 v9, 0x27

    const-string v10, "Ignoring unknown WAV chunk: "

    .line 20
    invoke-static {v9, v10, v6, v8}, Lcom/shabakaty/downloader/me;->a(ILjava/lang/String;ILjava/lang/String;)V

    :cond_9
    const-wide/16 v8, 0x8

    .line 21
    iget-wide v10, v5, Lcom/shabakaty/downloader/o55$a;->b:J

    add-long/2addr v10, v8

    .line 22
    iget v5, v5, Lcom/shabakaty/downloader/o55$a;->a:I

    if-ne v5, v7, :cond_a

    const-wide/16 v10, 0xc

    :cond_a
    const-wide/32 v6, 0x7fffffff

    cmp-long v8, v10, v6

    if-gtz v8, :cond_b

    long-to-int v5, v10

    .line 23
    invoke-interface {p1, v5}, Lcom/shabakaty/downloader/o91;->q(I)V

    .line 24
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/o55$a;->a(Lcom/shabakaty/downloader/o91;Lcom/shabakaty/downloader/ka3;)Lcom/shabakaty/downloader/o55$a;

    move-result-object v5

    goto :goto_3

    :cond_b
    const/16 p1, 0x33

    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Chunk is too large (~2GB+) to skip; id: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/pa3;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/pa3;

    move-result-object p1

    throw p1

    .line 26
    :cond_c
    invoke-interface {p1, v4}, Lcom/shabakaty/downloader/o91;->q(I)V

    .line 27
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v6

    .line 28
    iget-wide v4, v5, Lcom/shabakaty/downloader/o55$a;->b:J

    add-long/2addr v4, v6

    .line 29
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->b()J

    move-result-wide v9

    cmp-long p2, v9, v2

    if-eqz p2, :cond_d

    cmp-long p2, v4, v9

    if-lez p2, :cond_d

    const/16 p2, 0x45

    const-string v11, "Data exceeds input length: "

    const-string v12, ", "

    .line 30
    invoke-static {p2, v11, v4, v5, v12}, Lcom/shabakaty/downloader/af;->a(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 31
    invoke-static {v8, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v4, v9

    .line 32
    :cond_d
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    .line 33
    iget-object v4, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v4

    iput v4, p0, Lcom/shabakaty/downloader/m55;->d:I

    .line 34
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/shabakaty/downloader/m55;->e:J

    .line 35
    iget-object p2, p0, Lcom/shabakaty/downloader/m55;->c:Lcom/shabakaty/downloader/m55$b;

    iget v6, p0, Lcom/shabakaty/downloader/m55;->d:I

    invoke-interface {p2, v6, v4, v5}, Lcom/shabakaty/downloader/m55$b;->c(IJ)V

    goto :goto_4

    .line 36
    :cond_e
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p2, v4, v6

    if-nez p2, :cond_f

    .line 37
    iget p2, p0, Lcom/shabakaty/downloader/m55;->d:I

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/o91;->q(I)V

    .line 38
    :cond_f
    :goto_4
    iget-wide v4, p0, Lcom/shabakaty/downloader/m55;->e:J

    cmp-long p2, v4, v2

    if-eqz p2, :cond_10

    goto :goto_5

    :cond_10
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 39
    iget-wide v2, p0, Lcom/shabakaty/downloader/m55;->e:J

    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 40
    iget-object p2, p0, Lcom/shabakaty/downloader/m55;->c:Lcom/shabakaty/downloader/m55$b;

    invoke-interface {p2, p1, v2, v3}, Lcom/shabakaty/downloader/m55$b;->a(Lcom/shabakaty/downloader/o91;J)Z

    move-result p1

    if-eqz p1, :cond_11

    const/4 v1, -0x1

    :cond_11
    return v1
.end method

.method public g(Lcom/shabakaty/downloader/p91;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/m55;->a:Lcom/shabakaty/downloader/p91;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/p91;->h(II)Lcom/shabakaty/downloader/fp4;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/m55;->b:Lcom/shabakaty/downloader/fp4;

    .line 3
    invoke-interface {p1}, Lcom/shabakaty/downloader/p91;->b()V

    return-void
.end method

.method public h(Lcom/shabakaty/downloader/o91;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/o55;->a(Lcom/shabakaty/downloader/o91;)Lcom/shabakaty/downloader/n55;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
