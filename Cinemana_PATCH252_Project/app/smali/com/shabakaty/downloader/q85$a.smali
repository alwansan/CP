.class public Lcom/shabakaty/downloader/q85$a;
.super Ljava/lang/Object;
.source "WormAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/q85;->f(IIJZLcom/shabakaty/downloader/r85;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/r85;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/shabakaty/downloader/q85;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/q85;Lcom/shabakaty/downloader/r85;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/q85$a;->c:Lcom/shabakaty/downloader/q85;

    iput-object p2, p0, Lcom/shabakaty/downloader/q85$a;->a:Lcom/shabakaty/downloader/r85;

    iput-boolean p3, p0, Lcom/shabakaty/downloader/q85$a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/q85$a;->c:Lcom/shabakaty/downloader/q85;

    iget-object v1, p0, Lcom/shabakaty/downloader/q85$a;->a:Lcom/shabakaty/downloader/r85;

    iget-boolean v2, p0, Lcom/shabakaty/downloader/q85$a;->b:Z

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 4
    iget-boolean v3, v0, Lcom/shabakaty/downloader/q85;->g:Z

    if-eqz v3, :cond_1

    if-nez v2, :cond_0

    .line 5
    iput p1, v1, Lcom/shabakaty/downloader/r85;->b:I

    goto :goto_0

    .line 6
    :cond_0
    iput p1, v1, Lcom/shabakaty/downloader/r85;->a:I

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    .line 7
    iput p1, v1, Lcom/shabakaty/downloader/r85;->a:I

    goto :goto_0

    .line 8
    :cond_2
    iput p1, v1, Lcom/shabakaty/downloader/r85;->b:I

    .line 9
    :goto_0
    iget-object p1, v0, Lcom/shabakaty/downloader/yi;->b:Lcom/shabakaty/downloader/lz4$a;

    if-eqz p1, :cond_3

    .line 10
    check-cast p1, Lcom/rd/a;

    invoke-virtual {p1, v1}, Lcom/rd/a;->b(Lcom/shabakaty/downloader/kz4;)V

    :cond_3
    return-void
.end method
