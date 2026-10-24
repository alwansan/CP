.class public final Lcom/shabakaty/downloader/fb4;
.super Ljava/lang/Object;
.source "PosterGradient.kt"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

.field public final c:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/fb4;->a:Landroid/content/Context;

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/fb4$a;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/fb4$a;-><init>(Lcom/shabakaty/downloader/fb4;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/fb4;->b:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

    const/4 p1, 0x6

    new-array p1, p1, [F

    .line 3
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/shabakaty/downloader/fb4;->c:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3ee66666    # 0.45f
        0x3f333333    # 0.7f
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
    .end array-data
.end method
