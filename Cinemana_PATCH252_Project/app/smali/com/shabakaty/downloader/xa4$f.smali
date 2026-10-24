.class public Lcom/shabakaty/downloader/xa4$f;
.super Lcom/shabakaty/downloader/xa4$a;
.source "SsManifestParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/xa4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/wh1;",
            ">;"
        }
    .end annotation
.end field

.field public g:I

.field public h:Ljava/lang/String;

.field public i:J

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:Ljava/lang/String;

.field public q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public r:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xa4$a;Ljava/lang/String;)V
    .locals 1

    const-string v0, "StreamIndex"

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/shabakaty/downloader/xa4$a;-><init>(Lcom/shabakaty/downloader/xa4$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/xa4$f;->e:Ljava/lang/String;

    .line 3
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/xa4$f;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/wh1;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/xa4$f;->f:Ljava/util/List;

    check-cast p1, Lcom/shabakaty/downloader/wh1;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 28

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/xa4$f;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v15, v1, [Lcom/shabakaty/downloader/wh1;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/xa4$f;->f:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/wa4$b;

    iget-object v3, v0, Lcom/shabakaty/downloader/xa4$f;->e:Ljava/lang/String;

    iget-object v4, v0, Lcom/shabakaty/downloader/xa4$f;->k:Ljava/lang/String;

    iget v5, v0, Lcom/shabakaty/downloader/xa4$f;->g:I

    iget-object v6, v0, Lcom/shabakaty/downloader/xa4$f;->h:Ljava/lang/String;

    iget-wide v13, v0, Lcom/shabakaty/downloader/xa4$f;->i:J

    iget-object v2, v0, Lcom/shabakaty/downloader/xa4$f;->j:Ljava/lang/String;

    iget v11, v0, Lcom/shabakaty/downloader/xa4$f;->l:I

    iget v12, v0, Lcom/shabakaty/downloader/xa4$f;->m:I

    iget v9, v0, Lcom/shabakaty/downloader/xa4$f;->n:I

    iget v10, v0, Lcom/shabakaty/downloader/xa4$f;->o:I

    iget-object v7, v0, Lcom/shabakaty/downloader/xa4$f;->p:Ljava/lang/String;

    iget-object v8, v0, Lcom/shabakaty/downloader/xa4$f;->q:Ljava/util/ArrayList;

    move/from16 v16, v9

    move/from16 v17, v10

    iget-wide v9, v0, Lcom/shabakaty/downloader/xa4$f;->r:J

    .line 4
    sget v18, Lcom/shabakaty/downloader/sy4;->a:I

    .line 5
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    move-object/from16 v20, v15

    new-array v15, v0, [J

    const-wide/16 v18, 0x0

    const/16 v21, 0x0

    move/from16 v22, v11

    move/from16 v23, v12

    const-wide/32 v11, 0xf4240

    cmp-long v24, v13, v11

    if-ltz v24, :cond_1

    .line 6
    rem-long v25, v13, v11

    cmp-long v27, v25, v18

    if-nez v27, :cond_1

    .line 7
    div-long v11, v13, v11

    move-object/from16 v25, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 8
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    div-long v18, v18, v11

    aput-wide v18, v15, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v24, v6

    move-object v2, v7

    goto :goto_3

    :cond_1
    move-object/from16 v25, v2

    if-gez v24, :cond_2

    .line 9
    rem-long v26, v11, v13

    cmp-long v2, v26, v18

    if-nez v2, :cond_2

    .line 10
    div-long/2addr v11, v13

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_0

    .line 11
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    mul-long v18, v18, v11

    aput-wide v18, v15, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    long-to-double v11, v11

    move-object/from16 v24, v6

    move-object v2, v7

    long-to-double v6, v13

    div-double/2addr v11, v6

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v0, :cond_3

    .line 12
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    move-object/from16 v18, v8

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    long-to-double v7, v7

    mul-double v7, v7, v11

    double-to-long v7, v7

    aput-wide v7, v15, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v8, v18

    goto :goto_2

    :cond_3
    :goto_3
    move-object/from16 v18, v8

    const-wide/32 v11, 0xf4240

    move-object v0, v2

    move-object/from16 v21, v18

    move-wide v7, v9

    move-wide v9, v11

    move-wide v11, v13

    .line 13
    invoke-static/range {v7 .. v12}, Lcom/shabakaty/downloader/sy4;->N(JJJ)J

    move-result-wide v18

    move-object/from16 v9, v25

    move-object v2, v1

    move-object/from16 v6, v24

    move-wide v7, v13

    move/from16 v10, v22

    move/from16 v11, v23

    move/from16 v12, v16

    move/from16 v13, v17

    move-object v14, v0

    move-object v0, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v21

    move-object/from16 v17, v0

    .line 14
    invoke-direct/range {v2 .. v19}, Lcom/shabakaty/downloader/wa4$b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;IIIILjava/lang/String;[Lcom/shabakaty/downloader/wh1;Ljava/util/List;[JJ)V

    return-object v1
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "c"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public k(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11

    .line 1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/xa4$f;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-string v7, "t"

    .line 3
    invoke-virtual {p0, p1, v7, v5, v6}, Lcom/shabakaty/downloader/xa4$a;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v9, v7, v5

    if-nez v9, :cond_2

    if-nez v0, :cond_0

    const-wide/16 v7, 0x0

    goto :goto_0

    .line 4
    :cond_0
    iget-wide v7, p0, Lcom/shabakaty/downloader/xa4$f;->r:J

    cmp-long v9, v7, v2

    if-eqz v9, :cond_1

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/xa4$f;->q:Ljava/util/ArrayList;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v7, p0, Lcom/shabakaty/downloader/xa4$f;->r:J

    add-long/2addr v7, v2

    goto :goto_0

    :cond_1
    const-string p1, "Unable to infer start time"

    .line 6
    invoke-static {p1, v4}, Lcom/shabakaty/downloader/pa3;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object p1

    throw p1

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/xa4$f;->q:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "d"

    .line 8
    invoke-virtual {p0, p1, v0, v5, v6}, Lcom/shabakaty/downloader/xa4$a;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/shabakaty/downloader/xa4$f;->r:J

    const-wide/16 v2, 0x1

    const-string v0, "r"

    .line 9
    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/shabakaty/downloader/xa4$a;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    cmp-long p1, v9, v2

    if-lez p1, :cond_4

    .line 10
    iget-wide v2, p0, Lcom/shabakaty/downloader/xa4$f;->r:J

    cmp-long p1, v2, v5

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const-string p1, "Repeated chunk with unspecified duration"

    .line 11
    invoke-static {p1, v4}, Lcom/shabakaty/downloader/pa3;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object p1

    throw p1

    :cond_4
    :goto_1
    int-to-long v2, v1

    cmp-long p1, v2, v9

    if-gez p1, :cond_a

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/xa4$f;->q:Ljava/util/ArrayList;

    iget-wide v4, p0, Lcom/shabakaty/downloader/xa4$f;->r:J

    mul-long v4, v4, v2

    add-long/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const-string v0, "Type"

    .line 13
    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    const-string v6, "audio"

    .line 14
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x3

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    const-string v1, "video"

    .line 15
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x2

    goto :goto_2

    :cond_7
    const-string v1, "text"

    .line 16
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x3

    .line 17
    :goto_2
    iput v1, p0, Lcom/shabakaty/downloader/xa4$f;->g:I

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 19
    iget-object v5, p0, Lcom/shabakaty/downloader/xa4$a;->d:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget v0, p0, Lcom/shabakaty/downloader/xa4$f;->g:I

    const-string v1, "Subtype"

    if-ne v0, v7, :cond_8

    .line 21
    invoke-virtual {p0, p1, v1}, Lcom/shabakaty/downloader/xa4$a;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/xa4$f;->h:Ljava/lang/String;

    goto :goto_3

    .line 22
    :cond_8
    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/xa4$f;->h:Ljava/lang/String;

    .line 23
    :goto_3
    iget-object v0, p0, Lcom/shabakaty/downloader/xa4$f;->h:Ljava/lang/String;

    .line 24
    iget-object v5, p0, Lcom/shabakaty/downloader/xa4$a;->d:Ljava/util/List;

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Name"

    .line 25
    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/xa4$f;->j:Ljava/lang/String;

    .line 26
    iget-object v5, p0, Lcom/shabakaty/downloader/xa4$a;->d:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Url"

    .line 27
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/xa4$a;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/xa4$f;->k:Ljava/lang/String;

    const/4 v0, -0x1

    const-string v1, "MaxWidth"

    .line 28
    invoke-virtual {p0, p1, v1, v0}, Lcom/shabakaty/downloader/xa4$a;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/shabakaty/downloader/xa4$f;->l:I

    const-string v1, "MaxHeight"

    .line 29
    invoke-virtual {p0, p1, v1, v0}, Lcom/shabakaty/downloader/xa4$a;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/shabakaty/downloader/xa4$f;->m:I

    const-string v1, "DisplayWidth"

    .line 30
    invoke-virtual {p0, p1, v1, v0}, Lcom/shabakaty/downloader/xa4$a;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/shabakaty/downloader/xa4$f;->n:I

    const-string v1, "DisplayHeight"

    .line 31
    invoke-virtual {p0, p1, v1, v0}, Lcom/shabakaty/downloader/xa4$a;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/shabakaty/downloader/xa4$f;->o:I

    const-string v1, "Language"

    .line 32
    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shabakaty/downloader/xa4$f;->p:Ljava/lang/String;

    .line 33
    iget-object v5, p0, Lcom/shabakaty/downloader/xa4$a;->d:Ljava/util/List;

    invoke-static {v1, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "TimeScale"

    .line 34
    invoke-virtual {p0, p1, v1, v0}, Lcom/shabakaty/downloader/xa4$a;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result p1

    int-to-long v4, p1

    iput-wide v4, p0, Lcom/shabakaty/downloader/xa4$f;->i:J

    cmp-long p1, v4, v2

    if-nez p1, :cond_9

    .line 35
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/xa4$a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shabakaty/downloader/xa4$f;->i:J

    .line 36
    :cond_9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/xa4$f;->q:Ljava/util/ArrayList;

    :cond_a
    return-void

    .line 37
    :cond_b
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Invalid key value["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/shabakaty/downloader/pa3;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object p1

    throw p1

    .line 38
    :cond_c
    new-instance p1, Lcom/shabakaty/downloader/xa4$b;

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/xa4$b;-><init>(Ljava/lang/String;)V

    throw p1
.end method
