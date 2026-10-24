.class public final Lcom/shabakaty/downloader/dv2;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"

# interfaces
.implements Lcom/shabakaty/downloader/n91;
.implements Lcom/shabakaty/downloader/vz3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/dv2$a;
    }
.end annotation


# static fields
.field public static final synthetic y:I


# instance fields
.field public final a:I

.field public final b:Lcom/shabakaty/downloader/ka3;

.field public final c:Lcom/shabakaty/downloader/ka3;

.field public final d:Lcom/shabakaty/downloader/ka3;

.field public final e:Lcom/shabakaty/downloader/ka3;

.field public final f:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/shabakaty/downloader/zd$a;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lcom/shabakaty/downloader/zz3;

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ps2$b;",
            ">;"
        }
    .end annotation
.end field

.field public i:I

.field public j:I

.field public k:J

.field public l:I

.field public m:Lcom/shabakaty/downloader/ka3;

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:Lcom/shabakaty/downloader/p91;

.field public s:[Lcom/shabakaty/downloader/dv2$a;

.field public t:[[J

.field public u:I

.field public v:J

.field public w:I

.field public x:Lcom/shabakaty/downloader/xu2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/wx;->v:Lcom/shabakaty/downloader/wx;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/dv2;->a:I

    const/4 v0, 0x4

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iput p1, p0, Lcom/shabakaty/downloader/dv2;->i:I

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/zz3;

    invoke-direct {p1}, Lcom/shabakaty/downloader/zz3;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/dv2;->g:Lcom/shabakaty/downloader/zz3;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/dv2;->h:Ljava/util/List;

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/ka3;

    const/16 v1, 0x10

    invoke-direct {p1, v1}, Lcom/shabakaty/downloader/ka3;-><init>(I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/dv2;->e:Lcom/shabakaty/downloader/ka3;

    .line 7
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/dv2;->f:Ljava/util/ArrayDeque;

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/ka3;

    sget-object v1, Lcom/shabakaty/downloader/gw2;->a:[B

    invoke-direct {p1, v1}, Lcom/shabakaty/downloader/ka3;-><init>([B)V

    iput-object p1, p0, Lcom/shabakaty/downloader/dv2;->b:Lcom/shabakaty/downloader/ka3;

    .line 9
    new-instance p1, Lcom/shabakaty/downloader/ka3;

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/ka3;-><init>(I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/dv2;->c:Lcom/shabakaty/downloader/ka3;

    .line 10
    new-instance p1, Lcom/shabakaty/downloader/ka3;

    invoke-direct {p1}, Lcom/shabakaty/downloader/ka3;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/dv2;->d:Lcom/shabakaty/downloader/ka3;

    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lcom/shabakaty/downloader/dv2;->n:I

    return-void
.end method

.method public static l(Lcom/shabakaty/downloader/gp4;JJ)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/gp4;->a(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/gp4;->b(J)I

    move-result v0

    :cond_0
    if-ne v0, v1, :cond_1

    return-wide p3

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/shabakaty/downloader/gp4;->c:[J

    aget-wide p1, p0, v0

    .line 4
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(JJ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dv2;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/dv2;->l:I

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lcom/shabakaty/downloader/dv2;->n:I

    .line 4
    iput v0, p0, Lcom/shabakaty/downloader/dv2;->o:I

    .line 5
    iput v0, p0, Lcom/shabakaty/downloader/dv2;->p:I

    .line 6
    iput v0, p0, Lcom/shabakaty/downloader/dv2;->q:I

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-nez v4, :cond_1

    .line 7
    iget p1, p0, Lcom/shabakaty/downloader/dv2;->i:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/dv2;->k()V

    goto :goto_1

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/dv2;->g:Lcom/shabakaty/downloader/zz3;

    .line 10
    iget-object p2, p1, Lcom/shabakaty/downloader/zz3;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 11
    iput v0, p1, Lcom/shabakaty/downloader/zz3;->b:I

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/dv2;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/dv2;->s:[Lcom/shabakaty/downloader/dv2$a;

    if-eqz p1, :cond_3

    .line 14
    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_3

    aget-object v2, p1, v0

    .line 15
    iget-object v3, v2, Lcom/shabakaty/downloader/dv2$a;->b:Lcom/shabakaty/downloader/gp4;

    .line 16
    invoke-virtual {v3, p3, p4}, Lcom/shabakaty/downloader/gp4;->a(J)I

    move-result v4

    if-ne v4, v1, :cond_2

    .line 17
    invoke-virtual {v3, p3, p4}, Lcom/shabakaty/downloader/gp4;->b(J)I

    move-result v4

    .line 18
    :cond_2
    iput v4, v2, Lcom/shabakaty/downloader/dv2$a;->d:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f(Lcom/shabakaty/downloader/o91;Lcom/shabakaty/downloader/ie3;)I
    .locals 34

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1
    :cond_0
    iget v3, v1, Lcom/shabakaty/downloader/dv2;->i:I

    const v4, 0x66747970

    const/4 v7, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v3, :cond_3f

    const-wide/32 v16, 0x40000

    if-eq v3, v15, :cond_32

    const-wide/16 v18, 0x8

    const/4 v4, 0x7

    if-eq v3, v13, :cond_1d

    const/4 v8, 0x3

    if-ne v3, v8, :cond_1c

    .line 2
    iget-object v3, v1, Lcom/shabakaty/downloader/dv2;->g:Lcom/shabakaty/downloader/zz3;

    iget-object v5, v1, Lcom/shabakaty/downloader/dv2;->h:Ljava/util/List;

    .line 3
    iget v6, v3, Lcom/shabakaty/downloader/zz3;->b:I

    if-eqz v6, :cond_18

    if-eq v6, v15, :cond_16

    const/16 v11, 0xb03

    if-eq v6, v13, :cond_12

    if-ne v6, v8, :cond_11

    .line 4
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v17

    .line 5
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->b()J

    move-result-wide v20

    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v24

    sub-long v20, v20, v24

    iget v6, v3, Lcom/shabakaty/downloader/zz3;->c:I

    int-to-long v9, v6

    sub-long v9, v20, v9

    long-to-int v6, v9

    .line 6
    new-instance v9, Lcom/shabakaty/downloader/ka3;

    invoke-direct {v9, v6}, Lcom/shabakaty/downloader/ka3;-><init>(I)V

    .line 7
    iget-object v10, v9, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 8
    invoke-interface {v0, v10, v14, v6}, Lcom/shabakaty/downloader/o91;->readFully([BII)V

    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v6, v3, Lcom/shabakaty/downloader/zz3;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_10

    .line 10
    iget-object v6, v3, Lcom/shabakaty/downloader/zz3;->a:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/zz3$a;

    move-object v10, v5

    .line 11
    iget-wide v4, v6, Lcom/shabakaty/downloader/zz3$a;->a:J

    sub-long v4, v4, v17

    long-to-int v5, v4

    .line 12
    invoke-virtual {v9, v5}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 13
    invoke-virtual {v9, v12}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 14
    invoke-virtual {v9}, Lcom/shabakaty/downloader/ka3;->h()I

    move-result v4

    .line 15
    invoke-virtual {v9, v4}, Lcom/shabakaty/downloader/ka3;->q(I)Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v21

    sparse-switch v21, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v14, "Super_SlowMotion_BGM"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x4

    goto :goto_2

    :sswitch_1
    const-string v14, "Super_SlowMotion_Deflickering_On"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x3

    goto :goto_2

    :sswitch_2
    const-string v14, "Super_SlowMotion_Data"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x2

    goto :goto_2

    :sswitch_3
    const-string v14, "Super_SlowMotion_Edit_Data"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x1

    goto :goto_2

    :sswitch_4
    const-string v14, "SlowMotion_Data"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    :goto_1
    const/4 v5, -0x1

    :goto_2
    if-eqz v5, :cond_a

    if-eq v5, v15, :cond_9

    if-eq v5, v13, :cond_8

    if-eq v5, v8, :cond_7

    if-ne v5, v12, :cond_6

    const/16 v5, 0xb01

    goto :goto_3

    :cond_6
    const-string v0, "Invalid SEF name"

    .line 17
    invoke-static {v0, v7}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v0

    throw v0

    :cond_7
    const/16 v5, 0xb04

    goto :goto_3

    :cond_8
    const/16 v5, 0xb00

    goto :goto_3

    :cond_9
    const/16 v5, 0xb03

    goto :goto_3

    :cond_a
    const/16 v5, 0x890

    .line 18
    :goto_3
    iget v6, v6, Lcom/shabakaty/downloader/zz3$a;->b:I

    add-int/lit8 v4, v4, 0x8

    sub-int/2addr v6, v4

    const/16 v4, 0x890

    if-eq v5, v4, :cond_c

    const/16 v4, 0xb00

    if-eq v5, v4, :cond_f

    const/16 v4, 0xb01

    if-eq v5, v4, :cond_f

    if-eq v5, v11, :cond_f

    const/16 v4, 0xb04

    if-ne v5, v4, :cond_b

    goto :goto_5

    .line 19
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 20
    :cond_c
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-virtual {v9, v6}, Lcom/shabakaty/downloader/ka3;->q(I)Ljava/lang/String;

    move-result-object v5

    .line 22
    sget-object v6, Lcom/shabakaty/downloader/zz3;->e:Lcom/shabakaty/downloader/sa4;

    invoke-virtual {v6, v5}, Lcom/shabakaty/downloader/sa4;->a(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    .line 23
    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    if-ge v6, v14, :cond_e

    .line 24
    sget-object v14, Lcom/shabakaty/downloader/zz3;->d:Lcom/shabakaty/downloader/sa4;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v12, v21

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v14, v12}, Lcom/shabakaty/downloader/sa4;->a(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v12

    .line 25
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-ne v14, v8, :cond_d

    const/4 v14, 0x0

    .line 26
    :try_start_0
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v27

    .line 27
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v29

    .line 28
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    sub-int/2addr v12, v15

    shl-int v31, v15, v12

    .line 29
    new-instance v12, Lcom/shabakaty/downloader/y84$b;

    move-object/from16 v26, v12

    invoke-direct/range {v26 .. v31}, Lcom/shabakaty/downloader/y84$b;-><init>(JJI)V

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    const/4 v12, 0x4

    goto :goto_4

    :catch_0
    move-exception v0

    .line 30
    invoke-static {v7, v0}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v0

    throw v0

    .line 31
    :cond_d
    invoke-static {v7, v7}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v0

    throw v0

    .line 32
    :cond_e
    new-instance v5, Lcom/shabakaty/downloader/y84;

    invoke-direct {v5, v4}, Lcom/shabakaty/downloader/y84;-><init>(Ljava/util/List;)V

    .line 33
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_5
    add-int/lit8 v0, v0, 0x1

    move-object v5, v10

    const/4 v12, 0x4

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_10
    const-wide/16 v4, 0x0

    .line 34
    iput-wide v4, v2, Lcom/shabakaty/downloader/ie3;->a:J

    goto/16 :goto_a

    .line 35
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 36
    :cond_12
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->b()J

    move-result-wide v4

    .line 37
    iget v6, v3, Lcom/shabakaty/downloader/zz3;->c:I

    add-int/lit8 v6, v6, -0xc

    const/16 v7, 0x8

    sub-int/2addr v6, v7

    .line 38
    new-instance v7, Lcom/shabakaty/downloader/ka3;

    invoke-direct {v7, v6}, Lcom/shabakaty/downloader/ka3;-><init>(I)V

    .line 39
    iget-object v9, v7, Lcom/shabakaty/downloader/ka3;->a:[B

    const/4 v10, 0x0

    .line 40
    invoke-interface {v0, v9, v10, v6}, Lcom/shabakaty/downloader/o91;->readFully([BII)V

    const/4 v0, 0x0

    .line 41
    :goto_6
    div-int/lit8 v9, v6, 0xc

    if-ge v0, v9, :cond_14

    .line 42
    invoke-virtual {v7, v13}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 43
    invoke-virtual {v7}, Lcom/shabakaty/downloader/ka3;->i()S

    move-result v9

    const/16 v10, 0x890

    const/16 v12, 0xb00

    const/16 v14, 0xb01

    if-eq v9, v10, :cond_13

    if-eq v9, v12, :cond_13

    if-eq v9, v14, :cond_13

    if-eq v9, v11, :cond_13

    const/16 v10, 0xb04

    if-eq v9, v10, :cond_13

    const/16 v10, 0x8

    .line 44
    invoke-virtual {v7, v10}, Lcom/shabakaty/downloader/ka3;->F(I)V

    goto :goto_7

    .line 45
    :cond_13
    iget v10, v3, Lcom/shabakaty/downloader/zz3;->c:I

    int-to-long v11, v10

    sub-long v10, v4, v11

    invoke-virtual {v7}, Lcom/shabakaty/downloader/ka3;->h()I

    move-result v12

    int-to-long v13, v12

    sub-long/2addr v10, v13

    .line 46
    invoke-virtual {v7}, Lcom/shabakaty/downloader/ka3;->h()I

    move-result v12

    .line 47
    iget-object v13, v3, Lcom/shabakaty/downloader/zz3;->a:Ljava/util/List;

    new-instance v14, Lcom/shabakaty/downloader/zz3$a;

    invoke-direct {v14, v9, v10, v11, v12}, Lcom/shabakaty/downloader/zz3$a;-><init>(IJI)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v0, v0, 0x1

    const/16 v11, 0xb03

    const/4 v13, 0x2

    goto :goto_6

    .line 48
    :cond_14
    iget-object v0, v3, Lcom/shabakaty/downloader/zz3;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    const-wide/16 v4, 0x0

    .line 49
    iput-wide v4, v2, Lcom/shabakaty/downloader/ie3;->a:J

    goto/16 :goto_a

    .line 50
    :cond_15
    iput v8, v3, Lcom/shabakaty/downloader/zz3;->b:I

    .line 51
    iget-object v0, v3, Lcom/shabakaty/downloader/zz3;->a:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/zz3$a;

    iget-wide v3, v0, Lcom/shabakaty/downloader/zz3$a;->a:J

    iput-wide v3, v2, Lcom/shabakaty/downloader/ie3;->a:J

    goto/16 :goto_a

    :cond_16
    const/4 v5, 0x0

    const/16 v6, 0x8

    new-array v7, v6, [B

    .line 52
    invoke-interface {v0, v7, v5, v6}, Lcom/shabakaty/downloader/o91;->readFully([BII)V

    .line 53
    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    aget-byte v9, v7, v15

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v6

    or-int/2addr v5, v9

    const/4 v6, 0x2

    aget-byte v9, v7, v6

    and-int/lit16 v6, v9, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    aget-byte v6, v7, v8

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    const/16 v6, 0x8

    add-int/2addr v5, v6

    .line 54
    iput v5, v3, Lcom/shabakaty/downloader/zz3;->c:I

    const/4 v5, 0x5

    const/4 v6, 0x4

    .line 55
    aget-byte v6, v7, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    const/4 v8, 0x6

    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v6

    aget-byte v6, v7, v8

    and-int/lit16 v6, v6, 0xff

    const/16 v8, 0x8

    shl-int/2addr v6, v8

    or-int/2addr v5, v6

    aget-byte v4, v7, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v5

    const v5, 0x53454654

    if-eq v4, v5, :cond_17

    const-wide/16 v4, 0x0

    .line 56
    iput-wide v4, v2, Lcom/shabakaty/downloader/ie3;->a:J

    goto :goto_a

    .line 57
    :cond_17
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v4

    iget v0, v3, Lcom/shabakaty/downloader/zz3;->c:I

    add-int/lit8 v0, v0, -0xc

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iput-wide v4, v2, Lcom/shabakaty/downloader/ie3;->a:J

    const/4 v0, 0x2

    .line 58
    iput v0, v3, Lcom/shabakaty/downloader/zz3;->b:I

    goto :goto_a

    .line 59
    :cond_18
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->b()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1a

    cmp-long v0, v4, v18

    if-gez v0, :cond_19

    goto :goto_8

    :cond_19
    sub-long v4, v4, v18

    goto :goto_9

    :cond_1a
    :goto_8
    const-wide/16 v4, 0x0

    .line 60
    :goto_9
    iput-wide v4, v2, Lcom/shabakaty/downloader/ie3;->a:J

    .line 61
    iput v15, v3, Lcom/shabakaty/downloader/zz3;->b:I

    .line 62
    :goto_a
    iget-wide v2, v2, Lcom/shabakaty/downloader/ie3;->a:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1b

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/dv2;->k()V

    :cond_1b
    return v15

    .line 64
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 65
    :cond_1d
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v5

    .line 66
    iget v3, v1, Lcom/shabakaty/downloader/dv2;->n:I

    const/4 v8, -0x1

    if-ne v3, v8, :cond_28

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    const-wide v12, 0x7fffffffffffffffL

    const/4 v14, 0x1

    const-wide v20, 0x7fffffffffffffffL

    const-wide v27, 0x7fffffffffffffffL

    .line 67
    :goto_b
    iget-object v7, v1, Lcom/shabakaty/downloader/dv2;->s:[Lcom/shabakaty/downloader/dv2$a;

    sget v29, Lcom/shabakaty/downloader/sy4;->a:I

    array-length v15, v7

    if-ge v11, v15, :cond_25

    .line 68
    aget-object v7, v7, v11

    .line 69
    iget v15, v7, Lcom/shabakaty/downloader/dv2$a;->d:I

    .line 70
    iget-object v7, v7, Lcom/shabakaty/downloader/dv2$a;->b:Lcom/shabakaty/downloader/gp4;

    iget v8, v7, Lcom/shabakaty/downloader/gp4;->b:I

    if-ne v15, v8, :cond_1e

    goto :goto_e

    .line 71
    :cond_1e
    iget-object v7, v7, Lcom/shabakaty/downloader/gp4;->c:[J

    aget-wide v8, v7, v15

    .line 72
    iget-object v7, v1, Lcom/shabakaty/downloader/dv2;->t:[[J

    aget-object v7, v7, v11

    aget-wide v32, v7, v15

    sub-long/2addr v8, v5

    const-wide/16 v22, 0x0

    cmp-long v7, v8, v22

    if-ltz v7, :cond_20

    cmp-long v7, v8, v16

    if-ltz v7, :cond_1f

    goto :goto_c

    :cond_1f
    const/4 v7, 0x0

    goto :goto_d

    :cond_20
    :goto_c
    const/4 v7, 0x1

    :goto_d
    if-nez v7, :cond_21

    if-nez v4, :cond_22

    :cond_21
    if-ne v7, v4, :cond_23

    cmp-long v15, v8, v27

    if-gez v15, :cond_23

    :cond_22
    move v4, v7

    move-wide/from16 v27, v8

    move v10, v11

    move-wide/from16 v20, v32

    :cond_23
    cmp-long v8, v32, v12

    if-gez v8, :cond_24

    move v14, v7

    move v3, v11

    move-wide/from16 v12, v32

    :cond_24
    :goto_e
    add-int/lit8 v11, v11, 0x1

    const/4 v15, 0x1

    goto :goto_b

    :cond_25
    const-wide v7, 0x7fffffffffffffffL

    cmp-long v4, v12, v7

    if-eqz v4, :cond_26

    if-eqz v14, :cond_26

    const-wide/32 v7, 0xa00000

    add-long/2addr v12, v7

    cmp-long v4, v20, v12

    if-gez v4, :cond_27

    :cond_26
    move v3, v10

    .line 73
    :cond_27
    iput v3, v1, Lcom/shabakaty/downloader/dv2;->n:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_28

    const/4 v8, -0x1

    goto/16 :goto_12

    .line 74
    :cond_28
    iget-object v3, v1, Lcom/shabakaty/downloader/dv2;->s:[Lcom/shabakaty/downloader/dv2$a;

    sget v4, Lcom/shabakaty/downloader/sy4;->a:I

    iget v4, v1, Lcom/shabakaty/downloader/dv2;->n:I

    aget-object v3, v3, v4

    .line 75
    iget-object v7, v3, Lcom/shabakaty/downloader/dv2$a;->c:Lcom/shabakaty/downloader/fp4;

    .line 76
    iget v4, v3, Lcom/shabakaty/downloader/dv2$a;->d:I

    .line 77
    iget-object v8, v3, Lcom/shabakaty/downloader/dv2$a;->b:Lcom/shabakaty/downloader/gp4;

    iget-object v9, v8, Lcom/shabakaty/downloader/gp4;->c:[J

    aget-wide v10, v9, v4

    .line 78
    iget-object v8, v8, Lcom/shabakaty/downloader/gp4;->d:[I

    aget v8, v8, v4

    sub-long v5, v10, v5

    .line 79
    iget v9, v1, Lcom/shabakaty/downloader/dv2;->o:I

    int-to-long v12, v9

    add-long/2addr v5, v12

    const-wide/16 v12, 0x0

    cmp-long v9, v5, v12

    if-ltz v9, :cond_31

    cmp-long v9, v5, v16

    if-ltz v9, :cond_29

    goto/16 :goto_11

    .line 80
    :cond_29
    iget-object v2, v3, Lcom/shabakaty/downloader/dv2$a;->a:Lcom/shabakaty/downloader/wo4;

    iget v2, v2, Lcom/shabakaty/downloader/wo4;->g:I

    const/4 v9, 0x1

    if-ne v2, v9, :cond_2a

    add-long v5, v5, v18

    add-int/lit8 v8, v8, -0x8

    :cond_2a
    long-to-int v2, v5

    .line 81
    invoke-interface {v0, v2}, Lcom/shabakaty/downloader/o91;->q(I)V

    .line 82
    iget-object v2, v3, Lcom/shabakaty/downloader/dv2$a;->a:Lcom/shabakaty/downloader/wo4;

    iget v5, v2, Lcom/shabakaty/downloader/wo4;->j:I

    if-eqz v5, :cond_2d

    .line 83
    iget-object v2, v1, Lcom/shabakaty/downloader/dv2;->c:Lcom/shabakaty/downloader/ka3;

    .line 84
    iget-object v2, v2, Lcom/shabakaty/downloader/ka3;->a:[B

    const/4 v6, 0x0

    .line 85
    aput-byte v6, v2, v6

    const/4 v9, 0x1

    .line 86
    aput-byte v6, v2, v9

    const/4 v9, 0x2

    .line 87
    aput-byte v6, v2, v9

    rsub-int/lit8 v6, v5, 0x4

    .line 88
    :goto_f
    iget v9, v1, Lcom/shabakaty/downloader/dv2;->p:I

    if-ge v9, v8, :cond_30

    .line 89
    iget v9, v1, Lcom/shabakaty/downloader/dv2;->q:I

    if-nez v9, :cond_2c

    .line 90
    invoke-interface {v0, v2, v6, v5}, Lcom/shabakaty/downloader/o91;->readFully([BII)V

    .line 91
    iget v9, v1, Lcom/shabakaty/downloader/dv2;->o:I

    add-int/2addr v9, v5

    iput v9, v1, Lcom/shabakaty/downloader/dv2;->o:I

    .line 92
    iget-object v9, v1, Lcom/shabakaty/downloader/dv2;->c:Lcom/shabakaty/downloader/ka3;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 93
    iget-object v9, v1, Lcom/shabakaty/downloader/dv2;->c:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v9}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v9

    if-ltz v9, :cond_2b

    .line 94
    iput v9, v1, Lcom/shabakaty/downloader/dv2;->q:I

    .line 95
    iget-object v9, v1, Lcom/shabakaty/downloader/dv2;->b:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v9, v10}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 96
    iget-object v9, v1, Lcom/shabakaty/downloader/dv2;->b:Lcom/shabakaty/downloader/ka3;

    const/4 v11, 0x4

    invoke-interface {v7, v9, v11}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    .line 97
    iget v9, v1, Lcom/shabakaty/downloader/dv2;->p:I

    add-int/2addr v9, v11

    iput v9, v1, Lcom/shabakaty/downloader/dv2;->p:I

    add-int/2addr v8, v6

    goto :goto_f

    :cond_2b
    const-string v0, "Invalid NAL length"

    const/4 v2, 0x0

    .line 98
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v0

    throw v0

    :cond_2c
    const/4 v10, 0x0

    .line 99
    invoke-interface {v7, v0, v9, v10}, Lcom/shabakaty/downloader/fp4;->d(Lcom/shabakaty/downloader/rl0;IZ)I

    move-result v9

    .line 100
    iget v10, v1, Lcom/shabakaty/downloader/dv2;->o:I

    add-int/2addr v10, v9

    iput v10, v1, Lcom/shabakaty/downloader/dv2;->o:I

    .line 101
    iget v10, v1, Lcom/shabakaty/downloader/dv2;->p:I

    add-int/2addr v10, v9

    iput v10, v1, Lcom/shabakaty/downloader/dv2;->p:I

    .line 102
    iget v10, v1, Lcom/shabakaty/downloader/dv2;->q:I

    sub-int/2addr v10, v9

    iput v10, v1, Lcom/shabakaty/downloader/dv2;->q:I

    goto :goto_f

    .line 103
    :cond_2d
    iget-object v2, v2, Lcom/shabakaty/downloader/wo4;->f:Lcom/shabakaty/downloader/wh1;

    iget-object v2, v2, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    const-string v5, "audio/ac4"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 104
    iget v2, v1, Lcom/shabakaty/downloader/dv2;->p:I

    if-nez v2, :cond_2e

    .line 105
    iget-object v2, v1, Lcom/shabakaty/downloader/dv2;->d:Lcom/shabakaty/downloader/ka3;

    invoke-static {v8, v2}, Lcom/shabakaty/downloader/b2;->a(ILcom/shabakaty/downloader/ka3;)V

    .line 106
    iget-object v2, v1, Lcom/shabakaty/downloader/dv2;->d:Lcom/shabakaty/downloader/ka3;

    const/4 v5, 0x7

    invoke-interface {v7, v2, v5}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    .line 107
    iget v2, v1, Lcom/shabakaty/downloader/dv2;->p:I

    add-int/2addr v2, v5

    iput v2, v1, Lcom/shabakaty/downloader/dv2;->p:I

    :cond_2e
    add-int/lit8 v8, v8, 0x7

    .line 108
    :cond_2f
    :goto_10
    iget v2, v1, Lcom/shabakaty/downloader/dv2;->p:I

    if-ge v2, v8, :cond_30

    sub-int v2, v8, v2

    const/4 v5, 0x0

    .line 109
    invoke-interface {v7, v0, v2, v5}, Lcom/shabakaty/downloader/fp4;->d(Lcom/shabakaty/downloader/rl0;IZ)I

    move-result v2

    .line 110
    iget v5, v1, Lcom/shabakaty/downloader/dv2;->o:I

    add-int/2addr v5, v2

    iput v5, v1, Lcom/shabakaty/downloader/dv2;->o:I

    .line 111
    iget v5, v1, Lcom/shabakaty/downloader/dv2;->p:I

    add-int/2addr v5, v2

    iput v5, v1, Lcom/shabakaty/downloader/dv2;->p:I

    .line 112
    iget v5, v1, Lcom/shabakaty/downloader/dv2;->q:I

    sub-int/2addr v5, v2

    iput v5, v1, Lcom/shabakaty/downloader/dv2;->q:I

    goto :goto_10

    :cond_30
    move v11, v8

    .line 113
    iget-object v0, v3, Lcom/shabakaty/downloader/dv2$a;->b:Lcom/shabakaty/downloader/gp4;

    iget-object v2, v0, Lcom/shabakaty/downloader/gp4;->f:[J

    aget-wide v8, v2, v4

    iget-object v0, v0, Lcom/shabakaty/downloader/gp4;->g:[I

    aget v10, v0, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface/range {v7 .. v13}, Lcom/shabakaty/downloader/fp4;->b(JIIILcom/shabakaty/downloader/fp4$a;)V

    .line 114
    iget v0, v3, Lcom/shabakaty/downloader/dv2$a;->d:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, v3, Lcom/shabakaty/downloader/dv2$a;->d:I

    const/4 v0, -0x1

    .line 115
    iput v0, v1, Lcom/shabakaty/downloader/dv2;->n:I

    const/4 v0, 0x0

    .line 116
    iput v0, v1, Lcom/shabakaty/downloader/dv2;->o:I

    .line 117
    iput v0, v1, Lcom/shabakaty/downloader/dv2;->p:I

    .line 118
    iput v0, v1, Lcom/shabakaty/downloader/dv2;->q:I

    const/4 v8, 0x0

    goto :goto_12

    .line 119
    :cond_31
    :goto_11
    iput-wide v10, v2, Lcom/shabakaty/downloader/ie3;->a:J

    const/4 v8, 0x1

    :goto_12
    return v8

    .line 120
    :cond_32
    iget-wide v5, v1, Lcom/shabakaty/downloader/dv2;->k:J

    iget v3, v1, Lcom/shabakaty/downloader/dv2;->l:I

    int-to-long v7, v3

    sub-long/2addr v5, v7

    .line 121
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v7

    add-long/2addr v7, v5

    .line 122
    iget-object v3, v1, Lcom/shabakaty/downloader/dv2;->m:Lcom/shabakaty/downloader/ka3;

    if-eqz v3, :cond_3b

    .line 123
    iget-object v9, v3, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 124
    iget v10, v1, Lcom/shabakaty/downloader/dv2;->l:I

    long-to-int v6, v5

    invoke-interface {v0, v9, v10, v6}, Lcom/shabakaty/downloader/o91;->readFully([BII)V

    .line 125
    iget v5, v1, Lcom/shabakaty/downloader/dv2;->j:I

    if-ne v5, v4, :cond_3a

    const/16 v4, 0x8

    .line 126
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 127
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v4

    const v5, 0x71742020

    const v6, 0x68656963

    if-eq v4, v6, :cond_34

    if-eq v4, v5, :cond_33

    const/4 v4, 0x0

    goto :goto_13

    :cond_33
    const/4 v4, 0x1

    goto :goto_13

    :cond_34
    const/4 v4, 0x2

    :goto_13
    if-eqz v4, :cond_35

    goto :goto_15

    :cond_35
    const/4 v4, 0x4

    .line 128
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 129
    :cond_36
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v4

    if-lez v4, :cond_39

    .line 130
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v4

    if-eq v4, v6, :cond_38

    if-eq v4, v5, :cond_37

    const/4 v4, 0x0

    goto :goto_14

    :cond_37
    const/4 v4, 0x1

    goto :goto_14

    :cond_38
    const/4 v4, 0x2

    :goto_14
    if-eqz v4, :cond_36

    goto :goto_15

    :cond_39
    const/4 v4, 0x0

    .line 131
    :goto_15
    iput v4, v1, Lcom/shabakaty/downloader/dv2;->w:I

    goto :goto_16

    .line 132
    :cond_3a
    iget-object v4, v1, Lcom/shabakaty/downloader/dv2;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3c

    .line 133
    iget-object v4, v1, Lcom/shabakaty/downloader/dv2;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/zd$a;

    new-instance v5, Lcom/shabakaty/downloader/zd$b;

    iget v6, v1, Lcom/shabakaty/downloader/dv2;->j:I

    invoke-direct {v5, v6, v3}, Lcom/shabakaty/downloader/zd$b;-><init>(ILcom/shabakaty/downloader/ka3;)V

    .line 134
    iget-object v3, v4, Lcom/shabakaty/downloader/zd$a;->c:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_3b
    cmp-long v3, v5, v16

    if-gez v3, :cond_3d

    long-to-int v3, v5

    .line 135
    invoke-interface {v0, v3}, Lcom/shabakaty/downloader/o91;->q(I)V

    :cond_3c
    :goto_16
    const/4 v3, 0x0

    goto :goto_17

    .line 136
    :cond_3d
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v3

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/shabakaty/downloader/ie3;->a:J

    const/4 v3, 0x1

    .line 137
    :goto_17
    invoke-virtual {v1, v7, v8}, Lcom/shabakaty/downloader/dv2;->m(J)V

    if-eqz v3, :cond_3e

    .line 138
    iget v3, v1, Lcom/shabakaty/downloader/dv2;->i:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3e

    const/4 v14, 0x1

    goto :goto_18

    :cond_3e
    const/4 v14, 0x0

    :goto_18
    if-eqz v14, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_3f
    const/4 v3, 0x1

    .line 139
    iget v5, v1, Lcom/shabakaty/downloader/dv2;->l:I

    if-nez v5, :cond_43

    .line 140
    iget-object v5, v1, Lcom/shabakaty/downloader/dv2;->e:Lcom/shabakaty/downloader/ka3;

    .line 141
    iget-object v5, v5, Lcom/shabakaty/downloader/ka3;->a:[B

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 142
    invoke-interface {v0, v5, v7, v6, v3}, Lcom/shabakaty/downloader/o91;->f([BIIZ)Z

    move-result v5

    if-nez v5, :cond_42

    .line 143
    iget v3, v1, Lcom/shabakaty/downloader/dv2;->w:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_41

    iget v3, v1, Lcom/shabakaty/downloader/dv2;->a:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_41

    .line 144
    iget-object v3, v1, Lcom/shabakaty/downloader/dv2;->r:Lcom/shabakaty/downloader/p91;

    .line 145
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x4

    .line 146
    invoke-interface {v3, v7, v4}, Lcom/shabakaty/downloader/p91;->h(II)Lcom/shabakaty/downloader/fp4;

    move-result-object v4

    .line 147
    iget-object v5, v1, Lcom/shabakaty/downloader/dv2;->x:Lcom/shabakaty/downloader/xu2;

    if-nez v5, :cond_40

    const/4 v7, 0x0

    goto :goto_19

    :cond_40
    new-instance v6, Lcom/shabakaty/downloader/ps2;

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/shabakaty/downloader/ps2$b;

    aput-object v5, v8, v7

    invoke-direct {v6, v8}, Lcom/shabakaty/downloader/ps2;-><init>([Lcom/shabakaty/downloader/ps2$b;)V

    move-object v7, v6

    .line 148
    :goto_19
    new-instance v5, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v5}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    .line 149
    iput-object v7, v5, Lcom/shabakaty/downloader/wh1$b;->i:Lcom/shabakaty/downloader/ps2;

    .line 150
    invoke-virtual {v5}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/shabakaty/downloader/fp4;->f(Lcom/shabakaty/downloader/wh1;)V

    .line 151
    invoke-interface {v3}, Lcom/shabakaty/downloader/p91;->b()V

    .line 152
    new-instance v4, Lcom/shabakaty/downloader/vz3$b;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v7, 0x0

    .line 153
    invoke-direct {v4, v5, v6, v7, v8}, Lcom/shabakaty/downloader/vz3$b;-><init>(JJ)V

    .line 154
    invoke-interface {v3, v4}, Lcom/shabakaty/downloader/p91;->d(Lcom/shabakaty/downloader/vz3;)V

    :cond_41
    const/4 v14, 0x0

    goto/16 :goto_23

    :cond_42
    const/16 v3, 0x8

    .line 155
    iput v3, v1, Lcom/shabakaty/downloader/dv2;->l:I

    .line 156
    iget-object v3, v1, Lcom/shabakaty/downloader/dv2;->e:Lcom/shabakaty/downloader/ka3;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 157
    iget-object v3, v1, Lcom/shabakaty/downloader/dv2;->e:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->u()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/shabakaty/downloader/dv2;->k:J

    .line 158
    iget-object v3, v1, Lcom/shabakaty/downloader/dv2;->e:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v3

    iput v3, v1, Lcom/shabakaty/downloader/dv2;->j:I

    .line 159
    :cond_43
    iget-wide v5, v1, Lcom/shabakaty/downloader/dv2;->k:J

    const-wide/16 v7, 0x1

    cmp-long v3, v5, v7

    if-nez v3, :cond_44

    .line 160
    iget-object v3, v1, Lcom/shabakaty/downloader/dv2;->e:Lcom/shabakaty/downloader/ka3;

    .line 161
    iget-object v3, v3, Lcom/shabakaty/downloader/ka3;->a:[B

    const/16 v5, 0x8

    .line 162
    invoke-interface {v0, v3, v5, v5}, Lcom/shabakaty/downloader/o91;->readFully([BII)V

    .line 163
    iget v3, v1, Lcom/shabakaty/downloader/dv2;->l:I

    add-int/2addr v3, v5

    iput v3, v1, Lcom/shabakaty/downloader/dv2;->l:I

    .line 164
    iget-object v3, v1, Lcom/shabakaty/downloader/dv2;->e:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->x()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/shabakaty/downloader/dv2;->k:J

    goto :goto_1a

    :cond_44
    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_46

    .line 165
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->b()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-nez v3, :cond_45

    .line 166
    iget-object v3, v1, Lcom/shabakaty/downloader/dv2;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/zd$a;

    if-eqz v3, :cond_45

    .line 167
    iget-wide v5, v3, Lcom/shabakaty/downloader/zd$a;->b:J

    :cond_45
    cmp-long v3, v5, v7

    if-eqz v3, :cond_46

    .line 168
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget v3, v1, Lcom/shabakaty/downloader/dv2;->l:I

    int-to-long v7, v3

    add-long/2addr v5, v7

    iput-wide v5, v1, Lcom/shabakaty/downloader/dv2;->k:J

    .line 169
    :cond_46
    :goto_1a
    iget-wide v5, v1, Lcom/shabakaty/downloader/dv2;->k:J

    iget v3, v1, Lcom/shabakaty/downloader/dv2;->l:I

    int-to-long v7, v3

    cmp-long v9, v5, v7

    if-ltz v9, :cond_53

    .line 170
    iget v5, v1, Lcom/shabakaty/downloader/dv2;->j:I

    const v6, 0x6d6f6f76

    const v7, 0x6d657461

    if-eq v5, v6, :cond_48

    const v6, 0x7472616b

    if-eq v5, v6, :cond_48

    const v6, 0x6d646961

    if-eq v5, v6, :cond_48

    const v6, 0x6d696e66

    if-eq v5, v6, :cond_48

    const v6, 0x7374626c

    if-eq v5, v6, :cond_48

    const v6, 0x65647473

    if-eq v5, v6, :cond_48

    if-ne v5, v7, :cond_47

    goto :goto_1b

    :cond_47
    const/4 v6, 0x0

    goto :goto_1c

    :cond_48
    :goto_1b
    const/4 v6, 0x1

    :goto_1c
    const v8, 0x68646c72    # 4.3148E24f

    if-eqz v6, :cond_4c

    .line 171
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v3

    iget-wide v5, v1, Lcom/shabakaty/downloader/dv2;->k:J

    add-long/2addr v3, v5

    iget v9, v1, Lcom/shabakaty/downloader/dv2;->l:I

    int-to-long v9, v9

    sub-long/2addr v3, v9

    cmp-long v11, v5, v9

    if-eqz v11, :cond_4a

    .line 172
    iget v5, v1, Lcom/shabakaty/downloader/dv2;->j:I

    if-ne v5, v7, :cond_4a

    .line 173
    iget-object v5, v1, Lcom/shabakaty/downloader/dv2;->d:Lcom/shabakaty/downloader/ka3;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/ka3;->A(I)V

    .line 174
    iget-object v5, v1, Lcom/shabakaty/downloader/dv2;->d:Lcom/shabakaty/downloader/ka3;

    .line 175
    iget-object v5, v5, Lcom/shabakaty/downloader/ka3;->a:[B

    const/4 v7, 0x0

    .line 176
    invoke-interface {v0, v5, v7, v6}, Lcom/shabakaty/downloader/o91;->s([BII)V

    .line 177
    iget-object v5, v1, Lcom/shabakaty/downloader/dv2;->d:Lcom/shabakaty/downloader/ka3;

    sget-object v6, Lcom/shabakaty/downloader/be;->a:[B

    .line 178
    iget v6, v5, Lcom/shabakaty/downloader/ka3;->b:I

    const/4 v7, 0x4

    .line 179
    invoke-virtual {v5, v7}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 180
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v7

    if-eq v7, v8, :cond_49

    add-int/lit8 v6, v6, 0x4

    .line 181
    :cond_49
    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 182
    iget-object v5, v1, Lcom/shabakaty/downloader/dv2;->d:Lcom/shabakaty/downloader/ka3;

    .line 183
    iget v5, v5, Lcom/shabakaty/downloader/ka3;->b:I

    .line 184
    invoke-interface {v0, v5}, Lcom/shabakaty/downloader/o91;->q(I)V

    .line 185
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->p()V

    .line 186
    :cond_4a
    iget-object v5, v1, Lcom/shabakaty/downloader/dv2;->f:Ljava/util/ArrayDeque;

    new-instance v6, Lcom/shabakaty/downloader/zd$a;

    iget v7, v1, Lcom/shabakaty/downloader/dv2;->j:I

    invoke-direct {v6, v7, v3, v4}, Lcom/shabakaty/downloader/zd$a;-><init>(IJ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 187
    iget-wide v5, v1, Lcom/shabakaty/downloader/dv2;->k:J

    iget v7, v1, Lcom/shabakaty/downloader/dv2;->l:I

    int-to-long v7, v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_4b

    .line 188
    invoke-virtual {v1, v3, v4}, Lcom/shabakaty/downloader/dv2;->m(J)V

    goto :goto_1d

    .line 189
    :cond_4b
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/dv2;->k()V

    :goto_1d
    const/4 v3, 0x1

    goto/16 :goto_22

    :cond_4c
    const v6, 0x6d646864

    if-eq v5, v6, :cond_4e

    const v6, 0x6d766864

    if-eq v5, v6, :cond_4e

    if-eq v5, v8, :cond_4e

    const v6, 0x73747364

    if-eq v5, v6, :cond_4e

    const v6, 0x73747473

    if-eq v5, v6, :cond_4e

    const v6, 0x73747373

    if-eq v5, v6, :cond_4e

    const v6, 0x63747473

    if-eq v5, v6, :cond_4e

    const v6, 0x656c7374

    if-eq v5, v6, :cond_4e

    const v6, 0x73747363

    if-eq v5, v6, :cond_4e

    const v6, 0x7374737a

    if-eq v5, v6, :cond_4e

    const v6, 0x73747a32

    if-eq v5, v6, :cond_4e

    const v6, 0x7374636f

    if-eq v5, v6, :cond_4e

    const v6, 0x636f3634

    if-eq v5, v6, :cond_4e

    const v6, 0x746b6864

    if-eq v5, v6, :cond_4e

    if-eq v5, v4, :cond_4e

    const v4, 0x75647461

    if-eq v5, v4, :cond_4e

    const v4, 0x6b657973

    if-eq v5, v4, :cond_4e

    const v4, 0x696c7374

    if-ne v5, v4, :cond_4d

    goto :goto_1e

    :cond_4d
    const/4 v14, 0x0

    goto :goto_1f

    :cond_4e
    :goto_1e
    const/4 v14, 0x1

    :goto_1f
    if-eqz v14, :cond_51

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4f

    const/4 v14, 0x1

    goto :goto_20

    :cond_4f
    const/4 v14, 0x0

    .line 190
    :goto_20
    invoke-static {v14}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 191
    iget-wide v3, v1, Lcom/shabakaty/downloader/dv2;->k:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v3, v5

    if-gtz v7, :cond_50

    const/4 v14, 0x1

    goto :goto_21

    :cond_50
    const/4 v14, 0x0

    :goto_21
    invoke-static {v14}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 192
    new-instance v3, Lcom/shabakaty/downloader/ka3;

    iget-wide v4, v1, Lcom/shabakaty/downloader/dv2;->k:J

    long-to-int v5, v4

    invoke-direct {v3, v5}, Lcom/shabakaty/downloader/ka3;-><init>(I)V

    .line 193
    iget-object v4, v1, Lcom/shabakaty/downloader/dv2;->e:Lcom/shabakaty/downloader/ka3;

    .line 194
    iget-object v4, v4, Lcom/shabakaty/downloader/ka3;->a:[B

    iget-object v5, v3, Lcom/shabakaty/downloader/ka3;->a:[B

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 195
    invoke-static {v4, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    iput-object v3, v1, Lcom/shabakaty/downloader/dv2;->m:Lcom/shabakaty/downloader/ka3;

    const/4 v3, 0x1

    .line 197
    iput v3, v1, Lcom/shabakaty/downloader/dv2;->i:I

    goto :goto_22

    .line 198
    :cond_51
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v3

    iget v5, v1, Lcom/shabakaty/downloader/dv2;->l:I

    int-to-long v5, v5

    sub-long v10, v3, v5

    .line 199
    iget v3, v1, Lcom/shabakaty/downloader/dv2;->j:I

    const v4, 0x6d707664

    if-ne v3, v4, :cond_52

    .line 200
    new-instance v3, Lcom/shabakaty/downloader/xu2;

    const-wide/16 v8, 0x0

    add-long v14, v10, v5

    iget-wide v12, v1, Lcom/shabakaty/downloader/dv2;->k:J

    sub-long v4, v12, v5

    move-object v7, v3

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v16, v4

    invoke-direct/range {v7 .. v17}, Lcom/shabakaty/downloader/xu2;-><init>(JJJJJ)V

    iput-object v3, v1, Lcom/shabakaty/downloader/dv2;->x:Lcom/shabakaty/downloader/xu2;

    :cond_52
    const/4 v3, 0x0

    .line 201
    iput-object v3, v1, Lcom/shabakaty/downloader/dv2;->m:Lcom/shabakaty/downloader/ka3;

    const/4 v3, 0x1

    .line 202
    iput v3, v1, Lcom/shabakaty/downloader/dv2;->i:I

    :goto_22
    const/4 v14, 0x1

    :goto_23
    if-nez v14, :cond_0

    const/4 v3, -0x1

    return v3

    :cond_53
    const-string v0, "Atom size less than header length (unsupported)."

    .line 203
    invoke-static {v0}, Lcom/shabakaty/downloader/pa3;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/pa3;

    move-result-object v0

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6604662e -> :sswitch_4
        -0x4f6659e5 -> :sswitch_3
        -0x4a96a712 -> :sswitch_2
        -0x3182f331 -> :sswitch_1
        0x68f2d704 -> :sswitch_0
    .end sparse-switch
.end method

.method public g(Lcom/shabakaty/downloader/p91;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/dv2;->r:Lcom/shabakaty/downloader/p91;

    return-void
.end method

.method public h(Lcom/shabakaty/downloader/o91;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/dv2;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {p1, v1, v0}, Lcom/shabakaty/downloader/i94;->a(Lcom/shabakaty/downloader/o91;ZZ)Z

    move-result p1

    return p1
.end method

.method public i(J)Lcom/shabakaty/downloader/vz3$a;
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 1
    iget-object v3, v0, Lcom/shabakaty/downloader/dv2;->s:[Lcom/shabakaty/downloader/dv2$a;

    .line 2
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    array-length v3, v3

    if-nez v3, :cond_0

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/vz3$a;

    sget-object v2, Lcom/shabakaty/downloader/xz3;->c:Lcom/shabakaty/downloader/xz3;

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/vz3$a;-><init>(Lcom/shabakaty/downloader/xz3;)V

    return-object v1

    :cond_0
    const-wide/16 v3, -0x1

    .line 5
    iget v5, v0, Lcom/shabakaty/downloader/dv2;->u:I

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, -0x1

    if-eq v5, v8, :cond_4

    .line 6
    iget-object v9, v0, Lcom/shabakaty/downloader/dv2;->s:[Lcom/shabakaty/downloader/dv2$a;

    aget-object v5, v9, v5

    iget-object v5, v5, Lcom/shabakaty/downloader/dv2$a;->b:Lcom/shabakaty/downloader/gp4;

    .line 7
    invoke-virtual {v5, v1, v2}, Lcom/shabakaty/downloader/gp4;->a(J)I

    move-result v9

    if-ne v9, v8, :cond_1

    .line 8
    invoke-virtual {v5, v1, v2}, Lcom/shabakaty/downloader/gp4;->b(J)I

    move-result v9

    :cond_1
    if-ne v9, v8, :cond_2

    .line 9
    new-instance v1, Lcom/shabakaty/downloader/vz3$a;

    sget-object v2, Lcom/shabakaty/downloader/xz3;->c:Lcom/shabakaty/downloader/xz3;

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/vz3$a;-><init>(Lcom/shabakaty/downloader/xz3;)V

    return-object v1

    .line 10
    :cond_2
    iget-object v10, v5, Lcom/shabakaty/downloader/gp4;->f:[J

    aget-wide v11, v10, v9

    .line 11
    iget-object v10, v5, Lcom/shabakaty/downloader/gp4;->c:[J

    aget-wide v13, v10, v9

    cmp-long v10, v11, v1

    if-gez v10, :cond_3

    .line 12
    iget v10, v5, Lcom/shabakaty/downloader/gp4;->b:I

    add-int/2addr v10, v8

    if-ge v9, v10, :cond_3

    .line 13
    invoke-virtual {v5, v1, v2}, Lcom/shabakaty/downloader/gp4;->b(J)I

    move-result v1

    if-eq v1, v8, :cond_3

    if-eq v1, v9, :cond_3

    .line 14
    iget-object v2, v5, Lcom/shabakaty/downloader/gp4;->f:[J

    aget-wide v3, v2, v1

    .line 15
    iget-object v2, v5, Lcom/shabakaty/downloader/gp4;->c:[J

    aget-wide v1, v2, v1

    move-wide v15, v1

    move-wide v1, v3

    move-wide v3, v15

    goto :goto_0

    :cond_3
    move-wide v1, v6

    :goto_0
    move-wide v8, v3

    move-wide v3, v1

    move-wide v1, v11

    goto :goto_1

    :cond_4
    const-wide v13, 0x7fffffffffffffffL

    move-wide v8, v3

    move-wide v3, v6

    :goto_1
    const/4 v5, 0x0

    .line 16
    :goto_2
    iget-object v10, v0, Lcom/shabakaty/downloader/dv2;->s:[Lcom/shabakaty/downloader/dv2$a;

    array-length v11, v10

    if-ge v5, v11, :cond_7

    .line 17
    iget v11, v0, Lcom/shabakaty/downloader/dv2;->u:I

    if-eq v5, v11, :cond_6

    .line 18
    aget-object v10, v10, v5

    iget-object v10, v10, Lcom/shabakaty/downloader/dv2$a;->b:Lcom/shabakaty/downloader/gp4;

    .line 19
    invoke-static {v10, v1, v2, v13, v14}, Lcom/shabakaty/downloader/dv2;->l(Lcom/shabakaty/downloader/gp4;JJ)J

    move-result-wide v11

    cmp-long v13, v3, v6

    if-eqz v13, :cond_5

    .line 20
    invoke-static {v10, v3, v4, v8, v9}, Lcom/shabakaty/downloader/dv2;->l(Lcom/shabakaty/downloader/gp4;JJ)J

    move-result-wide v8

    :cond_5
    move-wide v13, v11

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 21
    :cond_7
    new-instance v5, Lcom/shabakaty/downloader/xz3;

    invoke-direct {v5, v1, v2, v13, v14}, Lcom/shabakaty/downloader/xz3;-><init>(JJ)V

    cmp-long v1, v3, v6

    if-nez v1, :cond_8

    .line 22
    new-instance v1, Lcom/shabakaty/downloader/vz3$a;

    invoke-direct {v1, v5}, Lcom/shabakaty/downloader/vz3$a;-><init>(Lcom/shabakaty/downloader/xz3;)V

    return-object v1

    .line 23
    :cond_8
    new-instance v1, Lcom/shabakaty/downloader/xz3;

    invoke-direct {v1, v3, v4, v8, v9}, Lcom/shabakaty/downloader/xz3;-><init>(JJ)V

    .line 24
    new-instance v2, Lcom/shabakaty/downloader/vz3$a;

    invoke-direct {v2, v5, v1}, Lcom/shabakaty/downloader/vz3$a;-><init>(Lcom/shabakaty/downloader/xz3;Lcom/shabakaty/downloader/xz3;)V

    return-object v2
.end method

.method public j()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/dv2;->v:J

    return-wide v0
.end method

.method public final k()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/shabakaty/downloader/dv2;->i:I

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/dv2;->l:I

    return-void
.end method

.method public final m(J)V
    .locals 22

    move-object/from16 v1, p0

    .line 1
    :goto_0
    iget-object v0, v1, Lcom/shabakaty/downloader/dv2;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_58

    iget-object v0, v1, Lcom/shabakaty/downloader/dv2;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/zd$a;

    iget-wide v2, v0, Lcom/shabakaty/downloader/zd$a;->b:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_58

    .line 2
    iget-object v0, v1, Lcom/shabakaty/downloader/dv2;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/shabakaty/downloader/zd$a;

    .line 3
    iget v0, v2, Lcom/shabakaty/downloader/zd;->a:I

    const v3, 0x6d6f6f76

    if-ne v0, v3, :cond_56

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget v3, v1, Lcom/shabakaty/downloader/dv2;->w:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 6
    :goto_1
    new-instance v10, Lcom/shabakaty/downloader/no1;

    invoke-direct {v10}, Lcom/shabakaty/downloader/no1;-><init>()V

    const v3, 0x75647461

    .line 7
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/zd$a;->c(I)Lcom/shabakaty/downloader/zd$b;

    move-result-object v3

    const v4, 0x696c7374

    const v5, 0x68646c72    # 4.3148E24f

    const v6, 0x6d657461

    const/4 v7, 0x4

    const/16 v9, 0x8

    const/4 v11, 0x0

    if-eqz v3, :cond_38

    .line 8
    sget-object v12, Lcom/shabakaty/downloader/be;->a:[B

    .line 9
    iget-object v3, v3, Lcom/shabakaty/downloader/zd$b;->b:Lcom/shabakaty/downloader/ka3;

    .line 10
    invoke-virtual {v3, v9}, Lcom/shabakaty/downloader/ka3;->E(I)V

    move-object v12, v11

    move-object v13, v12

    .line 11
    :goto_2
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v14

    if-lt v14, v9, :cond_36

    .line 12
    iget v14, v3, Lcom/shabakaty/downloader/ka3;->b:I

    .line 13
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v15

    move/from16 v16, v4

    .line 14
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v4

    if-ne v4, v6, :cond_2f

    .line 15
    invoke-virtual {v3, v14}, Lcom/shabakaty/downloader/ka3;->E(I)V

    add-int v4, v14, v15

    .line 16
    invoke-virtual {v3, v9}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 17
    iget v6, v3, Lcom/shabakaty/downloader/ka3;->b:I

    .line 18
    invoke-virtual {v3, v7}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 19
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v7

    if-eq v7, v5, :cond_1

    add-int/lit8 v6, v6, 0x4

    .line 20
    :cond_1
    invoke-virtual {v3, v6}, Lcom/shabakaty/downloader/ka3;->E(I)V

    move/from16 v5, v16

    .line 21
    :goto_3
    iget v6, v3, Lcom/shabakaty/downloader/ka3;->b:I

    if-ge v6, v4, :cond_2e

    .line 22
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v7

    .line 23
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v11

    if-ne v11, v5, :cond_2d

    .line 24
    invoke-virtual {v3, v6}, Lcom/shabakaty/downloader/ka3;->E(I)V

    add-int/2addr v6, v7

    .line 25
    invoke-virtual {v3, v9}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 26
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 27
    :goto_4
    iget v5, v3, Lcom/shabakaty/downloader/ka3;->b:I

    if-ge v5, v6, :cond_2b

    .line 28
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v7

    add-int/2addr v7, v5

    .line 29
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v5

    shr-int/lit8 v9, v5, 0x18

    and-int/lit16 v9, v9, 0xff

    const/16 v11, 0xa9

    move/from16 v16, v6

    const-string v6, "TCON"

    move-object/from16 v17, v0

    const-string v0, "MetadataUtil"

    if-eq v9, v11, :cond_1b

    const/16 v11, 0xfd

    if-ne v9, v11, :cond_2

    goto/16 :goto_9

    :cond_2
    const v9, 0x676e7265

    if-ne v5, v9, :cond_5

    .line 30
    :try_start_0
    invoke-static {v3}, Lcom/shabakaty/downloader/bt2;->f(Lcom/shabakaty/downloader/ka3;)I

    move-result v5

    if-lez v5, :cond_3

    .line 31
    sget-object v9, Lcom/shabakaty/downloader/bt2;->a:[Ljava/lang/String;

    array-length v11, v9

    if-gt v5, v11, :cond_3

    add-int/lit8 v5, v5, -0x1

    .line 32
    aget-object v5, v9, v5

    goto :goto_5

    :cond_3
    move-object v5, v13

    :goto_5
    if-eqz v5, :cond_4

    .line 33
    new-instance v0, Lcom/shabakaty/downloader/yl4;

    invoke-direct {v0, v6, v13, v5}, Lcom/shabakaty/downloader/yl4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_4
    const-string v5, "Failed to parse standard genre code"

    .line 34
    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v19, v8

    goto/16 :goto_c

    :cond_5
    const v6, 0x6469736b

    if-ne v5, v6, :cond_6

    const-string v0, "TPOS"

    .line 35
    invoke-static {v5, v0, v3}, Lcom/shabakaty/downloader/bt2;->c(ILjava/lang/String;Lcom/shabakaty/downloader/ka3;)Lcom/shabakaty/downloader/yl4;

    move-result-object v0

    goto/16 :goto_6

    :cond_6
    const v6, 0x74726b6e

    if-ne v5, v6, :cond_7

    const-string v0, "TRCK"

    .line 36
    invoke-static {v5, v0, v3}, Lcom/shabakaty/downloader/bt2;->c(ILjava/lang/String;Lcom/shabakaty/downloader/ka3;)Lcom/shabakaty/downloader/yl4;

    move-result-object v0

    goto/16 :goto_6

    :cond_7
    const v6, 0x746d706f

    if-ne v5, v6, :cond_8

    const-string v0, "TBPM"

    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 37
    invoke-static {v5, v0, v3, v9, v6}, Lcom/shabakaty/downloader/bt2;->e(ILjava/lang/String;Lcom/shabakaty/downloader/ka3;ZZ)Lcom/shabakaty/downloader/qx1;

    move-result-object v0

    goto/16 :goto_6

    :cond_8
    const v6, 0x6370696c

    if-ne v5, v6, :cond_9

    const-string v0, "TCMP"

    const/4 v6, 0x1

    .line 38
    invoke-static {v5, v0, v3, v6, v6}, Lcom/shabakaty/downloader/bt2;->e(ILjava/lang/String;Lcom/shabakaty/downloader/ka3;ZZ)Lcom/shabakaty/downloader/qx1;

    move-result-object v0

    goto/16 :goto_6

    :cond_9
    const v6, 0x636f7672

    if-ne v5, v6, :cond_a

    .line 39
    invoke-static {v3}, Lcom/shabakaty/downloader/bt2;->b(Lcom/shabakaty/downloader/ka3;)Lcom/shabakaty/downloader/l9;

    move-result-object v0

    goto/16 :goto_6

    :cond_a
    const v6, 0x61415254

    if-ne v5, v6, :cond_b

    const-string v0, "TPE2"

    .line 40
    invoke-static {v5, v0, v3}, Lcom/shabakaty/downloader/bt2;->d(ILjava/lang/String;Lcom/shabakaty/downloader/ka3;)Lcom/shabakaty/downloader/yl4;

    move-result-object v0

    goto/16 :goto_6

    :cond_b
    const v6, 0x736f6e6d

    if-ne v5, v6, :cond_c

    const-string v0, "TSOT"

    .line 41
    invoke-static {v5, v0, v3}, Lcom/shabakaty/downloader/bt2;->d(ILjava/lang/String;Lcom/shabakaty/downloader/ka3;)Lcom/shabakaty/downloader/yl4;

    move-result-object v0

    goto :goto_6

    :cond_c
    const v6, 0x736f616c

    if-ne v5, v6, :cond_d

    const-string v0, "TSO2"

    .line 42
    invoke-static {v5, v0, v3}, Lcom/shabakaty/downloader/bt2;->d(ILjava/lang/String;Lcom/shabakaty/downloader/ka3;)Lcom/shabakaty/downloader/yl4;

    move-result-object v0

    goto :goto_6

    :cond_d
    const v6, 0x736f6172

    if-ne v5, v6, :cond_e

    const-string v0, "TSOA"

    .line 43
    invoke-static {v5, v0, v3}, Lcom/shabakaty/downloader/bt2;->d(ILjava/lang/String;Lcom/shabakaty/downloader/ka3;)Lcom/shabakaty/downloader/yl4;

    move-result-object v0

    goto :goto_6

    :cond_e
    const v6, 0x736f6161

    if-ne v5, v6, :cond_f

    const-string v0, "TSOP"

    .line 44
    invoke-static {v5, v0, v3}, Lcom/shabakaty/downloader/bt2;->d(ILjava/lang/String;Lcom/shabakaty/downloader/ka3;)Lcom/shabakaty/downloader/yl4;

    move-result-object v0

    goto :goto_6

    :cond_f
    const v6, 0x736f636f

    if-ne v5, v6, :cond_10

    const-string v0, "TSOC"

    .line 45
    invoke-static {v5, v0, v3}, Lcom/shabakaty/downloader/bt2;->d(ILjava/lang/String;Lcom/shabakaty/downloader/ka3;)Lcom/shabakaty/downloader/yl4;

    move-result-object v0

    goto :goto_6

    :cond_10
    const v6, 0x72746e67

    if-ne v5, v6, :cond_11

    const-string v0, "ITUNESADVISORY"

    const/4 v6, 0x0

    .line 46
    invoke-static {v5, v0, v3, v6, v6}, Lcom/shabakaty/downloader/bt2;->e(ILjava/lang/String;Lcom/shabakaty/downloader/ka3;ZZ)Lcom/shabakaty/downloader/qx1;

    move-result-object v0

    goto :goto_6

    :cond_11
    const v6, 0x70676170

    if-ne v5, v6, :cond_12

    const-string v0, "ITUNESGAPLESS"

    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 47
    invoke-static {v5, v0, v3, v6, v9}, Lcom/shabakaty/downloader/bt2;->e(ILjava/lang/String;Lcom/shabakaty/downloader/ka3;ZZ)Lcom/shabakaty/downloader/qx1;

    move-result-object v0

    goto :goto_6

    :cond_12
    const v6, 0x736f736e

    if-ne v5, v6, :cond_13

    const-string v0, "TVSHOWSORT"

    .line 48
    invoke-static {v5, v0, v3}, Lcom/shabakaty/downloader/bt2;->d(ILjava/lang/String;Lcom/shabakaty/downloader/ka3;)Lcom/shabakaty/downloader/yl4;

    move-result-object v0

    goto :goto_6

    :cond_13
    const v6, 0x74767368

    if-ne v5, v6, :cond_14

    const-string v0, "TVSHOW"

    .line 49
    invoke-static {v5, v0, v3}, Lcom/shabakaty/downloader/bt2;->d(ILjava/lang/String;Lcom/shabakaty/downloader/ka3;)Lcom/shabakaty/downloader/yl4;

    move-result-object v0

    :goto_6
    move/from16 v19, v8

    goto/16 :goto_f

    :cond_14
    const v6, 0x2d2d2d2d

    if-ne v5, v6, :cond_1a

    const/4 v0, -0x1

    const/4 v5, -0x1

    move-object v6, v13

    .line 50
    :goto_7
    iget v9, v3, Lcom/shabakaty/downloader/ka3;->b:I

    if-ge v9, v7, :cond_18

    .line 51
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v11

    move/from16 v18, v9

    .line 52
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v9

    move/from16 v19, v8

    const/4 v8, 0x4

    .line 53
    invoke-virtual {v3, v8}, Lcom/shabakaty/downloader/ka3;->F(I)V

    const v8, 0x6d65616e

    if-ne v9, v8, :cond_15

    add-int/lit8 v11, v11, -0xc

    .line 54
    invoke-virtual {v3, v11}, Lcom/shabakaty/downloader/ka3;->o(I)Ljava/lang/String;

    move-result-object v8

    move-object v13, v8

    goto :goto_8

    :cond_15
    const v8, 0x6e616d65

    if-ne v9, v8, :cond_16

    add-int/lit8 v11, v11, -0xc

    .line 55
    invoke-virtual {v3, v11}, Lcom/shabakaty/downloader/ka3;->o(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_16
    const v8, 0x64617461

    if-ne v9, v8, :cond_17

    move v5, v11

    move/from16 v0, v18

    :cond_17
    add-int/lit8 v11, v11, -0xc

    .line 56
    invoke-virtual {v3, v11}, Lcom/shabakaty/downloader/ka3;->F(I)V

    :goto_8
    move/from16 v8, v19

    goto :goto_7

    :cond_18
    move/from16 v19, v8

    if-eqz v13, :cond_27

    if-eqz v6, :cond_27

    const/4 v8, -0x1

    if-ne v0, v8, :cond_19

    goto/16 :goto_c

    .line 57
    :cond_19
    invoke-virtual {v3, v0}, Lcom/shabakaty/downloader/ka3;->E(I)V

    const/16 v0, 0x10

    .line 58
    invoke-virtual {v3, v0}, Lcom/shabakaty/downloader/ka3;->F(I)V

    add-int/lit8 v5, v5, -0x10

    .line 59
    invoke-virtual {v3, v5}, Lcom/shabakaty/downloader/ka3;->o(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    new-instance v5, Lcom/shabakaty/downloader/a32;

    invoke-direct {v5, v13, v6, v0}, Lcom/shabakaty/downloader/a32;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_f

    :cond_1a
    move/from16 v19, v8

    goto/16 :goto_a

    :cond_1b
    :goto_9
    move/from16 v19, v8

    const v8, 0xffffff

    and-int/2addr v8, v5

    const v9, 0x636d74

    if-ne v8, v9, :cond_1c

    .line 61
    invoke-static {v5, v3}, Lcom/shabakaty/downloader/bt2;->a(ILcom/shabakaty/downloader/ka3;)Lcom/shabakaty/downloader/q60;

    move-result-object v0

    goto/16 :goto_f

    :catchall_0
    move-exception v0

    goto/16 :goto_10

    :cond_1c
    const v9, 0x6e616d

    if-eq v8, v9, :cond_29

    const v9, 0x74726b

    if-ne v8, v9, :cond_1d

    goto/16 :goto_e

    :cond_1d
    const v9, 0x636f6d

    if-eq v8, v9, :cond_28

    const v9, 0x777274

    if-ne v8, v9, :cond_1e

    goto/16 :goto_d

    :cond_1e
    const v9, 0x646179

    if-ne v8, v9, :cond_1f

    const-string v0, "TDRC"

    .line 62
    invoke-static {v5, v0, v3}, Lcom/shabakaty/downloader/bt2;->d(ILjava/lang/String;Lcom/shabakaty/downloader/ka3;)Lcom/shabakaty/downloader/yl4;

    move-result-object v0

    goto/16 :goto_f

    :cond_1f
    const v9, 0x415254

    if-ne v8, v9, :cond_20

    const-string v0, "TPE1"

    .line 63
    invoke-static {v5, v0, v3}, Lcom/shabakaty/downloader/bt2;->d(ILjava/lang/String;Lcom/shabakaty/downloader/ka3;)Lcom/shabakaty/downloader/yl4;

    move-result-object v0

    goto :goto_f

    :cond_20
    const v9, 0x746f6f

    if-ne v8, v9, :cond_21

    const-string v0, "TSSE"

    .line 64
    invoke-static {v5, v0, v3}, Lcom/shabakaty/downloader/bt2;->d(ILjava/lang/String;Lcom/shabakaty/downloader/ka3;)Lcom/shabakaty/downloader/yl4;

    move-result-object v0

    goto :goto_f

    :cond_21
    const v9, 0x616c62

    if-ne v8, v9, :cond_22

    const-string v0, "TALB"

    .line 65
    invoke-static {v5, v0, v3}, Lcom/shabakaty/downloader/bt2;->d(ILjava/lang/String;Lcom/shabakaty/downloader/ka3;)Lcom/shabakaty/downloader/yl4;

    move-result-object v0

    goto :goto_f

    :cond_22
    const v9, 0x6c7972

    if-ne v8, v9, :cond_23

    const-string v0, "USLT"

    .line 66
    invoke-static {v5, v0, v3}, Lcom/shabakaty/downloader/bt2;->d(ILjava/lang/String;Lcom/shabakaty/downloader/ka3;)Lcom/shabakaty/downloader/yl4;

    move-result-object v0

    goto :goto_f

    :cond_23
    const v9, 0x67656e

    if-ne v8, v9, :cond_24

    .line 67
    invoke-static {v5, v6, v3}, Lcom/shabakaty/downloader/bt2;->d(ILjava/lang/String;Lcom/shabakaty/downloader/ka3;)Lcom/shabakaty/downloader/yl4;

    move-result-object v0

    goto :goto_f

    :cond_24
    const v6, 0x677270

    if-ne v8, v6, :cond_25

    const-string v0, "TIT1"

    .line 68
    invoke-static {v5, v0, v3}, Lcom/shabakaty/downloader/bt2;->d(ILjava/lang/String;Lcom/shabakaty/downloader/ka3;)Lcom/shabakaty/downloader/yl4;

    move-result-object v0

    goto :goto_f

    :cond_25
    :goto_a
    const-string v6, "Skipped unknown metadata entry: "

    .line 69
    invoke-static {v5}, Lcom/shabakaty/downloader/zd;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_26

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    :cond_26
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 70
    :goto_b
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    :goto_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_28
    :goto_d
    const-string v0, "TCOM"

    .line 71
    invoke-static {v5, v0, v3}, Lcom/shabakaty/downloader/bt2;->d(ILjava/lang/String;Lcom/shabakaty/downloader/ka3;)Lcom/shabakaty/downloader/yl4;

    move-result-object v0

    goto :goto_f

    :cond_29
    :goto_e
    const-string v0, "TIT2"

    .line 72
    invoke-static {v5, v0, v3}, Lcom/shabakaty/downloader/bt2;->d(ILjava/lang/String;Lcom/shabakaty/downloader/ka3;)Lcom/shabakaty/downloader/yl4;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :goto_f
    invoke-virtual {v3, v7}, Lcom/shabakaty/downloader/ka3;->E(I)V

    if-eqz v0, :cond_2a

    .line 74
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    const/4 v13, 0x0

    move/from16 v6, v16

    move-object/from16 v0, v17

    move/from16 v8, v19

    goto/16 :goto_4

    .line 75
    :goto_10
    invoke-virtual {v3, v7}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 76
    throw v0

    :cond_2b
    move-object/from16 v17, v0

    move/from16 v19, v8

    .line 77
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_11

    :cond_2c
    new-instance v0, Lcom/shabakaty/downloader/ps2;

    invoke-direct {v0, v4}, Lcom/shabakaty/downloader/ps2;-><init>(Ljava/util/List;)V

    goto :goto_12

    :cond_2d
    move-object/from16 v17, v0

    move/from16 v19, v8

    add-int/2addr v6, v7

    .line 78
    invoke-virtual {v3, v6}, Lcom/shabakaty/downloader/ka3;->E(I)V

    const/16 v9, 0x8

    const/4 v13, 0x0

    const v5, 0x696c7374

    goto/16 :goto_3

    :cond_2e
    move-object/from16 v17, v0

    move/from16 v19, v8

    :goto_11
    const/4 v0, 0x0

    :goto_12
    move-object v11, v0

    goto :goto_16

    :cond_2f
    move-object/from16 v17, v0

    move/from16 v19, v8

    const v0, 0x736d7461

    if-ne v4, v0, :cond_35

    .line 79
    invoke-virtual {v3, v14}, Lcom/shabakaty/downloader/ka3;->E(I)V

    add-int v0, v14, v15

    const/16 v4, 0xc

    .line 80
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 81
    :goto_13
    iget v4, v3, Lcom/shabakaty/downloader/ka3;->b:I

    if-ge v4, v0, :cond_34

    .line 82
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v5

    .line 83
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v6

    const v7, 0x73617574

    if-ne v6, v7, :cond_33

    const/16 v0, 0xe

    if-ge v5, v0, :cond_30

    goto :goto_15

    :cond_30
    const/4 v0, 0x5

    .line 84
    invoke-virtual {v3, v0}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 85
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v0

    const/16 v4, 0xc

    if-eq v0, v4, :cond_31

    const/16 v5, 0xd

    if-eq v0, v5, :cond_31

    goto :goto_15

    :cond_31
    if-ne v0, v4, :cond_32

    const/high16 v0, 0x43700000    # 240.0f

    goto :goto_14

    :cond_32
    const/high16 v0, 0x42f00000    # 120.0f

    :goto_14
    const/4 v4, 0x1

    .line 86
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 87
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v5

    .line 88
    new-instance v6, Lcom/shabakaty/downloader/ps2;

    new-array v4, v4, [Lcom/shabakaty/downloader/ps2$b;

    new-instance v7, Lcom/shabakaty/downloader/h94;

    invoke-direct {v7, v0, v5}, Lcom/shabakaty/downloader/h94;-><init>(FI)V

    const/4 v0, 0x0

    aput-object v7, v4, v0

    invoke-direct {v6, v4}, Lcom/shabakaty/downloader/ps2;-><init>([Lcom/shabakaty/downloader/ps2$b;)V

    move-object v12, v6

    goto :goto_16

    :cond_33
    add-int/2addr v4, v5

    .line 89
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/ka3;->E(I)V

    goto :goto_13

    :cond_34
    :goto_15
    const/4 v0, 0x0

    move-object v12, v0

    :cond_35
    :goto_16
    add-int/2addr v14, v15

    .line 90
    invoke-virtual {v3, v14}, Lcom/shabakaty/downloader/ka3;->E(I)V

    const/16 v9, 0x8

    const/4 v13, 0x0

    const v4, 0x696c7374

    const v5, 0x68646c72    # 4.3148E24f

    const v6, 0x6d657461

    const/4 v7, 0x4

    move-object/from16 v0, v17

    move/from16 v8, v19

    goto/16 :goto_2

    :cond_36
    move-object/from16 v17, v0

    move/from16 v19, v8

    .line 91
    invoke-static {v11, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 92
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/shabakaty/downloader/ps2;

    .line 93
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ps2;

    if-eqz v3, :cond_37

    .line 94
    invoke-virtual {v10, v3}, Lcom/shabakaty/downloader/no1;->b(Lcom/shabakaty/downloader/ps2;)Z

    :cond_37
    const v4, 0x6d657461

    goto :goto_17

    :cond_38
    move-object/from16 v17, v0

    move/from16 v19, v8

    const/4 v0, 0x0

    const v4, 0x6d657461

    const/4 v3, 0x0

    :goto_17
    move-object v11, v3

    .line 95
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/zd$a;->b(I)Lcom/shabakaty/downloader/zd$a;

    move-result-object v3

    if-eqz v3, :cond_41

    .line 96
    sget-object v4, Lcom/shabakaty/downloader/be;->a:[B

    const v4, 0x68646c72    # 4.3148E24f

    .line 97
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/zd$a;->c(I)Lcom/shabakaty/downloader/zd$b;

    move-result-object v4

    const v5, 0x6b657973

    .line 98
    invoke-virtual {v3, v5}, Lcom/shabakaty/downloader/zd$a;->c(I)Lcom/shabakaty/downloader/zd$b;

    move-result-object v5

    const v6, 0x696c7374

    .line 99
    invoke-virtual {v3, v6}, Lcom/shabakaty/downloader/zd$a;->c(I)Lcom/shabakaty/downloader/zd$b;

    move-result-object v3

    if-eqz v4, :cond_41

    if-eqz v5, :cond_41

    if-eqz v3, :cond_41

    .line 100
    iget-object v4, v4, Lcom/shabakaty/downloader/zd$b;->b:Lcom/shabakaty/downloader/ka3;

    const/16 v6, 0x10

    .line 101
    invoke-virtual {v4, v6}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 102
    invoke-virtual {v4}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v4

    const v6, 0x6d647461

    if-eq v4, v6, :cond_39

    goto/16 :goto_1d

    .line 103
    :cond_39
    iget-object v4, v5, Lcom/shabakaty/downloader/zd$b;->b:Lcom/shabakaty/downloader/ka3;

    const/16 v5, 0xc

    .line 104
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 105
    invoke-virtual {v4}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v5

    .line 106
    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    :goto_18
    if-ge v7, v5, :cond_3a

    .line 107
    invoke-virtual {v4}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v8

    const/4 v9, 0x4

    .line 108
    invoke-virtual {v4, v9}, Lcom/shabakaty/downloader/ka3;->F(I)V

    add-int/lit8 v8, v8, -0x8

    .line 109
    invoke-virtual {v4, v8}, Lcom/shabakaty/downloader/ka3;->q(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    :cond_3a
    const/16 v4, 0x8

    .line 110
    iget-object v3, v3, Lcom/shabakaty/downloader/zd$b;->b:Lcom/shabakaty/downloader/ka3;

    .line 111
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 112
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 113
    :goto_19
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v8

    if-le v8, v4, :cond_3f

    .line 114
    iget v4, v3, Lcom/shabakaty/downloader/ka3;->b:I

    .line 115
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v8

    .line 116
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_3d

    if-ge v9, v5, :cond_3d

    .line 117
    aget-object v9, v6, v9

    add-int v12, v4, v8

    .line 118
    :goto_1a
    iget v13, v3, Lcom/shabakaty/downloader/ka3;->b:I

    if-ge v13, v12, :cond_3c

    .line 119
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v14

    .line 120
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v15

    move/from16 v16, v5

    const v5, 0x64617461

    if-ne v15, v5, :cond_3b

    .line 121
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v5

    .line 122
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v12

    add-int/lit8 v14, v14, -0x10

    .line 123
    new-array v13, v14, [B

    .line 124
    iget-object v15, v3, Lcom/shabakaty/downloader/ka3;->a:[B

    move-object/from16 v18, v6

    iget v6, v3, Lcom/shabakaty/downloader/ka3;->b:I

    move-object/from16 v20, v11

    const/4 v11, 0x0

    invoke-static {v15, v6, v13, v11, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    iget v6, v3, Lcom/shabakaty/downloader/ka3;->b:I

    add-int/2addr v6, v14

    iput v6, v3, Lcom/shabakaty/downloader/ka3;->b:I

    .line 126
    new-instance v6, Lcom/shabakaty/downloader/go2;

    invoke-direct {v6, v9, v13, v12, v5}, Lcom/shabakaty/downloader/go2;-><init>(Ljava/lang/String;[BII)V

    goto :goto_1b

    :cond_3b
    move-object/from16 v18, v6

    move-object/from16 v20, v11

    add-int/2addr v13, v14

    .line 127
    invoke-virtual {v3, v13}, Lcom/shabakaty/downloader/ka3;->E(I)V

    move/from16 v5, v16

    goto :goto_1a

    :cond_3c
    move/from16 v16, v5

    move-object/from16 v18, v6

    move-object/from16 v20, v11

    const/4 v6, 0x0

    :goto_1b
    if-eqz v6, :cond_3e

    .line 128
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_3d
    move/from16 v16, v5

    move-object/from16 v18, v6

    move-object/from16 v20, v11

    const/16 v5, 0x34

    const-string v6, "Skipped metadata with unknown key index: "

    const-string v11, "AtomParsers"

    .line 129
    invoke-static {v5, v6, v9, v11}, Lcom/shabakaty/downloader/me;->a(ILjava/lang/String;ILjava/lang/String;)V

    :cond_3e
    :goto_1c
    add-int/2addr v4, v8

    .line 130
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/ka3;->E(I)V

    const/16 v4, 0x8

    move/from16 v5, v16

    move-object/from16 v6, v18

    move-object/from16 v11, v20

    goto/16 :goto_19

    :cond_3f
    move-object/from16 v20, v11

    .line 131
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_40

    goto :goto_1e

    :cond_40
    new-instance v3, Lcom/shabakaty/downloader/ps2;

    invoke-direct {v3, v7}, Lcom/shabakaty/downloader/ps2;-><init>(Ljava/util/List;)V

    goto :goto_1f

    :cond_41
    :goto_1d
    move-object/from16 v20, v11

    :goto_1e
    const/4 v3, 0x0

    :goto_1f
    move-object v11, v3

    .line 132
    iget v3, v1, Lcom/shabakaty/downloader/dv2;->a:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_42

    const/4 v3, 0x1

    const/4 v7, 0x1

    goto :goto_20

    :cond_42
    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_20
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    .line 133
    sget-object v9, Lcom/shabakaty/downloader/cv2;->a:Lcom/shabakaty/downloader/cv2;

    move-object v3, v10

    move/from16 v8, v19

    .line 134
    invoke-static/range {v2 .. v9}, Lcom/shabakaty/downloader/be;->e(Lcom/shabakaty/downloader/zd$a;Lcom/shabakaty/downloader/no1;JLcom/shabakaty/downloader/o01;ZZLcom/shabakaty/downloader/dn1;)Ljava/util/List;

    move-result-object v2

    .line 135
    iget-object v3, v1, Lcom/shabakaty/downloader/dv2;->r:Lcom/shabakaty/downloader/p91;

    .line 136
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-wide v7, v5

    const/4 v9, -0x1

    const/4 v12, 0x0

    :goto_21
    if-ge v12, v4, :cond_50

    .line 138
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shabakaty/downloader/gp4;

    .line 139
    iget v14, v13, Lcom/shabakaty/downloader/gp4;->b:I

    if-nez v14, :cond_43

    move-object/from16 v21, v0

    move-object v13, v1

    move-object v15, v2

    move/from16 v16, v4

    move-object/from16 v0, v17

    goto/16 :goto_28

    .line 140
    :cond_43
    iget-object v14, v13, Lcom/shabakaty/downloader/gp4;->a:Lcom/shabakaty/downloader/wo4;

    move-object v15, v2

    .line 141
    iget-wide v1, v14, Lcom/shabakaty/downloader/wo4;->e:J

    cmp-long v16, v1, v7

    if-eqz v16, :cond_44

    goto :goto_22

    :cond_44
    iget-wide v1, v13, Lcom/shabakaty/downloader/gp4;->h:J

    .line 142
    :goto_22
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 143
    new-instance v7, Lcom/shabakaty/downloader/dv2$a;

    iget v8, v14, Lcom/shabakaty/downloader/wo4;->b:I

    .line 144
    invoke-interface {v3, v12, v8}, Lcom/shabakaty/downloader/p91;->h(II)Lcom/shabakaty/downloader/fp4;

    move-result-object v8

    invoke-direct {v7, v14, v13, v8}, Lcom/shabakaty/downloader/dv2$a;-><init>(Lcom/shabakaty/downloader/wo4;Lcom/shabakaty/downloader/gp4;Lcom/shabakaty/downloader/fp4;)V

    .line 145
    iget v8, v13, Lcom/shabakaty/downloader/gp4;->e:I

    add-int/lit8 v8, v8, 0x1e

    move/from16 v16, v4

    .line 146
    iget-object v4, v14, Lcom/shabakaty/downloader/wo4;->f:Lcom/shabakaty/downloader/wh1;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/wh1;->a()Lcom/shabakaty/downloader/wh1$b;

    move-result-object v4

    .line 147
    iput v8, v4, Lcom/shabakaty/downloader/wh1$b;->l:I

    .line 148
    iget v8, v14, Lcom/shabakaty/downloader/wo4;->b:I

    move-wide/from16 v18, v5

    const/4 v5, 0x2

    if-ne v8, v5, :cond_45

    const-wide/16 v5, 0x0

    cmp-long v21, v1, v5

    if-lez v21, :cond_45

    iget v5, v13, Lcom/shabakaty/downloader/gp4;->b:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_45

    int-to-float v5, v5

    long-to-float v1, v1

    const v2, 0x49742400    # 1000000.0f

    div-float/2addr v1, v2

    div-float/2addr v5, v1

    .line 149
    iput v5, v4, Lcom/shabakaty/downloader/wh1$b;->r:F

    :cond_45
    const/4 v1, 0x1

    if-ne v8, v1, :cond_47

    .line 150
    iget v1, v10, Lcom/shabakaty/downloader/no1;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_46

    iget v5, v10, Lcom/shabakaty/downloader/no1;->b:I

    if-eq v5, v2, :cond_46

    const/4 v2, 0x1

    goto :goto_23

    :cond_46
    const/4 v2, 0x0

    :goto_23
    if-eqz v2, :cond_47

    .line 151
    iput v1, v4, Lcom/shabakaty/downloader/wh1$b;->A:I

    .line 152
    iget v1, v10, Lcom/shabakaty/downloader/no1;->b:I

    .line 153
    iput v1, v4, Lcom/shabakaty/downloader/wh1$b;->B:I

    :cond_47
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/shabakaty/downloader/ps2;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    move-object/from16 v13, p0

    .line 154
    iget-object v5, v13, Lcom/shabakaty/downloader/dv2;->h:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_48

    const/4 v5, 0x0

    goto :goto_24

    :cond_48
    new-instance v5, Lcom/shabakaty/downloader/ps2;

    iget-object v6, v13, Lcom/shabakaty/downloader/dv2;->h:Ljava/util/List;

    invoke-direct {v5, v6}, Lcom/shabakaty/downloader/ps2;-><init>(Ljava/util/List;)V

    :goto_24
    const/4 v6, 0x1

    aput-object v5, v1, v6

    .line 155
    new-instance v5, Lcom/shabakaty/downloader/ps2;

    new-array v2, v2, [Lcom/shabakaty/downloader/ps2$b;

    invoke-direct {v5, v2}, Lcom/shabakaty/downloader/ps2;-><init>([Lcom/shabakaty/downloader/ps2$b;)V

    if-ne v8, v6, :cond_49

    if-eqz v20, :cond_4c

    move-object/from16 v21, v0

    move-object/from16 v5, v20

    goto :goto_26

    :cond_49
    const/4 v2, 0x2

    if-ne v8, v2, :cond_4c

    if-eqz v11, :cond_4c

    const/4 v2, 0x0

    .line 156
    :goto_25
    iget-object v6, v11, Lcom/shabakaty/downloader/ps2;->r:[Lcom/shabakaty/downloader/ps2$b;

    array-length v8, v6

    if-ge v2, v8, :cond_4c

    .line 157
    aget-object v6, v6, v2

    .line 158
    instance-of v8, v6, Lcom/shabakaty/downloader/go2;

    if-eqz v8, :cond_4a

    .line 159
    check-cast v6, Lcom/shabakaty/downloader/go2;

    .line 160
    iget-object v8, v6, Lcom/shabakaty/downloader/go2;->r:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v0, "com.android.capture.fps"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 161
    new-instance v5, Lcom/shabakaty/downloader/ps2;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/shabakaty/downloader/ps2$b;

    const/4 v2, 0x0

    aput-object v6, v0, v2

    invoke-direct {v5, v0}, Lcom/shabakaty/downloader/ps2;-><init>([Lcom/shabakaty/downloader/ps2$b;)V

    goto :goto_26

    :cond_4a
    move-object/from16 v21, v0

    :cond_4b
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v21

    goto :goto_25

    :cond_4c
    move-object/from16 v21, v0

    :goto_26
    const/4 v0, 0x0

    :goto_27
    const/4 v2, 0x2

    if-ge v0, v2, :cond_4d

    .line 162
    aget-object v2, v1, v0

    .line 163
    invoke-virtual {v5, v2}, Lcom/shabakaty/downloader/ps2;->b(Lcom/shabakaty/downloader/ps2;)Lcom/shabakaty/downloader/ps2;

    move-result-object v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 164
    :cond_4d
    iget-object v0, v5, Lcom/shabakaty/downloader/ps2;->r:[Lcom/shabakaty/downloader/ps2$b;

    array-length v0, v0

    if-lez v0, :cond_4e

    .line 165
    iput-object v5, v4, Lcom/shabakaty/downloader/wh1$b;->i:Lcom/shabakaty/downloader/ps2;

    .line 166
    :cond_4e
    iget-object v0, v7, Lcom/shabakaty/downloader/dv2$a;->c:Lcom/shabakaty/downloader/fp4;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/fp4;->f(Lcom/shabakaty/downloader/wh1;)V

    .line 167
    iget v0, v14, Lcom/shabakaty/downloader/wo4;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4f

    const/4 v0, -0x1

    if-ne v9, v0, :cond_4f

    .line 168
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v9

    :cond_4f
    move-object/from16 v0, v17

    .line 169
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v5, v18

    :goto_28
    add-int/lit8 v12, v12, 0x1

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v17, v0

    move-object v1, v13

    move-object v2, v15

    move/from16 v4, v16

    move-object/from16 v0, v21

    goto/16 :goto_21

    :cond_50
    move-object v13, v1

    move-object/from16 v0, v17

    const-wide/16 v1, 0x0

    .line 170
    iput v9, v13, Lcom/shabakaty/downloader/dv2;->u:I

    .line 171
    iput-wide v5, v13, Lcom/shabakaty/downloader/dv2;->v:J

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/shabakaty/downloader/dv2$a;

    .line 172
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/dv2$a;

    iput-object v0, v13, Lcom/shabakaty/downloader/dv2;->s:[Lcom/shabakaty/downloader/dv2$a;

    .line 173
    array-length v4, v0

    new-array v4, v4, [[J

    .line 174
    array-length v5, v0

    new-array v5, v5, [I

    .line 175
    array-length v6, v0

    new-array v6, v6, [J

    .line 176
    array-length v7, v0

    new-array v7, v7, [Z

    const/4 v8, 0x0

    .line 177
    :goto_29
    array-length v9, v0

    if-ge v8, v9, :cond_51

    .line 178
    aget-object v9, v0, v8

    iget-object v9, v9, Lcom/shabakaty/downloader/dv2$a;->b:Lcom/shabakaty/downloader/gp4;

    iget v9, v9, Lcom/shabakaty/downloader/gp4;->b:I

    new-array v9, v9, [J

    aput-object v9, v4, v8

    .line 179
    aget-object v9, v0, v8

    iget-object v9, v9, Lcom/shabakaty/downloader/dv2$a;->b:Lcom/shabakaty/downloader/gp4;

    iget-object v9, v9, Lcom/shabakaty/downloader/gp4;->f:[J

    const/4 v10, 0x0

    aget-wide v10, v9, v10

    aput-wide v10, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_29

    :cond_51
    const/4 v8, 0x0

    .line 180
    :goto_2a
    array-length v9, v0

    if-ge v8, v9, :cond_55

    const-wide v9, 0x7fffffffffffffffL

    const/4 v11, -0x1

    const/4 v12, 0x0

    .line 181
    :goto_2b
    array-length v14, v0

    if-ge v12, v14, :cond_53

    .line 182
    aget-boolean v14, v7, v12

    if-nez v14, :cond_52

    aget-wide v14, v6, v12

    cmp-long v16, v14, v9

    if-gtz v16, :cond_52

    .line 183
    aget-wide v9, v6, v12

    move v11, v12

    :cond_52
    add-int/lit8 v12, v12, 0x1

    goto :goto_2b

    .line 184
    :cond_53
    aget v9, v5, v11

    .line 185
    aget-object v10, v4, v11

    aput-wide v1, v10, v9

    .line 186
    aget-object v10, v0, v11

    iget-object v10, v10, Lcom/shabakaty/downloader/dv2$a;->b:Lcom/shabakaty/downloader/gp4;

    iget-object v10, v10, Lcom/shabakaty/downloader/gp4;->d:[I

    aget v10, v10, v9

    int-to-long v14, v10

    add-long/2addr v1, v14

    const/4 v10, 0x1

    add-int/2addr v9, v10

    .line 187
    aput v9, v5, v11

    .line 188
    aget-object v12, v4, v11

    array-length v12, v12

    if-ge v9, v12, :cond_54

    .line 189
    aget-object v10, v0, v11

    iget-object v10, v10, Lcom/shabakaty/downloader/dv2$a;->b:Lcom/shabakaty/downloader/gp4;

    iget-object v10, v10, Lcom/shabakaty/downloader/gp4;->f:[J

    aget-wide v9, v10, v9

    aput-wide v9, v6, v11

    goto :goto_2a

    .line 190
    :cond_54
    aput-boolean v10, v7, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_2a

    .line 191
    :cond_55
    iput-object v4, v13, Lcom/shabakaty/downloader/dv2;->t:[[J

    .line 192
    invoke-interface {v3}, Lcom/shabakaty/downloader/p91;->b()V

    .line 193
    invoke-interface {v3, v13}, Lcom/shabakaty/downloader/p91;->d(Lcom/shabakaty/downloader/vz3;)V

    .line 194
    iget-object v0, v13, Lcom/shabakaty/downloader/dv2;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x2

    .line 195
    iput v0, v13, Lcom/shabakaty/downloader/dv2;->i:I

    goto :goto_2c

    :cond_56
    move-object v13, v1

    .line 196
    iget-object v0, v13, Lcom/shabakaty/downloader/dv2;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_57

    .line 197
    iget-object v0, v13, Lcom/shabakaty/downloader/dv2;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/zd$a;

    .line 198
    iget-object v0, v0, Lcom/shabakaty/downloader/zd$a;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_57
    :goto_2c
    move-object v1, v13

    goto/16 :goto_0

    :cond_58
    move-object v13, v1

    .line 199
    iget v0, v13, Lcom/shabakaty/downloader/dv2;->i:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_59

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/dv2;->k()V

    :cond_59
    return-void
.end method
