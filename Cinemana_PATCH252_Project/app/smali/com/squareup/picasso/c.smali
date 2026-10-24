.class public Lcom/squareup/picasso/c;
.super Ljava/lang/Object;
.source "BitmapHunter.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final K:Ljava/lang/Object;

.field public static final L:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field public static final M:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final N:Lcom/squareup/picasso/o;


# instance fields
.field public final A:Lcom/squareup/picasso/o;

.field public B:Lcom/squareup/picasso/a;

.field public C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/picasso/a;",
            ">;"
        }
    .end annotation
.end field

.field public D:Landroid/graphics/Bitmap;

.field public E:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field public F:Lcom/squareup/picasso/k$d;

.field public G:Ljava/lang/Exception;

.field public H:I

.field public I:I

.field public J:I

.field public final r:I

.field public final s:Lcom/squareup/picasso/k;

.field public final t:Lcom/squareup/picasso/f;

.field public final u:Lcom/shabakaty/downloader/pp;

.field public final v:Lcom/shabakaty/downloader/tc4;

.field public final w:Ljava/lang/String;

.field public final x:Lcom/squareup/picasso/m;

.field public final y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/squareup/picasso/c;->K:Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/squareup/picasso/c$a;

    invoke-direct {v0}, Lcom/squareup/picasso/c$a;-><init>()V

    sput-object v0, Lcom/squareup/picasso/c;->L:Ljava/lang/ThreadLocal;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/squareup/picasso/c;->M:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance v0, Lcom/squareup/picasso/c$b;

    invoke-direct {v0}, Lcom/squareup/picasso/c$b;-><init>()V

    sput-object v0, Lcom/squareup/picasso/c;->N:Lcom/squareup/picasso/o;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/picasso/k;Lcom/squareup/picasso/f;Lcom/shabakaty/downloader/pp;Lcom/shabakaty/downloader/tc4;Lcom/squareup/picasso/a;Lcom/squareup/picasso/o;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/squareup/picasso/c;->M:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/squareup/picasso/c;->r:I

    .line 3
    iput-object p1, p0, Lcom/squareup/picasso/c;->s:Lcom/squareup/picasso/k;

    .line 4
    iput-object p2, p0, Lcom/squareup/picasso/c;->t:Lcom/squareup/picasso/f;

    .line 5
    iput-object p3, p0, Lcom/squareup/picasso/c;->u:Lcom/shabakaty/downloader/pp;

    .line 6
    iput-object p4, p0, Lcom/squareup/picasso/c;->v:Lcom/shabakaty/downloader/tc4;

    .line 7
    iput-object p5, p0, Lcom/squareup/picasso/c;->B:Lcom/squareup/picasso/a;

    .line 8
    iget-object p1, p5, Lcom/squareup/picasso/a;->i:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/squareup/picasso/c;->w:Ljava/lang/String;

    .line 10
    iget-object p1, p5, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/m;

    .line 11
    iput-object p1, p0, Lcom/squareup/picasso/c;->x:Lcom/squareup/picasso/m;

    .line 12
    iget p1, p1, Lcom/squareup/picasso/m;->r:I

    .line 13
    iput p1, p0, Lcom/squareup/picasso/c;->J:I

    .line 14
    iget p1, p5, Lcom/squareup/picasso/a;->e:I

    .line 15
    iput p1, p0, Lcom/squareup/picasso/c;->y:I

    .line 16
    iget p1, p5, Lcom/squareup/picasso/a;->f:I

    .line 17
    iput p1, p0, Lcom/squareup/picasso/c;->z:I

    .line 18
    iput-object p6, p0, Lcom/squareup/picasso/c;->A:Lcom/squareup/picasso/o;

    .line 19
    invoke-virtual {p6}, Lcom/squareup/picasso/o;->e()I

    move-result p1

    iput p1, p0, Lcom/squareup/picasso/c;->I:I

    return-void
.end method

.method public static a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/up4;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/up4;

    const/4 v3, 0x0

    .line 3
    :try_start_0
    invoke-interface {v2, p1}, Lcom/shabakaty/downloader/up4;->transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_1

    const-string p1, "Transformation "

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 5
    invoke-interface {v2}, Lcom/shabakaty/downloader/up4;->key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " returned null after "

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " previous transformation(s).\n\nTransformation list:\n"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/up4;

    .line 10
    invoke-interface {v0}, Lcom/shabakaty/downloader/up4;->key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 11
    :cond_0
    sget-object p0, Lcom/squareup/picasso/k;->n:Landroid/os/Handler;

    new-instance v0, Lcom/squareup/picasso/c$d;

    invoke-direct {v0, p1}, Lcom/squareup/picasso/c$d;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_1
    if-ne v4, p1, :cond_2

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 13
    sget-object p0, Lcom/squareup/picasso/k;->n:Landroid/os/Handler;

    new-instance p1, Lcom/squareup/picasso/c$e;

    invoke-direct {p1, v2}, Lcom/squareup/picasso/c$e;-><init>(Lcom/shabakaty/downloader/up4;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_2
    if-eq v4, p1, :cond_3

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 15
    sget-object p0, Lcom/squareup/picasso/k;->n:Landroid/os/Handler;

    new-instance p1, Lcom/squareup/picasso/c$f;

    invoke-direct {p1, v2}, Lcom/squareup/picasso/c$f;-><init>(Lcom/shabakaty/downloader/up4;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    move-object p1, v4

    goto :goto_0

    :catch_0
    move-exception p0

    .line 16
    sget-object p1, Lcom/squareup/picasso/k;->n:Landroid/os/Handler;

    new-instance v0, Lcom/squareup/picasso/c$c;

    invoke-direct {v0, v2, p0}, Lcom/squareup/picasso/c$c;-><init>(Lcom/shabakaty/downloader/up4;Ljava/lang/RuntimeException;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_4
    return-object p1
.end method

.method public static c(Lcom/shabakaty/downloader/r94;Lcom/squareup/picasso/m;)Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/md0;->d(Lcom/shabakaty/downloader/r94;)Lcom/shabakaty/downloader/eo;

    move-result-object p0

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/az4;->b:Lcom/shabakaty/downloader/fp;

    check-cast p0, Lcom/shabakaty/downloader/on3;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/shabakaty/downloader/on3;->b(JLcom/shabakaty/downloader/fp;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-wide/16 v3, 0x8

    sget-object v0, Lcom/shabakaty/downloader/az4;->c:Lcom/shabakaty/downloader/fp;

    .line 3
    invoke-virtual {p0, v3, v4, v0}, Lcom/shabakaty/downloader/on3;->b(JLcom/shabakaty/downloader/fp;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-boolean v3, p1, Lcom/squareup/picasso/m;->p:Z

    .line 5
    invoke-static {p1}, Lcom/squareup/picasso/o;->d(Lcom/squareup/picasso/m;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 6
    iget-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-nez v0, :cond_5

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/on3$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/on3$a;-><init>(Lcom/shabakaty/downloader/on3;)V

    const/4 p0, 0x0

    if-eqz v4, :cond_3

    .line 8
    new-instance v4, Lcom/shabakaty/downloader/wm2;

    invoke-direct {v4, v0}, Lcom/shabakaty/downloader/wm2;-><init>(Ljava/io/InputStream;)V

    .line 9
    iput-boolean v1, v4, Lcom/shabakaty/downloader/wm2;->w:Z

    const/16 v0, 0x400

    .line 10
    iget-wide v5, v4, Lcom/shabakaty/downloader/wm2;->s:J

    int-to-long v0, v0

    add-long/2addr v5, v0

    .line 11
    iget-wide v0, v4, Lcom/shabakaty/downloader/wm2;->u:J

    cmp-long v7, v0, v5

    if-gez v7, :cond_2

    .line 12
    invoke-virtual {v4, v5, v6}, Lcom/shabakaty/downloader/wm2;->b(J)V

    .line 13
    :cond_2
    iget-wide v0, v4, Lcom/shabakaty/downloader/wm2;->s:J

    .line 14
    invoke-static {v4, p0, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 15
    iget v5, p1, Lcom/squareup/picasso/m;->f:I

    iget v6, p1, Lcom/squareup/picasso/m;->g:I

    invoke-static {v5, v6, v3, p1}, Lcom/squareup/picasso/o;->b(IILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/m;)V

    .line 16
    invoke-virtual {v4, v0, v1}, Lcom/shabakaty/downloader/wm2;->a(J)V

    .line 17
    iput-boolean v2, v4, Lcom/shabakaty/downloader/wm2;->w:Z

    move-object v0, v4

    .line 18
    :cond_3
    invoke-static {v0, p0, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_4

    return-object p0

    .line 19
    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Failed to decode stream."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    .line 21
    iget-object v2, p0, Lcom/shabakaty/downloader/on3;->t:Lcom/shabakaty/downloader/r94;

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/zn;->s0(Lcom/shabakaty/downloader/r94;)J

    .line 22
    iget-object p0, p0, Lcom/shabakaty/downloader/on3;->r:Lcom/shabakaty/downloader/zn;

    .line 23
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zn;->U()[B

    move-result-object p0

    if-eqz v4, :cond_6

    .line 24
    array-length v0, p0

    invoke-static {p0, v1, v0, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 25
    iget v0, p1, Lcom/squareup/picasso/m;->f:I

    iget v2, p1, Lcom/squareup/picasso/m;->g:I

    invoke-static {v0, v2, v3, p1}, Lcom/squareup/picasso/o;->b(IILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/m;)V

    .line 26
    :cond_6
    array-length p1, p0

    invoke-static {p0, v1, p1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static f(ZIIII)Z
    .locals 0

    if-eqz p0, :cond_2

    if-eqz p3, :cond_0

    if-gt p1, p3, :cond_2

    :cond_0
    if-eqz p4, :cond_1

    if-le p2, p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static g(Lcom/squareup/picasso/m;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 3
    iget-boolean v4, v0, Lcom/squareup/picasso/m;->k:Z

    .line 4
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/squareup/picasso/m;->c()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    move v6, v3

    goto/16 :goto_12

    .line 6
    :cond_1
    :goto_0
    iget v5, v0, Lcom/squareup/picasso/m;->f:I

    .line 7
    iget v7, v0, Lcom/squareup/picasso/m;->g:I

    .line 8
    iget v8, v0, Lcom/squareup/picasso/m;->l:F

    const/4 v9, 0x0

    cmpl-float v9, v8, v9

    if-eqz v9, :cond_3

    float-to-double v11, v8

    .line 9
    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    .line 10
    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    .line 11
    iget-boolean v5, v0, Lcom/squareup/picasso/m;->o:Z

    if-eqz v5, :cond_2

    .line 12
    iget v5, v0, Lcom/squareup/picasso/m;->m:F

    iget v7, v0, Lcom/squareup/picasso/m;->n:F

    invoke-virtual {v10, v8, v5, v7}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 13
    iget v5, v0, Lcom/squareup/picasso/m;->m:F

    float-to-double v7, v5

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v15, v13

    mul-double v17, v7, v15

    iget v5, v0, Lcom/squareup/picasso/m;->n:F

    move-wide/from16 v19, v7

    float-to-double v6, v5

    mul-double v21, v6, v11

    move-object/from16 v23, v10

    add-double v9, v21, v17

    mul-double v6, v6, v15

    mul-double v15, v19, v11

    sub-double/2addr v6, v15

    .line 14
    iget v5, v0, Lcom/squareup/picasso/m;->f:I

    move v15, v4

    int-to-double v4, v5

    mul-double v16, v4, v13

    move/from16 v18, v2

    move/from16 v19, v3

    add-double v2, v16, v9

    mul-double v4, v4, v11

    add-double/2addr v4, v6

    .line 15
    iget v8, v0, Lcom/squareup/picasso/m;->g:I

    int-to-double v0, v8

    mul-double v11, v11, v0

    move-wide/from16 v16, v6

    sub-double v6, v2, v11

    mul-double v0, v0, v13

    add-double v13, v0, v4

    sub-double v11, v9, v11

    add-double v0, v0, v16

    move-wide/from16 v20, v0

    .line 16
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 17
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v11, v12, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    move-wide/from16 v6, v16

    .line 18
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    move-wide/from16 v10, v20

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 19
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    sub-double/2addr v0, v2

    .line 20
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    sub-double/2addr v8, v4

    .line 21
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    move v5, v0

    goto :goto_1

    :cond_2
    move/from16 v18, v2

    move/from16 v19, v3

    move v15, v4

    move-object v0, v10

    .line 22
    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->setRotate(F)V

    move-object/from16 v1, p0

    .line 23
    iget v2, v1, Lcom/squareup/picasso/m;->f:I

    int-to-double v2, v2

    mul-double v4, v2, v13

    mul-double v2, v2, v11

    .line 24
    iget v6, v1, Lcom/squareup/picasso/m;->g:I

    int-to-double v6, v6

    mul-double v11, v11, v6

    sub-double v8, v4, v11

    mul-double v6, v6, v13

    add-double v13, v6, v2

    neg-double v10, v11

    move-object/from16 v23, v0

    const-wide/16 v0, 0x0

    move-wide/from16 v16, v6

    .line 25
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 26
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 27
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    move-wide/from16 v10, v16

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 28
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    sub-double/2addr v6, v4

    .line 29
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    sub-double/2addr v8, v0

    .line 30
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    move v5, v2

    move-wide v1, v0

    :goto_1
    double-to-int v7, v1

    goto :goto_2

    :cond_3
    move/from16 v18, v2

    move/from16 v19, v3

    move v15, v4

    move-object/from16 v23, v10

    :goto_2
    const/4 v0, 0x5

    const/4 v1, 0x2

    move/from16 v2, p2

    if-eqz v2, :cond_8

    const/16 v3, 0x5a

    const/16 v4, 0x10e

    packed-switch v2, :pswitch_data_0

    const/4 v6, 0x0

    goto :goto_3

    :pswitch_0
    const/16 v6, 0x10e

    goto :goto_3

    :pswitch_1
    const/16 v6, 0x5a

    goto :goto_3

    :pswitch_2
    const/16 v6, 0xb4

    :goto_3
    const/4 v8, 0x1

    if-eq v2, v1, :cond_4

    const/4 v9, 0x7

    if-eq v2, v9, :cond_4

    const/4 v9, 0x4

    if-eq v2, v9, :cond_4

    if-eq v2, v0, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, -0x1

    :goto_4
    if-eqz v6, :cond_6

    int-to-float v9, v6

    move-object/from16 v10, v23

    .line 31
    invoke-virtual {v10, v9}, Landroid/graphics/Matrix;->preRotate(F)Z

    if-eq v6, v3, :cond_5

    if-ne v6, v4, :cond_7

    :cond_5
    move/from16 v25, v7

    move v7, v5

    move/from16 v5, v25

    goto :goto_5

    :cond_6
    move-object/from16 v10, v23

    :cond_7
    :goto_5
    if-eq v2, v8, :cond_9

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 32
    invoke-virtual {v10, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_6

    :cond_8
    move-object/from16 v10, v23

    :cond_9
    :goto_6
    move-object/from16 v2, p0

    .line 33
    iget-boolean v3, v2, Lcom/squareup/picasso/m;->h:Z

    if-eqz v3, :cond_13

    if-eqz v5, :cond_a

    int-to-float v3, v5

    move/from16 v4, v18

    int-to-float v6, v4

    div-float/2addr v3, v6

    move/from16 v6, v19

    goto :goto_7

    :cond_a
    move/from16 v4, v18

    int-to-float v3, v7

    move/from16 v6, v19

    int-to-float v8, v6

    div-float/2addr v3, v8

    :goto_7
    if-eqz v7, :cond_b

    int-to-float v8, v7

    int-to-float v9, v6

    goto :goto_8

    :cond_b
    int-to-float v8, v5

    int-to-float v9, v4

    :goto_8
    div-float/2addr v8, v9

    cmpl-float v9, v3, v8

    if-lez v9, :cond_e

    int-to-float v0, v6

    div-float/2addr v8, v3

    mul-float v8, v8, v0

    float-to-double v8, v8

    .line 34
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v0, v8

    .line 35
    iget v2, v2, Lcom/squareup/picasso/m;->i:I

    and-int/lit8 v8, v2, 0x30

    const/16 v9, 0x30

    if-ne v8, v9, :cond_c

    const/4 v1, 0x0

    goto :goto_9

    :cond_c
    const/16 v8, 0x50

    and-int/2addr v2, v8

    if-ne v2, v8, :cond_d

    sub-int v1, v6, v0

    goto :goto_9

    :cond_d
    sub-int v2, v6, v0

    .line 36
    div-int/lit8 v1, v2, 0x2

    :goto_9
    int-to-float v2, v7

    int-to-float v8, v0

    div-float v8, v2, v8

    goto :goto_b

    :cond_e
    cmpg-float v9, v3, v8

    if-gez v9, :cond_11

    int-to-float v9, v4

    div-float/2addr v3, v8

    mul-float v3, v3, v9

    float-to-double v11, v3

    .line 37
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v3, v11

    .line 38
    iget v2, v2, Lcom/squareup/picasso/m;->i:I

    and-int/lit8 v9, v2, 0x3

    const/4 v11, 0x3

    if-ne v9, v11, :cond_f

    const/4 v2, 0x0

    goto :goto_a

    :cond_f
    and-int/2addr v2, v0

    if-ne v2, v0, :cond_10

    sub-int v2, v4, v3

    goto :goto_a

    :cond_10
    sub-int v2, v4, v3

    .line 39
    div-int/2addr v2, v1

    :goto_a
    int-to-float v0, v5

    int-to-float v1, v3

    div-float/2addr v0, v1

    move v1, v6

    move v9, v15

    const/16 v24, 0x0

    goto :goto_c

    :cond_11
    move v0, v6

    move v3, v8

    const/4 v1, 0x0

    :goto_b
    move/from16 v24, v1

    move v9, v15

    const/4 v2, 0x0

    move v1, v0

    move v0, v3

    move v3, v4

    .line 40
    :goto_c
    invoke-static {v9, v4, v6, v5, v7}, Lcom/squareup/picasso/c;->f(ZIIII)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 41
    invoke-virtual {v10, v0, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_12
    move v9, v1

    move v6, v2

    move v8, v3

    move/from16 v7, v24

    goto :goto_13

    :cond_13
    move v9, v15

    move/from16 v4, v18

    move/from16 v6, v19

    .line 42
    iget-boolean v0, v2, Lcom/squareup/picasso/m;->j:Z

    if-eqz v0, :cond_17

    if-eqz v5, :cond_14

    int-to-float v0, v5

    int-to-float v1, v4

    goto :goto_d

    :cond_14
    int-to-float v0, v7

    int-to-float v1, v6

    :goto_d
    div-float/2addr v0, v1

    if-eqz v7, :cond_15

    int-to-float v1, v7

    int-to-float v2, v6

    goto :goto_e

    :cond_15
    int-to-float v1, v5

    int-to-float v2, v4

    :goto_e
    div-float/2addr v1, v2

    cmpg-float v2, v0, v1

    if-gez v2, :cond_16

    goto :goto_f

    :cond_16
    move v0, v1

    .line 43
    :goto_f
    invoke-static {v9, v4, v6, v5, v7}, Lcom/squareup/picasso/c;->f(ZIIII)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 44
    invoke-virtual {v10, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_12

    :cond_17
    if-nez v5, :cond_18

    if-eqz v7, :cond_1c

    :cond_18
    if-ne v5, v4, :cond_19

    if-eq v7, v6, :cond_1c

    :cond_19
    if-eqz v5, :cond_1a

    int-to-float v0, v5

    int-to-float v1, v4

    goto :goto_10

    :cond_1a
    int-to-float v0, v7

    int-to-float v1, v6

    :goto_10
    div-float/2addr v0, v1

    if-eqz v7, :cond_1b

    int-to-float v1, v7

    int-to-float v2, v6

    goto :goto_11

    :cond_1b
    int-to-float v1, v5

    int-to-float v2, v4

    :goto_11
    div-float/2addr v1, v2

    .line 45
    invoke-static {v9, v4, v6, v5, v7}, Lcom/squareup/picasso/c;->f(ZIIII)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 46
    invoke-virtual {v10, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_1c
    :goto_12
    move v8, v4

    move v9, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_13
    const/4 v11, 0x1

    move-object/from16 v5, p1

    .line 47
    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_1d

    .line 48
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_14

    :cond_1d
    move-object v0, v1

    :goto_14
    return-object v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static h(Lcom/squareup/picasso/m;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/m;->c:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    iget p0, p0, Lcom/squareup/picasso/m;->d:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 4
    :goto_0
    sget-object v0, Lcom/squareup/picasso/c;->L:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1, p0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/c;->B:Lcom/squareup/picasso/a;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/squareup/picasso/c;->C:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/c;->E:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public d(Lcom/squareup/picasso/a;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/c;->B:Lcom/squareup/picasso/a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/squareup/picasso/c;->B:Lcom/squareup/picasso/a;

    const/4 v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/c;->C:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_9

    .line 5
    iget-object v0, p1, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/m;

    iget v0, v0, Lcom/squareup/picasso/m;->r:I

    .line 6
    iget v3, p0, Lcom/squareup/picasso/c;->J:I

    if-ne v0, v3, :cond_9

    .line 7
    iget-object v0, p0, Lcom/squareup/picasso/c;->C:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 8
    :goto_1
    iget-object v3, p0, Lcom/squareup/picasso/c;->B:Lcom/squareup/picasso/a;

    if-nez v3, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x1

    :goto_3
    if-nez v4, :cond_5

    goto :goto_5

    :cond_5
    if-eqz v3, :cond_6

    .line 9
    iget-object v2, v3, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/m;

    iget v2, v2, Lcom/squareup/picasso/m;->r:I

    :cond_6
    if-eqz v0, :cond_8

    .line 10
    iget-object v0, p0, Lcom/squareup/picasso/c;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_4
    if-ge v1, v0, :cond_8

    .line 11
    iget-object v3, p0, Lcom/squareup/picasso/c;->C:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/picasso/a;

    .line 12
    iget-object v3, v3, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/m;

    iget v3, v3, Lcom/squareup/picasso/m;->r:I

    .line 13
    invoke-static {v3}, Lcom/shabakaty/downloader/su;->k(I)I

    move-result v4

    invoke-static {v2}, Lcom/shabakaty/downloader/su;->k(I)I

    move-result v5

    if-le v4, v5, :cond_7

    move v2, v3

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 14
    :cond_8
    :goto_5
    iput v2, p0, Lcom/squareup/picasso/c;->J:I

    .line 15
    :cond_9
    iget-object v0, p0, Lcom/squareup/picasso/c;->s:Lcom/squareup/picasso/k;

    iget-boolean v0, v0, Lcom/squareup/picasso/k;->m:Z

    if-eqz v0, :cond_a

    .line 16
    iget-object p1, p1, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/m;

    invoke-virtual {p1}, Lcom/squareup/picasso/m;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "from "

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/az4;->e(Lcom/squareup/picasso/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hunter"

    const-string v2, "removed"

    invoke-static {v1, v2, p1, v0}, Lcom/shabakaty/downloader/az4;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public e()Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    iget v0, p0, Lcom/squareup/picasso/c;->y:I

    invoke-static {v0}, Lcom/shabakaty/downloader/su;->n(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/squareup/picasso/c;->u:Lcom/shabakaty/downloader/pp;

    iget-object v3, p0, Lcom/squareup/picasso/c;->w:Ljava/lang/String;

    check-cast v0, Lcom/shabakaty/downloader/pl2;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/pl2;->a:Landroid/util/LruCache;

    invoke-virtual {v0, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/pl2$a;

    if-eqz v0, :cond_0

    .line 4
    iget-object v2, v0, Lcom/shabakaty/downloader/pl2$a;->a:Landroid/graphics/Bitmap;

    :cond_0
    if-eqz v2, :cond_2

    .line 5
    iget-object v0, p0, Lcom/squareup/picasso/c;->v:Lcom/shabakaty/downloader/tc4;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/tc4;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7
    sget-object v0, Lcom/squareup/picasso/k$d;->s:Lcom/squareup/picasso/k$d;

    iput-object v0, p0, Lcom/squareup/picasso/c;->F:Lcom/squareup/picasso/k$d;

    .line 8
    iget-object v0, p0, Lcom/squareup/picasso/c;->s:Lcom/squareup/picasso/k;

    iget-boolean v0, v0, Lcom/squareup/picasso/k;->m:Z

    if-eqz v0, :cond_1

    const-string v0, "Hunter"

    const-string v1, "decoded"

    .line 9
    iget-object v3, p0, Lcom/squareup/picasso/c;->x:Lcom/squareup/picasso/m;

    invoke-virtual {v3}, Lcom/squareup/picasso/m;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "from cache"

    invoke-static {v0, v1, v3, v4}, Lcom/shabakaty/downloader/az4;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v2

    .line 10
    :cond_2
    iget v0, p0, Lcom/squareup/picasso/c;->I:I

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/squareup/picasso/c;->z:I

    :goto_0
    iput v0, p0, Lcom/squareup/picasso/c;->z:I

    .line 11
    iget-object v3, p0, Lcom/squareup/picasso/c;->A:Lcom/squareup/picasso/o;

    iget-object v4, p0, Lcom/squareup/picasso/c;->x:Lcom/squareup/picasso/m;

    invoke-virtual {v3, v4, v0}, Lcom/squareup/picasso/o;->f(Lcom/squareup/picasso/m;I)Lcom/squareup/picasso/o$a;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 12
    iget-object v2, v0, Lcom/squareup/picasso/o$a;->a:Lcom/squareup/picasso/k$d;

    .line 13
    iput-object v2, p0, Lcom/squareup/picasso/c;->F:Lcom/squareup/picasso/k$d;

    .line 14
    iget v2, v0, Lcom/squareup/picasso/o$a;->d:I

    .line 15
    iput v2, p0, Lcom/squareup/picasso/c;->H:I

    .line 16
    iget-object v2, v0, Lcom/squareup/picasso/o$a;->b:Landroid/graphics/Bitmap;

    if-nez v2, :cond_4

    .line 17
    iget-object v0, v0, Lcom/squareup/picasso/o$a;->c:Lcom/shabakaty/downloader/r94;

    .line 18
    :try_start_0
    iget-object v2, p0, Lcom/squareup/picasso/c;->x:Lcom/squareup/picasso/m;

    invoke-static {v0, v2}, Lcom/squareup/picasso/c;->c(Lcom/shabakaty/downloader/r94;Lcom/squareup/picasso/m;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :try_start_1
    invoke-interface {v0}, Lcom/shabakaty/downloader/r94;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-interface {v0}, Lcom/shabakaty/downloader/r94;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 20
    :catch_1
    throw v1

    :cond_4
    :goto_1
    if-eqz v2, :cond_e

    .line 21
    iget-object v0, p0, Lcom/squareup/picasso/c;->s:Lcom/squareup/picasso/k;

    iget-boolean v0, v0, Lcom/squareup/picasso/k;->m:Z

    if-eqz v0, :cond_5

    const-string v0, "Hunter"

    const-string v3, "decoded"

    .line 22
    iget-object v4, p0, Lcom/squareup/picasso/c;->x:Lcom/squareup/picasso/m;

    invoke-virtual {v4}, Lcom/squareup/picasso/m;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    .line 23
    invoke-static {v0, v3, v4, v5}, Lcom/shabakaty/downloader/az4;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_5
    iget-object v0, p0, Lcom/squareup/picasso/c;->v:Lcom/shabakaty/downloader/tc4;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-static {v2}, Lcom/shabakaty/downloader/az4;->c(Landroid/graphics/Bitmap;)I

    move-result v3

    .line 26
    iget-object v0, v0, Lcom/shabakaty/downloader/tc4;->b:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 27
    iget-object v0, p0, Lcom/squareup/picasso/c;->x:Lcom/squareup/picasso/m;

    .line 28
    invoke-virtual {v0}, Lcom/squareup/picasso/m;->c()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_8

    .line 29
    iget-object v0, v0, Lcom/squareup/picasso/m;->e:Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v0, 0x1

    :goto_4
    if-nez v0, :cond_9

    .line 30
    iget v0, p0, Lcom/squareup/picasso/c;->H:I

    if-eqz v0, :cond_e

    .line 31
    :cond_9
    sget-object v0, Lcom/squareup/picasso/c;->K:Ljava/lang/Object;

    monitor-enter v0

    .line 32
    :try_start_3
    iget-object v3, p0, Lcom/squareup/picasso/c;->x:Lcom/squareup/picasso/m;

    invoke-virtual {v3}, Lcom/squareup/picasso/m;->c()Z

    move-result v3

    if-nez v3, :cond_a

    iget v3, p0, Lcom/squareup/picasso/c;->H:I

    if-eqz v3, :cond_b

    .line 33
    :cond_a
    iget-object v3, p0, Lcom/squareup/picasso/c;->x:Lcom/squareup/picasso/m;

    iget v5, p0, Lcom/squareup/picasso/c;->H:I

    invoke-static {v3, v2, v5}, Lcom/squareup/picasso/c;->g(Lcom/squareup/picasso/m;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 34
    iget-object v3, p0, Lcom/squareup/picasso/c;->s:Lcom/squareup/picasso/k;

    iget-boolean v3, v3, Lcom/squareup/picasso/k;->m:Z

    if-eqz v3, :cond_b

    const-string v3, "Hunter"

    const-string v5, "transformed"

    .line 35
    iget-object v6, p0, Lcom/squareup/picasso/c;->x:Lcom/squareup/picasso/m;

    invoke-virtual {v6}, Lcom/squareup/picasso/m;->b()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    .line 36
    invoke-static {v3, v5, v6, v7}, Lcom/shabakaty/downloader/az4;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_b
    iget-object v3, p0, Lcom/squareup/picasso/c;->x:Lcom/squareup/picasso/m;

    .line 38
    iget-object v3, v3, Lcom/squareup/picasso/m;->e:Ljava/util/List;

    if-eqz v3, :cond_c

    goto :goto_5

    :cond_c
    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_d

    .line 39
    invoke-static {v3, v2}, Lcom/squareup/picasso/c;->a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 40
    iget-object v3, p0, Lcom/squareup/picasso/c;->s:Lcom/squareup/picasso/k;

    iget-boolean v3, v3, Lcom/squareup/picasso/k;->m:Z

    if-eqz v3, :cond_d

    const-string v3, "Hunter"

    const-string v4, "transformed"

    .line 41
    iget-object v5, p0, Lcom/squareup/picasso/c;->x:Lcom/squareup/picasso/m;

    invoke-virtual {v5}, Lcom/squareup/picasso/m;->b()Ljava/lang/String;

    move-result-object v5

    const-string v6, "from custom transformations"

    invoke-static {v3, v4, v5, v6}, Lcom/shabakaty/downloader/az4;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_d
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_e

    .line 43
    iget-object v0, p0, Lcom/squareup/picasso/c;->v:Lcom/shabakaty/downloader/tc4;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {v2}, Lcom/shabakaty/downloader/az4;->c(Landroid/graphics/Bitmap;)I

    move-result v3

    .line 45
    iget-object v0, v0, Lcom/shabakaty/downloader/tc4;->b:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    :catchall_1
    move-exception v1

    .line 46
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :cond_e
    :goto_6
    return-object v2
.end method

.method public run()V
    .locals 6

    const-string v0, "Picasso-Idle"

    const/4 v1, 0x6

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/squareup/picasso/c;->x:Lcom/squareup/picasso/m;

    invoke-static {v2}, Lcom/squareup/picasso/c;->h(Lcom/squareup/picasso/m;)V

    .line 2
    iget-object v2, p0, Lcom/squareup/picasso/c;->s:Lcom/squareup/picasso/k;

    iget-boolean v2, v2, Lcom/squareup/picasso/k;->m:Z

    if-eqz v2, :cond_0

    const-string v2, "Hunter"

    const-string v3, "executing"

    .line 3
    invoke-static {p0}, Lcom/shabakaty/downloader/az4;->d(Lcom/squareup/picasso/c;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    .line 4
    invoke-static {v2, v3, v4, v5}, Lcom/shabakaty/downloader/az4;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/picasso/c;->e()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/picasso/c;->D:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 6
    iget-object v2, p0, Lcom/squareup/picasso/c;->t:Lcom/squareup/picasso/f;

    invoke-virtual {v2, p0}, Lcom/squareup/picasso/f;->c(Lcom/squareup/picasso/c;)V

    goto/16 :goto_1

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/squareup/picasso/c;->t:Lcom/squareup/picasso/f;

    invoke-virtual {v2, p0}, Lcom/squareup/picasso/f;->b(Lcom/squareup/picasso/c;)V
    :try_end_0
    .catch Lcom/squareup/picasso/j$b; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto/16 :goto_2

    :catch_0
    move-exception v2

    .line 8
    :try_start_1
    iput-object v2, p0, Lcom/squareup/picasso/c;->G:Ljava/lang/Exception;

    .line 9
    iget-object v2, p0, Lcom/squareup/picasso/c;->t:Lcom/squareup/picasso/f;

    .line 10
    iget-object v2, v2, Lcom/squareup/picasso/f;->h:Landroid/os/Handler;

    invoke-virtual {v2, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :catch_1
    move-exception v2

    .line 11
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 12
    iget-object v4, p0, Lcom/squareup/picasso/c;->v:Lcom/shabakaty/downloader/tc4;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/tc4;->a()Lcom/shabakaty/downloader/vc4;

    move-result-object v4

    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/vc4;->a(Ljava/io/PrintWriter;)V

    .line 13
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v4, p0, Lcom/squareup/picasso/c;->G:Ljava/lang/Exception;

    .line 14
    iget-object v2, p0, Lcom/squareup/picasso/c;->t:Lcom/squareup/picasso/f;

    .line 15
    iget-object v2, v2, Lcom/squareup/picasso/f;->h:Landroid/os/Handler;

    invoke-virtual {v2, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :catch_2
    move-exception v1

    .line 16
    iput-object v1, p0, Lcom/squareup/picasso/c;->G:Ljava/lang/Exception;

    .line 17
    iget-object v1, p0, Lcom/squareup/picasso/c;->t:Lcom/squareup/picasso/f;

    .line 18
    iget-object v1, v1, Lcom/squareup/picasso/f;->h:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :catch_3
    move-exception v2

    .line 19
    iget v3, v2, Lcom/squareup/picasso/j$b;->s:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    iget v3, v2, Lcom/squareup/picasso/j$b;->r:I

    const/16 v4, 0x1f8

    if-eq v3, v4, :cond_4

    .line 20
    :cond_3
    iput-object v2, p0, Lcom/squareup/picasso/c;->G:Ljava/lang/Exception;

    .line 21
    :cond_4
    iget-object v2, p0, Lcom/squareup/picasso/c;->t:Lcom/squareup/picasso/f;

    .line 22
    iget-object v2, v2, Lcom/squareup/picasso/f;->h:Landroid/os/Handler;

    invoke-virtual {v2, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void

    :goto_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 24
    throw v1
.end method
