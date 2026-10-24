.class public Lcom/shabakaty/downloader/os3;
.super Landroid/os/AsyncTask;
.source "ResolveUriTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/shabakaty/downloader/tp2;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/shabakaty/downloader/vq<",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/tp2;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/Context;

.field public final c:Lcom/shabakaty/downloader/kd4;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/kd4;Lcom/shabakaty/downloader/vq;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/shabakaty/downloader/kd4;",
            "Lcom/shabakaty/downloader/vq<",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/tp2;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/os3;->b:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/os3;->c:Lcom/shabakaty/downloader/kd4;

    .line 4
    iput-object p4, p0, Lcom/shabakaty/downloader/os3;->d:Ljava/lang/String;

    .line 5
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/os3;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/shabakaty/downloader/kd4;Lcom/shabakaty/downloader/vq;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/shabakaty/downloader/kd4;",
            "Lcom/shabakaty/downloader/vq<",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/tp2;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/os3;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/shabakaty/downloader/os3;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/kd4;Lcom/shabakaty/downloader/vq;Ljava/lang/String;)V

    .line 2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Landroid/net/Uri;

    invoke-interface {p3, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/net/Uri;

    .line 3
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p1, p0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v1, p0

    .line 1
    move-object/from16 v2, p1

    check-cast v2, [Landroid/net/Uri;

    const-string v3, "Error closing FileOutputStream"

    const-string v4, "Error closing InputStream"

    const-string v5, "Belvedere"

    .line 2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/high16 v0, 0x100000

    new-array v7, v0, [B

    .line 3
    array-length v8, v2

    const/4 v0, 0x0

    move-object v10, v0

    move-object v11, v10

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v8, :cond_b

    aget-object v15, v2, v12

    .line 4
    :try_start_0
    iget-object v0, v1, Lcom/shabakaty/downloader/os3;->b:Landroid/content/Context;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_12
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v11

    .line 5
    iget-object v0, v1, Lcom/shabakaty/downloader/os3;->c:Lcom/shabakaty/downloader/kd4;

    iget-object v13, v1, Lcom/shabakaty/downloader/os3;->b:Landroid/content/Context;

    iget-object v14, v1, Lcom/shabakaty/downloader/os3;->d:Ljava/lang/String;

    invoke-virtual {v0, v13, v15, v14}, Lcom/shabakaty/downloader/kd4;->c(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/File;

    move-result-object v14
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_12
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    const/4 v0, 0x2

    if-eqz v11, :cond_1

    if-eqz v14, :cond_1

    .line 6
    :try_start_2
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "Copying media file into private cache - Uri: %s - Dest: %s"

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v15, v0, v16

    const/16 v16, 0x1

    aput-object v14, v0, v16

    invoke-static {v13, v9, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/shabakaty/downloader/ye2;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 8
    :goto_1
    :try_start_3
    invoke-virtual {v11, v7}, Ljava/io/InputStream;->read([B)I

    move-result v0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-lez v0, :cond_0

    const/4 v10, 0x0

    .line 9
    :try_start_4
    invoke-virtual {v9, v7, v10, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v3

    move-object v2, v4

    move-object v10, v9

    goto/16 :goto_1a

    :catch_0
    move-exception v0

    move-object/from16 p1, v2

    move-object/from16 v27, v3

    move-object v2, v4

    move-object/from16 v25, v7

    move/from16 v26, v8

    move-object v10, v9

    goto/16 :goto_12

    :catch_1
    move-exception v0

    move-object/from16 p1, v2

    move-object v1, v3

    move-object v2, v4

    move-object/from16 v25, v7

    move/from16 v26, v8

    move-object v10, v9

    goto/16 :goto_16

    .line 10
    :cond_0
    :try_start_5
    iget-object v0, v1, Lcom/shabakaty/downloader/os3;->b:Landroid/content/Context;

    invoke-static {v0, v15}, Lcom/shabakaty/downloader/kd4;->e(Landroid/content/Context;Landroid/net/Uri;)Lcom/shabakaty/downloader/tp2;

    move-result-object v0

    .line 11
    new-instance v10, Lcom/shabakaty/downloader/tp2;

    iget-object v13, v1, Lcom/shabakaty/downloader/os3;->c:Lcom/shabakaty/downloader/kd4;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 p1, v2

    :try_start_6
    iget-object v2, v1, Lcom/shabakaty/downloader/os3;->b:Landroid/content/Context;

    invoke-virtual {v13, v2, v14}, Lcom/shabakaty/downloader/kd4;->d(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    .line 12
    iget-object v13, v0, Lcom/shabakaty/downloader/tp2;->v:Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object/from16 v25, v7

    move/from16 v26, v8

    .line 13
    :try_start_7
    iget-wide v7, v0, Lcom/shabakaty/downloader/tp2;->w:J
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    .line 14
    :try_start_8
    iget-wide v3, v0, Lcom/shabakaty/downloader/tp2;->x:J

    .line 15
    iget-wide v0, v0, Lcom/shabakaty/downloader/tp2;->y:J
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 v18, v13

    move-object v13, v10

    move-object/from16 v29, v9

    const/4 v9, 0x1

    move-object/from16 v30, v15

    move-object v15, v2

    move-object/from16 v16, v30

    move-wide/from16 v19, v7

    move-wide/from16 v21, v3

    move-wide/from16 v23, v0

    .line 16
    :try_start_9
    invoke-direct/range {v13 .. v24}, Lcom/shabakaty/downloader/tp2;-><init>(Ljava/io/File;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJJ)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object/from16 v10, v29

    goto/16 :goto_d

    :catchall_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    goto/16 :goto_9

    :catchall_2
    move-exception v0

    :goto_2
    move-object/from16 v29, v9

    goto :goto_7

    :catch_4
    move-exception v0

    :goto_3
    move-object/from16 v29, v9

    move-object/from16 v30, v15

    const/4 v9, 0x1

    goto :goto_8

    :catch_5
    move-exception v0

    :goto_4
    move-object/from16 v29, v9

    move-object/from16 v30, v15

    const/4 v9, 0x1

    goto :goto_9

    :catch_6
    move-exception v0

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    goto :goto_3

    :catch_7
    move-exception v0

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    goto :goto_2

    :catch_8
    move-exception v0

    :goto_5
    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move-object/from16 v25, v7

    move/from16 v26, v8

    goto :goto_3

    :catch_9
    move-exception v0

    :goto_6
    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move-object/from16 v25, v7

    move/from16 v26, v8

    goto :goto_4

    :goto_7
    move-object v3, v0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v10, v29

    goto/16 :goto_1b

    :catch_a
    move-exception v0

    move-object/from16 p1, v2

    goto :goto_5

    :goto_8
    move-object/from16 v2, v28

    move-object/from16 v10, v29

    goto/16 :goto_13

    :catch_b
    move-exception v0

    move-object/from16 p1, v2

    goto :goto_6

    :goto_9
    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v10, v29

    goto/16 :goto_17

    :catchall_4
    move-exception v0

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move-object v3, v0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    goto/16 :goto_1b

    :catch_c
    move-exception v0

    move-object/from16 p1, v2

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move-object/from16 v25, v7

    move/from16 v26, v8

    move-object/from16 v30, v15

    const/4 v9, 0x1

    :goto_a
    move-object/from16 v2, v28

    goto/16 :goto_13

    :catch_d
    move-exception v0

    move-object/from16 p1, v2

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move-object/from16 v25, v7

    move/from16 v26, v8

    move-object/from16 v30, v15

    const/4 v9, 0x1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    goto/16 :goto_17

    :cond_1
    move-object/from16 p1, v2

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move-object/from16 v25, v7

    move/from16 v26, v8

    move-object/from16 v30, v15

    const/4 v9, 0x1

    .line 17
    :try_start_a
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Unable to resolve uri. InputStream null = %s, File null = %s"

    new-array v0, v0, [Ljava/lang/Object;

    if-nez v11, :cond_2

    const/4 v3, 0x1

    goto :goto_b

    :cond_2
    const/4 v3, 0x0

    .line 18
    :goto_b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    if-nez v14, :cond_3

    const/4 v14, 0x1

    goto :goto_c

    :cond_3
    const/4 v14, 0x0

    :goto_c
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v9

    .line 19
    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v5, v0}, Lcom/shabakaty/downloader/ye2;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_10
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_f
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :goto_d
    if-eqz v11, :cond_4

    .line 21
    :try_start_b
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_e

    goto :goto_e

    :catch_e
    move-exception v0

    move-object v1, v0

    move-object/from16 v2, v28

    .line 22
    invoke-static {v5, v2, v1}, Lcom/shabakaty/downloader/ye2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f

    :cond_4
    :goto_e
    move-object/from16 v2, v28

    :goto_f
    if-eqz v10, :cond_5

    .line 23
    :try_start_c
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_14

    :cond_5
    :goto_10
    move-object/from16 v1, v27

    goto/16 :goto_15

    :catchall_5
    move-exception v0

    move-object/from16 v2, v28

    goto :goto_11

    :catch_f
    move-exception v0

    goto :goto_a

    :catch_10
    move-exception v0

    move-object/from16 v2, v28

    move-object/from16 v1, v27

    goto/16 :goto_17

    :catch_11
    move-exception v0

    move-object/from16 p1, v2

    move-object v2, v4

    move-object/from16 v25, v7

    move/from16 v26, v8

    move-object/from16 v30, v15

    const/4 v9, 0x1

    move-object v1, v3

    goto :goto_17

    :catchall_6
    move-exception v0

    move-object/from16 v27, v3

    move-object v2, v4

    :goto_11
    move-object/from16 v1, v27

    goto/16 :goto_1a

    :catch_12
    move-exception v0

    move-object/from16 p1, v2

    move-object/from16 v27, v3

    move-object v2, v4

    move-object/from16 v25, v7

    move/from16 v26, v8

    :goto_12
    move-object/from16 v30, v15

    const/4 v9, 0x1

    .line 24
    :goto_13
    :try_start_d
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "IO Error copying file, uri: %s"

    new-array v4, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v30, v4, v7

    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Lcom/shabakaty/downloader/ye2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    if-eqz v11, :cond_6

    .line 25
    :try_start_e
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    move-object v1, v0

    .line 26
    invoke-static {v5, v2, v1}, Lcom/shabakaty/downloader/ye2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_14
    if-eqz v10, :cond_5

    .line 27
    :try_start_f
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_14

    goto :goto_10

    :catch_14
    move-exception v0

    move-object/from16 v1, v27

    .line 28
    invoke-static {v5, v1, v0}, Lcom/shabakaty/downloader/ye2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_15
    const/4 v8, 0x0

    goto :goto_19

    :catchall_7
    move-exception v0

    goto :goto_11

    :catch_15
    move-exception v0

    move-object/from16 p1, v2

    move-object v1, v3

    move-object v2, v4

    move-object/from16 v25, v7

    move/from16 v26, v8

    :goto_16
    move-object/from16 v30, v15

    const/4 v9, 0x1

    .line 29
    :goto_17
    :try_start_10
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "File not found error copying file, uri: %s"

    new-array v7, v9, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v30, v7, v8

    invoke-static {v3, v4, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v0}, Lcom/shabakaty/downloader/ye2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    if-eqz v11, :cond_7

    .line 30
    :try_start_11
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_16

    goto :goto_18

    :catch_16
    move-exception v0

    move-object v3, v0

    .line 31
    invoke-static {v5, v2, v3}, Lcom/shabakaty/downloader/ye2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_18
    if-eqz v10, :cond_8

    .line 32
    :try_start_12
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_17

    goto :goto_19

    :catch_17
    move-exception v0

    move-object v3, v0

    .line 33
    invoke-static {v5, v1, v3}, Lcom/shabakaty/downloader/ye2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_19
    add-int/lit8 v12, v12, 0x1

    move-object v3, v1

    move-object v4, v2

    move-object/from16 v7, v25

    move/from16 v8, v26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto/16 :goto_0

    :catchall_8
    move-exception v0

    :goto_1a
    move-object v3, v0

    :goto_1b
    if-eqz v11, :cond_9

    .line 34
    :try_start_13
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_18

    goto :goto_1c

    :catch_18
    move-exception v0

    move-object v4, v0

    .line 35
    invoke-static {v5, v2, v4}, Lcom/shabakaty/downloader/ye2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    :goto_1c
    if-eqz v10, :cond_a

    .line 36
    :try_start_14
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_19

    goto :goto_1d

    :catch_19
    move-exception v0

    move-object v2, v0

    .line 37
    invoke-static {v5, v1, v2}, Lcom/shabakaty/downloader/ye2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    :cond_a
    :goto_1d
    throw v3

    :cond_b
    return-object v6
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/os3;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/vq;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/vq;->internalSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "Belvedere"

    const-string v0, "Callback null"

    .line 5
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/ye2;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
