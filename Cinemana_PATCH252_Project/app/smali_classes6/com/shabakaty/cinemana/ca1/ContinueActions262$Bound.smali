.class final Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;
.super Ljava/lang/Object;
.source "ContinueActions262.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/ContinueActions262;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Bound"
.end annotation


# instance fields
.field final listener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final model:Ljava/lang/Object;

.field final originalTitle:Ljava/lang/String;

.field final title:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field final view:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;->view:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;->model:Ljava/lang/Object;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;->listener:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;->title:Ljava/lang/ref/WeakReference;

    invoke-virtual {p4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->cleanTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;->originalTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method paint()V
    .locals 6

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;->title:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v0, :cond_70

    if-nez v1, :cond_15

    goto :goto_70

    :cond_15
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->page(Landroid/view/View;)Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

    move-result-object v2

    if-eqz v2, :cond_31

    iget-boolean v3, v2, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->mode:Z

    if-eqz v3, :cond_31

    iget-object v3, v2, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->selected:Ljava/util/LinkedHashSet;

    iget-object v4, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;->model:Ljava/lang/Object;

    const-string v5, "nb"

    invoke-static {v4, v5}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    const/4 v3, 0x1

    goto :goto_32

    :cond_31
    const/4 v3, 0x0

    :goto_32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_3c

    const-string v5, "\u2713  "

    goto :goto_3e

    :cond_3c
    const-string v5, ""

    :goto_3e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;->originalTitle:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_50

    iget-object v5, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;->model:Ljava/lang/Object;

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->access$100(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_52

    :cond_50
    iget-object v5, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;->originalTitle:Ljava/lang/String;

    :goto_52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setActivated(Z)V

    if-eqz v2, :cond_6b

    iget-boolean v1, v2, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->mode:Z

    if-eqz v1, :cond_6b

    if-nez v3, :cond_6b

    const v1, 0x3f266666    # 0.65f

    goto :goto_6d

    :cond_6b
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_6d
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_70
    :goto_70
    return-void
.end method
