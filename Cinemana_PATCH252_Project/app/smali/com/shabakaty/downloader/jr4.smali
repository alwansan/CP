.class public final Lcom/shabakaty/downloader/jr4;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Lcom/shabakaty/downloader/n91;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/jr4$b;,
        Lcom/shabakaty/downloader/jr4$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/qn4;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/shabakaty/downloader/ka3;

.field public final e:Landroid/util/SparseIntArray;

.field public final f:Lcom/shabakaty/downloader/kr4$c;

.field public final g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/shabakaty/downloader/kr4;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Landroid/util/SparseBooleanArray;

.field public final i:Landroid/util/SparseBooleanArray;

.field public final j:Lcom/shabakaty/downloader/ir4;

.field public k:Lcom/shabakaty/downloader/hr4;

.field public l:Lcom/shabakaty/downloader/p91;

.field public m:I

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Lcom/shabakaty/downloader/kr4;

.field public r:I

.field public s:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/wx;->w:Lcom/shabakaty/downloader/wx;

    return-void
.end method

.method public constructor <init>(ILcom/shabakaty/downloader/qn4;Lcom/shabakaty/downloader/kr4$c;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lcom/shabakaty/downloader/jr4;->f:Lcom/shabakaty/downloader/kr4$c;

    .line 4
    iput p4, p0, Lcom/shabakaty/downloader/jr4;->b:I

    .line 5
    iput p1, p0, Lcom/shabakaty/downloader/jr4;->a:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/jr4;->c:Ljava/util/List;

    .line 7
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/jr4;->c:Ljava/util/List;

    .line 9
    :goto_1
    new-instance p1, Lcom/shabakaty/downloader/ka3;

    const/16 p2, 0x24b8

    new-array p2, p2, [B

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/shabakaty/downloader/ka3;-><init>([BI)V

    iput-object p1, p0, Lcom/shabakaty/downloader/jr4;->d:Lcom/shabakaty/downloader/ka3;

    .line 10
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/jr4;->h:Landroid/util/SparseBooleanArray;

    .line 11
    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Lcom/shabakaty/downloader/jr4;->i:Landroid/util/SparseBooleanArray;

    .line 12
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/shabakaty/downloader/jr4;->g:Landroid/util/SparseArray;

    .line 13
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/shabakaty/downloader/jr4;->e:Landroid/util/SparseIntArray;

    .line 14
    new-instance v1, Lcom/shabakaty/downloader/ir4;

    invoke-direct {v1, p4}, Lcom/shabakaty/downloader/ir4;-><init>(I)V

    iput-object v1, p0, Lcom/shabakaty/downloader/jr4;->j:Lcom/shabakaty/downloader/ir4;

    const/4 p4, -0x1

    .line 15
    iput p4, p0, Lcom/shabakaty/downloader/jr4;->s:I

    .line 16
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 17
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 18
    invoke-interface {p3}, Lcom/shabakaty/downloader/kr4$c;->a()Landroid/util/SparseArray;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_2
    if-ge p3, p2, :cond_2

    .line 20
    iget-object p4, p0, Lcom/shabakaty/downloader/jr4;->g:Landroid/util/SparseArray;

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/kr4;

    invoke-virtual {p4, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 21
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/jr4;->g:Landroid/util/SparseArray;

    new-instance p2, Lcom/shabakaty/downloader/uz3;

    new-instance p3, Lcom/shabakaty/downloader/jr4$a;

    invoke-direct {p3, p0}, Lcom/shabakaty/downloader/jr4$a;-><init>(Lcom/shabakaty/downloader/jr4;)V

    invoke-direct {p2, p3}, Lcom/shabakaty/downloader/uz3;-><init>(Lcom/shabakaty/downloader/tz3;)V

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/shabakaty/downloader/jr4;->q:Lcom/shabakaty/downloader/kr4;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(JJ)V
    .locals 10

    .line 1
    iget p1, p0, Lcom/shabakaty/downloader/jr4;->a:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/jr4;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_1
    const-wide/16 v2, 0x0

    if-ge v1, p1, :cond_5

    .line 3
    iget-object v4, p0, Lcom/shabakaty/downloader/jr4;->c:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/qn4;

    .line 4
    invoke-virtual {v4}, Lcom/shabakaty/downloader/qn4;->d()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v5, v7

    if-nez v9, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_3

    .line 5
    invoke-virtual {v4}, Lcom/shabakaty/downloader/qn4;->c()J

    move-result-wide v5

    cmp-long v9, v5, v7

    if-eqz v9, :cond_2

    cmp-long v7, v5, v2

    if-eqz v7, :cond_2

    cmp-long v2, v5, p3

    if-eqz v2, :cond_2

    const/4 v5, 0x1

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    .line 6
    invoke-virtual {v4, p3, p4}, Lcom/shabakaty/downloader/qn4;->e(J)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    cmp-long p1, p3, v2

    if-eqz p1, :cond_6

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/jr4;->k:Lcom/shabakaty/downloader/hr4;

    if-eqz p1, :cond_6

    .line 8
    invoke-virtual {p1, p3, p4}, Lcom/shabakaty/downloader/dm;->e(J)V

    .line 9
    :cond_6
    iget-object p1, p0, Lcom/shabakaty/downloader/jr4;->d:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ka3;->A(I)V

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/jr4;->e:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    const/4 p1, 0x0

    .line 11
    :goto_4
    iget-object p2, p0, Lcom/shabakaty/downloader/jr4;->g:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_7

    .line 12
    iget-object p2, p0, Lcom/shabakaty/downloader/jr4;->g:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/kr4;

    invoke-interface {p2}, Lcom/shabakaty/downloader/kr4;->b()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 13
    :cond_7
    iput v0, p0, Lcom/shabakaty/downloader/jr4;->r:I

    return-void
.end method

.method public f(Lcom/shabakaty/downloader/o91;Lcom/shabakaty/downloader/ie3;)I
    .locals 13

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->b()J

    move-result-wide v8

    .line 2
    iget-boolean v0, p0, Lcom/shabakaty/downloader/jr4;->n:Z

    const/16 v1, 0x47

    const-wide/16 v2, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_18

    cmp-long v0, v8, v2

    if-eqz v0, :cond_0

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/jr4;->a:I

    if-eq v0, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v10, 0x0

    if-eqz v0, :cond_13

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/jr4;->j:Lcom/shabakaty/downloader/ir4;

    .line 5
    iget-boolean v4, v0, Lcom/shabakaty/downloader/ir4;->d:Z

    if-nez v4, :cond_13

    .line 6
    iget v4, p0, Lcom/shabakaty/downloader/jr4;->s:I

    if-gtz v4, :cond_1

    .line 7
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ir4;->a(Lcom/shabakaty/downloader/o91;)I

    goto/16 :goto_c

    .line 8
    :cond_1
    iget-boolean v7, v0, Lcom/shabakaty/downloader/ir4;->f:Z

    if-nez v7, :cond_a

    .line 9
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->b()J

    move-result-wide v7

    .line 10
    iget v9, v0, Lcom/shabakaty/downloader/ir4;->a:I

    int-to-long v9, v9

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v10, v9

    int-to-long v11, v10

    sub-long/2addr v7, v11

    .line 11
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v11

    cmp-long v9, v11, v7

    if-eqz v9, :cond_2

    .line 12
    iput-wide v7, p2, Lcom/shabakaty/downloader/ie3;->a:J

    goto/16 :goto_b

    .line 13
    :cond_2
    iget-object p2, v0, Lcom/shabakaty/downloader/ir4;->c:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p2, v10}, Lcom/shabakaty/downloader/ka3;->A(I)V

    .line 14
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->p()V

    .line 15
    iget-object p2, v0, Lcom/shabakaty/downloader/ir4;->c:Lcom/shabakaty/downloader/ka3;

    .line 16
    iget-object p2, p2, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 17
    invoke-interface {p1, p2, v6, v10}, Lcom/shabakaty/downloader/o91;->s([BII)V

    .line 18
    iget-object p1, v0, Lcom/shabakaty/downloader/ir4;->c:Lcom/shabakaty/downloader/ka3;

    .line 19
    iget p2, p1, Lcom/shabakaty/downloader/ka3;->b:I

    .line 20
    iget v6, p1, Lcom/shabakaty/downloader/ka3;->c:I

    add-int/lit16 v7, v6, -0xbc

    :goto_1
    if-lt v7, p2, :cond_9

    .line 21
    iget-object v8, p1, Lcom/shabakaty/downloader/ka3;->a:[B

    const/4 v9, -0x4

    const/4 v10, 0x0

    :goto_2
    const/4 v11, 0x4

    if-gt v9, v11, :cond_6

    mul-int/lit16 v11, v9, 0xbc

    add-int/2addr v11, v7

    if-lt v11, p2, :cond_4

    if-ge v11, v6, :cond_4

    .line 22
    aget-byte v11, v8, v11

    if-eq v11, v1, :cond_3

    goto :goto_3

    :cond_3
    add-int/2addr v10, v5

    const/4 v11, 0x5

    if-ne v10, v11, :cond_5

    const/4 v8, 0x1

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v10, 0x0

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    :goto_4
    if-nez v8, :cond_7

    goto :goto_5

    .line 23
    :cond_7
    invoke-static {p1, v7, v4}, Lcom/shabakaty/downloader/kl3;->f(Lcom/shabakaty/downloader/ka3;II)J

    move-result-wide v8

    cmp-long v10, v8, v2

    if-eqz v10, :cond_8

    move-wide v2, v8

    goto :goto_6

    :cond_8
    :goto_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 24
    :cond_9
    :goto_6
    iput-wide v2, v0, Lcom/shabakaty/downloader/ir4;->h:J

    .line 25
    iput-boolean v5, v0, Lcom/shabakaty/downloader/ir4;->f:Z

    goto :goto_a

    .line 26
    :cond_a
    iget-wide v7, v0, Lcom/shabakaty/downloader/ir4;->h:J

    cmp-long v9, v7, v2

    if-nez v9, :cond_b

    .line 27
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ir4;->a(Lcom/shabakaty/downloader/o91;)I

    goto/16 :goto_c

    .line 28
    :cond_b
    iget-boolean v7, v0, Lcom/shabakaty/downloader/ir4;->e:Z

    if-nez v7, :cond_10

    .line 29
    iget v7, v0, Lcom/shabakaty/downloader/ir4;->a:I

    int-to-long v7, v7

    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->b()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v8, v7

    .line 30
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v9

    int-to-long v11, v6

    cmp-long v7, v9, v11

    if-eqz v7, :cond_c

    .line 31
    iput-wide v11, p2, Lcom/shabakaty/downloader/ie3;->a:J

    goto :goto_b

    .line 32
    :cond_c
    iget-object p2, v0, Lcom/shabakaty/downloader/ir4;->c:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p2, v8}, Lcom/shabakaty/downloader/ka3;->A(I)V

    .line 33
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->p()V

    .line 34
    iget-object p2, v0, Lcom/shabakaty/downloader/ir4;->c:Lcom/shabakaty/downloader/ka3;

    .line 35
    iget-object p2, p2, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 36
    invoke-interface {p1, p2, v6, v8}, Lcom/shabakaty/downloader/o91;->s([BII)V

    .line 37
    iget-object p1, v0, Lcom/shabakaty/downloader/ir4;->c:Lcom/shabakaty/downloader/ka3;

    .line 38
    iget p2, p1, Lcom/shabakaty/downloader/ka3;->b:I

    .line 39
    iget v6, p1, Lcom/shabakaty/downloader/ka3;->c:I

    :goto_7
    if-ge p2, v6, :cond_f

    .line 40
    iget-object v7, p1, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 41
    aget-byte v7, v7, p2

    if-eq v7, v1, :cond_d

    goto :goto_8

    .line 42
    :cond_d
    invoke-static {p1, p2, v4}, Lcom/shabakaty/downloader/kl3;->f(Lcom/shabakaty/downloader/ka3;II)J

    move-result-wide v7

    cmp-long v9, v7, v2

    if-eqz v9, :cond_e

    move-wide v2, v7

    goto :goto_9

    :cond_e
    :goto_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .line 43
    :cond_f
    :goto_9
    iput-wide v2, v0, Lcom/shabakaty/downloader/ir4;->g:J

    .line 44
    iput-boolean v5, v0, Lcom/shabakaty/downloader/ir4;->e:Z

    :goto_a
    const/4 v5, 0x0

    :goto_b
    move v6, v5

    goto :goto_c

    .line 45
    :cond_10
    iget-wide v4, v0, Lcom/shabakaty/downloader/ir4;->g:J

    cmp-long p2, v4, v2

    if-nez p2, :cond_11

    .line 46
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ir4;->a(Lcom/shabakaty/downloader/o91;)I

    goto :goto_c

    .line 47
    :cond_11
    iget-object p2, v0, Lcom/shabakaty/downloader/ir4;->b:Lcom/shabakaty/downloader/qn4;

    invoke-virtual {p2, v4, v5}, Lcom/shabakaty/downloader/qn4;->b(J)J

    move-result-wide v4

    .line 48
    iget-object p2, v0, Lcom/shabakaty/downloader/ir4;->b:Lcom/shabakaty/downloader/qn4;

    iget-wide v7, v0, Lcom/shabakaty/downloader/ir4;->h:J

    invoke-virtual {p2, v7, v8}, Lcom/shabakaty/downloader/qn4;->b(J)J

    move-result-wide v7

    sub-long/2addr v7, v4

    .line 49
    iput-wide v7, v0, Lcom/shabakaty/downloader/ir4;->i:J

    cmp-long p2, v7, v10

    if-gez p2, :cond_12

    const/16 p2, 0x41

    const-string v1, "Invalid duration: "

    const-string v4, ". Using TIME_UNSET instead."

    .line 50
    invoke-static {p2, v1, v7, v8, v4}, Lcom/shabakaty/downloader/wn0;->a(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "TsDurationReader"

    .line 51
    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iput-wide v2, v0, Lcom/shabakaty/downloader/ir4;->i:J

    .line 53
    :cond_12
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ir4;->a(Lcom/shabakaty/downloader/o91;)I

    :goto_c
    return v6

    .line 54
    :cond_13
    iget-boolean v0, p0, Lcom/shabakaty/downloader/jr4;->o:Z

    if-nez v0, :cond_15

    .line 55
    iput-boolean v5, p0, Lcom/shabakaty/downloader/jr4;->o:Z

    .line 56
    iget-object v0, p0, Lcom/shabakaty/downloader/jr4;->j:Lcom/shabakaty/downloader/ir4;

    .line 57
    iget-wide v4, v0, Lcom/shabakaty/downloader/ir4;->i:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_14

    .line 58
    new-instance v12, Lcom/shabakaty/downloader/hr4;

    .line 59
    iget-object v1, v0, Lcom/shabakaty/downloader/ir4;->b:Lcom/shabakaty/downloader/qn4;

    .line 60
    iget v6, p0, Lcom/shabakaty/downloader/jr4;->s:I

    iget v7, p0, Lcom/shabakaty/downloader/jr4;->b:I

    move-object v0, v12

    move-wide v2, v4

    move-wide v4, v8

    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/downloader/hr4;-><init>(Lcom/shabakaty/downloader/qn4;JJII)V

    iput-object v12, p0, Lcom/shabakaty/downloader/jr4;->k:Lcom/shabakaty/downloader/hr4;

    .line 61
    iget-object v0, p0, Lcom/shabakaty/downloader/jr4;->l:Lcom/shabakaty/downloader/p91;

    .line 62
    iget-object v1, v12, Lcom/shabakaty/downloader/dm;->a:Lcom/shabakaty/downloader/dm$a;

    .line 63
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/p91;->d(Lcom/shabakaty/downloader/vz3;)V

    goto :goto_d

    .line 64
    :cond_14
    iget-object v0, p0, Lcom/shabakaty/downloader/jr4;->l:Lcom/shabakaty/downloader/p91;

    new-instance v1, Lcom/shabakaty/downloader/vz3$b;

    .line 65
    invoke-direct {v1, v4, v5, v10, v11}, Lcom/shabakaty/downloader/vz3$b;-><init>(JJ)V

    .line 66
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/p91;->d(Lcom/shabakaty/downloader/vz3;)V

    .line 67
    :cond_15
    :goto_d
    iget-boolean v0, p0, Lcom/shabakaty/downloader/jr4;->p:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/shabakaty/downloader/jr4;->p:Z

    .line 69
    invoke-virtual {p0, v10, v11, v10, v11}, Lcom/shabakaty/downloader/jr4;->b(JJ)V

    .line 70
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v1

    cmp-long v3, v1, v10

    if-eqz v3, :cond_17

    .line 71
    iput-wide v10, p2, Lcom/shabakaty/downloader/ie3;->a:J

    const/4 p1, 0x1

    return p1

    :cond_16
    const/4 v0, 0x0

    :cond_17
    const/4 v1, 0x1

    .line 72
    iget-object v2, p0, Lcom/shabakaty/downloader/jr4;->k:Lcom/shabakaty/downloader/hr4;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Lcom/shabakaty/downloader/dm;->b()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 73
    iget-object v0, p0, Lcom/shabakaty/downloader/jr4;->k:Lcom/shabakaty/downloader/hr4;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/dm;->a(Lcom/shabakaty/downloader/o91;Lcom/shabakaty/downloader/ie3;)I

    move-result p1

    return p1

    :cond_18
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 74
    :cond_19
    iget-object p2, p0, Lcom/shabakaty/downloader/jr4;->d:Lcom/shabakaty/downloader/ka3;

    .line 75
    iget-object v2, p2, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 76
    iget v3, p2, Lcom/shabakaty/downloader/ka3;->b:I

    rsub-int v3, v3, 0x24b8

    const/16 v4, 0xbc

    if-ge v3, v4, :cond_1b

    .line 77
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result p2

    if-lez p2, :cond_1a

    .line 78
    iget-object v3, p0, Lcom/shabakaty/downloader/jr4;->d:Lcom/shabakaty/downloader/ka3;

    .line 79
    iget v3, v3, Lcom/shabakaty/downloader/ka3;->b:I

    .line 80
    invoke-static {v2, v3, v2, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    :cond_1a
    iget-object v3, p0, Lcom/shabakaty/downloader/jr4;->d:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v3, v2, p2}, Lcom/shabakaty/downloader/ka3;->C([BI)V

    .line 82
    :cond_1b
    :goto_e
    iget-object p2, p0, Lcom/shabakaty/downloader/jr4;->d:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result p2

    const/4 v3, -0x1

    if-ge p2, v4, :cond_1d

    .line 83
    iget-object p2, p0, Lcom/shabakaty/downloader/jr4;->d:Lcom/shabakaty/downloader/ka3;

    .line 84
    iget p2, p2, Lcom/shabakaty/downloader/ka3;->c:I

    rsub-int v5, p2, 0x24b8

    .line 85
    invoke-interface {p1, v2, p2, v5}, Lcom/shabakaty/downloader/o91;->read([BII)I

    move-result v5

    if-ne v5, v3, :cond_1c

    const/4 p1, 0x0

    goto :goto_f

    .line 86
    :cond_1c
    iget-object v3, p0, Lcom/shabakaty/downloader/jr4;->d:Lcom/shabakaty/downloader/ka3;

    add-int/2addr p2, v5

    invoke-virtual {v3, p2}, Lcom/shabakaty/downloader/ka3;->D(I)V

    goto :goto_e

    :cond_1d
    const/4 p1, 0x1

    :goto_f
    if-nez p1, :cond_1e

    return v3

    .line 87
    :cond_1e
    iget-object p1, p0, Lcom/shabakaty/downloader/jr4;->d:Lcom/shabakaty/downloader/ka3;

    .line 88
    iget p2, p1, Lcom/shabakaty/downloader/ka3;->b:I

    .line 89
    iget v2, p1, Lcom/shabakaty/downloader/ka3;->c:I

    .line 90
    iget-object p1, p1, Lcom/shabakaty/downloader/ka3;->a:[B

    move v3, p2

    :goto_10
    if-ge v3, v2, :cond_1f

    .line 91
    aget-byte v4, p1, v3

    const/16 v5, 0x47

    if-eq v4, v5, :cond_1f

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 92
    :cond_1f
    iget-object p1, p0, Lcom/shabakaty/downloader/jr4;->d:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p1, v3}, Lcom/shabakaty/downloader/ka3;->E(I)V

    add-int/lit16 p1, v3, 0xbc

    const/4 v4, 0x0

    if-le p1, v2, :cond_21

    .line 93
    iget v2, p0, Lcom/shabakaty/downloader/jr4;->r:I

    sub-int/2addr v3, p2

    add-int/2addr v3, v2

    iput v3, p0, Lcom/shabakaty/downloader/jr4;->r:I

    .line 94
    iget p2, p0, Lcom/shabakaty/downloader/jr4;->a:I

    const/4 v2, 0x2

    if-ne p2, v2, :cond_22

    const/16 p2, 0x178

    if-gt v3, p2, :cond_20

    goto :goto_11

    :cond_20
    const-string p1, "Cannot find sync byte. Most likely not a Transport Stream."

    .line 95
    invoke-static {p1, v4}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object p1

    throw p1

    :cond_21
    const/4 v2, 0x2

    .line 96
    iput v0, p0, Lcom/shabakaty/downloader/jr4;->r:I

    .line 97
    :cond_22
    :goto_11
    iget-object p2, p0, Lcom/shabakaty/downloader/jr4;->d:Lcom/shabakaty/downloader/ka3;

    .line 98
    iget v3, p2, Lcom/shabakaty/downloader/ka3;->c:I

    if-le p1, v3, :cond_23

    return v0

    .line 99
    :cond_23
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result p2

    const/high16 v5, 0x800000

    and-int/2addr v5, p2

    if-eqz v5, :cond_24

    .line 100
    iget-object p2, p0, Lcom/shabakaty/downloader/jr4;->d:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/ka3;->E(I)V

    return v0

    :cond_24
    const/high16 v5, 0x400000

    and-int/2addr v5, p2

    if-eqz v5, :cond_25

    const/4 v5, 0x1

    goto :goto_12

    :cond_25
    const/4 v5, 0x0

    :goto_12
    or-int/lit8 v5, v5, 0x0

    const v6, 0x1fff00

    and-int/2addr v6, p2

    shr-int/lit8 v6, v6, 0x8

    and-int/lit8 v7, p2, 0x20

    if-eqz v7, :cond_26

    const/4 v7, 0x1

    goto :goto_13

    :cond_26
    const/4 v7, 0x0

    :goto_13
    and-int/lit8 v10, p2, 0x10

    if-eqz v10, :cond_27

    const/4 v10, 0x1

    goto :goto_14

    :cond_27
    const/4 v10, 0x0

    :goto_14
    if-eqz v10, :cond_28

    .line 101
    iget-object v4, p0, Lcom/shabakaty/downloader/jr4;->g:Landroid/util/SparseArray;

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/kr4;

    :cond_28
    if-nez v4, :cond_29

    .line 102
    iget-object p2, p0, Lcom/shabakaty/downloader/jr4;->d:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/ka3;->E(I)V

    return v0

    .line 103
    :cond_29
    iget v10, p0, Lcom/shabakaty/downloader/jr4;->a:I

    if-eq v10, v2, :cond_2b

    and-int/lit8 p2, p2, 0xf

    .line 104
    iget-object v10, p0, Lcom/shabakaty/downloader/jr4;->e:Landroid/util/SparseIntArray;

    add-int/lit8 v11, p2, -0x1

    invoke-virtual {v10, v6, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    .line 105
    iget-object v11, p0, Lcom/shabakaty/downloader/jr4;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v6, p2}, Landroid/util/SparseIntArray;->put(II)V

    if-ne v10, p2, :cond_2a

    .line 106
    iget-object p2, p0, Lcom/shabakaty/downloader/jr4;->d:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/ka3;->E(I)V

    return v0

    :cond_2a
    add-int/2addr v10, v1

    and-int/lit8 v10, v10, 0xf

    if-eq p2, v10, :cond_2b

    .line 107
    invoke-interface {v4}, Lcom/shabakaty/downloader/kr4;->b()V

    :cond_2b
    if-eqz v7, :cond_2d

    .line 108
    iget-object p2, p0, Lcom/shabakaty/downloader/jr4;->d:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result p2

    .line 109
    iget-object v7, p0, Lcom/shabakaty/downloader/jr4;->d:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v7}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v7

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_2c

    const/4 v7, 0x2

    goto :goto_15

    :cond_2c
    const/4 v7, 0x0

    :goto_15
    or-int/2addr v5, v7

    .line 110
    iget-object v7, p0, Lcom/shabakaty/downloader/jr4;->d:Lcom/shabakaty/downloader/ka3;

    sub-int/2addr p2, v1

    invoke-virtual {v7, p2}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 111
    :cond_2d
    iget-boolean p2, p0, Lcom/shabakaty/downloader/jr4;->n:Z

    .line 112
    iget v7, p0, Lcom/shabakaty/downloader/jr4;->a:I

    if-eq v7, v2, :cond_2f

    if-nez p2, :cond_2f

    iget-object v7, p0, Lcom/shabakaty/downloader/jr4;->i:Landroid/util/SparseBooleanArray;

    .line 113
    invoke-virtual {v7, v6, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v6

    if-nez v6, :cond_2e

    goto :goto_16

    :cond_2e
    const/4 v6, 0x0

    goto :goto_17

    :cond_2f
    :goto_16
    const/4 v6, 0x1

    :goto_17
    if-eqz v6, :cond_30

    .line 114
    iget-object v6, p0, Lcom/shabakaty/downloader/jr4;->d:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v6, p1}, Lcom/shabakaty/downloader/ka3;->D(I)V

    .line 115
    iget-object v6, p0, Lcom/shabakaty/downloader/jr4;->d:Lcom/shabakaty/downloader/ka3;

    invoke-interface {v4, v6, v5}, Lcom/shabakaty/downloader/kr4;->a(Lcom/shabakaty/downloader/ka3;I)V

    .line 116
    iget-object v4, p0, Lcom/shabakaty/downloader/jr4;->d:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v4, v3}, Lcom/shabakaty/downloader/ka3;->D(I)V

    .line 117
    :cond_30
    iget v3, p0, Lcom/shabakaty/downloader/jr4;->a:I

    if-eq v3, v2, :cond_31

    if-nez p2, :cond_31

    iget-boolean p2, p0, Lcom/shabakaty/downloader/jr4;->n:Z

    if-eqz p2, :cond_31

    const-wide/16 v2, -0x1

    cmp-long p2, v8, v2

    if-eqz p2, :cond_31

    .line 118
    iput-boolean v1, p0, Lcom/shabakaty/downloader/jr4;->p:Z

    .line 119
    :cond_31
    iget-object p2, p0, Lcom/shabakaty/downloader/jr4;->d:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/ka3;->E(I)V

    return v0
.end method

.method public g(Lcom/shabakaty/downloader/p91;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/jr4;->l:Lcom/shabakaty/downloader/p91;

    return-void
.end method

.method public h(Lcom/shabakaty/downloader/o91;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/jr4;->d:Lcom/shabakaty/downloader/ka3;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/ka3;->a:[B

    const/16 v1, 0x3ac

    const/4 v2, 0x0

    .line 3
    invoke-interface {p1, v0, v2, v1}, Lcom/shabakaty/downloader/o91;->s([BII)V

    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0xbc

    if-ge v1, v3, :cond_3

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x5

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    mul-int/lit16 v4, v3, 0xbc

    add-int/2addr v4, v1

    .line 4
    aget-byte v4, v0, v4

    const/16 v6, 0x47

    if-eq v4, v6, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_2

    .line 5
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/o91;->q(I)V

    return v5

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method
