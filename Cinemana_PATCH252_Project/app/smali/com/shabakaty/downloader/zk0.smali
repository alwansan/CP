.class public Lcom/shabakaty/downloader/zk0;
.super Ljava/lang/Object;
.source "DashManifest.java"

# interfaces
.implements Lcom/shabakaty/downloader/lb1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/lb1<",
        "Lcom/shabakaty/downloader/zk0;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:Z

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:J

.field public final i:Lcom/shabakaty/downloader/qz2;

.field public final j:Lcom/shabakaty/downloader/g14;

.field public final k:Landroid/net/Uri;

.field public final l:Lcom/shabakaty/downloader/hh3;

.field public final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/vb3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JJJZJJJJLcom/shabakaty/downloader/hh3;Lcom/shabakaty/downloader/qz2;Lcom/shabakaty/downloader/g14;Landroid/net/Uri;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZJJJJ",
            "Lcom/shabakaty/downloader/hh3;",
            "Lcom/shabakaty/downloader/qz2;",
            "Lcom/shabakaty/downloader/g14;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/vb3;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 2
    iput-wide v1, v0, Lcom/shabakaty/downloader/zk0;->a:J

    move-wide v1, p3

    .line 3
    iput-wide v1, v0, Lcom/shabakaty/downloader/zk0;->b:J

    move-wide v1, p5

    .line 4
    iput-wide v1, v0, Lcom/shabakaty/downloader/zk0;->c:J

    move v1, p7

    .line 5
    iput-boolean v1, v0, Lcom/shabakaty/downloader/zk0;->d:Z

    move-wide v1, p8

    .line 6
    iput-wide v1, v0, Lcom/shabakaty/downloader/zk0;->e:J

    move-wide v1, p10

    .line 7
    iput-wide v1, v0, Lcom/shabakaty/downloader/zk0;->f:J

    move-wide v1, p12

    .line 8
    iput-wide v1, v0, Lcom/shabakaty/downloader/zk0;->g:J

    move-wide/from16 v1, p14

    .line 9
    iput-wide v1, v0, Lcom/shabakaty/downloader/zk0;->h:J

    move-object/from16 v1, p16

    .line 10
    iput-object v1, v0, Lcom/shabakaty/downloader/zk0;->l:Lcom/shabakaty/downloader/hh3;

    move-object/from16 v1, p17

    .line 11
    iput-object v1, v0, Lcom/shabakaty/downloader/zk0;->i:Lcom/shabakaty/downloader/qz2;

    move-object/from16 v1, p19

    .line 12
    iput-object v1, v0, Lcom/shabakaty/downloader/zk0;->k:Landroid/net/Uri;

    move-object/from16 v1, p18

    .line 13
    iput-object v1, v0, Lcom/shabakaty/downloader/zk0;->j:Lcom/shabakaty/downloader/g14;

    if-nez p20, :cond_0

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p20

    :goto_0
    iput-object v1, v0, Lcom/shabakaty/downloader/zk0;->m:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/LinkedList;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/ud4;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3, v3}, Lcom/shabakaty/downloader/ud4;-><init>(III)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    .line 5
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/zk0;->c()I

    move-result v6

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v5, v6, :cond_5

    .line 6
    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/ud4;

    iget v6, v6, Lcom/shabakaty/downloader/ud4;->r:I

    if-eq v6, v5, :cond_0

    .line 7
    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/zk0;->d(I)J

    move-result-wide v9

    cmp-long v6, v9, v7

    if-eqz v6, :cond_3

    add-long/2addr v3, v9

    goto/16 :goto_2

    .line 8
    :cond_0
    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/zk0;->b(I)Lcom/shabakaty/downloader/vb3;

    move-result-object v6

    .line 9
    iget-object v9, v6, Lcom/shabakaty/downloader/vb3;->c:Ljava/util/List;

    .line 10
    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/ud4;

    .line 11
    iget v10, v7, Lcom/shabakaty/downloader/ud4;->r:I

    .line 12
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 13
    :goto_1
    iget v8, v7, Lcom/shabakaty/downloader/ud4;->s:I

    .line 14
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shabakaty/downloader/l4;

    .line 15
    iget-object v12, v11, Lcom/shabakaty/downloader/l4;->c:Ljava/util/List;

    .line 16
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 17
    :cond_1
    iget v7, v7, Lcom/shabakaty/downloader/ud4;->t:I

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/ur3;

    .line 18
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/ud4;

    .line 20
    iget v14, v7, Lcom/shabakaty/downloader/ud4;->r:I

    if-ne v14, v10, :cond_2

    iget v14, v7, Lcom/shabakaty/downloader/ud4;->s:I

    if-eq v14, v8, :cond_1

    .line 21
    :cond_2
    new-instance v8, Lcom/shabakaty/downloader/l4;

    iget v12, v11, Lcom/shabakaty/downloader/l4;->a:I

    iget v14, v11, Lcom/shabakaty/downloader/l4;->b:I

    move-object/from16 v23, v9

    iget-object v9, v11, Lcom/shabakaty/downloader/l4;->d:Ljava/util/List;

    iget-object v0, v11, Lcom/shabakaty/downloader/l4;->e:Ljava/util/List;

    iget-object v11, v11, Lcom/shabakaty/downloader/l4;->f:Ljava/util/List;

    move-object/from16 v16, v8

    move/from16 v17, v12

    move/from16 v18, v14

    move-object/from16 v19, v13

    move-object/from16 v20, v9

    move-object/from16 v21, v0

    move-object/from16 v22, v11

    invoke-direct/range {v16 .. v22}, Lcom/shabakaty/downloader/l4;-><init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    iget v0, v7, Lcom/shabakaty/downloader/ud4;->r:I

    if-eq v0, v10, :cond_4

    .line 23
    invoke-virtual {v1, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 24
    new-instance v0, Lcom/shabakaty/downloader/vb3;

    iget-object v12, v6, Lcom/shabakaty/downloader/vb3;->a:Ljava/lang/String;

    iget-wide v7, v6, Lcom/shabakaty/downloader/vb3;->b:J

    sub-long v13, v7, v3

    iget-object v6, v6, Lcom/shabakaty/downloader/vb3;->d:Ljava/util/List;

    move-object v11, v0

    move-object/from16 v16, v6

    invoke-direct/range {v11 .. v16}, Lcom/shabakaty/downloader/vb3;-><init>(Ljava/lang/String;JLjava/util/List;Ljava/util/List;)V

    .line 25
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v9, v23

    goto :goto_1

    .line 26
    :cond_5
    iget-wide v5, v0, Lcom/shabakaty/downloader/zk0;->b:J

    cmp-long v1, v5, v7

    if-eqz v1, :cond_6

    sub-long/2addr v5, v3

    move-wide v7, v5

    .line 27
    :cond_6
    new-instance v1, Lcom/shabakaty/downloader/zk0;

    move-object v4, v1

    iget-wide v5, v0, Lcom/shabakaty/downloader/zk0;->a:J

    iget-wide v9, v0, Lcom/shabakaty/downloader/zk0;->c:J

    iget-boolean v11, v0, Lcom/shabakaty/downloader/zk0;->d:Z

    iget-wide v12, v0, Lcom/shabakaty/downloader/zk0;->e:J

    iget-wide v14, v0, Lcom/shabakaty/downloader/zk0;->f:J

    move-object/from16 p1, v4

    iget-wide v3, v0, Lcom/shabakaty/downloader/zk0;->g:J

    move-wide/from16 v16, v3

    iget-wide v3, v0, Lcom/shabakaty/downloader/zk0;->h:J

    move-wide/from16 v18, v3

    iget-object v3, v0, Lcom/shabakaty/downloader/zk0;->l:Lcom/shabakaty/downloader/hh3;

    move-object/from16 v20, v3

    iget-object v3, v0, Lcom/shabakaty/downloader/zk0;->i:Lcom/shabakaty/downloader/qz2;

    move-object/from16 v21, v3

    iget-object v3, v0, Lcom/shabakaty/downloader/zk0;->j:Lcom/shabakaty/downloader/g14;

    move-object/from16 v22, v3

    iget-object v3, v0, Lcom/shabakaty/downloader/zk0;->k:Landroid/net/Uri;

    move-object/from16 v23, v3

    move-object/from16 v24, v2

    move-object/from16 v4, p1

    invoke-direct/range {v4 .. v24}, Lcom/shabakaty/downloader/zk0;-><init>(JJJZJJJJLcom/shabakaty/downloader/hh3;Lcom/shabakaty/downloader/qz2;Lcom/shabakaty/downloader/g14;Landroid/net/Uri;Ljava/util/List;)V

    return-object v1
.end method

.method public final b(I)Lcom/shabakaty/downloader/vb3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zk0;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/vb3;

    return-object p1
.end method

.method public final c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zk0;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final d(I)J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zk0;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-ne p1, v0, :cond_1

    .line 2
    iget-wide v3, p0, Lcom/shabakaty/downloader/zk0;->b:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/zk0;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/vb3;

    iget-wide v0, p1, Lcom/shabakaty/downloader/vb3;->b:J

    sub-long v1, v3, v0

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/zk0;->m:Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/vb3;

    iget-wide v0, v0, Lcom/shabakaty/downloader/vb3;->b:J

    iget-object v2, p0, Lcom/shabakaty/downloader/zk0;->m:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/vb3;

    iget-wide v2, p1, Lcom/shabakaty/downloader/vb3;->b:J

    sub-long v1, v0, v2

    :goto_0
    return-wide v1
.end method

.method public final e(I)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/zk0;->d(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v0

    return-wide v0
.end method
