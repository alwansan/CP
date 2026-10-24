.class public Lcom/shabakaty/downloader/kc4$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/kc4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/kc4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/kc4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/kc4$a;->a:Lcom/shabakaty/downloader/kc4;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kc4$a;->a:Lcom/shabakaty/downloader/kc4;

    iget-object v1, v0, Lcom/shabakaty/downloader/kc4;->c:Landroid/animation/ValueAnimator;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, v0, Lcom/shabakaty/downloader/kc4;->c:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method
