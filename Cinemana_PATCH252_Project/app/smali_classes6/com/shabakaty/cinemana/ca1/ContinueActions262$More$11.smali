.class Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$11;
.super Ljava/lang/Object;
.source "ContinueActions262.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->chooseWork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

.field final synthetic val$keys:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$11;->this$0:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$11;->val$keys:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$11;->this$0:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->items()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$11;->val$keys:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->access$200(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$11;->this$0:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

    iget-object v1, v1, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->selected:Ljava/util/LinkedHashSet;

    const-string v2, "nb"

    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_34
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$11;->this$0:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->update()V

    return-void
.end method
