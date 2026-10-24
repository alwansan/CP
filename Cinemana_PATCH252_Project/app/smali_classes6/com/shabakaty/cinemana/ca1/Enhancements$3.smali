.class Lcom/shabakaty/cinemana/ca1/Enhancements$3;
.super Ljava/lang/Object;
.source "Enhancements.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ca1/Enhancements;->installSortHeader(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$button:Landroid/widget/ImageButton;

.field final synthetic val$host:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/widget/ImageButton;Landroid/view/ViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$3;->val$button:Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$3;->val$host:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 68
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$3;->val$button:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$3;->val$host:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$3;->val$button:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method
