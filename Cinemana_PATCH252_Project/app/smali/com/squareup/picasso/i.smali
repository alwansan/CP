.class public Lcom/squareup/picasso/i;
.super Lcom/squareup/picasso/e;
.source "MediaStoreRequestHandler.java"


# static fields
.field public static final b:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "orientation"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/squareup/picasso/i;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/squareup/picasso/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/squareup/picasso/m;)Z
    .locals 2

    .line 1
    iget-object p1, p1, Lcom/squareup/picasso/m;->c:Landroid/net/Uri;

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    const-string v0, "media"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f(Lcom/squareup/picasso/m;I)Lcom/squareup/picasso/o$a;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    sget-object v8, Lcom/squareup/picasso/k$d;->t:Lcom/squareup/picasso/k$d;

    iget-object v2, v1, Lcom/squareup/picasso/e;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 2
    iget-object v10, v0, Lcom/squareup/picasso/m;->c:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 3
    :try_start_0
    sget-object v11, Lcom/squareup/picasso/i;->b:[Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v15

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_1

    .line 4
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move v9, v4

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v7, v3

    goto :goto_1

    :catch_0
    nop

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz v3, :cond_3

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 7
    :cond_2
    throw v0

    :catch_1
    move-object v3, v7

    :goto_2
    if-eqz v3, :cond_3

    .line 8
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 v9, 0x0

    .line 9
    :goto_4
    iget-object v3, v0, Lcom/squareup/picasso/m;->c:Landroid/net/Uri;

    invoke-virtual {v15, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x1

    if-eqz v3, :cond_4

    const-string v4, "video/"

    .line 10
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v11, 0x1

    goto :goto_5

    :cond_4
    const/4 v11, 0x0

    .line 11
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/picasso/m;->a()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 12
    iget v2, v0, Lcom/squareup/picasso/m;->f:I

    iget v3, v0, Lcom/squareup/picasso/m;->g:I

    const/16 v4, 0x60

    const/4 v12, 0x3

    if-gt v2, v4, :cond_5

    if-gt v3, v4, :cond_5

    const/4 v4, 0x1

    goto :goto_6

    :cond_5
    const/4 v4, 0x2

    const/16 v5, 0x200

    if-gt v2, v5, :cond_6

    const/16 v2, 0x180

    if-gt v3, v2, :cond_6

    :goto_6
    move v13, v4

    goto :goto_7

    :cond_6
    const/4 v13, 0x3

    :goto_7
    if-nez v11, :cond_7

    if-ne v13, v12, :cond_7

    .line 13
    iget-object v2, v1, Lcom/squareup/picasso/e;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 14
    iget-object v0, v0, Lcom/squareup/picasso/m;->c:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/shabakaty/downloader/md0;->O(Ljava/io/InputStream;)Lcom/shabakaty/downloader/r94;

    move-result-object v0

    .line 16
    new-instance v2, Lcom/squareup/picasso/o$a;

    invoke-direct {v2, v7, v0, v8, v9}, Lcom/squareup/picasso/o$a;-><init>(Landroid/graphics/Bitmap;Lcom/shabakaty/downloader/r94;Lcom/squareup/picasso/k$d;I)V

    return-object v2

    .line 17
    :cond_7
    iget-object v2, v0, Lcom/squareup/picasso/m;->c:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    .line 18
    invoke-static/range {p1 .. p1}, Lcom/squareup/picasso/o;->d(Lcom/squareup/picasso/m;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v14

    .line 19
    iput-boolean v10, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 20
    iget v2, v0, Lcom/squareup/picasso/m;->f:I

    iget v3, v0, Lcom/squareup/picasso/m;->g:I

    invoke-static {v13}, Lcom/shabakaty/downloader/su;->B(I)I

    move-result v4

    invoke-static {v13}, Lcom/shabakaty/downloader/su;->t(I)I

    move-result v16

    move-wide/from16 v17, v5

    move/from16 v5, v16

    move-object v6, v14

    move-object v10, v7

    move-object/from16 v7, p1

    invoke-static/range {v2 .. v7}, Lcom/squareup/picasso/o;->a(IIIILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/m;)V

    if-eqz v11, :cond_9

    if-ne v13, v12, :cond_8

    move-wide/from16 v3, v17

    const/4 v2, 0x1

    goto :goto_8

    .line 21
    :cond_8
    invoke-static {v13}, Lcom/shabakaty/downloader/su;->s(I)I

    move-result v2

    move-wide/from16 v3, v17

    .line 22
    :goto_8
    invoke-static {v15, v3, v4, v2, v14}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_9

    :cond_9
    move-wide/from16 v3, v17

    .line 23
    invoke-static {v13}, Lcom/shabakaty/downloader/su;->s(I)I

    move-result v2

    .line 24
    invoke-static {v15, v3, v4, v2, v14}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_9
    if-eqz v2, :cond_b

    .line 25
    new-instance v0, Lcom/squareup/picasso/o$a;

    invoke-direct {v0, v2, v10, v8, v9}, Lcom/squareup/picasso/o$a;-><init>(Landroid/graphics/Bitmap;Lcom/shabakaty/downloader/r94;Lcom/squareup/picasso/k$d;I)V

    return-object v0

    :cond_a
    move-object v10, v7

    .line 26
    :cond_b
    iget-object v2, v1, Lcom/squareup/picasso/e;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 27
    iget-object v0, v0, Lcom/squareup/picasso/m;->c:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/shabakaty/downloader/md0;->O(Ljava/io/InputStream;)Lcom/shabakaty/downloader/r94;

    move-result-object v0

    .line 29
    new-instance v2, Lcom/squareup/picasso/o$a;

    invoke-direct {v2, v10, v0, v8, v9}, Lcom/squareup/picasso/o$a;-><init>(Landroid/graphics/Bitmap;Lcom/shabakaty/downloader/r94;Lcom/squareup/picasso/k$d;I)V

    return-object v2
.end method
