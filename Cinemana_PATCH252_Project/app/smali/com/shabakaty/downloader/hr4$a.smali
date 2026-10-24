.class public final Lcom/shabakaty/downloader/hr4$a;
.super Ljava/lang/Object;
.source "TsBinarySearchSeeker.java"

# interfaces
.implements Lcom/shabakaty/downloader/dm$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/hr4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/qn4;

.field public final b:Lcom/shabakaty/downloader/ka3;

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(ILcom/shabakaty/downloader/qn4;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/hr4$a;->c:I

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/hr4$a;->a:Lcom/shabakaty/downloader/qn4;

    .line 4
    iput p3, p0, Lcom/shabakaty/downloader/hr4$a;->d:I

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/ka3;

    invoke-direct {p1}, Lcom/shabakaty/downloader/ka3;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/hr4$a;->b:Lcom/shabakaty/downloader/ka3;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/o91;J)Lcom/shabakaty/downloader/dm$e;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v1

    .line 2
    iget v3, v0, Lcom/shabakaty/downloader/hr4$a;->d:I

    int-to-long v3, v3

    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->b()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    .line 3
    iget-object v3, v0, Lcom/shabakaty/downloader/hr4$a;->b:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/ka3;->A(I)V

    .line 4
    iget-object v3, v0, Lcom/shabakaty/downloader/hr4$a;->b:Lcom/shabakaty/downloader/ka3;

    .line 5
    iget-object v3, v3, Lcom/shabakaty/downloader/ka3;->a:[B

    const/4 v5, 0x0

    move-object/from16 v6, p1

    .line 6
    invoke-interface {v6, v3, v5, v4}, Lcom/shabakaty/downloader/o91;->s([BII)V

    .line 7
    iget-object v3, v0, Lcom/shabakaty/downloader/hr4$a;->b:Lcom/shabakaty/downloader/ka3;

    .line 8
    iget v4, v3, Lcom/shabakaty/downloader/ka3;->c:I

    const-wide/16 v7, -0x1

    move-wide v9, v7

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    :goto_0
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v13

    const/16 v14, 0xbc

    if-lt v13, v14, :cond_6

    .line 10
    iget-object v13, v3, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 11
    iget v14, v3, Lcom/shabakaty/downloader/ka3;->b:I

    :goto_1
    if-ge v14, v4, :cond_0

    .line 12
    aget-byte v15, v13, v14

    const/16 v5, 0x47

    if-eq v15, v5, :cond_0

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_0
    add-int/lit16 v5, v14, 0xbc

    if-le v5, v4, :cond_1

    goto :goto_2

    .line 13
    :cond_1
    iget v6, v0, Lcom/shabakaty/downloader/hr4$a;->c:I

    invoke-static {v3, v14, v6}, Lcom/shabakaty/downloader/kl3;->f(Lcom/shabakaty/downloader/ka3;II)J

    move-result-wide v6

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v6, v15

    if-eqz v8, :cond_5

    .line 14
    iget-object v8, v0, Lcom/shabakaty/downloader/hr4$a;->a:Lcom/shabakaty/downloader/qn4;

    invoke-virtual {v8, v6, v7}, Lcom/shabakaty/downloader/qn4;->b(J)J

    move-result-wide v6

    cmp-long v8, v6, p2

    if-lez v8, :cond_3

    cmp-long v3, v11, v15

    if-nez v3, :cond_2

    .line 15
    invoke-static {v6, v7, v1, v2}, Lcom/shabakaty/downloader/dm$e;->a(JJ)Lcom/shabakaty/downloader/dm$e;

    move-result-object v1

    goto :goto_3

    :cond_2
    add-long/2addr v1, v9

    .line 16
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/dm$e;->b(J)Lcom/shabakaty/downloader/dm$e;

    move-result-object v1

    goto :goto_3

    :cond_3
    const-wide/32 v8, 0x186a0

    add-long/2addr v8, v6

    cmp-long v10, v8, p2

    if-lez v10, :cond_4

    int-to-long v3, v14

    add-long/2addr v1, v3

    .line 17
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/dm$e;->b(J)Lcom/shabakaty/downloader/dm$e;

    move-result-object v1

    goto :goto_3

    :cond_4
    int-to-long v8, v14

    move-wide v11, v6

    move-wide v9, v8

    .line 18
    :cond_5
    invoke-virtual {v3, v5}, Lcom/shabakaty/downloader/ka3;->E(I)V

    int-to-long v7, v5

    goto :goto_0

    :cond_6
    :goto_2
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v11, v3

    if-eqz v5, :cond_7

    add-long/2addr v1, v7

    .line 19
    invoke-static {v11, v12, v1, v2}, Lcom/shabakaty/downloader/dm$e;->c(JJ)Lcom/shabakaty/downloader/dm$e;

    move-result-object v1

    goto :goto_3

    .line 20
    :cond_7
    sget-object v1, Lcom/shabakaty/downloader/dm$e;->d:Lcom/shabakaty/downloader/dm$e;

    :goto_3
    return-object v1
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hr4$a;->b:Lcom/shabakaty/downloader/ka3;

    sget-object v1, Lcom/shabakaty/downloader/sy4;->f:[B

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ka3;->B([B)V

    return-void
.end method
