.class public final Lcom/facebook/soloader/MinElf;
.super Ljava/lang/Object;
.source "MinElf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/MinElf$ElfError;
    }
.end annotation


# direct methods
.method public static a(Ljava/nio/channels/FileChannel;)[Ljava/lang/String;
    .locals 27

    move-object/from16 v0, p0

    const/16 v1, 0x8

    .line 1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 2
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const-wide/16 v3, 0x0

    .line 3
    invoke-static {v0, v2, v3, v4}, Lcom/facebook/soloader/MinElf;->b(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v3

    const-wide/32 v5, 0x464c457f

    cmp-long v7, v3, v5

    if-nez v7, :cond_25

    const/4 v3, 0x1

    const-wide/16 v4, 0x4

    .line 4
    invoke-static {v0, v2, v3, v4, v5}, Lcom/facebook/soloader/MinElf;->c(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 5
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    if-ne v4, v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-wide/16 v5, 0x5

    .line 6
    invoke-static {v0, v2, v3, v5, v6}, Lcom/facebook/soloader/MinElf;->c(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 7
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    .line 8
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :cond_1
    const-wide/16 v6, 0x1c

    const-wide/16 v8, 0x20

    if-eqz v4, :cond_2

    .line 9
    invoke-static {v0, v2, v6, v7}, Lcom/facebook/soloader/MinElf;->b(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v10

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {v0, v2, v1, v8, v9}, Lcom/facebook/soloader/MinElf;->c(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 11
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v10

    :goto_1
    const-wide/16 v12, 0x2c

    const v3, 0xffff

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const-wide/16 v12, 0x38

    .line 12
    :goto_2
    invoke-static {v0, v2, v5, v12, v13}, Lcom/facebook/soloader/MinElf;->c(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 13
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v12

    and-int/2addr v12, v3

    int-to-long v12, v12

    if-eqz v4, :cond_4

    const-wide/16 v14, 0x2a

    goto :goto_3

    :cond_4
    const-wide/16 v14, 0x36

    .line 14
    :goto_3
    invoke-static {v0, v2, v5, v14, v15}, Lcom/facebook/soloader/MinElf;->c(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 15
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    and-int/2addr v3, v5

    const-wide/32 v14, 0xffff

    const-wide/16 v6, 0x28

    cmp-long v5, v12, v14

    if-nez v5, :cond_7

    if-eqz v4, :cond_5

    .line 16
    invoke-static {v0, v2, v8, v9}, Lcom/facebook/soloader/MinElf;->b(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v5

    goto :goto_4

    .line 17
    :cond_5
    invoke-static {v0, v2, v1, v6, v7}, Lcom/facebook/soloader/MinElf;->c(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 18
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    :goto_4
    if-eqz v4, :cond_6

    const-wide/16 v7, 0x1c

    add-long/2addr v5, v7

    .line 19
    invoke-static {v0, v2, v5, v6}, Lcom/facebook/soloader/MinElf;->b(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v12

    goto :goto_5

    :cond_6
    const-wide/16 v7, 0x2c

    add-long/2addr v5, v7

    .line 20
    invoke-static {v0, v2, v5, v6}, Lcom/facebook/soloader/MinElf;->b(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v12

    :cond_7
    :goto_5
    const-wide/16 v5, 0x0

    move-wide v7, v10

    :goto_6
    const-wide/16 v16, 0x8

    cmp-long v9, v5, v12

    if-gez v9, :cond_b

    if-eqz v4, :cond_8

    const-wide/16 v18, 0x0

    add-long v14, v7, v18

    .line 21
    invoke-static {v0, v2, v14, v15}, Lcom/facebook/soloader/MinElf;->b(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v14

    goto :goto_7

    :cond_8
    const-wide/16 v14, 0x0

    add-long/2addr v14, v7

    .line 22
    invoke-static {v0, v2, v14, v15}, Lcom/facebook/soloader/MinElf;->b(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v14

    :goto_7
    const-wide/16 v18, 0x2

    cmp-long v9, v14, v18

    if-nez v9, :cond_a

    if-eqz v4, :cond_9

    const-wide/16 v5, 0x4

    add-long/2addr v7, v5

    .line 23
    invoke-static {v0, v2, v7, v8}, Lcom/facebook/soloader/MinElf;->b(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v5

    goto :goto_8

    :cond_9
    add-long v7, v7, v16

    .line 24
    invoke-static {v0, v2, v1, v7, v8}, Lcom/facebook/soloader/MinElf;->c(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 25
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    goto :goto_8

    :cond_a
    int-to-long v14, v3

    add-long/2addr v7, v14

    const-wide/16 v14, 0x1

    add-long/2addr v5, v14

    goto :goto_6

    :cond_b
    const-wide/16 v5, 0x0

    :goto_8
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_24

    const/4 v9, 0x0

    move-wide/from16 v18, v5

    move-wide v14, v7

    :goto_9
    add-long v7, v18, v7

    if-eqz v4, :cond_c

    .line 26
    invoke-static {v0, v2, v7, v8}, Lcom/facebook/soloader/MinElf;->b(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v7

    goto :goto_a

    .line 27
    :cond_c
    invoke-static {v0, v2, v1, v7, v8}, Lcom/facebook/soloader/MinElf;->c(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 28
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v7

    :goto_a
    const-string v1, "malformed DT_NEEDED section"

    const-wide/16 v20, 0x1

    cmp-long v22, v7, v20

    if-nez v22, :cond_e

    move-wide/from16 v20, v5

    const v5, 0x7fffffff

    if-eq v9, v5, :cond_d

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 29
    :cond_d
    new-instance v0, Lcom/facebook/soloader/MinElf$ElfError;

    invoke-direct {v0, v1}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move-wide/from16 v20, v5

    const-wide/16 v5, 0x5

    cmp-long v22, v7, v5

    if-nez v22, :cond_10

    if-eqz v4, :cond_f

    const-wide/16 v5, 0x4

    add-long v5, v18, v5

    .line 30
    invoke-static {v0, v2, v5, v6}, Lcom/facebook/soloader/MinElf;->b(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v5

    goto :goto_b

    :cond_f
    add-long v5, v18, v16

    const/16 v14, 0x8

    .line 31
    invoke-static {v0, v2, v14, v5, v6}, Lcom/facebook/soloader/MinElf;->c(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 32
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    :goto_b
    move-wide v14, v5

    :cond_10
    :goto_c
    const-wide/16 v5, 0x10

    if-eqz v4, :cond_11

    move-wide/from16 v22, v16

    goto :goto_d

    :cond_11
    move-wide/from16 v22, v5

    :goto_d
    add-long v18, v18, v22

    const-wide/16 v22, 0x0

    cmp-long v24, v7, v22

    if-nez v24, :cond_23

    cmp-long v7, v14, v22

    if-eqz v7, :cond_22

    const/4 v7, 0x0

    move/from16 v24, v9

    :goto_e
    int-to-long v8, v7

    cmp-long v18, v8, v12

    if-gez v18, :cond_18

    if-eqz v4, :cond_12

    add-long v8, v10, v22

    .line 33
    invoke-static {v0, v2, v8, v9}, Lcom/facebook/soloader/MinElf;->b(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v8

    goto :goto_f

    :cond_12
    add-long v8, v10, v22

    .line 34
    invoke-static {v0, v2, v8, v9}, Lcom/facebook/soloader/MinElf;->b(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v8

    :goto_f
    const-wide/16 v18, 0x1

    cmp-long v22, v8, v18

    if-nez v22, :cond_16

    if-eqz v4, :cond_13

    add-long v5, v10, v16

    .line 35
    invoke-static {v0, v2, v5, v6}, Lcom/facebook/soloader/MinElf;->b(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v5

    goto :goto_10

    :cond_13
    add-long/2addr v5, v10

    const/16 v8, 0x8

    .line 36
    invoke-static {v0, v2, v8, v5, v6}, Lcom/facebook/soloader/MinElf;->c(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 37
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    :goto_10
    if-eqz v4, :cond_14

    const-wide/16 v8, 0x14

    add-long/2addr v8, v10

    .line 38
    invoke-static {v0, v2, v8, v9}, Lcom/facebook/soloader/MinElf;->b(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v8

    move-wide/from16 v25, v12

    goto :goto_11

    :cond_14
    const-wide/16 v8, 0x28

    add-long/2addr v8, v10

    move-wide/from16 v25, v12

    const/16 v12, 0x8

    .line 39
    invoke-static {v0, v2, v12, v8, v9}, Lcom/facebook/soloader/MinElf;->c(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 40
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v8

    :goto_11
    cmp-long v12, v5, v14

    if-gtz v12, :cond_17

    add-long/2addr v8, v5

    cmp-long v12, v14, v8

    if-gez v12, :cond_17

    if-eqz v4, :cond_15

    const-wide/16 v7, 0x4

    add-long/2addr v10, v7

    .line 41
    invoke-static {v0, v2, v10, v11}, Lcom/facebook/soloader/MinElf;->b(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v7

    goto :goto_12

    :cond_15
    add-long v10, v10, v16

    const/16 v3, 0x8

    .line 42
    invoke-static {v0, v2, v3, v10, v11}, Lcom/facebook/soloader/MinElf;->c(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 43
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v7

    :goto_12
    sub-long/2addr v14, v5

    add-long/2addr v14, v7

    goto :goto_13

    :cond_16
    move-wide/from16 v25, v12

    :cond_17
    int-to-long v5, v3

    add-long/2addr v10, v5

    add-int/lit8 v7, v7, 0x1

    const-wide/16 v5, 0x10

    const-wide/16 v22, 0x0

    move-wide/from16 v12, v25

    goto :goto_e

    :cond_18
    const-wide/16 v14, 0x0

    :goto_13
    const-wide/16 v5, 0x0

    cmp-long v3, v14, v5

    if-eqz v3, :cond_21

    move/from16 v9, v24

    .line 44
    new-array v3, v9, [Ljava/lang/String;

    const/4 v7, 0x0

    move-wide v7, v5

    move-wide/from16 v5, v20

    const/4 v10, 0x0

    :goto_14
    add-long/2addr v7, v5

    if-eqz v4, :cond_19

    .line 45
    invoke-static {v0, v2, v7, v8}, Lcom/facebook/soloader/MinElf;->b(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v7

    goto :goto_15

    :cond_19
    const/16 v11, 0x8

    .line 46
    invoke-static {v0, v2, v11, v7, v8}, Lcom/facebook/soloader/MinElf;->c(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 47
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v7

    :goto_15
    const-wide/16 v11, 0x1

    cmp-long v13, v7, v11

    if-nez v13, :cond_1d

    if-eqz v4, :cond_1a

    const-wide/16 v11, 0x4

    add-long/2addr v11, v5

    .line 48
    invoke-static {v0, v2, v11, v12}, Lcom/facebook/soloader/MinElf;->b(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v11

    goto :goto_16

    :cond_1a
    add-long v11, v5, v16

    const/16 v13, 0x8

    .line 49
    invoke-static {v0, v2, v13, v11, v12}, Lcom/facebook/soloader/MinElf;->c(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 50
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v11

    :goto_16
    add-long/2addr v11, v14

    .line 51
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v18, 0x1

    :goto_17
    add-long v20, v11, v18

    move-wide/from16 v22, v14

    const/4 v14, 0x1

    .line 52
    invoke-static {v0, v2, v14, v11, v12}, Lcom/facebook/soloader/MinElf;->c(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 53
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    and-int/lit16 v11, v11, 0xff

    int-to-short v11, v11

    if-eqz v11, :cond_1b

    int-to-char v11, v11

    .line 54
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-wide/from16 v11, v20

    move-wide/from16 v14, v22

    goto :goto_17

    .line 55
    :cond_1b
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 56
    aput-object v11, v3, v10

    const v11, 0x7fffffff

    if-eq v10, v11, :cond_1c

    add-int/lit8 v10, v10, 0x1

    goto :goto_18

    .line 57
    :cond_1c
    new-instance v0, Lcom/facebook/soloader/MinElf$ElfError;

    invoke-direct {v0, v1}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    move-wide/from16 v22, v14

    :goto_18
    if-eqz v4, :cond_1e

    move-wide/from16 v11, v16

    goto :goto_19

    :cond_1e
    const-wide/16 v11, 0x10

    :goto_19
    add-long/2addr v5, v11

    const-wide/16 v11, 0x0

    cmp-long v13, v7, v11

    if-nez v13, :cond_20

    if-ne v10, v9, :cond_1f

    return-object v3

    .line 58
    :cond_1f
    new-instance v0, Lcom/facebook/soloader/MinElf$ElfError;

    invoke-direct {v0, v1}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    move-wide v7, v11

    move-wide/from16 v14, v22

    goto :goto_14

    .line 59
    :cond_21
    new-instance v0, Lcom/facebook/soloader/MinElf$ElfError;

    const-string v1, "did not find file offset of DT_STRTAB table"

    invoke-direct {v0, v1}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_22
    new-instance v0, Lcom/facebook/soloader/MinElf$ElfError;

    const-string v1, "Dynamic section string-table not found"

    invoke-direct {v0, v1}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    move-wide/from16 v25, v12

    const/16 v1, 0x8

    move-wide/from16 v5, v20

    move-wide/from16 v7, v22

    goto/16 :goto_9

    .line 61
    :cond_24
    new-instance v0, Lcom/facebook/soloader/MinElf$ElfError;

    const-string v1, "ELF file does not contain dynamic linking information"

    invoke-direct {v0, v1}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_25
    new-instance v0, Lcom/facebook/soloader/MinElf$ElfError;

    const-string v1, "file is not ELF: 0x"

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-static {p0, p1, v0, p2, p3}, Lcom/facebook/soloader/MinElf;->c(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    int-to-long p0, p0

    const-wide p2, 0xffffffffL

    and-long/2addr p0, p2

    return-wide p0
.end method

.method public static c(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    if-lez p2, :cond_1

    .line 4
    invoke-virtual {p0, p1, p3, p4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    goto :goto_1

    :cond_0
    int-to-long v1, p2

    add-long/2addr p3, v1

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    if-gtz p0, :cond_2

    .line 6
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 7
    :cond_2
    new-instance p0, Lcom/facebook/soloader/MinElf$ElfError;

    const-string p1, "ELF file truncated"

    invoke-direct {p0, p1}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw p0
.end method
