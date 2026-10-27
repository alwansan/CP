.class Lcom/shabakaty/cinemana/ca1/ContinueActions262$3;
.super Ljava/lang/Object;
.source "ContinueActions262.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ca1/ContinueActions262;->popup(Landroid/view/View;Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$b:Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;

.field final synthetic val$popup:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/PopupWindow;Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$3;->val$popup:Landroid/widget/PopupWindow;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$3;->val$b:Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$3;->val$popup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$3;->val$b:Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;

    iget-object p1, p1, Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;->model:Ljava/lang/Object;

    const-string v0, "nb"

    invoke-static {p1, v0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->remove(Ljava/util/Collection;)V

    return-void
.end method
