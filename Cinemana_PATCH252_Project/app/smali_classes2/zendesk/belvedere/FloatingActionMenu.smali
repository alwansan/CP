.class public Lzendesk/belvedere/FloatingActionMenu;
.super Landroid/widget/LinearLayout;
.source "FloatingActionMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/belvedere/FloatingActionMenu$b;
    }
.end annotation


# static fields
.field public static final synthetic z:I


# instance fields
.field public r:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public s:Landroid/view/LayoutInflater;

.field public t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/y93<",
            "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
            "Landroid/view/View$OnClickListener;",
            ">;>;"
        }
    .end annotation
.end field

.field public u:Z

.field public v:I

.field public w:I

.field public x:I

.field public y:Lzendesk/belvedere/FloatingActionMenu$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p2, Lzendesk/belvedere/FloatingActionMenu$a;

    invoke-direct {p2, p0}, Lzendesk/belvedere/FloatingActionMenu$a;-><init>(Lzendesk/belvedere/FloatingActionMenu;)V

    iput-object p2, p0, Lzendesk/belvedere/FloatingActionMenu;->y:Lzendesk/belvedere/FloatingActionMenu$b;

    const p2, 0x7f0d0029

    .line 3
    invoke-static {p1, p2, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isInEditMode()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 6
    invoke-virtual {p0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a01dd

    .line 7
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object p2, p0, Lzendesk/belvedere/FloatingActionMenu;->r:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 8
    invoke-virtual {p2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->s:Landroid/view/LayoutInflater;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->t:Ljava/util/List;

    .line 11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0004

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lzendesk/belvedere/FloatingActionMenu;->v:I

    const p2, 0x7f0b0005

    .line 13
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lzendesk/belvedere/FloatingActionMenu;->w:I

    .line 14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0003

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lzendesk/belvedere/FloatingActionMenu;->x:I

    :cond_0
    return-void
.end method


# virtual methods
.method public a(IIILandroid/view/View$OnClickListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/FloatingActionMenu;->s:Landroid/view/LayoutInflater;

    const v1, 0x7f0d002a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 2
    invoke-virtual {v0, p4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f06002c

    .line 3
    invoke-virtual {p0, p1, v1}, Lzendesk/belvedere/FloatingActionMenu;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setId(I)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p2, p0, Lzendesk/belvedere/FloatingActionMenu;->t:Ljava/util/List;

    .line 7
    new-instance v1, Lcom/shabakaty/downloader/y93;

    invoke-direct {v1, v0, p4}, Lcom/shabakaty/downloader/y93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p2, p0, Lzendesk/belvedere/FloatingActionMenu;->t:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p4, 0x1

    const v1, 0x7f06002a

    if-ne p2, p4, :cond_0

    .line 10
    iget-object p2, p0, Lzendesk/belvedere/FloatingActionMenu;->r:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0, p1, v1}, Lzendesk/belvedere/FloatingActionMenu;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    iget-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->r:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->t:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 13
    iget-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->t:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/y93;

    iget-object p1, p1, Lcom/shabakaty/downloader/y93;->a:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 14
    invoke-virtual {p0, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 15
    iget-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->r:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const p2, 0x7f080068

    invoke-virtual {p0, p2, v1}, Lzendesk/belvedere/FloatingActionMenu;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    iget-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->r:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f12003c

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p0, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 18
    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public final b(II)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/ld0;->a:Ljava/lang/Object;

    .line 3
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/ld0$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/g01;->h(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 5
    invoke-static {v0, p2}, Lcom/shabakaty/downloader/ld0;->b(Landroid/content/Context;I)I

    move-result p2

    .line 6
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->t:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 2
    iget-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->t:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/y93;

    .line 3
    iget-object v0, p1, Lcom/shabakaty/downloader/y93;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/View$OnClickListener;

    iget-object p1, p1, Lcom/shabakaty/downloader/y93;->a:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto/16 :goto_3

    .line 4
    :cond_0
    iget-boolean p1, p0, Lzendesk/belvedere/FloatingActionMenu;->u:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lzendesk/belvedere/FloatingActionMenu;->u:Z

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->t:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/y93;

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f01000d

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    .line 7
    invoke-virtual {v5, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 8
    invoke-virtual {v5, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 9
    iget-object v6, v4, Lcom/shabakaty/downloader/y93;->a:Ljava/lang/Object;

    check-cast v6, Landroid/view/View;

    if-eqz v6, :cond_1

    .line 10
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :cond_1
    iget-object v4, v4, Lcom/shabakaty/downloader/y93;->a:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 12
    iget v4, p0, Lzendesk/belvedere/FloatingActionMenu;->x:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 13
    iget-object v0, p0, Lzendesk/belvedere/FloatingActionMenu;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 14
    iget-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->t:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/y93;

    .line 15
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f01000c

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 16
    invoke-virtual {v4, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 17
    invoke-virtual {v4, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 18
    new-instance v5, Lzendesk/belvedere/b;

    invoke-direct {v5, p0, p1}, Lzendesk/belvedere/b;-><init>(Lzendesk/belvedere/FloatingActionMenu;Lcom/shabakaty/downloader/y93;)V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 19
    iget-object p1, p1, Lcom/shabakaty/downloader/y93;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 20
    iget p1, p0, Lzendesk/belvedere/FloatingActionMenu;->x:I

    int-to-long v5, p1

    add-long/2addr v2, v5

    add-int/lit8 v0, v0, -0x1

    move-object p1, v4

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 21
    iget-object v0, p0, Lzendesk/belvedere/FloatingActionMenu;->y:Lzendesk/belvedere/FloatingActionMenu$b;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 22
    :cond_4
    iget-boolean p1, p0, Lzendesk/belvedere/FloatingActionMenu;->u:Z

    if-eqz p1, :cond_5

    .line 23
    iget p1, p0, Lzendesk/belvedere/FloatingActionMenu;->w:I

    int-to-float p1, p1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    .line 24
    :goto_2
    iget-object v0, p0, Lzendesk/belvedere/FloatingActionMenu;->r:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v0}, Lcom/shabakaty/downloader/c35;->b(Landroid/view/View;)Lcom/shabakaty/downloader/b45;

    move-result-object v0

    .line 25
    iget-object v1, v0, Lcom/shabakaty/downloader/b45;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_6

    .line 26
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    .line 27
    :cond_6
    iget p1, p0, Lzendesk/belvedere/FloatingActionMenu;->v:I

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/b45;->c(J)Lcom/shabakaty/downloader/b45;

    .line 28
    iget-object p1, v0, Lcom/shabakaty/downloader/b45;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_7

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 30
    :cond_7
    iget-boolean p1, p0, Lzendesk/belvedere/FloatingActionMenu;->u:Z

    if-eqz p1, :cond_8

    .line 31
    iget-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->r:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 32
    :cond_8
    iget-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->r:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method
