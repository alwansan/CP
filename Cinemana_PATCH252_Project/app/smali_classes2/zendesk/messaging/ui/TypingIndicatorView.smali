.class public Lzendesk/messaging/ui/TypingIndicatorView;
.super Landroid/widget/LinearLayout;
.source "TypingIndicatorView.java"

# interfaces
.implements Lzendesk/messaging/ui/Updatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/messaging/ui/TypingIndicatorView$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lzendesk/messaging/ui/Updatable<",
        "Lzendesk/messaging/ui/TypingIndicatorView$State;",
        ">;"
    }
.end annotation


# instance fields
.field public final animationLoopCallback:Lcom/shabakaty/downloader/v7;

.field public avatarView:Lzendesk/messaging/ui/AvatarView;

.field public botLabel:Landroid/view/View;

.field public labelContainer:Landroid/view/View;

.field public labelField:Landroid/widget/TextView;

.field public typingIndicator:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Lzendesk/messaging/ui/TypingIndicatorView$1;

    invoke-direct {p1, p0}, Lzendesk/messaging/ui/TypingIndicatorView$1;-><init>(Lzendesk/messaging/ui/TypingIndicatorView;)V

    iput-object p1, p0, Lzendesk/messaging/ui/TypingIndicatorView;->animationLoopCallback:Lcom/shabakaty/downloader/v7;

    .line 3
    invoke-virtual {p0}, Lzendesk/messaging/ui/TypingIndicatorView;->init()V

    return-void
.end method


# virtual methods
.method public final init()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lzendesk/messaging/R$layout;->zui_view_typing_indicator_content:I

    invoke-static {v0, v1, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 2
    sget v0, Lzendesk/messaging/R$id;->zui_agent_message_avatar:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lzendesk/messaging/ui/AvatarView;

    iput-object v0, p0, Lzendesk/messaging/ui/TypingIndicatorView;->avatarView:Lzendesk/messaging/ui/AvatarView;

    .line 3
    sget v0, Lzendesk/messaging/R$id;->zui_cell_status_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzendesk/messaging/ui/TypingIndicatorView;->labelContainer:Landroid/view/View;

    .line 4
    sget v0, Lzendesk/messaging/R$id;->zui_cell_label_text_field:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzendesk/messaging/ui/TypingIndicatorView;->labelField:Landroid/widget/TextView;

    .line 5
    sget v0, Lzendesk/messaging/R$id;->zui_cell_label_supplementary_label:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzendesk/messaging/ui/TypingIndicatorView;->botLabel:Landroid/view/View;

    .line 6
    sget v0, Lzendesk/messaging/R$id;->zui_cell_typing_indicator_image:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lzendesk/messaging/ui/TypingIndicatorView;->typingIndicator:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {p0}, Lzendesk/messaging/ui/TypingIndicatorView;->startAnimatedDrawable()V

    return-void
.end method

.method public final startAnimatedDrawable()V
    .locals 4

    .line 1
    iget-object v0, p0, Lzendesk/messaging/ui/TypingIndicatorView;->typingIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lzendesk/messaging/ui/TypingIndicatorView;->animationLoopCallback:Lcom/shabakaty/downloader/v7;

    sget v2, Lcom/shabakaty/downloader/a8;->y:I

    if-eqz v0, :cond_7

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    instance-of v2, v0, Landroid/graphics/drawable/Animatable;

    if-nez v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_2

    .line 5
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 6
    invoke-virtual {v1}, Lcom/shabakaty/downloader/v7;->getPlatformCallback()Landroid/graphics/drawable/Animatable2$AnimationCallback;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    goto :goto_0

    .line 7
    :cond_2
    move-object v2, v0

    check-cast v2, Lcom/shabakaty/downloader/a8;

    .line 8
    iget-object v3, v2, Lcom/shabakaty/downloader/b05;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    .line 9
    check-cast v3, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 10
    invoke-virtual {v1}, Lcom/shabakaty/downloader/v7;->getPlatformCallback()Landroid/graphics/drawable/Animatable2$AnimationCallback;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object v3, v2, Lcom/shabakaty/downloader/a8;->w:Ljava/util/ArrayList;

    if-nez v3, :cond_4

    .line 12
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/shabakaty/downloader/a8;->w:Ljava/util/ArrayList;

    .line 13
    :cond_4
    iget-object v3, v2, Lcom/shabakaty/downloader/a8;->w:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_0

    .line 14
    :cond_5
    iget-object v3, v2, Lcom/shabakaty/downloader/a8;->w:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v1, v2, Lcom/shabakaty/downloader/a8;->v:Landroid/animation/Animator$AnimatorListener;

    if-nez v1, :cond_6

    .line 16
    new-instance v1, Lcom/shabakaty/downloader/b8;

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/b8;-><init>(Lcom/shabakaty/downloader/a8;)V

    iput-object v1, v2, Lcom/shabakaty/downloader/a8;->v:Landroid/animation/Animator$AnimatorListener;

    .line 17
    :cond_6
    iget-object v1, v2, Lcom/shabakaty/downloader/a8;->s:Lcom/shabakaty/downloader/a8$b;

    iget-object v1, v1, Lcom/shabakaty/downloader/a8$b;->c:Landroid/animation/AnimatorSet;

    iget-object v2, v2, Lcom/shabakaty/downloader/a8;->v:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 18
    :cond_7
    :goto_0
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lzendesk/messaging/ui/TypingIndicatorView$State;

    invoke-virtual {p0, p1}, Lzendesk/messaging/ui/TypingIndicatorView;->update(Lzendesk/messaging/ui/TypingIndicatorView$State;)V

    return-void
.end method

.method public update(Lzendesk/messaging/ui/TypingIndicatorView$State;)V
    .locals 3

    .line 2
    invoke-virtual {p1}, Lzendesk/messaging/ui/TypingIndicatorView$State;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lzendesk/messaging/ui/TypingIndicatorView;->labelField:Landroid/widget/TextView;

    invoke-virtual {p1}, Lzendesk/messaging/ui/TypingIndicatorView$State;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lzendesk/messaging/ui/TypingIndicatorView;->botLabel:Landroid/view/View;

    invoke-virtual {p1}, Lzendesk/messaging/ui/TypingIndicatorView$State;->isBot()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    invoke-virtual {p1}, Lzendesk/messaging/ui/TypingIndicatorView$State;->getAvatarStateRenderer()Lzendesk/messaging/ui/AvatarStateRenderer;

    move-result-object v0

    invoke-virtual {p1}, Lzendesk/messaging/ui/TypingIndicatorView$State;->getAvatarState()Lzendesk/messaging/ui/AvatarState;

    move-result-object v1

    iget-object v2, p0, Lzendesk/messaging/ui/TypingIndicatorView;->avatarView:Lzendesk/messaging/ui/AvatarView;

    invoke-virtual {v0, v1, v2}, Lzendesk/messaging/ui/AvatarStateRenderer;->render(Lzendesk/messaging/ui/AvatarState;Lzendesk/messaging/ui/AvatarView;)V

    .line 6
    invoke-virtual {p1}, Lzendesk/messaging/ui/TypingIndicatorView$State;->getProps()Lzendesk/messaging/ui/MessagingCellProps;

    move-result-object p1

    iget-object v0, p0, Lzendesk/messaging/ui/TypingIndicatorView;->labelContainer:Landroid/view/View;

    iget-object v1, p0, Lzendesk/messaging/ui/TypingIndicatorView;->avatarView:Lzendesk/messaging/ui/AvatarView;

    invoke-virtual {p1, p0, v0, v1}, Lzendesk/messaging/ui/MessagingCellProps;->apply(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
