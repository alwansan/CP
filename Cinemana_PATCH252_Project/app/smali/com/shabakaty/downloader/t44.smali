.class public Lcom/shabakaty/downloader/t44;
.super Ljava/lang/Object;
.source "ShapeAppearanceModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/t44$b;
    }
.end annotation


# static fields
.field public static final m:Lcom/shabakaty/downloader/le0;


# instance fields
.field public a:Lcom/shabakaty/downloader/lk2;

.field public b:Lcom/shabakaty/downloader/lk2;

.field public c:Lcom/shabakaty/downloader/lk2;

.field public d:Lcom/shabakaty/downloader/lk2;

.field public e:Lcom/shabakaty/downloader/le0;

.field public f:Lcom/shabakaty/downloader/le0;

.field public g:Lcom/shabakaty/downloader/le0;

.field public h:Lcom/shabakaty/downloader/le0;

.field public i:Lcom/shabakaty/downloader/c21;

.field public j:Lcom/shabakaty/downloader/c21;

.field public k:Lcom/shabakaty/downloader/c21;

.field public l:Lcom/shabakaty/downloader/c21;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/rq3;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/rq3;-><init>(F)V

    sput-object v0, Lcom/shabakaty/downloader/t44;->m:Lcom/shabakaty/downloader/le0;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/shabakaty/downloader/iu3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/iu3;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/shabakaty/downloader/t44;->a:Lcom/shabakaty/downloader/lk2;

    .line 29
    new-instance v0, Lcom/shabakaty/downloader/iu3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/iu3;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/shabakaty/downloader/t44;->b:Lcom/shabakaty/downloader/lk2;

    .line 31
    new-instance v0, Lcom/shabakaty/downloader/iu3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/iu3;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/shabakaty/downloader/t44;->c:Lcom/shabakaty/downloader/lk2;

    .line 33
    new-instance v0, Lcom/shabakaty/downloader/iu3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/iu3;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/shabakaty/downloader/t44;->d:Lcom/shabakaty/downloader/lk2;

    .line 35
    new-instance v0, Lcom/shabakaty/downloader/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/h;-><init>(F)V

    iput-object v0, p0, Lcom/shabakaty/downloader/t44;->e:Lcom/shabakaty/downloader/le0;

    .line 36
    new-instance v0, Lcom/shabakaty/downloader/h;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/h;-><init>(F)V

    iput-object v0, p0, Lcom/shabakaty/downloader/t44;->f:Lcom/shabakaty/downloader/le0;

    .line 37
    new-instance v0, Lcom/shabakaty/downloader/h;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/h;-><init>(F)V

    iput-object v0, p0, Lcom/shabakaty/downloader/t44;->g:Lcom/shabakaty/downloader/le0;

    .line 38
    new-instance v0, Lcom/shabakaty/downloader/h;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/h;-><init>(F)V

    iput-object v0, p0, Lcom/shabakaty/downloader/t44;->h:Lcom/shabakaty/downloader/le0;

    .line 39
    invoke-static {}, Lcom/shabakaty/downloader/nl6;->d()Lcom/shabakaty/downloader/c21;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/t44;->i:Lcom/shabakaty/downloader/c21;

    .line 40
    invoke-static {}, Lcom/shabakaty/downloader/nl6;->d()Lcom/shabakaty/downloader/c21;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/t44;->j:Lcom/shabakaty/downloader/c21;

    .line 41
    invoke-static {}, Lcom/shabakaty/downloader/nl6;->d()Lcom/shabakaty/downloader/c21;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/t44;->k:Lcom/shabakaty/downloader/c21;

    .line 42
    invoke-static {}, Lcom/shabakaty/downloader/nl6;->d()Lcom/shabakaty/downloader/c21;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/t44;->l:Lcom/shabakaty/downloader/c21;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/t44$b;Lcom/shabakaty/downloader/t44$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p2, p1, Lcom/shabakaty/downloader/t44$b;->a:Lcom/shabakaty/downloader/lk2;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/t44;->a:Lcom/shabakaty/downloader/lk2;

    .line 4
    iget-object p2, p1, Lcom/shabakaty/downloader/t44$b;->b:Lcom/shabakaty/downloader/lk2;

    .line 5
    iput-object p2, p0, Lcom/shabakaty/downloader/t44;->b:Lcom/shabakaty/downloader/lk2;

    .line 6
    iget-object p2, p1, Lcom/shabakaty/downloader/t44$b;->c:Lcom/shabakaty/downloader/lk2;

    .line 7
    iput-object p2, p0, Lcom/shabakaty/downloader/t44;->c:Lcom/shabakaty/downloader/lk2;

    .line 8
    iget-object p2, p1, Lcom/shabakaty/downloader/t44$b;->d:Lcom/shabakaty/downloader/lk2;

    .line 9
    iput-object p2, p0, Lcom/shabakaty/downloader/t44;->d:Lcom/shabakaty/downloader/lk2;

    .line 10
    iget-object p2, p1, Lcom/shabakaty/downloader/t44$b;->e:Lcom/shabakaty/downloader/le0;

    .line 11
    iput-object p2, p0, Lcom/shabakaty/downloader/t44;->e:Lcom/shabakaty/downloader/le0;

    .line 12
    iget-object p2, p1, Lcom/shabakaty/downloader/t44$b;->f:Lcom/shabakaty/downloader/le0;

    .line 13
    iput-object p2, p0, Lcom/shabakaty/downloader/t44;->f:Lcom/shabakaty/downloader/le0;

    .line 14
    iget-object p2, p1, Lcom/shabakaty/downloader/t44$b;->g:Lcom/shabakaty/downloader/le0;

    .line 15
    iput-object p2, p0, Lcom/shabakaty/downloader/t44;->g:Lcom/shabakaty/downloader/le0;

    .line 16
    iget-object p2, p1, Lcom/shabakaty/downloader/t44$b;->h:Lcom/shabakaty/downloader/le0;

    .line 17
    iput-object p2, p0, Lcom/shabakaty/downloader/t44;->h:Lcom/shabakaty/downloader/le0;

    .line 18
    iget-object p2, p1, Lcom/shabakaty/downloader/t44$b;->i:Lcom/shabakaty/downloader/c21;

    .line 19
    iput-object p2, p0, Lcom/shabakaty/downloader/t44;->i:Lcom/shabakaty/downloader/c21;

    .line 20
    iget-object p2, p1, Lcom/shabakaty/downloader/t44$b;->j:Lcom/shabakaty/downloader/c21;

    .line 21
    iput-object p2, p0, Lcom/shabakaty/downloader/t44;->j:Lcom/shabakaty/downloader/c21;

    .line 22
    iget-object p2, p1, Lcom/shabakaty/downloader/t44$b;->k:Lcom/shabakaty/downloader/c21;

    .line 23
    iput-object p2, p0, Lcom/shabakaty/downloader/t44;->k:Lcom/shabakaty/downloader/c21;

    .line 24
    iget-object p1, p1, Lcom/shabakaty/downloader/t44$b;->l:Lcom/shabakaty/downloader/c21;

    .line 25
    iput-object p1, p0, Lcom/shabakaty/downloader/t44;->l:Lcom/shabakaty/downloader/c21;

    return-void
.end method

.method public static a(Landroid/content/Context;IILcom/shabakaty/downloader/le0;)Lcom/shabakaty/downloader/t44$b;
    .locals 6

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move p1, p2

    move-object p0, v0

    .line 2
    :cond_0
    sget-object p2, Lcom/shabakaty/downloader/yl3;->H:[I

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    const/4 p2, 0x3

    .line 5
    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/4 v0, 0x4

    .line 6
    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/4 v1, 0x2

    .line 7
    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v2, 0x1

    .line 8
    invoke-virtual {p0, v2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    const/4 v2, 0x5

    .line 9
    invoke-static {p0, v2, p3}, Lcom/shabakaty/downloader/t44;->c(Landroid/content/res/TypedArray;ILcom/shabakaty/downloader/le0;)Lcom/shabakaty/downloader/le0;

    move-result-object p3

    const/16 v2, 0x8

    .line 10
    invoke-static {p0, v2, p3}, Lcom/shabakaty/downloader/t44;->c(Landroid/content/res/TypedArray;ILcom/shabakaty/downloader/le0;)Lcom/shabakaty/downloader/le0;

    move-result-object v2

    const/16 v3, 0x9

    .line 11
    invoke-static {p0, v3, p3}, Lcom/shabakaty/downloader/t44;->c(Landroid/content/res/TypedArray;ILcom/shabakaty/downloader/le0;)Lcom/shabakaty/downloader/le0;

    move-result-object v3

    const/4 v4, 0x7

    .line 12
    invoke-static {p0, v4, p3}, Lcom/shabakaty/downloader/t44;->c(Landroid/content/res/TypedArray;ILcom/shabakaty/downloader/le0;)Lcom/shabakaty/downloader/le0;

    move-result-object v4

    const/4 v5, 0x6

    .line 13
    invoke-static {p0, v5, p3}, Lcom/shabakaty/downloader/t44;->c(Landroid/content/res/TypedArray;ILcom/shabakaty/downloader/le0;)Lcom/shabakaty/downloader/le0;

    move-result-object p3

    .line 14
    new-instance v5, Lcom/shabakaty/downloader/t44$b;

    invoke-direct {v5}, Lcom/shabakaty/downloader/t44$b;-><init>()V

    .line 15
    invoke-static {p2}, Lcom/shabakaty/downloader/nl6;->c(I)Lcom/shabakaty/downloader/lk2;

    move-result-object p2

    .line 16
    iput-object p2, v5, Lcom/shabakaty/downloader/t44$b;->a:Lcom/shabakaty/downloader/lk2;

    .line 17
    invoke-static {p2}, Lcom/shabakaty/downloader/t44$b;->b(Lcom/shabakaty/downloader/lk2;)F

    .line 18
    iput-object v2, v5, Lcom/shabakaty/downloader/t44$b;->e:Lcom/shabakaty/downloader/le0;

    .line 19
    invoke-static {v0}, Lcom/shabakaty/downloader/nl6;->c(I)Lcom/shabakaty/downloader/lk2;

    move-result-object p2

    .line 20
    iput-object p2, v5, Lcom/shabakaty/downloader/t44$b;->b:Lcom/shabakaty/downloader/lk2;

    .line 21
    invoke-static {p2}, Lcom/shabakaty/downloader/t44$b;->b(Lcom/shabakaty/downloader/lk2;)F

    .line 22
    iput-object v3, v5, Lcom/shabakaty/downloader/t44$b;->f:Lcom/shabakaty/downloader/le0;

    .line 23
    invoke-static {v1}, Lcom/shabakaty/downloader/nl6;->c(I)Lcom/shabakaty/downloader/lk2;

    move-result-object p2

    .line 24
    iput-object p2, v5, Lcom/shabakaty/downloader/t44$b;->c:Lcom/shabakaty/downloader/lk2;

    .line 25
    invoke-static {p2}, Lcom/shabakaty/downloader/t44$b;->b(Lcom/shabakaty/downloader/lk2;)F

    .line 26
    iput-object v4, v5, Lcom/shabakaty/downloader/t44$b;->g:Lcom/shabakaty/downloader/le0;

    .line 27
    invoke-static {p1}, Lcom/shabakaty/downloader/nl6;->c(I)Lcom/shabakaty/downloader/lk2;

    move-result-object p1

    .line 28
    iput-object p1, v5, Lcom/shabakaty/downloader/t44$b;->d:Lcom/shabakaty/downloader/lk2;

    .line 29
    invoke-static {p1}, Lcom/shabakaty/downloader/t44$b;->b(Lcom/shabakaty/downloader/lk2;)F

    .line 30
    iput-object p3, v5, Lcom/shabakaty/downloader/t44$b;->h:Lcom/shabakaty/downloader/le0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v5

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    throw p1
.end method

.method public static b(Landroid/content/Context;Landroid/util/AttributeSet;IILcom/shabakaty/downloader/le0;)Lcom/shabakaty/downloader/t44$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/yl3;->A:[I

    .line 2
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    invoke-static {p0, p3, p2, p4}, Lcom/shabakaty/downloader/t44;->a(Landroid/content/Context;IILcom/shabakaty/downloader/le0;)Lcom/shabakaty/downloader/t44$b;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/res/TypedArray;ILcom/shabakaty/downloader/le0;)Lcom/shabakaty/downloader/le0;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 2
    :cond_0
    iget v0, p1, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 3
    new-instance p2, Lcom/shabakaty/downloader/h;

    iget p1, p1, Landroid/util/TypedValue;->data:I

    .line 4
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    int-to-float p0, p0

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/h;-><init>(F)V

    return-object p2

    :cond_1
    const/4 p0, 0x6

    if-ne v0, p0, :cond_2

    .line 5
    new-instance p0, Lcom/shabakaty/downloader/rq3;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/rq3;-><init>(F)V

    return-object p0

    :cond_2
    return-object p2
.end method


# virtual methods
.method public d(Landroid/graphics/RectF;)Z
    .locals 5

    .line 1
    const-class v0, Lcom/shabakaty/downloader/c21;

    iget-object v1, p0, Lcom/shabakaty/downloader/t44;->l:Lcom/shabakaty/downloader/c21;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/shabakaty/downloader/t44;->j:Lcom/shabakaty/downloader/c21;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/shabakaty/downloader/t44;->i:Lcom/shabakaty/downloader/c21;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/shabakaty/downloader/t44;->k:Lcom/shabakaty/downloader/c21;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/t44;->e:Lcom/shabakaty/downloader/le0;

    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/le0;->a(Landroid/graphics/RectF;)F

    move-result v1

    .line 7
    iget-object v4, p0, Lcom/shabakaty/downloader/t44;->f:Lcom/shabakaty/downloader/le0;

    .line 8
    invoke-interface {v4, p1}, Lcom/shabakaty/downloader/le0;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/shabakaty/downloader/t44;->h:Lcom/shabakaty/downloader/le0;

    .line 9
    invoke-interface {v4, p1}, Lcom/shabakaty/downloader/le0;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/shabakaty/downloader/t44;->g:Lcom/shabakaty/downloader/le0;

    .line 10
    invoke-interface {v4, p1}, Lcom/shabakaty/downloader/le0;->a(Landroid/graphics/RectF;)F

    move-result p1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 11
    :goto_1
    iget-object v1, p0, Lcom/shabakaty/downloader/t44;->b:Lcom/shabakaty/downloader/lk2;

    instance-of v1, v1, Lcom/shabakaty/downloader/iu3;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/t44;->a:Lcom/shabakaty/downloader/lk2;

    instance-of v1, v1, Lcom/shabakaty/downloader/iu3;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/t44;->c:Lcom/shabakaty/downloader/lk2;

    instance-of v1, v1, Lcom/shabakaty/downloader/iu3;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/t44;->d:Lcom/shabakaty/downloader/lk2;

    instance-of v1, v1, Lcom/shabakaty/downloader/iu3;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    return v2
.end method

.method public e(F)Lcom/shabakaty/downloader/t44;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/t44$b;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/t44$b;-><init>(Lcom/shabakaty/downloader/t44;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/t44$b;->c(F)Lcom/shabakaty/downloader/t44$b;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/t44$b;->a()Lcom/shabakaty/downloader/t44;

    move-result-object p1

    return-object p1
.end method
