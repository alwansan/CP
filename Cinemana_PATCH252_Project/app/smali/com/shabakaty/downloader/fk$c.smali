.class public Lcom/shabakaty/downloader/fk$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/fk;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/fk;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/fk$c;->a:Lcom/shabakaty/downloader/fk;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/fk$c;->a:Lcom/shabakaty/downloader/fk;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/fk;->B:Ljava/util/List;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/jo4;

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/fk$c;->a:Lcom/shabakaty/downloader/fk;

    invoke-static {v1}, Lcom/shabakaty/downloader/h45;->d(Landroid/view/View;)Lcom/shabakaty/downloader/v35;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/fq1;

    .line 6
    iget-object v1, v1, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewOverlay;

    invoke-virtual {v1, v0}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
