.class public final Lcom/skydoves/powerspinner/PowerSpinnerPreference;
.super Landroidx/preference/Preference;
.source "PowerSpinnerPreference.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/skydoves/powerspinner/PowerSpinnerPreference;",
        "Landroidx/preference/Preference;",
        "powerspinner_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final E:Lcom/skydoves/powerspinner/PowerSpinnerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0403a7

    const-string v1, "context"

    .line 1
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 3
    new-instance v0, Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-direct {v0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->E:Lcom/skydoves/powerspinner/PowerSpinnerView;

    if-eqz p2, :cond_0

    .line 4
    iget-object p1, p0, Landroidx/preference/Preference;->r:Landroid/content/Context;

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/cm3;->a:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.obtainStyledAttr\u2026yleable.PowerSpinnerView)"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->y(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public n(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final y(Landroid/content/res/TypedArray;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->E:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 2
    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getShowArrow()Z

    move-result v1

    const/4 v2, 0x5

    .line 3
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setShowArrow(Z)V

    .line 4
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->E:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getArrowGravity()Lcom/skydoves/powerspinner/b;

    move-result-object v0

    .line 5
    iget v0, v0, Lcom/skydoves/powerspinner/b;->r:I

    const/4 v1, 0x3

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    .line 7
    sget-object v2, Lcom/skydoves/powerspinner/b;->s:Lcom/skydoves/powerspinner/b;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->E:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0, v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowGravity(Lcom/skydoves/powerspinner/b;)V

    goto :goto_0

    .line 8
    :cond_0
    sget-object v2, Lcom/skydoves/powerspinner/b;->t:Lcom/skydoves/powerspinner/b;

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->E:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0, v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowGravity(Lcom/skydoves/powerspinner/b;)V

    goto :goto_0

    .line 9
    :cond_1
    sget-object v2, Lcom/skydoves/powerspinner/b;->u:Lcom/skydoves/powerspinner/b;

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->E:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0, v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowGravity(Lcom/skydoves/powerspinner/b;)V

    goto :goto_0

    .line 10
    :cond_2
    sget-object v2, Lcom/skydoves/powerspinner/b;->v:Lcom/skydoves/powerspinner/b;

    if-ne v0, v1, :cond_3

    .line 11
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->E:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0, v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowGravity(Lcom/skydoves/powerspinner/b;)V

    .line 12
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->E:Lcom/skydoves/powerspinner/PowerSpinnerView;

    const/4 v1, 0x4

    .line 13
    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getArrowPadding()I

    move-result v2

    .line 14
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowPadding(I)V

    .line 15
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->E:Lcom/skydoves/powerspinner/PowerSpinnerView;

    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getArrowAnimate()Z

    move-result v2

    .line 17
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowAnimate(Z)V

    .line 18
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->E:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 19
    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getArrowAnimationDuration()J

    move-result-wide v1

    long-to-int v2, v1

    .line 20
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    int-to-long v1, v1

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowAnimationDuration(J)V

    .line 22
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->E:Lcom/skydoves/powerspinner/PowerSpinnerView;

    const/16 v1, 0xa

    .line 23
    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getShowDivider()Z

    move-result v2

    .line 24
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setShowDivider(Z)V

    .line 25
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->E:Lcom/skydoves/powerspinner/PowerSpinnerView;

    const/16 v1, 0xb

    .line 26
    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getDividerSize()I

    move-result v2

    .line 27
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setDividerSize(I)V

    .line 28
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->E:Lcom/skydoves/powerspinner/PowerSpinnerView;

    const/16 v1, 0x9

    .line 29
    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getDividerColor()I

    move-result v2

    .line 30
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setDividerColor(I)V

    .line 31
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->E:Lcom/skydoves/powerspinner/PowerSpinnerView;

    const/16 v1, 0xf

    .line 32
    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupBackgroundColor()I

    move-result v2

    .line 33
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupBackgroundColor(I)V

    const/16 v0, 0xd

    .line 34
    iget-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->E:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupAnimation()Lcom/skydoves/powerspinner/a;

    move-result-object v1

    .line 35
    iget v1, v1, Lcom/skydoves/powerspinner/a;->r:I

    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    .line 37
    sget-object v1, Lcom/skydoves/powerspinner/a;->s:Lcom/skydoves/powerspinner/a;

    if-nez v0, :cond_4

    .line 38
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->E:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupAnimation(Lcom/skydoves/powerspinner/a;)V

    goto :goto_1

    .line 39
    :cond_4
    sget-object v1, Lcom/skydoves/powerspinner/a;->t:Lcom/skydoves/powerspinner/a;

    if-ne v0, v4, :cond_5

    .line 40
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->E:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupAnimation(Lcom/skydoves/powerspinner/a;)V

    goto :goto_1

    .line 41
    :cond_5
    sget-object v1, Lcom/skydoves/powerspinner/a;->u:Lcom/skydoves/powerspinner/a;

    if-ne v0, v3, :cond_6

    .line 42
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->E:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupAnimation(Lcom/skydoves/powerspinner/a;)V

    .line 43
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->E:Lcom/skydoves/powerspinner/PowerSpinnerView;

    const/16 v1, 0xe

    .line 44
    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupAnimationStyle()I

    move-result v2

    .line 45
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupAnimationStyle(I)V

    .line 46
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->E:Lcom/skydoves/powerspinner/PowerSpinnerView;

    const/16 v1, 0x12

    .line 47
    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupWidth()I

    move-result v2

    .line 48
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupWidth(I)V

    .line 49
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->E:Lcom/skydoves/powerspinner/PowerSpinnerView;

    const/16 v1, 0x11

    .line 50
    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupHeight()I

    move-result v2

    .line 51
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupHeight(I)V

    .line 52
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->E:Lcom/skydoves/powerspinner/PowerSpinnerView;

    const/16 v1, 0x10

    .line 53
    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupElevation()I

    move-result v2

    .line 54
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupElevation(I)V

    const/16 v0, 0xc

    const/4 v1, -0x1

    .line 55
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eq v0, v1, :cond_7

    .line 56
    iget-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->E:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v1, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setItems(I)V

    .line 57
    :cond_7
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->E:Lcom/skydoves/powerspinner/PowerSpinnerView;

    const/16 v1, 0x8

    .line 58
    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getDismissWhenNotifiedItemSelected()Z

    move-result v2

    .line 59
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setDismissWhenNotifiedItemSelected(Z)V

    return-void
.end method
