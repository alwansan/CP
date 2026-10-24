.class public Lcom/onesignal/m$b;
.super Ljava/lang/Object;
.source "InAppMessageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/m;->f(Lcom/onesignal/y1$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/onesignal/y1$f;

.field public final synthetic s:Lcom/onesignal/m;


# direct methods
.method public constructor <init>(Lcom/onesignal/m;Lcom/onesignal/y1$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/m$b;->s:Lcom/onesignal/m;

    iput-object p2, p0, Lcom/onesignal/m$b;->r:Lcom/onesignal/y1$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/onesignal/m$b;->s:Lcom/onesignal/m;

    .line 2
    iget-boolean v1, v0, Lcom/onesignal/m;->g:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v0, Lcom/onesignal/m;->m:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, p0, Lcom/onesignal/m$b;->r:Lcom/onesignal/y1$f;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v5, Lcom/onesignal/n;

    invoke-direct {v5, v0, v2}, Lcom/onesignal/n;-><init>(Lcom/onesignal/m;Lcom/onesignal/y1$f;)V

    .line 7
    sget v3, Lcom/onesignal/m;->r:I

    sget v4, Lcom/onesignal/m;->q:I

    const/16 v2, 0x190

    invoke-virtual/range {v0 .. v5}, Lcom/onesignal/m;->b(Landroid/view/View;IIILandroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v0}, Lcom/onesignal/m;->a(Lcom/onesignal/m;)V

    .line 10
    iget-object v0, p0, Lcom/onesignal/m$b;->r:Lcom/onesignal/y1$f;

    if-eqz v0, :cond_1

    .line 11
    invoke-interface {v0}, Lcom/onesignal/y1$f;->a()V

    :cond_1
    :goto_0
    return-void
.end method
