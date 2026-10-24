.class public Lzendesk/belvedere/a;
.super Ljava/lang/Object;
.source "BelvedereUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/belvedere/a$c;,
        Lzendesk/belvedere/a$b;
    }
.end annotation


# direct methods
.method public static a(Lcom/shabakaty/downloader/r9;)Lzendesk/belvedere/c;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ji1;->getSupportFragmentManager()Landroidx/fragment/app/q;

    move-result-object v0

    const-string v1, "belvedere_image_stream"

    .line 2
    invoke-virtual {v0, v1}, Landroidx/fragment/app/q;->I(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 3
    instance-of v3, v2, Lzendesk/belvedere/c;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 4
    check-cast v2, Lzendesk/belvedere/c;

    goto :goto_0

    .line 5
    :cond_0
    new-instance v2, Lzendesk/belvedere/c;

    invoke-direct {v2}, Lzendesk/belvedere/c;-><init>()V

    .line 6
    new-instance v3, Landroidx/fragment/app/a;

    invoke-direct {v3, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/q;)V

    const/4 v0, 0x1

    .line 7
    invoke-virtual {v3, v4, v2, v1, v0}, Landroidx/fragment/app/a;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 8
    invoke-virtual {v3}, Landroidx/fragment/app/a;->e()V

    .line 9
    :goto_0
    sget v0, Lzendesk/belvedere/m;->x:I

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 11
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_1
    if-ge v4, v1, :cond_2

    .line 12
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lzendesk/belvedere/m;

    if-eqz v3, :cond_1

    .line 13
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lzendesk/belvedere/m;

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 14
    :cond_2
    new-instance v1, Lzendesk/belvedere/m;

    invoke-direct {v1, p0}, Lzendesk/belvedere/m;-><init>(Landroid/app/Activity;)V

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object p0, v1

    .line 16
    :goto_2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v2, Lzendesk/belvedere/c;->r:Ljava/lang/ref/WeakReference;

    return-object v2
.end method
