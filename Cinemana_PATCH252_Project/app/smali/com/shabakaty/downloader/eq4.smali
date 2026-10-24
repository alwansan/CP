.class public Lcom/shabakaty/downloader/eq4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Transition.java"


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/ad;

.field public final synthetic b:Lcom/shabakaty/downloader/dq4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/dq4;Lcom/shabakaty/downloader/ad;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/eq4;->b:Lcom/shabakaty/downloader/dq4;

    iput-object p2, p0, Lcom/shabakaty/downloader/eq4;->a:Lcom/shabakaty/downloader/ad;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/eq4;->a:Lcom/shabakaty/downloader/ad;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/m64;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/eq4;->b:Lcom/shabakaty/downloader/dq4;

    iget-object v0, v0, Lcom/shabakaty/downloader/dq4;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/eq4;->b:Lcom/shabakaty/downloader/dq4;

    iget-object v0, v0, Lcom/shabakaty/downloader/dq4;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
