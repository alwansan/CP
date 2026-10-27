.class Lcom/shabakaty/cinemana/ca1/ContinueActions262$1;
.super Ljava/lang/Object;
.source "ContinueActions262.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ca1/ContinueActions262;->bind(Ljava/lang/Object;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;

    if-nez v0, :cond_e

    const/4 p1, 0x0

    return p1

    :cond_e
    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->page(Landroid/view/View;)Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_25

    iget-boolean v3, v1, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->mode:Z

    if-eqz v3, :cond_25

    iget-object p1, v0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;->model:Ljava/lang/Object;

    const-string v0, "nb"

    invoke-static {p1, v0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->toggle(Ljava/lang/String;)V

    return v2

    :cond_25
    invoke-static {p1, v0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->popup(Landroid/view/View;Lcom/shabakaty/cinemana/ca1/ContinueActions262$Bound;)V

    return v2
.end method
