.class public final Lcom/shabakaty/downloader/lq;
.super Ljava/lang/Object;
.source "CalendarStyle.java"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-class v0, Lcom/google/android/material/datepicker/c;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0402f0

    .line 13
    invoke-static {p1, v1, v0}, Lcom/shabakaty/downloader/cn2;->c(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    .line 14
    sget-object v1, Lcom/shabakaty/downloader/yl3;->v:[I

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 17
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/kq;->a(Landroid/content/Context;I)Lcom/shabakaty/downloader/kq;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/lq;->a:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 19
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/kq;->a(Landroid/content/Context;I)Lcom/shabakaty/downloader/kq;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/lq;->g:Ljava/lang/Object;

    const/4 v1, 0x2

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 21
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/kq;->a(Landroid/content/Context;I)Lcom/shabakaty/downloader/kq;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/lq;->b:Ljava/lang/Object;

    const/4 v1, 0x4

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 23
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/kq;->a(Landroid/content/Context;I)Lcom/shabakaty/downloader/kq;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/lq;->c:Ljava/lang/Object;

    const/4 v1, 0x6

    .line 24
    invoke-static {p1, v0, v1}, Lcom/shabakaty/downloader/rn2;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/16 v3, 0x8

    .line 25
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 26
    invoke-static {p1, v3}, Lcom/shabakaty/downloader/kq;->a(Landroid/content/Context;I)Lcom/shabakaty/downloader/kq;

    move-result-object v3

    iput-object v3, p0, Lcom/shabakaty/downloader/lq;->d:Ljava/lang/Object;

    const/4 v3, 0x7

    .line 27
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 28
    invoke-static {p1, v3}, Lcom/shabakaty/downloader/kq;->a(Landroid/content/Context;I)Lcom/shabakaty/downloader/kq;

    move-result-object v3

    iput-object v3, p0, Lcom/shabakaty/downloader/lq;->e:Ljava/lang/Object;

    const/16 v3, 0x9

    .line 29
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 30
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/kq;->a(Landroid/content/Context;I)Lcom/shabakaty/downloader/kq;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/lq;->f:Ljava/lang/Object;

    .line 31
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/lq;->h:Ljava/lang/Object;

    .line 32
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ScrollView;Lcom/skydoves/colorpickerview/sliders/AlphaSlideBar;Landroid/widget/FrameLayout;Lcom/skydoves/colorpickerview/sliders/BrightnessSlideBar;Landroid/widget/FrameLayout;Lcom/skydoves/colorpickerview/ColorPickerView;Landroid/widget/FrameLayout;Landroid/widget/Space;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/lq;->a:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/lq;->b:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/lq;->c:Ljava/lang/Object;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/lq;->d:Ljava/lang/Object;

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/lq;->e:Ljava/lang/Object;

    .line 7
    iput-object p6, p0, Lcom/shabakaty/downloader/lq;->f:Ljava/lang/Object;

    .line 8
    iput-object p7, p0, Lcom/shabakaty/downloader/lq;->g:Ljava/lang/Object;

    .line 9
    iput-object p8, p0, Lcom/shabakaty/downloader/lq;->h:Ljava/lang/Object;

    return-void
.end method
