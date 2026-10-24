.class public final Lcom/shabakaty/downloader/sj3;
.super Ljava/lang/Object;
.source "PsExtractor.java"

# interfaces
.implements Lcom/shabakaty/downloader/n91;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/sj3$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/qn4;

.field public final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/shabakaty/downloader/sj3$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/shabakaty/downloader/ka3;

.field public final d:Lcom/shabakaty/downloader/rj3;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:J

.field public i:Lcom/shabakaty/downloader/qj3;

.field public j:Lcom/shabakaty/downloader/p91;

.field public k:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/fw3;->t:Lcom/shabakaty/downloader/fw3;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/qn4;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/qn4;-><init>(J)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/sj3;->a:Lcom/shabakaty/downloader/qn4;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/ka3;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ka3;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/sj3;->c:Lcom/shabakaty/downloader/ka3;

    .line 5
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/sj3;->b:Landroid/util/SparseArray;

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/rj3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/rj3;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/sj3;->d:Lcom/shabakaty/downloader/rj3;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(JJ)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/sj3;->a:Lcom/shabakaty/downloader/qn4;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/qn4;->d()J

    move-result-wide p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x1

    const/4 v3, 0x0

    cmp-long v4, p1, v0

    if-nez v4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/sj3;->a:Lcom/shabakaty/downloader/qn4;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/qn4;->c()J

    move-result-wide p1

    cmp-long v4, p1, v0

    if-eqz v4, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v4, p1, v0

    if-eqz v4, :cond_1

    cmp-long v0, p1, p3

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move p1, v2

    :cond_2
    if-eqz p1, :cond_3

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/sj3;->a:Lcom/shabakaty/downloader/qn4;

    invoke-virtual {p1, p3, p4}, Lcom/shabakaty/downloader/qn4;->e(J)V

    .line 4
    :cond_3
    iget-object p1, p0, Lcom/shabakaty/downloader/sj3;->i:Lcom/shabakaty/downloader/qj3;

    if-eqz p1, :cond_4

    .line 5
    invoke-virtual {p1, p3, p4}, Lcom/shabakaty/downloader/dm;->e(J)V

    :cond_4
    const/4 p1, 0x0

    .line 6
    :goto_2
    iget-object p2, p0, Lcom/shabakaty/downloader/sj3;->b:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_5

    .line 7
    iget-object p2, p0, Lcom/shabakaty/downloader/sj3;->b:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/sj3$a;

    .line 8
    iput-boolean v3, p2, Lcom/shabakaty/downloader/sj3$a;->f:Z

    .line 9
    iget-object p2, p2, Lcom/shabakaty/downloader/sj3$a;->a:Lcom/shabakaty/downloader/l21;

    invoke-interface {p2}, Lcom/shabakaty/downloader/l21;->b()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public f(Lcom/shabakaty/downloader/o91;Lcom/shabakaty/downloader/ie3;)I
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sj3;->j:Lcom/shabakaty/downloader/p91;

    invoke-static {v0}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->b()J

    move-result-wide v7

    const/4 v0, 0x1

    const-wide/16 v1, -0x1

    const/4 v9, 0x0

    cmp-long v10, v7, v1

    if-eqz v10, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v4, 0x1ba

    if-eqz v1, :cond_c

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/sj3;->d:Lcom/shabakaty/downloader/rj3;

    .line 4
    iget-boolean v5, v1, Lcom/shabakaty/downloader/rj3;->c:Z

    if-nez v5, :cond_c

    .line 5
    iget-boolean v5, v1, Lcom/shabakaty/downloader/rj3;->e:Z

    const-wide/16 v6, 0x4e20

    if-nez v5, :cond_4

    .line 6
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->b()J

    move-result-wide v10

    .line 7
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v6, v5

    int-to-long v7, v6

    sub-long/2addr v10, v7

    .line 8
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v7

    cmp-long v5, v7, v10

    if-eqz v5, :cond_1

    .line 9
    iput-wide v10, p2, Lcom/shabakaty/downloader/ie3;->a:J

    goto/16 :goto_6

    .line 10
    :cond_1
    iget-object p2, v1, Lcom/shabakaty/downloader/rj3;->b:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p2, v6}, Lcom/shabakaty/downloader/ka3;->A(I)V

    .line 11
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->p()V

    .line 12
    iget-object p2, v1, Lcom/shabakaty/downloader/rj3;->b:Lcom/shabakaty/downloader/ka3;

    .line 13
    iget-object p2, p2, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 14
    invoke-interface {p1, p2, v9, v6}, Lcom/shabakaty/downloader/o91;->s([BII)V

    .line 15
    iget-object p1, v1, Lcom/shabakaty/downloader/rj3;->b:Lcom/shabakaty/downloader/ka3;

    .line 16
    iget p2, p1, Lcom/shabakaty/downloader/ka3;->b:I

    .line 17
    iget v5, p1, Lcom/shabakaty/downloader/ka3;->c:I

    add-int/lit8 v5, v5, -0x4

    :goto_1
    if-lt v5, p2, :cond_3

    .line 18
    iget-object v6, p1, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 19
    invoke-virtual {v1, v6, v5}, Lcom/shabakaty/downloader/rj3;->b([BI)I

    move-result v6

    if-ne v6, v4, :cond_2

    add-int/lit8 v6, v5, 0x4

    .line 20
    invoke-virtual {p1, v6}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 21
    invoke-static {p1}, Lcom/shabakaty/downloader/rj3;->c(Lcom/shabakaty/downloader/ka3;)J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-eqz v8, :cond_2

    move-wide v2, v6

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 22
    :cond_3
    :goto_2
    iput-wide v2, v1, Lcom/shabakaty/downloader/rj3;->g:J

    .line 23
    iput-boolean v0, v1, Lcom/shabakaty/downloader/rj3;->e:Z

    goto :goto_5

    .line 24
    :cond_4
    iget-wide v10, v1, Lcom/shabakaty/downloader/rj3;->g:J

    cmp-long v5, v10, v2

    if-nez v5, :cond_5

    .line 25
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/rj3;->a(Lcom/shabakaty/downloader/o91;)I

    goto/16 :goto_7

    .line 26
    :cond_5
    iget-boolean v5, v1, Lcom/shabakaty/downloader/rj3;->d:Z

    if-nez v5, :cond_9

    .line 27
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->b()J

    move-result-wide v10

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v6, v5

    .line 28
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v7

    int-to-long v10, v9

    cmp-long v5, v7, v10

    if-eqz v5, :cond_6

    .line 29
    iput-wide v10, p2, Lcom/shabakaty/downloader/ie3;->a:J

    goto :goto_6

    .line 30
    :cond_6
    iget-object p2, v1, Lcom/shabakaty/downloader/rj3;->b:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p2, v6}, Lcom/shabakaty/downloader/ka3;->A(I)V

    .line 31
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->p()V

    .line 32
    iget-object p2, v1, Lcom/shabakaty/downloader/rj3;->b:Lcom/shabakaty/downloader/ka3;

    .line 33
    iget-object p2, p2, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 34
    invoke-interface {p1, p2, v9, v6}, Lcom/shabakaty/downloader/o91;->s([BII)V

    .line 35
    iget-object p1, v1, Lcom/shabakaty/downloader/rj3;->b:Lcom/shabakaty/downloader/ka3;

    .line 36
    iget p2, p1, Lcom/shabakaty/downloader/ka3;->b:I

    .line 37
    iget v5, p1, Lcom/shabakaty/downloader/ka3;->c:I

    :goto_3
    add-int/lit8 v6, v5, -0x3

    if-ge p2, v6, :cond_8

    .line 38
    iget-object v6, p1, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 39
    invoke-virtual {v1, v6, p2}, Lcom/shabakaty/downloader/rj3;->b([BI)I

    move-result v6

    if-ne v6, v4, :cond_7

    add-int/lit8 v6, p2, 0x4

    .line 40
    invoke-virtual {p1, v6}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 41
    invoke-static {p1}, Lcom/shabakaty/downloader/rj3;->c(Lcom/shabakaty/downloader/ka3;)J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-eqz v8, :cond_7

    move-wide v2, v6

    goto :goto_4

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 42
    :cond_8
    :goto_4
    iput-wide v2, v1, Lcom/shabakaty/downloader/rj3;->f:J

    .line 43
    iput-boolean v0, v1, Lcom/shabakaty/downloader/rj3;->d:Z

    :goto_5
    const/4 v0, 0x0

    :goto_6
    move v9, v0

    goto :goto_7

    .line 44
    :cond_9
    iget-wide v4, v1, Lcom/shabakaty/downloader/rj3;->f:J

    cmp-long p2, v4, v2

    if-nez p2, :cond_a

    .line 45
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/rj3;->a(Lcom/shabakaty/downloader/o91;)I

    goto :goto_7

    .line 46
    :cond_a
    iget-object p2, v1, Lcom/shabakaty/downloader/rj3;->a:Lcom/shabakaty/downloader/qn4;

    invoke-virtual {p2, v4, v5}, Lcom/shabakaty/downloader/qn4;->b(J)J

    move-result-wide v4

    .line 47
    iget-object p2, v1, Lcom/shabakaty/downloader/rj3;->a:Lcom/shabakaty/downloader/qn4;

    iget-wide v6, v1, Lcom/shabakaty/downloader/rj3;->g:J

    invoke-virtual {p2, v6, v7}, Lcom/shabakaty/downloader/qn4;->b(J)J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 48
    iput-wide v6, v1, Lcom/shabakaty/downloader/rj3;->h:J

    const-wide/16 v4, 0x0

    cmp-long p2, v6, v4

    if-gez p2, :cond_b

    const/16 p2, 0x41

    const-string v0, "Invalid duration: "

    const-string v4, ". Using TIME_UNSET instead."

    .line 49
    invoke-static {p2, v0, v6, v7, v4}, Lcom/shabakaty/downloader/wn0;->a(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "PsDurationReader"

    .line 50
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iput-wide v2, v1, Lcom/shabakaty/downloader/rj3;->h:J

    .line 52
    :cond_b
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/rj3;->a(Lcom/shabakaty/downloader/o91;)I

    :goto_7
    return v9

    .line 53
    :cond_c
    iget-boolean v1, p0, Lcom/shabakaty/downloader/sj3;->k:Z

    if-nez v1, :cond_e

    .line 54
    iput-boolean v0, p0, Lcom/shabakaty/downloader/sj3;->k:Z

    .line 55
    iget-object v1, p0, Lcom/shabakaty/downloader/sj3;->d:Lcom/shabakaty/downloader/rj3;

    .line 56
    iget-wide v4, v1, Lcom/shabakaty/downloader/rj3;->h:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_d

    .line 57
    new-instance v11, Lcom/shabakaty/downloader/qj3;

    .line 58
    iget-object v2, v1, Lcom/shabakaty/downloader/rj3;->a:Lcom/shabakaty/downloader/qn4;

    move-object v1, v11

    move-wide v3, v4

    move-wide v5, v7

    .line 59
    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/qj3;-><init>(Lcom/shabakaty/downloader/qn4;JJ)V

    iput-object v11, p0, Lcom/shabakaty/downloader/sj3;->i:Lcom/shabakaty/downloader/qj3;

    .line 60
    iget-object v1, p0, Lcom/shabakaty/downloader/sj3;->j:Lcom/shabakaty/downloader/p91;

    .line 61
    iget-object v2, v11, Lcom/shabakaty/downloader/dm;->a:Lcom/shabakaty/downloader/dm$a;

    .line 62
    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/p91;->d(Lcom/shabakaty/downloader/vz3;)V

    goto :goto_8

    :cond_d
    const/16 v1, 0x1ba

    .line 63
    iget-object v2, p0, Lcom/shabakaty/downloader/sj3;->j:Lcom/shabakaty/downloader/p91;

    new-instance v3, Lcom/shabakaty/downloader/vz3$b;

    const-wide/16 v11, 0x0

    .line 64
    invoke-direct {v3, v4, v5, v11, v12}, Lcom/shabakaty/downloader/vz3$b;-><init>(JJ)V

    .line 65
    invoke-interface {v2, v3}, Lcom/shabakaty/downloader/p91;->d(Lcom/shabakaty/downloader/vz3;)V

    goto :goto_9

    :cond_e
    :goto_8
    const/16 v1, 0x1ba

    .line 66
    :goto_9
    iget-object v2, p0, Lcom/shabakaty/downloader/sj3;->i:Lcom/shabakaty/downloader/qj3;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/shabakaty/downloader/dm;->b()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 67
    iget-object v0, p0, Lcom/shabakaty/downloader/sj3;->i:Lcom/shabakaty/downloader/qj3;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/dm;->a(Lcom/shabakaty/downloader/o91;Lcom/shabakaty/downloader/ie3;)I

    move-result p1

    return p1

    .line 68
    :cond_f
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->p()V

    if-eqz v10, :cond_10

    .line 69
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->j()J

    move-result-wide v2

    sub-long/2addr v7, v2

    goto :goto_a

    :cond_10
    const-wide/16 v7, -0x1

    :goto_a
    const/4 p2, -0x1

    const-wide/16 v2, -0x1

    cmp-long v4, v7, v2

    if-eqz v4, :cond_11

    const-wide/16 v2, 0x4

    cmp-long v4, v7, v2

    if-gez v4, :cond_11

    return p2

    .line 70
    :cond_11
    iget-object v2, p0, Lcom/shabakaty/downloader/sj3;->c:Lcom/shabakaty/downloader/ka3;

    .line 71
    iget-object v2, v2, Lcom/shabakaty/downloader/ka3;->a:[B

    const/4 v3, 0x4

    .line 72
    invoke-interface {p1, v2, v9, v3, v0}, Lcom/shabakaty/downloader/o91;->i([BIIZ)Z

    move-result v2

    if-nez v2, :cond_12

    return p2

    .line 73
    :cond_12
    iget-object v2, p0, Lcom/shabakaty/downloader/sj3;->c:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v2, v9}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 74
    iget-object v2, p0, Lcom/shabakaty/downloader/sj3;->c:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v2

    const/16 v4, 0x1b9

    if-ne v2, v4, :cond_13

    return p2

    :cond_13
    if-ne v2, v1, :cond_14

    .line 75
    iget-object p2, p0, Lcom/shabakaty/downloader/sj3;->c:Lcom/shabakaty/downloader/ka3;

    .line 76
    iget-object p2, p2, Lcom/shabakaty/downloader/ka3;->a:[B

    const/16 v0, 0xa

    .line 77
    invoke-interface {p1, p2, v9, v0}, Lcom/shabakaty/downloader/o91;->s([BII)V

    .line 78
    iget-object p2, p0, Lcom/shabakaty/downloader/sj3;->c:Lcom/shabakaty/downloader/ka3;

    const/16 v0, 0x9

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 79
    iget-object p2, p0, Lcom/shabakaty/downloader/sj3;->c:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result p2

    and-int/lit8 p2, p2, 0x7

    add-int/lit8 p2, p2, 0xe

    .line 80
    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/o91;->q(I)V

    return v9

    :cond_14
    const/16 p2, 0x1bb

    const/4 v1, 0x2

    const/4 v4, 0x6

    if-ne v2, p2, :cond_15

    .line 81
    iget-object p2, p0, Lcom/shabakaty/downloader/sj3;->c:Lcom/shabakaty/downloader/ka3;

    .line 82
    iget-object p2, p2, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 83
    invoke-interface {p1, p2, v9, v1}, Lcom/shabakaty/downloader/o91;->s([BII)V

    .line 84
    iget-object p2, p0, Lcom/shabakaty/downloader/sj3;->c:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p2, v9}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 85
    iget-object p2, p0, Lcom/shabakaty/downloader/sj3;->c:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ka3;->y()I

    move-result p2

    add-int/2addr p2, v4

    .line 86
    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/o91;->q(I)V

    return v9

    :cond_15
    and-int/lit16 p2, v2, -0x100

    const/16 v5, 0x8

    shr-int/2addr p2, v5

    if-eq p2, v0, :cond_16

    .line 87
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/o91;->q(I)V

    return v9

    :cond_16
    and-int/lit16 p2, v2, 0xff

    .line 88
    iget-object v2, p0, Lcom/shabakaty/downloader/sj3;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/sj3$a;

    .line 89
    iget-boolean v6, p0, Lcom/shabakaty/downloader/sj3;->e:Z

    if-nez v6, :cond_1c

    if-nez v2, :cond_1a

    const/16 v6, 0xbd

    const/4 v7, 0x0

    if-ne p2, v6, :cond_17

    .line 90
    new-instance v6, Lcom/shabakaty/downloader/x1;

    .line 91
    invoke-direct {v6, v7}, Lcom/shabakaty/downloader/x1;-><init>(Ljava/lang/String;)V

    .line 92
    iput-boolean v0, p0, Lcom/shabakaty/downloader/sj3;->f:Z

    .line 93
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/shabakaty/downloader/sj3;->h:J

    :goto_b
    move-object v7, v6

    goto :goto_c

    :cond_17
    and-int/lit16 v6, p2, 0xe0

    const/16 v8, 0xc0

    if-ne v6, v8, :cond_18

    .line 94
    new-instance v6, Lcom/shabakaty/downloader/fv2;

    .line 95
    invoke-direct {v6, v7}, Lcom/shabakaty/downloader/fv2;-><init>(Ljava/lang/String;)V

    .line 96
    iput-boolean v0, p0, Lcom/shabakaty/downloader/sj3;->f:Z

    .line 97
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/shabakaty/downloader/sj3;->h:J

    goto :goto_b

    :cond_18
    and-int/lit16 v6, p2, 0xf0

    const/16 v8, 0xe0

    if-ne v6, v8, :cond_19

    .line 98
    new-instance v6, Lcom/shabakaty/downloader/sr1;

    .line 99
    invoke-direct {v6, v7}, Lcom/shabakaty/downloader/sr1;-><init>(Lcom/shabakaty/downloader/rx4;)V

    .line 100
    iput-boolean v0, p0, Lcom/shabakaty/downloader/sj3;->g:Z

    .line 101
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/shabakaty/downloader/sj3;->h:J

    goto :goto_b

    :cond_19
    :goto_c
    if-eqz v7, :cond_1a

    .line 102
    new-instance v2, Lcom/shabakaty/downloader/kr4$d;

    const/16 v6, 0x100

    const/high16 v8, -0x80000000

    .line 103
    invoke-direct {v2, v8, p2, v6}, Lcom/shabakaty/downloader/kr4$d;-><init>(III)V

    .line 104
    iget-object v6, p0, Lcom/shabakaty/downloader/sj3;->j:Lcom/shabakaty/downloader/p91;

    invoke-interface {v7, v6, v2}, Lcom/shabakaty/downloader/l21;->c(Lcom/shabakaty/downloader/p91;Lcom/shabakaty/downloader/kr4$d;)V

    .line 105
    new-instance v2, Lcom/shabakaty/downloader/sj3$a;

    iget-object v6, p0, Lcom/shabakaty/downloader/sj3;->a:Lcom/shabakaty/downloader/qn4;

    invoke-direct {v2, v7, v6}, Lcom/shabakaty/downloader/sj3$a;-><init>(Lcom/shabakaty/downloader/l21;Lcom/shabakaty/downloader/qn4;)V

    .line 106
    iget-object v6, p0, Lcom/shabakaty/downloader/sj3;->b:Landroid/util/SparseArray;

    invoke-virtual {v6, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    :cond_1a
    iget-boolean p2, p0, Lcom/shabakaty/downloader/sj3;->f:Z

    if-eqz p2, :cond_1b

    iget-boolean p2, p0, Lcom/shabakaty/downloader/sj3;->g:Z

    if-eqz p2, :cond_1b

    .line 108
    iget-wide v6, p0, Lcom/shabakaty/downloader/sj3;->h:J

    const-wide/16 v10, 0x2000

    add-long/2addr v6, v10

    goto :goto_d

    :cond_1b
    const-wide/32 v6, 0x100000

    .line 109
    :goto_d
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v10

    cmp-long p2, v10, v6

    if-lez p2, :cond_1c

    .line 110
    iput-boolean v0, p0, Lcom/shabakaty/downloader/sj3;->e:Z

    .line 111
    iget-object p2, p0, Lcom/shabakaty/downloader/sj3;->j:Lcom/shabakaty/downloader/p91;

    invoke-interface {p2}, Lcom/shabakaty/downloader/p91;->b()V

    .line 112
    :cond_1c
    iget-object p2, p0, Lcom/shabakaty/downloader/sj3;->c:Lcom/shabakaty/downloader/ka3;

    .line 113
    iget-object p2, p2, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 114
    invoke-interface {p1, p2, v9, v1}, Lcom/shabakaty/downloader/o91;->s([BII)V

    .line 115
    iget-object p2, p0, Lcom/shabakaty/downloader/sj3;->c:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p2, v9}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 116
    iget-object p2, p0, Lcom/shabakaty/downloader/sj3;->c:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ka3;->y()I

    move-result p2

    add-int/2addr p2, v4

    if-nez v2, :cond_1d

    .line 117
    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/o91;->q(I)V

    goto/16 :goto_e

    .line 118
    :cond_1d
    iget-object v1, p0, Lcom/shabakaty/downloader/sj3;->c:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v1, p2}, Lcom/shabakaty/downloader/ka3;->A(I)V

    .line 119
    iget-object v1, p0, Lcom/shabakaty/downloader/sj3;->c:Lcom/shabakaty/downloader/ka3;

    .line 120
    iget-object v1, v1, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 121
    invoke-interface {p1, v1, v9, p2}, Lcom/shabakaty/downloader/o91;->readFully([BII)V

    .line 122
    iget-object p1, p0, Lcom/shabakaty/downloader/sj3;->c:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p1, v4}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 123
    iget-object p1, p0, Lcom/shabakaty/downloader/sj3;->c:Lcom/shabakaty/downloader/ka3;

    .line 124
    iget-object p2, v2, Lcom/shabakaty/downloader/sj3$a;->c:Lcom/shabakaty/downloader/a55;

    iget-object p2, p2, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    check-cast p2, [B

    const/4 v1, 0x3

    invoke-virtual {p1, p2, v9, v1}, Lcom/shabakaty/downloader/ka3;->e([BII)V

    .line 125
    iget-object p2, v2, Lcom/shabakaty/downloader/sj3$a;->c:Lcom/shabakaty/downloader/a55;

    invoke-virtual {p2, v9}, Lcom/shabakaty/downloader/a55;->s(I)V

    .line 126
    iget-object p2, v2, Lcom/shabakaty/downloader/sj3$a;->c:Lcom/shabakaty/downloader/a55;

    invoke-virtual {p2, v5}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 127
    iget-object p2, v2, Lcom/shabakaty/downloader/sj3$a;->c:Lcom/shabakaty/downloader/a55;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/a55;->j()Z

    move-result p2

    iput-boolean p2, v2, Lcom/shabakaty/downloader/sj3$a;->d:Z

    .line 128
    iget-object p2, v2, Lcom/shabakaty/downloader/sj3$a;->c:Lcom/shabakaty/downloader/a55;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/a55;->j()Z

    move-result p2

    iput-boolean p2, v2, Lcom/shabakaty/downloader/sj3$a;->e:Z

    .line 129
    iget-object p2, v2, Lcom/shabakaty/downloader/sj3$a;->c:Lcom/shabakaty/downloader/a55;

    invoke-virtual {p2, v4}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 130
    iget-object p2, v2, Lcom/shabakaty/downloader/sj3$a;->c:Lcom/shabakaty/downloader/a55;

    invoke-virtual {p2, v5}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result p2

    .line 131
    iget-object v4, v2, Lcom/shabakaty/downloader/sj3$a;->c:Lcom/shabakaty/downloader/a55;

    iget-object v4, v4, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    check-cast v4, [B

    invoke-virtual {p1, v4, v9, p2}, Lcom/shabakaty/downloader/ka3;->e([BII)V

    .line 132
    iget-object p2, v2, Lcom/shabakaty/downloader/sj3$a;->c:Lcom/shabakaty/downloader/a55;

    invoke-virtual {p2, v9}, Lcom/shabakaty/downloader/a55;->s(I)V

    const-wide/16 v4, 0x0

    .line 133
    iput-wide v4, v2, Lcom/shabakaty/downloader/sj3$a;->g:J

    .line 134
    iget-boolean p2, v2, Lcom/shabakaty/downloader/sj3$a;->d:Z

    if-eqz p2, :cond_1f

    .line 135
    iget-object p2, v2, Lcom/shabakaty/downloader/sj3$a;->c:Lcom/shabakaty/downloader/a55;

    invoke-virtual {p2, v3}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 136
    iget-object p2, v2, Lcom/shabakaty/downloader/sj3$a;->c:Lcom/shabakaty/downloader/a55;

    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result p2

    int-to-long v4, p2

    const/16 p2, 0x1e

    shl-long/2addr v4, p2

    .line 137
    iget-object v6, v2, Lcom/shabakaty/downloader/sj3$a;->c:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v6, v0}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 138
    iget-object v6, v2, Lcom/shabakaty/downloader/sj3$a;->c:Lcom/shabakaty/downloader/a55;

    const/16 v7, 0xf

    invoke-virtual {v6, v7}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v6

    shl-int/2addr v6, v7

    int-to-long v8, v6

    or-long/2addr v4, v8

    .line 139
    iget-object v6, v2, Lcom/shabakaty/downloader/sj3$a;->c:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v6, v0}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 140
    iget-object v6, v2, Lcom/shabakaty/downloader/sj3$a;->c:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v6, v7}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v6

    int-to-long v8, v6

    or-long/2addr v4, v8

    .line 141
    iget-object v6, v2, Lcom/shabakaty/downloader/sj3$a;->c:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v6, v0}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 142
    iget-boolean v6, v2, Lcom/shabakaty/downloader/sj3$a;->f:Z

    if-nez v6, :cond_1e

    iget-boolean v6, v2, Lcom/shabakaty/downloader/sj3$a;->e:Z

    if-eqz v6, :cond_1e

    .line 143
    iget-object v6, v2, Lcom/shabakaty/downloader/sj3$a;->c:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v6, v3}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 144
    iget-object v6, v2, Lcom/shabakaty/downloader/sj3$a;->c:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v6, v1}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v1

    int-to-long v8, v1

    shl-long/2addr v8, p2

    .line 145
    iget-object p2, v2, Lcom/shabakaty/downloader/sj3$a;->c:Lcom/shabakaty/downloader/a55;

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 146
    iget-object p2, v2, Lcom/shabakaty/downloader/sj3$a;->c:Lcom/shabakaty/downloader/a55;

    invoke-virtual {p2, v7}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result p2

    shl-int/2addr p2, v7

    int-to-long v10, p2

    or-long/2addr v8, v10

    .line 147
    iget-object p2, v2, Lcom/shabakaty/downloader/sj3$a;->c:Lcom/shabakaty/downloader/a55;

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 148
    iget-object p2, v2, Lcom/shabakaty/downloader/sj3$a;->c:Lcom/shabakaty/downloader/a55;

    invoke-virtual {p2, v7}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result p2

    int-to-long v6, p2

    or-long/2addr v6, v8

    .line 149
    iget-object p2, v2, Lcom/shabakaty/downloader/sj3$a;->c:Lcom/shabakaty/downloader/a55;

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 150
    iget-object p2, v2, Lcom/shabakaty/downloader/sj3$a;->b:Lcom/shabakaty/downloader/qn4;

    invoke-virtual {p2, v6, v7}, Lcom/shabakaty/downloader/qn4;->b(J)J

    .line 151
    iput-boolean v0, v2, Lcom/shabakaty/downloader/sj3$a;->f:Z

    .line 152
    :cond_1e
    iget-object p2, v2, Lcom/shabakaty/downloader/sj3$a;->b:Lcom/shabakaty/downloader/qn4;

    invoke-virtual {p2, v4, v5}, Lcom/shabakaty/downloader/qn4;->b(J)J

    move-result-wide v0

    iput-wide v0, v2, Lcom/shabakaty/downloader/sj3$a;->g:J

    .line 153
    :cond_1f
    iget-object p2, v2, Lcom/shabakaty/downloader/sj3$a;->a:Lcom/shabakaty/downloader/l21;

    iget-wide v0, v2, Lcom/shabakaty/downloader/sj3$a;->g:J

    invoke-interface {p2, v0, v1, v3}, Lcom/shabakaty/downloader/l21;->e(JI)V

    .line 154
    iget-object p2, v2, Lcom/shabakaty/downloader/sj3$a;->a:Lcom/shabakaty/downloader/l21;

    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/l21;->a(Lcom/shabakaty/downloader/ka3;)V

    .line 155
    iget-object p1, v2, Lcom/shabakaty/downloader/sj3$a;->a:Lcom/shabakaty/downloader/l21;

    invoke-interface {p1}, Lcom/shabakaty/downloader/l21;->d()V

    .line 156
    iget-object p1, p0, Lcom/shabakaty/downloader/sj3;->c:Lcom/shabakaty/downloader/ka3;

    .line 157
    iget-object p2, p1, Lcom/shabakaty/downloader/ka3;->a:[B

    array-length p2, p2

    .line 158
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/ka3;->D(I)V

    :goto_e
    const/4 p1, 0x0

    return p1
.end method

.method public g(Lcom/shabakaty/downloader/p91;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/sj3;->j:Lcom/shabakaty/downloader/p91;

    return-void
.end method

.method public h(Lcom/shabakaty/downloader/o91;)Z
    .locals 9

    const/16 v0, 0xe

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 1
    invoke-interface {p1, v1, v2, v0}, Lcom/shabakaty/downloader/o91;->s([BII)V

    .line 2
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v3, 0x1

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    const/4 v4, 0x2

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    const/4 v5, 0x3

    aget-byte v7, v1, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v0, v7

    const/16 v7, 0x1ba

    if-eq v7, v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x4

    .line 3
    aget-byte v7, v1, v0

    and-int/lit16 v7, v7, 0xc4

    const/16 v8, 0x44

    if-eq v7, v8, :cond_1

    return v2

    :cond_1
    const/4 v7, 0x6

    .line 4
    aget-byte v7, v1, v7

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_2

    return v2

    .line 5
    :cond_2
    aget-byte v7, v1, v6

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_3

    return v2

    :cond_3
    const/16 v0, 0x9

    .line 6
    aget-byte v0, v1, v0

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_4

    return v2

    :cond_4
    const/16 v0, 0xc

    .line 7
    aget-byte v0, v1, v0

    and-int/2addr v0, v5

    if-eq v0, v5, :cond_5

    return v2

    :cond_5
    const/16 v0, 0xd

    .line 8
    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0x7

    .line 9
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/o91;->l(I)V

    .line 10
    invoke-interface {p1, v1, v2, v5}, Lcom/shabakaty/downloader/o91;->s([BII)V

    .line 11
    aget-byte p1, v1, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v6

    or-int/2addr p1, v0

    aget-byte v0, v1, v4

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    if-ne v3, p1, :cond_6

    const/4 v2, 0x1

    :cond_6
    return v2
.end method
