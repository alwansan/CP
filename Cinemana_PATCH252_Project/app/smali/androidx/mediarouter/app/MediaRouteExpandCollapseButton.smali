.class Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;
.super Lcom/shabakaty/downloader/ja;
.source "MediaRouteExpandCollapseButton.java"


# instance fields
.field public final t:Landroid/graphics/drawable/AnimationDrawable;

.field public final u:Landroid/graphics/drawable/AnimationDrawable;

.field public final v:Ljava/lang/String;

.field public final w:Ljava/lang/String;

.field public x:Z

.field public y:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/shabakaty/downloader/ja;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/ld0;->a:Ljava/lang/Object;

    const p2, 0x7f080280

    .line 3
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/ld0$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 4
    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;->t:Landroid/graphics/drawable/AnimationDrawable;

    const v1, 0x7f08027f

    .line 5
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/ld0$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 6
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;->u:Landroid/graphics/drawable/AnimationDrawable;

    .line 7
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 8
    invoke-static {p1, v0}, Landroidx/mediarouter/app/h;->c(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 9
    invoke-virtual {p2, v2}, Landroid/graphics/drawable/AnimationDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 10
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const v1, 0x7f120197

    .line 11
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;->v:Ljava/lang/String;

    const v2, 0x7f120195

    .line 12
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;->w:Ljava/lang/String;

    .line 13
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ja;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 15
    new-instance p1, Landroidx/mediarouter/app/g;

    invoke-direct {p1, p0}, Landroidx/mediarouter/app/g;-><init>(Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;)V

    invoke-super {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;->y:Landroid/view/View$OnClickListener;

    return-void
.end method
