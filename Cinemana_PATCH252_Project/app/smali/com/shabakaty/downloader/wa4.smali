.class public Lcom/shabakaty/downloader/wa4;
.super Ljava/lang/Object;
.source "SsManifest.java"

# interfaces
.implements Lcom/shabakaty/downloader/lb1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/wa4$b;,
        Lcom/shabakaty/downloader/wa4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/lb1<",
        "Lcom/shabakaty/downloader/wa4;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Z

.field public final e:Lcom/shabakaty/downloader/wa4$a;

.field public final f:[Lcom/shabakaty/downloader/wa4$b;

.field public final g:J

.field public final h:J


# direct methods
.method public constructor <init>(IIJJIZLcom/shabakaty/downloader/wa4$a;[Lcom/shabakaty/downloader/wa4$b;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/shabakaty/downloader/wa4;->a:I

    .line 14
    iput p2, p0, Lcom/shabakaty/downloader/wa4;->b:I

    .line 15
    iput-wide p3, p0, Lcom/shabakaty/downloader/wa4;->g:J

    .line 16
    iput-wide p5, p0, Lcom/shabakaty/downloader/wa4;->h:J

    .line 17
    iput p7, p0, Lcom/shabakaty/downloader/wa4;->c:I

    .line 18
    iput-boolean p8, p0, Lcom/shabakaty/downloader/wa4;->d:Z

    .line 19
    iput-object p9, p0, Lcom/shabakaty/downloader/wa4;->e:Lcom/shabakaty/downloader/wa4$a;

    .line 20
    iput-object p10, p0, Lcom/shabakaty/downloader/wa4;->f:[Lcom/shabakaty/downloader/wa4$b;

    return-void
.end method

.method public constructor <init>(IIJJJIZLcom/shabakaty/downloader/wa4$a;[Lcom/shabakaty/downloader/wa4$b;)V
    .locals 13

    move-object v0, p0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v3, 0x0

    cmp-long v5, p5, v3

    if-nez v5, :cond_0

    move-wide v5, v1

    goto :goto_0

    :cond_0
    const-wide/32 v7, 0xf4240

    move-wide/from16 v5, p5

    move-wide/from16 v9, p3

    .line 1
    invoke-static/range {v5 .. v10}, Lcom/shabakaty/downloader/sy4;->N(JJJ)J

    move-result-wide v5

    :goto_0
    cmp-long v7, p7, v3

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    const-wide/32 v9, 0xf4240

    move-wide/from16 v7, p7

    move-wide/from16 v11, p3

    .line 2
    invoke-static/range {v7 .. v12}, Lcom/shabakaty/downloader/sy4;->N(JJJ)J

    move-result-wide v1

    .line 3
    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v3, p1

    .line 4
    iput v3, v0, Lcom/shabakaty/downloader/wa4;->a:I

    move v3, p2

    .line 5
    iput v3, v0, Lcom/shabakaty/downloader/wa4;->b:I

    .line 6
    iput-wide v5, v0, Lcom/shabakaty/downloader/wa4;->g:J

    .line 7
    iput-wide v1, v0, Lcom/shabakaty/downloader/wa4;->h:J

    move/from16 v1, p9

    .line 8
    iput v1, v0, Lcom/shabakaty/downloader/wa4;->c:I

    move/from16 v1, p10

    .line 9
    iput-boolean v1, v0, Lcom/shabakaty/downloader/wa4;->d:Z

    move-object/from16 v1, p11

    .line 10
    iput-object v1, v0, Lcom/shabakaty/downloader/wa4;->e:Lcom/shabakaty/downloader/wa4$a;

    move-object/from16 v1, p12

    .line 11
    iput-object v1, v0, Lcom/shabakaty/downloader/wa4;->f:[Lcom/shabakaty/downloader/wa4$b;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/lang/Object;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 5
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 6
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/ud4;

    .line 7
    iget-object v6, p0, Lcom/shabakaty/downloader/wa4;->f:[Lcom/shabakaty/downloader/wa4$b;

    iget v7, v5, Lcom/shabakaty/downloader/ud4;->s:I

    aget-object v6, v6, v7

    if-eq v6, v2, :cond_0

    if-eqz v2, :cond_0

    new-array v7, v3, [Lcom/shabakaty/downloader/wh1;

    .line 8
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/shabakaty/downloader/wh1;

    invoke-virtual {v2, v7}, Lcom/shabakaty/downloader/wa4$b;->a([Lcom/shabakaty/downloader/wh1;)Lcom/shabakaty/downloader/wa4$b;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 10
    :cond_0
    iget-object v2, v6, Lcom/shabakaty/downloader/wa4$b;->j:[Lcom/shabakaty/downloader/wh1;

    iget v5, v5, Lcom/shabakaty/downloader/ud4;->t:I

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move-object v2, v6

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    new-array v0, v3, [Lcom/shabakaty/downloader/wh1;

    .line 11
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/wh1;

    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/wa4$b;->a([Lcom/shabakaty/downloader/wh1;)Lcom/shabakaty/downloader/wa4$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-array v0, v3, [Lcom/shabakaty/downloader/wa4$b;

    .line 12
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v10, p1

    check-cast v10, [Lcom/shabakaty/downloader/wa4$b;

    .line 13
    new-instance p1, Lcom/shabakaty/downloader/wa4;

    iget v1, p0, Lcom/shabakaty/downloader/wa4;->a:I

    iget v2, p0, Lcom/shabakaty/downloader/wa4;->b:I

    iget-wide v3, p0, Lcom/shabakaty/downloader/wa4;->g:J

    iget-wide v5, p0, Lcom/shabakaty/downloader/wa4;->h:J

    iget v7, p0, Lcom/shabakaty/downloader/wa4;->c:I

    iget-boolean v8, p0, Lcom/shabakaty/downloader/wa4;->d:Z

    iget-object v9, p0, Lcom/shabakaty/downloader/wa4;->e:Lcom/shabakaty/downloader/wa4$a;

    move-object v0, p1

    invoke-direct/range {v0 .. v10}, Lcom/shabakaty/downloader/wa4;-><init>(IIJJIZLcom/shabakaty/downloader/wa4$a;[Lcom/shabakaty/downloader/wa4$b;)V

    return-object p1
.end method
