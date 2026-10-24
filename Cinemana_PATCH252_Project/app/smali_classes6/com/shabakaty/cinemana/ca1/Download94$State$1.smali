.class Lcom/shabakaty/cinemana/ca1/Download94$State$1;
.super Ljava/lang/Object;
.source "Download94.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ca1/Download94$State;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;


# direct methods
.method constructor <init>(Lcom/shabakaty/cinemana/ca1/Download94$State;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$1;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 12
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$1;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    iget-boolean p1, p1, Lcom/shabakaty/cinemana/ca1/Download94$State;->mode:Z

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$1;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    iget-object p1, p1, Lcom/shabakaty/cinemana/ca1/Download94$State;->workKeys:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p3, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$1;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    iget-object p1, p1, Lcom/shabakaty/cinemana/ca1/Download94$State;->selected:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->clear()V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$1;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    iget-object p1, p1, Lcom/shabakaty/cinemana/ca1/Download94$State;->season:Landroid/widget/Spinner;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$1;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ca1/Download94$State;->items()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    iget-object p4, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$1;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    invoke-virtual {p4, p2}, Lcom/shabakaty/cinemana/ca1/Download94$State;->eligible(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$1;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    invoke-virtual {p4, p2}, Lcom/shabakaty/cinemana/ca1/Download94$State;->workKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$1;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    iget-object p5, p5, Lcom/shabakaty/cinemana/ca1/Download94$State;->workKeys:Ljava/util/ArrayList;

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$1;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    iget-object p4, p4, Lcom/shabakaty/cinemana/ca1/Download94$State;->selected:Ljava/util/LinkedHashSet;

    iget-object p5, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$1;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    invoke-virtual {p5, p2}, Lcom/shabakaty/cinemana/ca1/Download94$State;->id(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$State$1;->this$0:Lcom/shabakaty/cinemana/ca1/Download94$State;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ca1/Download94$State;->update()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 12
    return-void
.end method
