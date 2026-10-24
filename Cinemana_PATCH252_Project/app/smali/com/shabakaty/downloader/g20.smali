.class public final Lcom/shabakaty/downloader/g20;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircularRevealCompat.java"


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/j20;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/j20;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/g20;->a:Lcom/shabakaty/downloader/j20;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/g20;->a:Lcom/shabakaty/downloader/j20;

    invoke-interface {p1}, Lcom/shabakaty/downloader/j20;->b()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/g20;->a:Lcom/shabakaty/downloader/j20;

    invoke-interface {p1}, Lcom/shabakaty/downloader/j20;->a()V

    return-void
.end method
