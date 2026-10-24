.class public Lcom/shabakaty/downloader/fq4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Transition.java"


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/dq4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/dq4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/fq4;->a:Lcom/shabakaty/downloader/dq4;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fq4;->a:Lcom/shabakaty/downloader/dq4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/dq4;->n()V

    .line 2
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
