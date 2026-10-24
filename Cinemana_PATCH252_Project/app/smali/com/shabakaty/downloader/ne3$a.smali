.class public final Lcom/shabakaty/downloader/ne3$a;
.super Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
.source "PosterGradient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ne3;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/ne3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ne3;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/ne3$a;->a:Lcom/shabakaty/downloader/ne3;

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public resize(II)Landroid/graphics/Shader;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ne3$a;->a:Lcom/shabakaty/downloader/ne3;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v9, Landroid/graphics/LinearGradient;

    int-to-float p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v4, p1, v1

    int-to-float v5, p2

    const/16 p1, 0xb

    new-array v6, p1, [I

    .line 4
    iget-object p1, v0, Lcom/shabakaty/downloader/ne3;->a:Landroid/content/Context;

    const p2, 0x7f0600b7

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/wt2;->f(Landroid/content/Context;I)I

    move-result p1

    const/4 v1, 0x0

    aput p1, v6, v1

    .line 5
    iget-object p1, v0, Lcom/shabakaty/downloader/ne3;->a:Landroid/content/Context;

    const v1, 0x7f0600b5

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/wt2;->f(Landroid/content/Context;I)I

    move-result p1

    const/4 v2, 0x1

    aput p1, v6, v2

    .line 6
    iget-object p1, v0, Lcom/shabakaty/downloader/ne3;->a:Landroid/content/Context;

    const v2, 0x7f06014b

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/wt2;->f(Landroid/content/Context;I)I

    move-result p1

    const/4 v3, 0x2

    aput p1, v6, v3

    .line 7
    iget-object p1, v0, Lcom/shabakaty/downloader/ne3;->a:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/wt2;->f(Landroid/content/Context;I)I

    move-result p1

    const/4 v3, 0x3

    aput p1, v6, v3

    .line 8
    iget-object p1, v0, Lcom/shabakaty/downloader/ne3;->a:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/wt2;->f(Landroid/content/Context;I)I

    move-result p1

    const/4 v2, 0x4

    aput p1, v6, v2

    .line 9
    iget-object p1, v0, Lcom/shabakaty/downloader/ne3;->a:Landroid/content/Context;

    const v2, 0x7f0600b3

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/wt2;->f(Landroid/content/Context;I)I

    move-result p1

    const/4 v2, 0x5

    aput p1, v6, v2

    .line 10
    iget-object p1, v0, Lcom/shabakaty/downloader/ne3;->a:Landroid/content/Context;

    const v2, 0x7f0600b4

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/wt2;->f(Landroid/content/Context;I)I

    move-result p1

    const/4 v2, 0x6

    aput p1, v6, v2

    .line 11
    iget-object p1, v0, Lcom/shabakaty/downloader/ne3;->a:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/wt2;->f(Landroid/content/Context;I)I

    move-result p1

    const/4 v1, 0x7

    aput p1, v6, v1

    .line 12
    iget-object p1, v0, Lcom/shabakaty/downloader/ne3;->a:Landroid/content/Context;

    const v1, 0x7f0600b6

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/wt2;->f(Landroid/content/Context;I)I

    move-result p1

    const/16 v1, 0x8

    aput p1, v6, v1

    .line 13
    iget-object p1, v0, Lcom/shabakaty/downloader/ne3;->a:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/wt2;->f(Landroid/content/Context;I)I

    move-result p1

    const/16 p2, 0x9

    aput p1, v6, p2

    .line 14
    iget-object p1, v0, Lcom/shabakaty/downloader/ne3;->a:Landroid/content/Context;

    const p2, 0x7f0600b8

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/wt2;->f(Landroid/content/Context;I)I

    move-result p1

    const/16 p2, 0xa

    aput p1, v6, p2

    .line 15
    iget-object v7, v0, Lcom/shabakaty/downloader/ne3;->c:[F

    .line 16
    sget-object v8, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    move-object v1, v9

    move v2, v4

    .line 17
    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v9
.end method
