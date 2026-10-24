.class public Lcom/shabakaty/downloader/b45$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/b45;->e(Landroid/view/View;Lcom/shabakaty/downloader/d45;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/d45;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/b45;Lcom/shabakaty/downloader/d45;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shabakaty/downloader/b45$a;->a:Lcom/shabakaty/downloader/d45;

    iput-object p3, p0, Lcom/shabakaty/downloader/b45$a;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/b45$a;->a:Lcom/shabakaty/downloader/d45;

    iget-object v0, p0, Lcom/shabakaty/downloader/b45$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/d45;->a(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/b45$a;->a:Lcom/shabakaty/downloader/d45;

    iget-object v0, p0, Lcom/shabakaty/downloader/b45$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/d45;->b(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/b45$a;->a:Lcom/shabakaty/downloader/d45;

    iget-object v0, p0, Lcom/shabakaty/downloader/b45$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/d45;->c(Landroid/view/View;)V

    return-void
.end method
