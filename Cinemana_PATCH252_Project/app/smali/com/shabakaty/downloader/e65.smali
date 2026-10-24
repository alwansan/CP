.class public final Lcom/shabakaty/downloader/e65;
.super Lcom/shabakaty/downloader/z64;
.source "WebvttDecoder.java"


# instance fields
.field public final n:Lcom/shabakaty/downloader/ka3;

.field public final o:Lcom/shabakaty/downloader/a65;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "WebvttDecoder"

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/z64;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ka3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ka3;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/e65;->n:Lcom/shabakaty/downloader/ka3;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/a65;

    invoke-direct {v0}, Lcom/shabakaty/downloader/a65;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/e65;->o:Lcom/shabakaty/downloader/a65;

    return-void
.end method


# virtual methods
.method public k([BIZ)Lcom/shabakaty/downloader/bg4;
    .locals 20

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/shabakaty/downloader/e65;->n:Lcom/shabakaty/downloader/ka3;

    move-object/from16 v2, p1

    .line 2
    iput-object v2, v0, Lcom/shabakaty/downloader/ka3;->a:[B

    move/from16 v2, p2

    .line 3
    iput v2, v0, Lcom/shabakaty/downloader/ka3;->c:I

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lcom/shabakaty/downloader/ka3;->b:I

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :try_start_0
    iget-object v3, v1, Lcom/shabakaty/downloader/e65;->n:Lcom/shabakaty/downloader/ka3;

    invoke-static {v3}, Lcom/shabakaty/downloader/f65;->d(Lcom/shabakaty/downloader/ka3;)V
    :try_end_0
    .catch Lcom/shabakaty/downloader/pa3; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :goto_0
    iget-object v3, v1, Lcom/shabakaty/downloader/e65;->n:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    :cond_1
    :goto_1
    iget-object v4, v1, Lcom/shabakaty/downloader/e65;->n:Lcom/shabakaty/downloader/ka3;

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    :goto_2
    if-ne v9, v7, :cond_5

    .line 10
    iget v10, v4, Lcom/shabakaty/downloader/ka3;->b:I

    .line 11
    invoke-virtual {v4}, Lcom/shabakaty/downloader/ka3;->g()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    const-string v11, "STYLE"

    .line 12
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v9, 0x2

    goto :goto_2

    :cond_3
    const-string v11, "NOTE"

    .line 13
    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    goto :goto_2

    :cond_4
    const/4 v9, 0x3

    goto :goto_2

    .line 14
    :cond_5
    invoke-virtual {v4, v10}, Lcom/shabakaty/downloader/ka3;->E(I)V

    if-eqz v9, :cond_42

    if-ne v9, v8, :cond_6

    .line 15
    iget-object v4, v1, Lcom/shabakaty/downloader/e65;->n:Lcom/shabakaty/downloader/ka3;

    .line 16
    :goto_3
    invoke-virtual {v4}, Lcom/shabakaty/downloader/ka3;->g()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_3

    :cond_6
    if-ne v9, v6, :cond_3c

    .line 17
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3b

    .line 18
    iget-object v9, v1, Lcom/shabakaty/downloader/e65;->n:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v9}, Lcom/shabakaty/downloader/ka3;->g()Ljava/lang/String;

    .line 19
    iget-object v9, v1, Lcom/shabakaty/downloader/e65;->o:Lcom/shabakaty/downloader/a65;

    iget-object v10, v1, Lcom/shabakaty/downloader/e65;->n:Lcom/shabakaty/downloader/ka3;

    .line 20
    iget-object v11, v9, Lcom/shabakaty/downloader/a65;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 21
    iget v11, v10, Lcom/shabakaty/downloader/ka3;->b:I

    .line 22
    :cond_7
    invoke-virtual {v10}, Lcom/shabakaty/downloader/ka3;->g()Ljava/lang/String;

    move-result-object v12

    .line 23
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 24
    iget-object v12, v9, Lcom/shabakaty/downloader/a65;->a:Lcom/shabakaty/downloader/ka3;

    .line 25
    iget-object v13, v10, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 26
    iget v10, v10, Lcom/shabakaty/downloader/ka3;->b:I

    .line 27
    invoke-virtual {v12, v13, v10}, Lcom/shabakaty/downloader/ka3;->C([BI)V

    .line 28
    iget-object v10, v9, Lcom/shabakaty/downloader/a65;->a:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v10, v11}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 29
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 30
    :goto_4
    iget-object v11, v9, Lcom/shabakaty/downloader/a65;->a:Lcom/shabakaty/downloader/ka3;

    iget-object v12, v9, Lcom/shabakaty/downloader/a65;->b:Ljava/lang/StringBuilder;

    .line 31
    invoke-static {v11}, Lcom/shabakaty/downloader/a65;->c(Lcom/shabakaty/downloader/ka3;)V

    .line 32
    invoke-virtual {v11}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v13

    const/4 v14, 0x5

    const-string v15, "{"

    const-string v4, ""

    if-ge v13, v14, :cond_8

    goto :goto_8

    .line 33
    :cond_8
    invoke-virtual {v11, v14}, Lcom/shabakaty/downloader/ka3;->q(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "::cue"

    .line 34
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    goto :goto_8

    .line 35
    :cond_9
    iget v13, v11, Lcom/shabakaty/downloader/ka3;->b:I

    .line 36
    invoke-static {v11, v12}, Lcom/shabakaty/downloader/a65;->b(Lcom/shabakaty/downloader/ka3;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_a

    goto :goto_8

    .line 37
    :cond_a
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 38
    invoke-virtual {v11, v13}, Lcom/shabakaty/downloader/ka3;->E(I)V

    move-object v5, v4

    goto :goto_9

    :cond_b
    const-string v13, "("

    .line 39
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 40
    iget v13, v11, Lcom/shabakaty/downloader/ka3;->b:I

    .line 41
    iget v14, v11, Lcom/shabakaty/downloader/ka3;->c:I

    const/16 v16, 0x0

    :goto_5
    if-ge v13, v14, :cond_d

    if-nez v16, :cond_d

    .line 42
    iget-object v5, v11, Lcom/shabakaty/downloader/ka3;->a:[B

    add-int/lit8 v16, v13, 0x1

    .line 43
    aget-byte v5, v5, v13

    int-to-char v5, v5

    const/16 v13, 0x29

    if-ne v5, v13, :cond_c

    const/4 v5, 0x1

    goto :goto_6

    :cond_c
    const/4 v5, 0x0

    :goto_6
    move/from16 v13, v16

    move/from16 v16, v5

    goto :goto_5

    :cond_d
    add-int/lit8 v13, v13, -0x1

    .line 44
    iget v5, v11, Lcom/shabakaty/downloader/ka3;->b:I

    sub-int/2addr v13, v5

    .line 45
    invoke-virtual {v11, v13}, Lcom/shabakaty/downloader/ka3;->q(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    :cond_e
    const/4 v5, 0x0

    .line 46
    :goto_7
    invoke-static {v11, v12}, Lcom/shabakaty/downloader/a65;->b(Lcom/shabakaty/downloader/ka3;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v11

    const-string v12, ")"

    .line 47
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    :goto_8
    const/4 v5, 0x0

    :cond_f
    :goto_9
    if-eqz v5, :cond_3a

    .line 48
    iget-object v11, v9, Lcom/shabakaty/downloader/a65;->a:Lcom/shabakaty/downloader/ka3;

    iget-object v12, v9, Lcom/shabakaty/downloader/a65;->b:Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Lcom/shabakaty/downloader/a65;->b(Lcom/shabakaty/downloader/ka3;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_10

    goto/16 :goto_1c

    .line 49
    :cond_10
    new-instance v11, Lcom/shabakaty/downloader/b65;

    invoke-direct {v11}, Lcom/shabakaty/downloader/b65;-><init>()V

    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    goto :goto_c

    :cond_11
    const/16 v12, 0x5b

    .line 51
    invoke-virtual {v5, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-eq v12, v7, :cond_13

    .line 52
    sget-object v13, Lcom/shabakaty/downloader/a65;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 53
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    if-eqz v14, :cond_12

    .line 54
    invoke-virtual {v13, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 55
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iput-object v13, v11, Lcom/shabakaty/downloader/b65;->d:Ljava/lang/String;

    .line 57
    :cond_12
    invoke-virtual {v5, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_13
    const-string v12, "\\."

    .line 58
    invoke-static {v5, v12}, Lcom/shabakaty/downloader/sy4;->P(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 59
    aget-object v12, v5, v2

    const/16 v13, 0x23

    .line 60
    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-eq v13, v7, :cond_14

    .line 61
    invoke-virtual {v12, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 62
    iput-object v14, v11, Lcom/shabakaty/downloader/b65;->b:Ljava/lang/String;

    add-int/lit8 v13, v13, 0x1

    .line 63
    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 64
    iput-object v12, v11, Lcom/shabakaty/downloader/b65;->a:Ljava/lang/String;

    goto :goto_a

    .line 65
    :cond_14
    iput-object v12, v11, Lcom/shabakaty/downloader/b65;->b:Ljava/lang/String;

    .line 66
    :goto_a
    array-length v12, v5

    if-le v12, v8, :cond_16

    .line 67
    array-length v12, v5

    .line 68
    invoke-static {v8}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 69
    array-length v13, v5

    if-gt v12, v13, :cond_15

    const/4 v13, 0x1

    goto :goto_b

    :cond_15
    const/4 v13, 0x0

    :goto_b
    invoke-static {v13}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 70
    invoke-static {v5, v8, v12}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v5

    .line 71
    check-cast v5, [Ljava/lang/String;

    .line 72
    new-instance v12, Ljava/util/HashSet;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v12, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v12, v11, Lcom/shabakaty/downloader/b65;->c:Ljava/util/Set;

    :cond_16
    :goto_c
    const/4 v5, 0x0

    const/4 v12, 0x0

    :goto_d
    const-string v13, "}"

    if-nez v5, :cond_38

    .line 73
    iget-object v5, v9, Lcom/shabakaty/downloader/a65;->a:Lcom/shabakaty/downloader/ka3;

    .line 74
    iget v12, v5, Lcom/shabakaty/downloader/ka3;->b:I

    .line 75
    iget-object v14, v9, Lcom/shabakaty/downloader/a65;->b:Ljava/lang/StringBuilder;

    invoke-static {v5, v14}, Lcom/shabakaty/downloader/a65;->b(Lcom/shabakaty/downloader/ka3;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_18

    .line 76
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    goto :goto_e

    :cond_17
    const/4 v14, 0x0

    goto :goto_f

    :cond_18
    :goto_e
    const/4 v14, 0x1

    :goto_f
    if-nez v14, :cond_36

    .line 77
    iget-object v15, v9, Lcom/shabakaty/downloader/a65;->a:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v15, v12}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 78
    iget-object v12, v9, Lcom/shabakaty/downloader/a65;->a:Lcom/shabakaty/downloader/ka3;

    iget-object v15, v9, Lcom/shabakaty/downloader/a65;->b:Ljava/lang/StringBuilder;

    .line 79
    invoke-static {v12}, Lcom/shabakaty/downloader/a65;->c(Lcom/shabakaty/downloader/ka3;)V

    .line 80
    invoke-static {v12, v15}, Lcom/shabakaty/downloader/a65;->a(Lcom/shabakaty/downloader/ka3;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_19

    goto/16 :goto_19

    .line 82
    :cond_19
    invoke-static {v12, v15}, Lcom/shabakaty/downloader/a65;->b(Lcom/shabakaty/downloader/ka3;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v7

    const-string v6, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a

    goto/16 :goto_19

    .line 83
    :cond_1a
    invoke-static {v12}, Lcom/shabakaty/downloader/a65;->c(Lcom/shabakaty/downloader/ka3;)V

    .line 84
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    :goto_10
    const-string v8, ";"

    if-nez v7, :cond_1e

    move-object/from16 v17, v5

    .line 85
    iget v5, v12, Lcom/shabakaty/downloader/ka3;->b:I

    move/from16 v18, v7

    .line 86
    invoke-static {v12, v15}, Lcom/shabakaty/downloader/a65;->b(Lcom/shabakaty/downloader/ka3;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1b

    const/4 v5, 0x0

    goto :goto_12

    .line 87
    :cond_1b
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1d

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    goto :goto_11

    .line 88
    :cond_1c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v17

    move/from16 v7, v18

    goto :goto_10

    .line 89
    :cond_1d
    :goto_11
    invoke-virtual {v12, v5}, Lcom/shabakaty/downloader/ka3;->E(I)V

    move-object/from16 v5, v17

    const/4 v7, 0x1

    goto :goto_10

    :cond_1e
    move-object/from16 v17, v5

    .line 90
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_12
    if-eqz v5, :cond_37

    .line 91
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    goto/16 :goto_1a

    .line 92
    :cond_1f
    iget v6, v12, Lcom/shabakaty/downloader/ka3;->b:I

    .line 93
    invoke-static {v12, v15}, Lcom/shabakaty/downloader/a65;->b(Lcom/shabakaty/downloader/ka3;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v7

    .line 94
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    goto :goto_13

    .line 95
    :cond_20
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 96
    invoke-virtual {v12, v6}, Lcom/shabakaty/downloader/ka3;->E(I)V

    :goto_13
    const-string v6, "color"

    .line 97
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    const/4 v6, 0x1

    .line 98
    invoke-static {v5, v6}, Lcom/shabakaty/downloader/y50;->a(Ljava/lang/String;Z)I

    move-result v2

    .line 99
    iput v2, v11, Lcom/shabakaty/downloader/b65;->f:I

    .line 100
    iput-boolean v6, v11, Lcom/shabakaty/downloader/b65;->g:Z

    goto/16 :goto_1a

    :cond_21
    const/4 v6, 0x1

    const-string v7, "background-color"

    .line 101
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 102
    invoke-static {v5, v6}, Lcom/shabakaty/downloader/y50;->a(Ljava/lang/String;Z)I

    move-result v2

    .line 103
    iput v2, v11, Lcom/shabakaty/downloader/b65;->h:I

    .line 104
    iput-boolean v6, v11, Lcom/shabakaty/downloader/b65;->i:Z

    goto/16 :goto_1a

    :cond_22
    const-string v7, "ruby-position"

    .line 105
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    const-string v2, "over"

    .line 106
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 107
    iput v6, v11, Lcom/shabakaty/downloader/b65;->p:I

    goto/16 :goto_1a

    :cond_23
    const-string v2, "under"

    .line 108
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    const/4 v2, 0x2

    .line 109
    iput v2, v11, Lcom/shabakaty/downloader/b65;->p:I

    goto/16 :goto_1a

    :cond_24
    const-string v6, "text-combine-upright"

    .line 110
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    const-string v2, "all"

    .line 111
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "digits"

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_14

    :cond_25
    const/4 v2, 0x0

    goto :goto_15

    :cond_26
    :goto_14
    const/4 v2, 0x1

    .line 112
    :goto_15
    iput-boolean v2, v11, Lcom/shabakaty/downloader/b65;->q:Z

    goto/16 :goto_1a

    :cond_27
    const-string v6, "text-decoration"

    .line 113
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    const-string v2, "underline"

    .line 114
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    const/4 v2, 0x1

    .line 115
    iput v2, v11, Lcom/shabakaty/downloader/b65;->k:I

    goto/16 :goto_1a

    :cond_28
    const-string v6, "font-family"

    .line 116
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 117
    invoke-static {v5}, Lcom/shabakaty/downloader/j96;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/shabakaty/downloader/b65;->e:Ljava/lang/String;

    goto/16 :goto_1a

    :cond_29
    const-string v6, "font-weight"

    .line 118
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    const-string v2, "bold"

    .line 119
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    const/4 v6, 0x1

    .line 120
    iput v6, v11, Lcom/shabakaty/downloader/b65;->l:I

    goto/16 :goto_1a

    :cond_2a
    const/4 v6, 0x1

    const-string v7, "font-style"

    .line 121
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b

    const-string v2, "italic"

    .line 122
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 123
    iput v6, v11, Lcom/shabakaty/downloader/b65;->m:I

    goto/16 :goto_1a

    :cond_2b
    const-string v6, "font-size"

    .line 124
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 125
    sget-object v2, Lcom/shabakaty/downloader/a65;->d:Ljava/util/regex/Pattern;

    invoke-static {v5}, Lcom/shabakaty/downloader/j96;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 126
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_2c

    .line 127
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid font-size: \'"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'."

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "WebvttCssParser"

    .line 128
    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    :cond_2c
    const/4 v5, 0x2

    .line 129
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 130
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v7, 0x25

    if-eq v5, v7, :cond_31

    const/16 v7, 0xca8

    if-eq v5, v7, :cond_2f

    const/16 v7, 0xe08

    if-eq v5, v7, :cond_2d

    goto :goto_16

    :cond_2d
    const-string v5, "px"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2e

    goto :goto_16

    :cond_2e
    const/4 v6, 0x2

    goto :goto_17

    :cond_2f
    const-string v5, "em"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    goto :goto_16

    :cond_30
    const/4 v6, 0x1

    goto :goto_17

    :cond_31
    const-string v5, "%"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32

    :goto_16
    const/4 v6, -0x1

    goto :goto_17

    :cond_32
    const/4 v6, 0x0

    :goto_17
    if-eqz v6, :cond_35

    const/4 v5, 0x1

    if-eq v6, v5, :cond_34

    const/4 v7, 0x2

    if-ne v6, v7, :cond_33

    .line 132
    iput v5, v11, Lcom/shabakaty/downloader/b65;->n:I

    goto :goto_18

    .line 133
    :cond_33
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_34
    const/4 v7, 0x2

    .line 134
    iput v7, v11, Lcom/shabakaty/downloader/b65;->n:I

    goto :goto_18

    :cond_35
    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x2

    .line 135
    iput v6, v11, Lcom/shabakaty/downloader/b65;->n:I

    .line 136
    :goto_18
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 139
    iput v2, v11, Lcom/shabakaty/downloader/b65;->o:F

    goto :goto_1b

    :cond_36
    :goto_19
    move-object/from16 v17, v5

    :cond_37
    :goto_1a
    const/4 v5, 0x1

    const/4 v7, 0x2

    :goto_1b
    move v5, v14

    move-object/from16 v12, v17

    const/4 v2, 0x0

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x1

    goto/16 :goto_d

    :cond_38
    const/4 v5, 0x1

    const/4 v7, 0x2

    .line 140
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 141
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_39
    const/4 v2, 0x0

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x1

    goto/16 :goto_4

    .line 142
    :cond_3a
    :goto_1c
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1e

    .line 143
    :cond_3b
    new-instance v0, Lcom/shabakaty/downloader/dg4;

    const-string v2, "A style block was found after the first cue."

    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/dg4;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    const/4 v2, 0x3

    if-ne v9, v2, :cond_41

    .line 144
    iget-object v2, v1, Lcom/shabakaty/downloader/e65;->n:Lcom/shabakaty/downloader/ka3;

    sget-object v4, Lcom/shabakaty/downloader/d65;->a:Ljava/util/regex/Pattern;

    .line 145
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->g()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3d

    const/4 v4, 0x0

    goto :goto_1d

    .line 146
    :cond_3d
    sget-object v5, Lcom/shabakaty/downloader/d65;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 147
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_3e

    const/4 v7, 0x0

    .line 148
    invoke-static {v7, v6, v2, v0}, Lcom/shabakaty/downloader/d65;->d(Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/shabakaty/downloader/ka3;Ljava/util/List;)Lcom/shabakaty/downloader/c65;

    move-result-object v4

    goto :goto_1d

    :cond_3e
    const/4 v7, 0x0

    .line 149
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->g()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_40

    :cond_3f
    move-object v4, v7

    goto :goto_1d

    .line 150
    :cond_40
    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 151
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 152
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5, v2, v0}, Lcom/shabakaty/downloader/d65;->d(Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/shabakaty/downloader/ka3;Ljava/util/List;)Lcom/shabakaty/downloader/c65;

    move-result-object v4

    :goto_1d
    if-eqz v4, :cond_41

    .line 153
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_41
    :goto_1e
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 154
    :cond_42
    new-instance v0, Lcom/shabakaty/downloader/h65;

    invoke-direct {v0, v3}, Lcom/shabakaty/downloader/h65;-><init>(Ljava/util/List;)V

    return-object v0

    :catch_0
    move-exception v0

    .line 155
    new-instance v2, Lcom/shabakaty/downloader/dg4;

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/dg4;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
