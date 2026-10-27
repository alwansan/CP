.class Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$3;
.super Ljava/lang/Object;
.source "ContinueActions262.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->begin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;


# direct methods
.method constructor <init>(Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$3;->this$0:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$3;->this$0:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->items()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$3;->this$0:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

    iget-object v1, v1, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->selected:Ljava/util/LinkedHashSet;

    const-string v2, "nb"

    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_22
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$3;->this$0:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->update()V

    return-void
.end method
