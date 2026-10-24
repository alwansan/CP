.class public Lcom/squareup/picasso/n;
.super Ljava/lang/Object;
.source "RequestCreator.java"


# static fields
.field public static final g:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final a:Lcom/squareup/picasso/k;

.field public final b:Lcom/squareup/picasso/m$b;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/squareup/picasso/n;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/picasso/k;Landroid/net/Uri;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/squareup/picasso/n;->e:Z

    .line 3
    iput-object p1, p0, Lcom/squareup/picasso/n;->a:Lcom/squareup/picasso/k;

    .line 4
    new-instance v0, Lcom/squareup/picasso/m$b;

    iget-object p1, p1, Lcom/squareup/picasso/k;->k:Landroid/graphics/Bitmap$Config;

    invoke-direct {v0, p2, p3, p1}, Lcom/squareup/picasso/m$b;-><init>(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Lcom/squareup/picasso/n;->b:Lcom/squareup/picasso/m$b;

    return-void
.end method


# virtual methods
.method public a()Lcom/squareup/picasso/n;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/n;->b:Lcom/squareup/picasso/m$b;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/squareup/picasso/m$b;->e:Z

    const/16 v1, 0x11

    .line 3
    iput v1, v0, Lcom/squareup/picasso/m$b;->f:I

    return-object p0
.end method

.method public final b(J)Lcom/squareup/picasso/m;
    .locals 23

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcom/squareup/picasso/n;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    .line 2
    iget-object v2, v0, Lcom/squareup/picasso/n;->b:Lcom/squareup/picasso/m$b;

    .line 3
    iget-boolean v3, v2, Lcom/squareup/picasso/m$b;->e:Z

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/squareup/picasso/m$b;->c:I

    if-nez v3, :cond_1

    iget v3, v2, Lcom/squareup/picasso/m$b;->d:I

    if-eqz v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Center crop requires calling resize with positive width and height."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_1
    :goto_0
    iget v3, v2, Lcom/squareup/picasso/m$b;->i:I

    if-nez v3, :cond_2

    const/4 v3, 0x2

    .line 6
    iput v3, v2, Lcom/squareup/picasso/m$b;->i:I

    .line 7
    :cond_2
    new-instance v3, Lcom/squareup/picasso/m;

    move-object v4, v3

    iget-object v5, v2, Lcom/squareup/picasso/m$b;->a:Landroid/net/Uri;

    iget v6, v2, Lcom/squareup/picasso/m$b;->b:I

    iget-object v8, v2, Lcom/squareup/picasso/m$b;->g:Ljava/util/List;

    iget v9, v2, Lcom/squareup/picasso/m$b;->c:I

    iget v10, v2, Lcom/squareup/picasso/m$b;->d:I

    iget-boolean v11, v2, Lcom/squareup/picasso/m$b;->e:Z

    const/4 v12, 0x0

    iget v13, v2, Lcom/squareup/picasso/m$b;->f:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget-object v7, v2, Lcom/squareup/picasso/m$b;->h:Landroid/graphics/Bitmap$Config;

    move-object/from16 v20, v7

    iget v2, v2, Lcom/squareup/picasso/m$b;->i:I

    move/from16 v21, v2

    const/16 v22, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v22}, Lcom/squareup/picasso/m;-><init>(Landroid/net/Uri;ILjava/lang/String;Ljava/util/List;IIZZIZFFFZZLandroid/graphics/Bitmap$Config;ILcom/squareup/picasso/m$a;)V

    .line 8
    iput v1, v3, Lcom/squareup/picasso/m;->a:I

    move-wide/from16 v1, p1

    .line 9
    iput-wide v1, v3, Lcom/squareup/picasso/m;->b:J

    .line 10
    iget-object v1, v0, Lcom/squareup/picasso/n;->a:Lcom/squareup/picasso/k;

    iget-boolean v1, v1, Lcom/squareup/picasso/k;->m:Z

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {v3}, Lcom/squareup/picasso/m;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/squareup/picasso/m;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Main"

    const-string v5, "created"

    invoke-static {v4, v5, v1, v2}, Lcom/shabakaty/downloader/az4;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_3
    iget-object v1, v0, Lcom/squareup/picasso/n;->a:Lcom/squareup/picasso/k;

    .line 13
    iget-object v1, v1, Lcom/squareup/picasso/k;->b:Lcom/squareup/picasso/k$e;

    check-cast v1, Lcom/squareup/picasso/k$e$a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3
.end method

.method public c(Landroid/widget/ImageView;Lcom/shabakaty/downloader/yq;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v3, p1

    move-object/from16 v11, p2

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/az4;->a()V

    if-eqz v3, :cond_10

    .line 3
    iget-object v4, v0, Lcom/squareup/picasso/n;->b:Lcom/squareup/picasso/m$b;

    .line 4
    iget-object v5, v4, Lcom/squareup/picasso/m$b;->a:Landroid/net/Uri;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_1

    iget v5, v4, Lcom/squareup/picasso/m$b;->b:I

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-nez v5, :cond_3

    .line 5
    iget-object v1, v0, Lcom/squareup/picasso/n;->a:Lcom/squareup/picasso/k;

    invoke-virtual {v1, v3}, Lcom/squareup/picasso/k;->b(Landroid/widget/ImageView;)V

    .line 6
    iget-boolean v1, v0, Lcom/squareup/picasso/n;->e:Z

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, v0, Lcom/squareup/picasso/n;->f:Landroid/graphics/drawable/Drawable;

    .line 8
    invoke-static {v3, v1}, Lcom/squareup/picasso/l;->c(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void

    .line 9
    :cond_3
    iget-boolean v5, v0, Lcom/squareup/picasso/n;->d:Z

    if-eqz v5, :cond_b

    .line 10
    iget v5, v4, Lcom/squareup/picasso/m$b;->c:I

    if-nez v5, :cond_5

    iget v4, v4, Lcom/squareup/picasso/m$b;->d:I

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :cond_5
    :goto_2
    if-nez v6, :cond_a

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    .line 12
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    if-eqz v4, :cond_7

    if-nez v5, :cond_6

    goto :goto_3

    .line 13
    :cond_6
    iget-object v6, v0, Lcom/squareup/picasso/n;->b:Lcom/squareup/picasso/m$b;

    invoke-virtual {v6, v4, v5}, Lcom/squareup/picasso/m$b;->a(II)Lcom/squareup/picasso/m$b;

    goto :goto_4

    .line 14
    :cond_7
    :goto_3
    iget-boolean v1, v0, Lcom/squareup/picasso/n;->e:Z

    if-eqz v1, :cond_8

    .line 15
    iget-object v1, v0, Lcom/squareup/picasso/n;->f:Landroid/graphics/drawable/Drawable;

    .line 16
    invoke-static {v3, v1}, Lcom/squareup/picasso/l;->c(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 17
    :cond_8
    iget-object v1, v0, Lcom/squareup/picasso/n;->a:Lcom/squareup/picasso/k;

    new-instance v2, Lcom/shabakaty/downloader/op0;

    invoke-direct {v2, p0, v3, v11}, Lcom/shabakaty/downloader/op0;-><init>(Lcom/squareup/picasso/n;Landroid/widget/ImageView;Lcom/shabakaty/downloader/yq;)V

    .line 18
    iget-object v4, v1, Lcom/squareup/picasso/k;->i:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 19
    invoke-virtual {v1, v3}, Lcom/squareup/picasso/k;->a(Ljava/lang/Object;)V

    .line 20
    :cond_9
    iget-object v1, v1, Lcom/squareup/picasso/k;->i:Ljava/util/Map;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 21
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fit cannot be used with resize."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_b
    :goto_4
    invoke-virtual {p0, v1, v2}, Lcom/squareup/picasso/n;->b(J)Lcom/squareup/picasso/m;

    move-result-object v8

    .line 23
    invoke-static {v8}, Lcom/shabakaty/downloader/az4;->b(Lcom/squareup/picasso/m;)Ljava/lang/String;

    move-result-object v9

    .line 24
    invoke-static {v7}, Lcom/shabakaty/downloader/su;->n(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 25
    iget-object v1, v0, Lcom/squareup/picasso/n;->a:Lcom/squareup/picasso/k;

    invoke-virtual {v1, v9}, Lcom/squareup/picasso/k;->j(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 26
    iget-object v1, v0, Lcom/squareup/picasso/n;->a:Lcom/squareup/picasso/k;

    invoke-virtual {v1, v3}, Lcom/squareup/picasso/k;->b(Landroid/widget/ImageView;)V

    .line 27
    iget-object v1, v0, Lcom/squareup/picasso/n;->a:Lcom/squareup/picasso/k;

    iget-object v2, v1, Lcom/squareup/picasso/k;->d:Landroid/content/Context;

    sget-object v7, Lcom/squareup/picasso/k$d;->s:Lcom/squareup/picasso/k$d;

    iget-boolean v5, v0, Lcom/squareup/picasso/n;->c:Z

    iget-boolean v6, v1, Lcom/squareup/picasso/k;->l:Z

    move-object/from16 v1, p1

    move-object v3, v4

    move-object v4, v7

    invoke-static/range {v1 .. v6}, Lcom/squareup/picasso/l;->b(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/squareup/picasso/k$d;ZZ)V

    .line 28
    iget-object v1, v0, Lcom/squareup/picasso/n;->a:Lcom/squareup/picasso/k;

    iget-boolean v1, v1, Lcom/squareup/picasso/k;->m:Z

    if-eqz v1, :cond_c

    .line 29
    invoke-virtual {v8}, Lcom/squareup/picasso/m;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Main"

    const-string v4, "completed"

    invoke-static {v3, v4, v1, v2}, Lcom/shabakaty/downloader/az4;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    if-eqz v11, :cond_d

    .line 30
    invoke-interface/range {p2 .. p2}, Lcom/shabakaty/downloader/yq;->onSuccess()V

    :cond_d
    return-void

    .line 31
    :cond_e
    iget-boolean v1, v0, Lcom/squareup/picasso/n;->e:Z

    if-eqz v1, :cond_f

    .line 32
    iget-object v1, v0, Lcom/squareup/picasso/n;->f:Landroid/graphics/drawable/Drawable;

    .line 33
    invoke-static {v3, v1}, Lcom/squareup/picasso/l;->c(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 34
    :cond_f
    new-instance v13, Lcom/squareup/picasso/h;

    iget-object v2, v0, Lcom/squareup/picasso/n;->a:Lcom/squareup/picasso/k;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    iget-boolean v14, v0, Lcom/squareup/picasso/n;->c:Z

    move-object v1, v13

    move-object/from16 v3, p1

    move-object v4, v8

    move-object v8, v10

    move-object v10, v12

    move-object/from16 v11, p2

    move v12, v14

    invoke-direct/range {v1 .. v12}, Lcom/squareup/picasso/h;-><init>(Lcom/squareup/picasso/k;Landroid/widget/ImageView;Lcom/squareup/picasso/m;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Lcom/shabakaty/downloader/yq;Z)V

    .line 35
    iget-object v1, v0, Lcom/squareup/picasso/n;->a:Lcom/squareup/picasso/k;

    invoke-virtual {v1, v13}, Lcom/squareup/picasso/k;->e(Lcom/squareup/picasso/a;)V

    return-void

    .line 36
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Target must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public d(Lcom/squareup/picasso/q;)V
    .locals 14

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/az4;->a()V

    .line 3
    iget-boolean v2, p0, Lcom/squareup/picasso/n;->d:Z

    if-nez v2, :cond_6

    .line 4
    iget-object v2, p0, Lcom/squareup/picasso/n;->b:Lcom/squareup/picasso/m$b;

    .line 5
    iget-object v3, v2, Lcom/squareup/picasso/m$b;->a:Landroid/net/Uri;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    iget v2, v2, Lcom/squareup/picasso/m$b;->b:I

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 6
    iget-object v0, p0, Lcom/squareup/picasso/n;->a:Lcom/squareup/picasso/k;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v0, p1}, Lcom/squareup/picasso/k;->a(Ljava/lang/Object;)V

    .line 8
    iget-boolean v0, p0, Lcom/squareup/picasso/n;->e:Z

    if-eqz v0, :cond_2

    .line 9
    iget-object v3, p0, Lcom/squareup/picasso/n;->f:Landroid/graphics/drawable/Drawable;

    .line 10
    :cond_2
    invoke-interface {p1, v3}, Lcom/squareup/picasso/q;->onPrepareLoad(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 11
    :cond_3
    invoke-virtual {p0, v0, v1}, Lcom/squareup/picasso/n;->b(J)Lcom/squareup/picasso/m;

    move-result-object v7

    .line 12
    invoke-static {v7}, Lcom/shabakaty/downloader/az4;->b(Lcom/squareup/picasso/m;)Ljava/lang/String;

    move-result-object v11

    .line 13
    invoke-static {v4}, Lcom/shabakaty/downloader/su;->n(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    iget-object v0, p0, Lcom/squareup/picasso/n;->a:Lcom/squareup/picasso/k;

    invoke-virtual {v0, v11}, Lcom/squareup/picasso/k;->j(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 15
    iget-object v1, p0, Lcom/squareup/picasso/n;->a:Lcom/squareup/picasso/k;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {v1, p1}, Lcom/squareup/picasso/k;->a(Ljava/lang/Object;)V

    .line 17
    sget-object v1, Lcom/squareup/picasso/k$d;->s:Lcom/squareup/picasso/k$d;

    invoke-interface {p1, v0, v1}, Lcom/squareup/picasso/q;->onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/k$d;)V

    return-void

    .line 18
    :cond_4
    iget-boolean v0, p0, Lcom/squareup/picasso/n;->e:Z

    if-eqz v0, :cond_5

    .line 19
    iget-object v3, p0, Lcom/squareup/picasso/n;->f:Landroid/graphics/drawable/Drawable;

    .line 20
    :cond_5
    invoke-interface {p1, v3}, Lcom/squareup/picasso/q;->onPrepareLoad(Landroid/graphics/drawable/Drawable;)V

    .line 21
    new-instance v0, Lcom/squareup/picasso/r;

    iget-object v5, p0, Lcom/squareup/picasso/n;->a:Lcom/squareup/picasso/k;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v4, v0

    move-object v6, p1

    invoke-direct/range {v4 .. v13}, Lcom/squareup/picasso/r;-><init>(Lcom/squareup/picasso/k;Lcom/squareup/picasso/q;Lcom/squareup/picasso/m;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 22
    iget-object p1, p0, Lcom/squareup/picasso/n;->a:Lcom/squareup/picasso/k;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/k;->e(Lcom/squareup/picasso/a;)V

    return-void

    .line 23
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fit cannot be used with a Target."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e()Lcom/squareup/picasso/n;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/n;->f:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/squareup/picasso/n;->e:Z

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Placeholder image already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(Lcom/shabakaty/downloader/up4;)Lcom/squareup/picasso/n;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/n;->b:Lcom/squareup/picasso/m$b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/up4;->key()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, v0, Lcom/squareup/picasso/m$b;->g:Ljava/util/List;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/squareup/picasso/m$b;->g:Ljava/util/List;

    .line 5
    :cond_0
    iget-object v0, v0, Lcom/squareup/picasso/m$b;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Transformation key must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Transformation must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
