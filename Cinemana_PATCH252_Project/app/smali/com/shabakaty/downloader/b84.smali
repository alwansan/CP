.class public final Lcom/shabakaty/downloader/b84;
.super Lcom/shabakaty/downloader/nn4;
.source "SinglePeriodTimeline.java"


# static fields
.field public static final n:Ljava/lang/Object;


# instance fields
.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Ljava/lang/Object;

.field public final l:Lcom/shabakaty/downloader/dp2;

.field public final m:Lcom/shabakaty/downloader/dp2$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/b84;->n:Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/dp2$c;

    invoke-direct {v0}, Lcom/shabakaty/downloader/dp2$c;-><init>()V

    const-string v1, "SinglePeriodTimeline"

    .line 3
    iput-object v1, v0, Lcom/shabakaty/downloader/dp2$c;->a:Ljava/lang/String;

    .line 4
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 5
    iput-object v1, v0, Lcom/shabakaty/downloader/dp2$c;->b:Landroid/net/Uri;

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/dp2$c;->a()Lcom/shabakaty/downloader/dp2;

    return-void
.end method

.method public constructor <init>(JJJJJJJZZZLjava/lang/Object;Lcom/shabakaty/downloader/dp2;Lcom/shabakaty/downloader/dp2$f;)V
    .locals 3

    move-object v0, p0

    .line 4
    invoke-direct {p0}, Lcom/shabakaty/downloader/nn4;-><init>()V

    move-wide v1, p1

    .line 5
    iput-wide v1, v0, Lcom/shabakaty/downloader/b84;->b:J

    move-wide v1, p3

    .line 6
    iput-wide v1, v0, Lcom/shabakaty/downloader/b84;->c:J

    move-wide v1, p7

    .line 7
    iput-wide v1, v0, Lcom/shabakaty/downloader/b84;->d:J

    move-wide v1, p9

    .line 8
    iput-wide v1, v0, Lcom/shabakaty/downloader/b84;->e:J

    move-wide v1, p11

    .line 9
    iput-wide v1, v0, Lcom/shabakaty/downloader/b84;->f:J

    move-wide/from16 v1, p13

    .line 10
    iput-wide v1, v0, Lcom/shabakaty/downloader/b84;->g:J

    move/from16 v1, p15

    .line 11
    iput-boolean v1, v0, Lcom/shabakaty/downloader/b84;->h:Z

    move/from16 v1, p16

    .line 12
    iput-boolean v1, v0, Lcom/shabakaty/downloader/b84;->i:Z

    move/from16 v1, p17

    .line 13
    iput-boolean v1, v0, Lcom/shabakaty/downloader/b84;->j:Z

    move-object/from16 v1, p18

    .line 14
    iput-object v1, v0, Lcom/shabakaty/downloader/b84;->k:Ljava/lang/Object;

    .line 15
    invoke-static/range {p19 .. p19}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p19

    .line 16
    iput-object v1, v0, Lcom/shabakaty/downloader/b84;->l:Lcom/shabakaty/downloader/dp2;

    move-object/from16 v1, p20

    .line 17
    iput-object v1, v0, Lcom/shabakaty/downloader/b84;->m:Lcom/shabakaty/downloader/dp2$f;

    return-void
.end method

.method public constructor <init>(JJJJZZZLjava/lang/Object;Lcom/shabakaty/downloader/dp2;)V
    .locals 21

    move-object/from16 v15, p13

    if-eqz p11, :cond_0

    .line 2
    iget-object v0, v15, Lcom/shabakaty/downloader/dp2;->c:Lcom/shabakaty/downloader/dp2$f;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object/from16 v20, v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move/from16 v15, p9

    move/from16 v16, p10

    move-object/from16 v18, p12

    move-object/from16 v19, p13

    .line 3
    invoke-direct/range {v0 .. v20}, Lcom/shabakaty/downloader/b84;-><init>(JJJJJJJZZZLjava/lang/Object;Lcom/shabakaty/downloader/dp2;Lcom/shabakaty/downloader/dp2$f;)V

    return-void
.end method

.method public constructor <init>(JZZZLjava/lang/Object;Lcom/shabakaty/downloader/dp2;)V
    .locals 14

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v13, p7

    .line 1
    invoke-direct/range {v0 .. v13}, Lcom/shabakaty/downloader/b84;-><init>(JJJJZZZLjava/lang/Object;Lcom/shabakaty/downloader/dp2;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/b84;->n:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public g(ILcom/shabakaty/downloader/nn4$b;Z)Lcom/shabakaty/downloader/nn4$b;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p1, v0, v1}, Lcom/shabakaty/downloader/md;->d(III)I

    if-eqz p3, :cond_0

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/b84;->n:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v2, p1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3
    iget-wide v4, p0, Lcom/shabakaty/downloader/b84;->d:J

    iget-wide v6, p0, Lcom/shabakaty/downloader/b84;->f:J

    neg-long v6, v6

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Lcom/shabakaty/downloader/nn4$b;->f(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/shabakaty/downloader/nn4$b;

    return-object p2
.end method

.method public i()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m(I)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p1, v0, v1}, Lcom/shabakaty/downloader/md;->d(III)I

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/b84;->n:Ljava/lang/Object;

    return-object p1
.end method

.method public o(ILcom/shabakaty/downloader/nn4$c;J)Lcom/shabakaty/downloader/nn4$c;
    .locals 24

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move/from16 v3, p1

    .line 1
    invoke-static {v3, v1, v2}, Lcom/shabakaty/downloader/md;->d(III)I

    .line 2
    iget-wide v1, v0, Lcom/shabakaty/downloader/b84;->g:J

    .line 3
    iget-boolean v14, v0, Lcom/shabakaty/downloader/b84;->i:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v14, :cond_1

    iget-boolean v5, v0, Lcom/shabakaty/downloader/b84;->j:Z

    if-nez v5, :cond_1

    const-wide/16 v5, 0x0

    cmp-long v7, p3, v5

    if-eqz v7, :cond_1

    .line 4
    iget-wide v5, v0, Lcom/shabakaty/downloader/b84;->e:J

    cmp-long v7, v5, v3

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    add-long v1, v1, p3

    cmp-long v7, v1, v5

    if-lez v7, :cond_1

    :goto_0
    move-wide/from16 v16, v3

    goto :goto_1

    :cond_1
    move-wide/from16 v16, v1

    .line 5
    :goto_1
    sget-object v4, Lcom/shabakaty/downloader/nn4$c;->r:Ljava/lang/Object;

    iget-object v5, v0, Lcom/shabakaty/downloader/b84;->l:Lcom/shabakaty/downloader/dp2;

    iget-object v6, v0, Lcom/shabakaty/downloader/b84;->k:Ljava/lang/Object;

    iget-wide v7, v0, Lcom/shabakaty/downloader/b84;->b:J

    iget-wide v9, v0, Lcom/shabakaty/downloader/b84;->c:J

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    iget-boolean v13, v0, Lcom/shabakaty/downloader/b84;->h:Z

    iget-object v15, v0, Lcom/shabakaty/downloader/b84;->m:Lcom/shabakaty/downloader/dp2$f;

    iget-wide v1, v0, Lcom/shabakaty/downloader/b84;->e:J

    move-wide/from16 v18, v1

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-wide v1, v0, Lcom/shabakaty/downloader/b84;->f:J

    move-wide/from16 v22, v1

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v23}, Lcom/shabakaty/downloader/nn4$c;->d(Ljava/lang/Object;Lcom/shabakaty/downloader/dp2;Ljava/lang/Object;JJJZZLcom/shabakaty/downloader/dp2$f;JJIIJ)Lcom/shabakaty/downloader/nn4$c;

    return-object p2
.end method

.method public p()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
