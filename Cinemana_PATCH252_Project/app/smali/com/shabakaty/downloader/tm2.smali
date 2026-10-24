.class public abstract Lcom/shabakaty/downloader/tm2;
.super Lcom/shabakaty/downloader/lp4;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/tm2$a;
    }
.end annotation


# instance fields
.field public c:Lcom/shabakaty/downloader/tm2$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/lp4;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/tm2$a;

    iput-object p1, p0, Lcom/shabakaty/downloader/tm2;->c:Lcom/shabakaty/downloader/tm2$a;

    return-void
.end method

.method public final b([Lcom/shabakaty/downloader/mr3;Lcom/shabakaty/downloader/cp4;Lcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/nn4;)Lcom/shabakaty/downloader/mp4;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    array-length v2, v0

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [I

    .line 2
    array-length v4, v0

    add-int/2addr v4, v3

    new-array v5, v4, [[Lcom/shabakaty/downloader/bp4;

    .line 3
    array-length v6, v0

    add-int/2addr v6, v3

    new-array v6, v6, [[[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v4, :cond_0

    .line 4
    iget v9, v1, Lcom/shabakaty/downloader/cp4;->r:I

    new-array v10, v9, [Lcom/shabakaty/downloader/bp4;

    aput-object v10, v5, v8

    .line 5
    new-array v9, v9, [[I

    aput-object v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 6
    :cond_0
    array-length v4, v0

    new-array v14, v4, [I

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v4, :cond_1

    .line 7
    aget-object v9, v0, v8

    invoke-interface {v9}, Lcom/shabakaty/downloader/mr3;->n()I

    move-result v9

    aput v9, v14, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 8
    :goto_2
    iget v8, v1, Lcom/shabakaty/downloader/cp4;->r:I

    if-ge v4, v8, :cond_a

    .line 9
    iget-object v8, v1, Lcom/shabakaty/downloader/cp4;->s:[Lcom/shabakaty/downloader/bp4;

    aget-object v8, v8, v4

    .line 10
    iget-object v9, v8, Lcom/shabakaty/downloader/bp4;->s:[Lcom/shabakaty/downloader/wh1;

    aget-object v9, v9, v7

    .line 11
    iget-object v9, v9, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    invoke-static {v9}, Lcom/shabakaty/downloader/nt2;->i(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_2

    const/4 v9, 0x1

    goto :goto_3

    :cond_2
    const/4 v9, 0x0

    .line 12
    :goto_3
    array-length v10, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 13
    :goto_4
    array-length v15, v0

    if-ge v11, v15, :cond_7

    .line 14
    aget-object v15, v0, v11

    const/4 v3, 0x0

    .line 15
    :goto_5
    iget v1, v8, Lcom/shabakaty/downloader/bp4;->r:I

    if-ge v7, v1, :cond_3

    .line 16
    iget-object v1, v8, Lcom/shabakaty/downloader/bp4;->s:[Lcom/shabakaty/downloader/wh1;

    aget-object v1, v1, v7

    .line 17
    invoke-interface {v15, v1}, Lcom/shabakaty/downloader/mr3;->a(Lcom/shabakaty/downloader/wh1;)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    .line 18
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 19
    :cond_3
    aget v1, v2, v11

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_6

    :cond_4
    const/4 v1, 0x0

    :goto_6
    if-gt v3, v12, :cond_5

    if-ne v3, v12, :cond_6

    if-eqz v9, :cond_6

    if-nez v13, :cond_6

    if-eqz v1, :cond_6

    :cond_5
    move v13, v1

    move v12, v3

    move v10, v11

    :cond_6
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p2

    const/4 v3, 0x1

    const/4 v7, 0x0

    goto :goto_4

    .line 20
    :cond_7
    array-length v1, v0

    if-ne v10, v1, :cond_8

    .line 21
    iget v1, v8, Lcom/shabakaty/downloader/bp4;->r:I

    new-array v1, v1, [I

    goto :goto_8

    .line 22
    :cond_8
    aget-object v1, v0, v10

    .line 23
    iget v3, v8, Lcom/shabakaty/downloader/bp4;->r:I

    new-array v3, v3, [I

    const/4 v7, 0x0

    .line 24
    :goto_7
    iget v9, v8, Lcom/shabakaty/downloader/bp4;->r:I

    if-ge v7, v9, :cond_9

    .line 25
    iget-object v9, v8, Lcom/shabakaty/downloader/bp4;->s:[Lcom/shabakaty/downloader/wh1;

    aget-object v9, v9, v7

    .line 26
    invoke-interface {v1, v9}, Lcom/shabakaty/downloader/mr3;->a(Lcom/shabakaty/downloader/wh1;)I

    move-result v9

    aput v9, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_9
    move-object v1, v3

    .line 27
    :goto_8
    aget v3, v2, v10

    .line 28
    aget-object v7, v5, v10

    aput-object v8, v7, v3

    .line 29
    aget-object v7, v6, v10

    aput-object v1, v7, v3

    .line 30
    aget v1, v2, v10

    const/4 v3, 0x1

    add-int/2addr v1, v3

    aput v1, v2, v10

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p2

    const/4 v7, 0x0

    goto/16 :goto_2

    .line 31
    :cond_a
    array-length v1, v0

    new-array v10, v1, [Lcom/shabakaty/downloader/cp4;

    .line 32
    array-length v1, v0

    new-array v8, v1, [Ljava/lang/String;

    .line 33
    array-length v1, v0

    new-array v9, v1, [I

    const/4 v7, 0x0

    .line 34
    :goto_9
    array-length v1, v0

    if-ge v7, v1, :cond_b

    .line 35
    aget v1, v2, v7

    .line 36
    new-instance v3, Lcom/shabakaty/downloader/cp4;

    aget-object v4, v5, v7

    .line 37
    invoke-static {v4, v1}, Lcom/shabakaty/downloader/sy4;->J([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/shabakaty/downloader/bp4;

    invoke-direct {v3, v4}, Lcom/shabakaty/downloader/cp4;-><init>([Lcom/shabakaty/downloader/bp4;)V

    aput-object v3, v10, v7

    .line 38
    aget-object v3, v6, v7

    .line 39
    invoke-static {v3, v1}, Lcom/shabakaty/downloader/sy4;->J([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    aput-object v1, v6, v7

    .line 40
    aget-object v1, v0, v7

    invoke-interface {v1}, Lcom/shabakaty/downloader/mr3;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v7

    .line 41
    aget-object v1, v0, v7

    check-cast v1, Lcom/shabakaty/downloader/bk;

    .line 42
    iget v1, v1, Lcom/shabakaty/downloader/bk;->r:I

    .line 43
    aput v1, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 44
    :cond_b
    array-length v1, v0

    aget v1, v2, v1

    .line 45
    new-instance v13, Lcom/shabakaty/downloader/cp4;

    array-length v0, v0

    aget-object v0, v5, v0

    .line 46
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/sy4;->J([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/bp4;

    invoke-direct {v13, v0}, Lcom/shabakaty/downloader/cp4;-><init>([Lcom/shabakaty/downloader/bp4;)V

    .line 47
    new-instance v0, Lcom/shabakaty/downloader/tm2$a;

    move-object v7, v0

    move-object v11, v14

    move-object v12, v6

    invoke-direct/range {v7 .. v13}, Lcom/shabakaty/downloader/tm2$a;-><init>([Ljava/lang/String;[I[Lcom/shabakaty/downloader/cp4;[I[[[ILcom/shabakaty/downloader/cp4;)V

    move-object/from16 v7, p0

    move-object v8, v0

    move-object v9, v6

    move-object v10, v14

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 48
    invoke-virtual/range {v7 .. v12}, Lcom/shabakaty/downloader/tm2;->c(Lcom/shabakaty/downloader/tm2$a;[[[I[ILcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/nn4;)Landroid/util/Pair;

    move-result-object v1

    .line 49
    new-instance v2, Lcom/shabakaty/downloader/mp4;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, [Lcom/shabakaty/downloader/nr3;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Lcom/shabakaty/downloader/f81;

    invoke-direct {v2, v3, v1, v0}, Lcom/shabakaty/downloader/mp4;-><init>([Lcom/shabakaty/downloader/nr3;[Lcom/shabakaty/downloader/f81;Ljava/lang/Object;)V

    return-object v2
.end method

.method public abstract c(Lcom/shabakaty/downloader/tm2$a;[[[I[ILcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/nn4;)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/tm2$a;",
            "[[[I[I",
            "Lcom/shabakaty/downloader/uq2$a;",
            "Lcom/shabakaty/downloader/nn4;",
            ")",
            "Landroid/util/Pair<",
            "[",
            "Lcom/google/android/exoplayer2/RendererConfiguration;",
            "[",
            "Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;",
            ">;"
        }
    .end annotation
.end method
