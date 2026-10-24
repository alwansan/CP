.class public final Lcom/shabakaty/downloader/eg6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# static fields
.field public static final a:Lcom/shabakaty/downloader/pk2;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pk2;

    const-string v1, "WidgetUtil"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/pk2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/eg6;->a:Lcom/shabakaty/downloader/pk2;

    return-void
.end method

.method public static a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p2}, Lcom/shabakaty/downloader/g01;->h(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 3
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 4
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/ld0;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    const/4 v0, 0x0

    const v1, 0x106000b

    .line 6
    invoke-static {p0, v1}, Lcom/shabakaty/downloader/ld0;->b(Landroid/content/Context;I)I

    move-result p0

    const/16 v1, 0x80

    .line 7
    invoke-static {p0, v1}, Lcom/shabakaty/downloader/h60;->h(II)I

    move-result v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    aput p0, v3, v0

    aput v1, v3, p1

    new-array p0, v2, [[I

    new-array v1, p1, [I

    const v2, 0x101009e

    aput v2, v1, v0

    aput-object v1, p0, v0

    new-array v1, p1, [I

    const v2, -0x101009e

    aput v2, v1, v0

    aput-object v1, p0, p1

    .line 8
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, p0, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object p0, p1

    .line 9
    :goto_0
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-object p2
.end method
