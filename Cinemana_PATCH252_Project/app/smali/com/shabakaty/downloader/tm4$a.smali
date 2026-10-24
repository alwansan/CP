.class public Lcom/shabakaty/downloader/tm4$a;
.super Ljava/lang/Object;
.source "ThinWormAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/tm4;->l(IIJ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/tm4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/tm4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/tm4$a;->a:Lcom/shabakaty/downloader/tm4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tm4$a;->a:Lcom/shabakaty/downloader/tm4;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/tm4;->i:Lcom/shabakaty/downloader/um4;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    iput p1, v1, Lcom/shabakaty/downloader/um4;->c:I

    .line 4
    iget-object p1, v0, Lcom/shabakaty/downloader/yi;->b:Lcom/shabakaty/downloader/lz4$a;

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/tm4;->i:Lcom/shabakaty/downloader/um4;

    check-cast p1, Lcom/rd/a;

    invoke-virtual {p1, v0}, Lcom/rd/a;->b(Lcom/shabakaty/downloader/kz4;)V

    :cond_0
    return-void
.end method
