.class public final Lcom/shabakaty/downloader/ne3;
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

    iput-object p1, p0, Lcom/shabakaty/downloader/ne3;->a:Landroid/content/Context;

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/ne3$a;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/ne3$a;-><init>(Lcom/shabakaty/downloader/ne3;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/ne3;->b:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

    const/16 p1, 0xb

    new-array p1, p1, [F

    .line 3
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/shabakaty/downloader/ne3;->c:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3dcccccd    # 0.1f
        0x3e4ccccd    # 0.2f
        0x3e99999a    # 0.3f
        0x3ecccccd    # 0.4f
        0x3f000000    # 0.5f
        0x3f19999a    # 0.6f
        0x3f333333    # 0.7f
        0x3f4ccccd    # 0.8f
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method
