.class Lcom/shabakaty/cinemana/ca1/ContinueActions262$2;
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
.field final synthetic val$anchor:Landroid/view/View;

.field final synthetic val$b:Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;

.field final synthetic val$popup:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/PopupWindow;Landroid/view/View;Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$2;->val$popup:Landroid/widget/PopupWindow;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$2;->val$anchor:Landroid/view/View;

    iput-object p3, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$2;->val$b:Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$2;->val$popup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$2;->val$anchor:Landroid/view/View;

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$2;->val$b:Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;

    invoke-static {p1, v0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->openDetails(Landroid/view/View;Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;)V

    return-void
.end method
