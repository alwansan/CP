.class public Lcom/shabakaty/downloader/kl3;
.super Ljava/lang/Object;


# direct methods
.method public static a(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    return p1

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static b(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static final c(Landroid/app/Activity;I)Landroidx/navigation/NavController;
    .locals 3

    const-string v0, "$this$findNavController"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/shabakaty/downloader/s2;->c:I

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/fx2;->b(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not have a NavController set on "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ID does not reference a View inside this Activity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)I
    .locals 10

    :try_start_0
    const-string v0, "ExoPlayerVersions"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/sy4;->S(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v3, "ExoPlayerVersions"

    const-string v0, "version"

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "feature = ? AND instance_uid = ?"

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v6, v0

    const/4 p1, 0x1

    aput-object p2, v6, p1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    .line 4
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    .line 6
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    return v1

    .line 7
    :cond_1
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 8
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 9
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    return p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_2

    .line 10
    :try_start_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_6
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p1
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p0

    .line 11
    new-instance p1, Lcom/shabakaty/downloader/cm0;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/cm0;-><init>(Landroid/database/SQLException;)V

    throw p1
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_2

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid input received"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Lcom/shabakaty/downloader/ka3;II)J
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x5

    if-ge p1, v2, :cond_0

    return-wide v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result p1

    const/high16 v2, 0x800000

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    return-wide v0

    :cond_1
    const v2, 0x1fff00

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x8

    if-eq v2, p2, :cond_2

    return-wide v0

    :cond_2
    and-int/lit8 p1, p1, 0x20

    const/4 p2, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_4

    return-wide v0

    .line 4
    :cond_4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result p1

    const/4 v3, 0x7

    if-lt p1, v3, :cond_6

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result p1

    if-lt p1, v3, :cond_6

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result p1

    const/16 v4, 0x10

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_6

    const/4 p1, 0x6

    new-array v0, p1, [B

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/ka3;->a:[B

    iget v4, p0, Lcom/shabakaty/downloader/ka3;->b:I

    invoke-static {v1, v4, v0, p2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v1, p0, Lcom/shabakaty/downloader/ka3;->b:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/shabakaty/downloader/ka3;->b:I

    .line 9
    aget-byte p0, v0, p2

    int-to-long p0, p0

    const-wide/16 v4, 0xff

    and-long/2addr p0, v4

    const/16 p2, 0x19

    shl-long/2addr p0, p2

    aget-byte p2, v0, v2

    int-to-long v6, p2

    and-long/2addr v6, v4

    const/16 p2, 0x11

    shl-long/2addr v6, p2

    or-long/2addr p0, v6

    const/4 p2, 0x2

    aget-byte p2, v0, p2

    int-to-long v6, p2

    and-long/2addr v6, v4

    const/16 p2, 0x9

    shl-long/2addr v6, p2

    or-long/2addr p0, v6

    const/4 p2, 0x3

    aget-byte p2, v0, p2

    int-to-long v6, p2

    and-long/2addr v6, v4

    shl-long v1, v6, v2

    or-long/2addr p0, v1

    const/4 p2, 0x4

    aget-byte p2, v0, p2

    int-to-long v0, p2

    and-long/2addr v0, v4

    shr-long/2addr v0, v3

    or-long/2addr p0, v0

    return-wide p0

    :cond_6
    return-wide v0
.end method

.method public static g(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;I)V
    .locals 2

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS ExoPlayerVersions (feature INTEGER NOT NULL,instance_uid TEXT NOT NULL,version INTEGER NOT NULL,PRIMARY KEY (feature, instance_uid))"

    .line 1
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "feature"

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "instance_uid"

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "version"

    .line 5
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "ExoPlayerVersions"

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/cm0;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/cm0;-><init>(Landroid/database/SQLException;)V

    throw p1
.end method

.method public static h(D)D
    .locals 3

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_3

    cmpl-double v0, p0, v1

    if-eqz v0, :cond_3

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    :goto_0
    int-to-double v0, v0

    .line 3
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    mul-double p0, p0, v0

    :cond_3
    :goto_1
    return-wide p0
.end method

.method public static i([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static j(JJJ)J
    .locals 3

    xor-long/2addr p0, p2

    mul-long p0, p0, p4

    const/16 v0, 0x2f

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    xor-long/2addr p0, p2

    mul-long p0, p0, p4

    ushr-long p2, p0, v0

    xor-long/2addr p0, p2

    mul-long p0, p0, p4

    return-wide p0
.end method

.method public static k([B)J
    .locals 27

    move-object/from16 v7, p0

    array-length v0, v7

    if-ltz v0, :cond_7

    array-length v1, v7

    if-gt v0, v1, :cond_7

    const/16 v1, 0x25

    const/16 v2, 0x12

    const/16 v3, 0x1e

    const/16 v4, 0x2b

    const/4 v5, 0x2

    const/16 v6, 0x20

    const-wide v8, -0x4b6d499041670d8dL    # -1.9079014105469082E-55

    const/16 v10, 0x10

    const/16 v11, 0x8

    const-wide v12, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    const/4 v14, 0x0

    if-gt v0, v6, :cond_4

    if-gt v0, v10, :cond_3

    if-lt v0, v11, :cond_0

    shl-int/lit8 v2, v0, 0x1

    int-to-long v2, v2

    add-long v8, v2, v12

    invoke-static {v7, v14}, Lcom/shabakaty/downloader/kl3;->n([BI)J

    move-result-wide v2

    add-long/2addr v2, v12

    add-int/2addr v0, v14

    sub-int/2addr v0, v11

    invoke-static {v7, v0}, Lcom/shabakaty/downloader/kl3;->n([BI)J

    move-result-wide v4

    invoke-static {v4, v5, v1}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    mul-long v0, v0, v8

    add-long/2addr v0, v2

    const/16 v6, 0x19

    invoke-static {v2, v3, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    add-long/2addr v2, v4

    mul-long v6, v2, v8

    move-wide v4, v0

    invoke-static/range {v4 .. v9}, Lcom/shabakaty/downloader/kl3;->j(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    shl-int/lit8 v2, v0, 0x1

    int-to-long v2, v2

    add-long v8, v2, v12

    invoke-static {v7, v14}, Lcom/shabakaty/downloader/kl3;->i([BI)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    int-to-long v4, v0

    const/4 v6, 0x3

    shl-long/2addr v2, v6

    add-long/2addr v4, v2

    add-int/2addr v0, v14

    sub-int/2addr v0, v1

    invoke-static {v7, v0}, Lcom/shabakaty/downloader/kl3;->i([BI)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v6, v0, v2

    invoke-static/range {v4 .. v9}, Lcom/shabakaty/downloader/kl3;->j(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_1
    if-lez v0, :cond_2

    aget-byte v1, v7, v14

    shr-int/lit8 v2, v0, 0x1

    add-int/2addr v2, v14

    aget-byte v2, v7, v2

    add-int/lit8 v3, v0, -0x1

    add-int/2addr v3, v14

    aget-byte v3, v7, v3

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v11

    add-int/2addr v1, v2

    and-int/lit16 v2, v3, 0xff

    shl-int/2addr v2, v5

    add-int/2addr v0, v2

    int-to-long v1, v1

    mul-long v1, v1, v12

    int-to-long v3, v0

    const-wide v5, -0x3c5a37a36834ced9L    # -7.848031385787155E17

    mul-long v3, v3, v5

    xor-long v0, v1, v3

    const/16 v2, 0x2f

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    mul-long v0, v0, v12

    return-wide v0

    :cond_2
    return-wide v12

    :cond_3
    shl-int/lit8 v1, v0, 0x1

    int-to-long v5, v1

    add-long v19, v5, v12

    invoke-static {v7, v14}, Lcom/shabakaty/downloader/kl3;->n([BI)J

    move-result-wide v5

    mul-long v5, v5, v8

    invoke-static {v7, v11}, Lcom/shabakaty/downloader/kl3;->n([BI)J

    move-result-wide v8

    add-int/2addr v0, v14

    add-int/lit8 v1, v0, -0x8

    invoke-static {v7, v1}, Lcom/shabakaty/downloader/kl3;->n([BI)J

    move-result-wide v14

    mul-long v14, v14, v19

    sub-int/2addr v0, v10

    invoke-static {v7, v0}, Lcom/shabakaty/downloader/kl3;->n([BI)J

    move-result-wide v0

    mul-long v0, v0, v12

    add-long v10, v5, v8

    invoke-static {v10, v11, v4}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v10

    invoke-static {v14, v15, v3}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v3

    add-long/2addr v3, v10

    add-long/2addr v0, v3

    add-long/2addr v8, v12

    invoke-static {v8, v9, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    add-long/2addr v2, v5

    add-long v17, v2, v14

    move-wide v15, v0

    invoke-static/range {v15 .. v20}, Lcom/shabakaty/downloader/kl3;->j(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_4
    const/16 v2, 0x40

    if-gt v0, v2, :cond_5

    shl-int/lit8 v1, v0, 0x1

    int-to-long v1, v1

    add-long/2addr v1, v12

    invoke-static {v7, v14}, Lcom/shabakaty/downloader/kl3;->n([BI)J

    move-result-wide v5

    mul-long v5, v5, v12

    invoke-static {v7, v11}, Lcom/shabakaty/downloader/kl3;->n([BI)J

    move-result-wide v8

    add-int/2addr v0, v14

    add-int/lit8 v3, v0, -0x8

    invoke-static {v7, v3}, Lcom/shabakaty/downloader/kl3;->n([BI)J

    move-result-wide v14

    mul-long v14, v14, v1

    add-int/lit8 v3, v0, -0x10

    invoke-static {v7, v3}, Lcom/shabakaty/downloader/kl3;->n([BI)J

    move-result-wide v16

    mul-long v16, v16, v12

    add-long v10, v5, v8

    invoke-static {v10, v11, v4}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v10

    const/16 v3, 0x1e

    invoke-static {v14, v15, v3}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v18

    add-long v18, v18, v10

    add-long v10, v18, v16

    add-long/2addr v8, v12

    const/16 v3, 0x12

    invoke-static {v8, v9, v3}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v8

    add-long/2addr v8, v5

    add-long v17, v8, v14

    move-wide v15, v10

    move-wide/from16 v19, v1

    invoke-static/range {v15 .. v20}, Lcom/shabakaty/downloader/kl3;->j(JJJ)J

    move-result-wide v8

    const/16 v3, 0x10

    invoke-static {v7, v3}, Lcom/shabakaty/downloader/kl3;->n([BI)J

    move-result-wide v12

    mul-long v12, v12, v1

    const/16 v3, 0x18

    invoke-static {v7, v3}, Lcom/shabakaty/downloader/kl3;->n([BI)J

    move-result-wide v14

    add-int/lit8 v4, v0, -0x20

    invoke-static {v7, v4}, Lcom/shabakaty/downloader/kl3;->n([BI)J

    move-result-wide v17

    add-long v17, v17, v10

    mul-long v10, v17, v1

    sub-int/2addr v0, v3

    invoke-static {v7, v0}, Lcom/shabakaty/downloader/kl3;->n([BI)J

    move-result-wide v3

    add-long/2addr v3, v8

    mul-long v3, v3, v1

    add-long v7, v12, v14

    const/16 v0, 0x2b

    invoke-static {v7, v8, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v7

    const/16 v0, 0x1e

    invoke-static {v10, v11, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v16

    add-long v16, v16, v7

    add-long v3, v16, v3

    add-long/2addr v14, v5

    const/16 v0, 0x12

    invoke-static {v14, v15, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v5

    add-long/2addr v5, v12

    add-long v17, v5, v10

    move-wide v15, v3

    invoke-static/range {v15 .. v20}, Lcom/shabakaty/downloader/kl3;->j(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_5
    const-wide v2, 0x226bb95b4e64b6d4L    # 7.104748899679321E-143

    const-wide v10, 0x134a747f856d0526L    # 9.592726139023731E-216

    new-array v12, v5, [J

    new-array v13, v5, [J

    const-wide v4, 0x1529cba0ca458ffL

    invoke-static {v7, v14}, Lcom/shabakaty/downloader/kl3;->n([BI)J

    move-result-wide v15

    add-long/2addr v15, v4

    const/16 v17, 0x1

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v4, v0, 0x40

    shl-int/lit8 v4, v4, 0x6

    add-int/lit8 v6, v4, 0x0

    and-int/lit8 v4, v0, 0x3f

    add-int v0, v6, v4

    add-int/lit8 v18, v0, -0x3f

    const/4 v0, 0x0

    move-wide/from16 v19, v15

    const/4 v0, 0x0

    move-wide v14, v10

    const/4 v10, 0x0

    :goto_0
    add-long v19, v19, v2

    aget-wide v21, v12, v0

    add-long v19, v19, v21

    add-int/lit8 v0, v10, 0x8

    invoke-static {v7, v0}, Lcom/shabakaty/downloader/kl3;->n([BI)J

    move-result-wide v21

    move v11, v4

    add-long v4, v21, v19

    invoke-static {v4, v5, v1}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    mul-long v0, v0, v8

    aget-wide v4, v12, v17

    add-long/2addr v2, v4

    add-int/lit8 v4, v10, 0x30

    invoke-static {v7, v4}, Lcom/shabakaty/downloader/kl3;->n([BI)J

    move-result-wide v4

    add-long/2addr v4, v2

    const/16 v2, 0x2a

    invoke-static {v4, v5, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    mul-long v2, v2, v8

    aget-wide v4, v13, v17

    xor-long v19, v0, v4

    const/4 v0, 0x0

    aget-wide v4, v12, v0

    add-int/lit8 v1, v10, 0x28

    invoke-static {v7, v1}, Lcom/shabakaty/downloader/kl3;->n([BI)J

    move-result-wide v21

    add-long v21, v21, v4

    add-long v21, v21, v2

    aget-wide v1, v13, v0

    add-long/2addr v14, v1

    const/16 v1, 0x21

    invoke-static {v14, v15, v1}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v1

    mul-long v14, v1, v8

    aget-wide v1, v12, v17

    mul-long v2, v1, v8

    aget-wide v0, v13, v0

    add-long v4, v19, v0

    move-object/from16 v0, p0

    move v1, v10

    move v8, v6

    move-object v6, v12

    invoke-static/range {v0 .. v6}, Lcom/shabakaty/downloader/kl3;->l([BIJJ[J)V

    add-int/lit8 v1, v10, 0x20

    aget-wide v2, v13, v17

    add-long/2addr v2, v14

    add-int/lit8 v0, v10, 0x10

    invoke-static {v7, v0}, Lcom/shabakaty/downloader/kl3;->n([BI)J

    move-result-wide v4

    add-long v4, v4, v21

    move-object/from16 v0, p0

    move-object v6, v13

    invoke-static/range {v0 .. v6}, Lcom/shabakaty/downloader/kl3;->l([BIJJ[J)V

    add-int/lit8 v10, v10, 0x40

    if-ne v10, v8, :cond_6

    const-wide/16 v0, 0xff

    and-long v0, v19, v0

    shl-long v0, v0, v17

    const-wide v2, -0x4b6d499041670d8dL    # -1.9079014105469082E-55

    add-long v23, v0, v2

    const/4 v0, 0x0

    aget-wide v1, v13, v0

    int-to-long v3, v11

    add-long/2addr v1, v3

    aput-wide v1, v13, v0

    aget-wide v1, v12, v0

    aget-wide v3, v13, v0

    add-long/2addr v1, v3

    aput-wide v1, v12, v0

    aget-wide v1, v13, v0

    aget-wide v3, v12, v0

    add-long/2addr v1, v3

    aput-wide v1, v13, v0

    add-long v14, v14, v21

    aget-wide v0, v12, v0

    add-long/2addr v14, v0

    add-int/lit8 v0, v18, 0x8

    invoke-static {v7, v0}, Lcom/shabakaty/downloader/kl3;->n([BI)J

    move-result-wide v0

    add-long/2addr v0, v14

    const/16 v2, 0x25

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    mul-long v0, v0, v23

    aget-wide v2, v12, v17

    add-long v21, v21, v2

    add-int/lit8 v2, v18, 0x30

    invoke-static {v7, v2}, Lcom/shabakaty/downloader/kl3;->n([BI)J

    move-result-wide v2

    add-long v2, v2, v21

    const/16 v4, 0x2a

    invoke-static {v2, v3, v4}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    mul-long v2, v2, v23

    aget-wide v4, v13, v17

    const-wide/16 v8, 0x9

    mul-long v4, v4, v8

    xor-long v10, v0, v4

    const/4 v0, 0x0

    aget-wide v4, v12, v0

    mul-long v4, v4, v8

    add-int/lit8 v1, v18, 0x28

    invoke-static {v7, v1}, Lcom/shabakaty/downloader/kl3;->n([BI)J

    move-result-wide v8

    add-long/2addr v8, v4

    add-long v14, v8, v2

    aget-wide v1, v13, v0

    add-long v1, v19, v1

    const/16 v3, 0x21

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v1

    mul-long v19, v1, v23

    aget-wide v1, v12, v17

    mul-long v2, v1, v23

    aget-wide v0, v13, v0

    add-long v4, v10, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object v6, v12

    invoke-static/range {v0 .. v6}, Lcom/shabakaty/downloader/kl3;->l([BIJJ[J)V

    add-int/lit8 v1, v18, 0x20

    aget-wide v2, v13, v17

    add-long v2, v2, v19

    add-int/lit8 v0, v18, 0x10

    invoke-static {v7, v0}, Lcom/shabakaty/downloader/kl3;->n([BI)J

    move-result-wide v4

    add-long/2addr v4, v14

    move-object/from16 v0, p0

    move-object v6, v13

    invoke-static/range {v0 .. v6}, Lcom/shabakaty/downloader/kl3;->l([BIJJ[J)V

    const/4 v0, 0x0

    aget-wide v4, v12, v0

    aget-wide v6, v13, v0

    move-wide/from16 v8, v23

    invoke-static/range {v4 .. v9}, Lcom/shabakaty/downloader/kl3;->j(JJJ)J

    move-result-wide v0

    const/16 v2, 0x2f

    ushr-long v2, v14, v2

    xor-long/2addr v2, v14

    const-wide v4, -0x3c5a37a36834ced9L    # -7.848031385787155E17

    mul-long v2, v2, v4

    add-long/2addr v2, v0

    add-long v0, v2, v10

    aget-wide v4, v12, v17

    aget-wide v6, v13, v17

    invoke-static/range {v4 .. v9}, Lcom/shabakaty/downloader/kl3;->j(JJJ)J

    move-result-wide v2

    add-long v6, v2, v19

    move-wide v4, v0

    invoke-static/range {v4 .. v9}, Lcom/shabakaty/downloader/kl3;->j(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_6
    const-wide v2, -0x4b6d499041670d8dL    # -1.9079014105469082E-55

    const/16 v1, 0x25

    const/4 v0, 0x0

    move v6, v8

    move v4, v11

    move-wide v8, v2

    move-wide/from16 v2, v21

    move-wide/from16 v25, v14

    move-wide/from16 v14, v19

    move-wide/from16 v19, v25

    goto/16 :goto_0

    :cond_7
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const/16 v2, 0x43

    const-string v3, "Out of bound index with offput: 0 and length: "

    invoke-static {v2, v3, v0}, Lcom/shabakaty/downloader/gl3;->a(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static l([BIJJ[J)V
    .locals 6

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/kl3;->n([BI)J

    move-result-wide v0

    add-int/lit8 v2, p1, 0x8

    invoke-static {p0, v2}, Lcom/shabakaty/downloader/kl3;->n([BI)J

    move-result-wide v2

    add-int/lit8 v4, p1, 0x10

    invoke-static {p0, v4}, Lcom/shabakaty/downloader/kl3;->n([BI)J

    move-result-wide v4

    add-int/lit8 p1, p1, 0x18

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/kl3;->n([BI)J

    move-result-wide p0

    add-long/2addr p2, v0

    add-long/2addr p4, p2

    add-long/2addr p4, p0

    const/16 v0, 0x15

    invoke-static {p4, p5, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide p4

    add-long/2addr v2, p2

    add-long/2addr v2, v4

    const/16 v0, 0x2c

    invoke-static {v2, v3, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    add-long/2addr v0, p4

    add-long/2addr v2, p0

    const/4 p0, 0x0

    aput-wide v2, p6, p0

    add-long/2addr v0, p2

    const/4 p0, 0x1

    aput-wide v0, p6, p0

    return-void
.end method

.method public static m(D)I
    .locals 3

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    if-lez v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    int-to-double v0, v0

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    mul-double p0, p0, v0

    const-wide/high16 v0, 0x41f0000000000000L    # 4.294967296E9

    rem-double/2addr p0, v0

    double-to-long p0, p0

    long-to-int p1, p0

    return p1

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static n([BI)J
    .locals 1

    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p0

    return-wide p0
.end method

.method public static o(Lcom/shabakaty/downloader/np4;)I
    .locals 5

    const-string v0, "runtime.counter"

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/np4;->h(Ljava/lang/String;)Lcom/shabakaty/downloader/gj5;

    move-result-object v1

    invoke-interface {v1}, Lcom/shabakaty/downloader/gj5;->f()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/kl3;->m(D)I

    move-result v1

    const v2, 0xf4240

    if-gt v1, v2, :cond_0

    .line 2
    new-instance v2, Lcom/shabakaty/downloader/ug5;

    int-to-double v3, v1

    .line 3
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/ug5;-><init>(Ljava/lang/Double;)V

    invoke-virtual {p0, v0, v2}, Lcom/shabakaty/downloader/np4;->j(Ljava/lang/String;Lcom/shabakaty/downloader/gj5;)V

    return v1

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Instructions allowed exceeded"

    .line 5
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static p(D)J
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/kl3;->m(D)I

    move-result p0

    int-to-long p0, p0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method

.method public static q(Ljava/lang/String;)Lcom/shabakaty/downloader/op5;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/op5;->C0:Ljava/util/Map;

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/op5;

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Unsupported commandId %s"

    .line 6
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static r(Lcom/shabakaty/downloader/gj5;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/gj5;->j:Lcom/shabakaty/downloader/gj5;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/gj5;->i:Lcom/shabakaty/downloader/gj5;

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, ""

    return-object p0

    .line 3
    :cond_1
    instance-of v0, p0, Lcom/shabakaty/downloader/hi5;

    if-eqz v0, :cond_2

    .line 4
    check-cast p0, Lcom/shabakaty/downloader/hi5;

    invoke-static {p0}, Lcom/shabakaty/downloader/kl3;->s(Lcom/shabakaty/downloader/hi5;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 5
    :cond_2
    instance-of v0, p0, Lcom/shabakaty/downloader/uf5;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    check-cast p0, Lcom/shabakaty/downloader/uf5;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Lcom/shabakaty/downloader/qj5;

    .line 9
    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/qj5;-><init>(Lcom/shabakaty/downloader/uf5;)V

    .line 10
    :cond_3
    :goto_0
    invoke-virtual {v1}, Lcom/shabakaty/downloader/qj5;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v1}, Lcom/shabakaty/downloader/qj5;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/gj5;

    .line 11
    invoke-static {p0}, Lcom/shabakaty/downloader/kl3;->r(Lcom/shabakaty/downloader/gj5;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 12
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0

    .line 13
    :cond_5
    invoke-interface {p0}, Lcom/shabakaty/downloader/gj5;->f()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-nez v0, :cond_6

    .line 14
    invoke-interface {p0}, Lcom/shabakaty/downloader/gj5;->f()Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 15
    :cond_6
    invoke-interface {p0}, Lcom/shabakaty/downloader/gj5;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static s(Lcom/shabakaty/downloader/hi5;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hi5;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/shabakaty/downloader/hi5;->r:Ljava/util/Map;

    .line 4
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/hi5;->m(Ljava/lang/String;)Lcom/shabakaty/downloader/gj5;

    move-result-object v3

    invoke-static {v3}, Lcom/shabakaty/downloader/kl3;->r(Lcom/shabakaty/downloader/gj5;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static t(Ljava/lang/String;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/gj5;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const-string p0, "%s operation requires %s parameters found %s"

    .line 3
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static u(Ljava/lang/String;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/gj5;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const-string p0, "%s operation requires at least %s parameters found %s"

    .line 3
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static v(Ljava/lang/String;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/gj5;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const-string p0, "%s operation requires at most %s parameters found %s"

    .line 3
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static w(Lcom/shabakaty/downloader/gj5;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-interface {p0}, Lcom/shabakaty/downloader/gj5;->f()Ljava/lang/Double;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_1

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static x(Lcom/shabakaty/downloader/gj5;Lcom/shabakaty/downloader/gj5;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    instance-of v0, p0, Lcom/shabakaty/downloader/hk5;

    const/4 v2, 0x1

    if-nez v0, :cond_8

    instance-of v0, p0, Lcom/shabakaty/downloader/ri5;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    instance-of v0, p0, Lcom/shabakaty/downloader/ug5;

    if-eqz v0, :cond_4

    .line 4
    invoke-interface {p0}, Lcom/shabakaty/downloader/gj5;->f()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lcom/shabakaty/downloader/gj5;->f()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-interface {p0}, Lcom/shabakaty/downloader/gj5;->f()Ljava/lang/Double;

    move-result-object p0

    invoke-interface {p1}, Lcom/shabakaty/downloader/gj5;->f()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v1

    .line 6
    :cond_4
    instance-of v0, p0, Lcom/shabakaty/downloader/ck5;

    if-eqz v0, :cond_5

    .line 7
    invoke-interface {p0}, Lcom/shabakaty/downloader/gj5;->h()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lcom/shabakaty/downloader/gj5;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 8
    :cond_5
    instance-of v0, p0, Lcom/shabakaty/downloader/eg5;

    if-eqz v0, :cond_6

    .line 9
    invoke-interface {p0}, Lcom/shabakaty/downloader/gj5;->i()Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1}, Lcom/shabakaty/downloader/gj5;->i()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_6
    if-ne p0, p1, :cond_7

    return v2

    :cond_7
    return v1

    :cond_8
    :goto_1
    return v2
.end method
