.class Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$11$1;
.super Ljava/lang/Object;
.source "ContinueActions262.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$11;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$11;

.field final synthetic val$from:Landroid/widget/EditText;

.field final synthetic val$scope:Ljava/util/List;

.field final synthetic val$to:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$11;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$11$1;->this$1:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$11;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$11$1;->val$from:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$11$1;->val$to:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$11$1;->val$scope:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    :try_start_0
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$11$1;->val$from:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$11$1;->val$to:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-ltz p1, :cond_56

    if-lt p2, p1, :cond_56

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$11$1;->val$scope:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_26
    :cond_26
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_30} :catch_5c

    :try_start_30
    const-string v2, "episodeNummer"

    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lt v2, p1, :cond_26

    if-gt v2, p2, :cond_26

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$11$1;->this$1:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$11;

    iget-object v2, v2, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$11;->this$0:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

    iget-object v2, v2, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->selected:Ljava/util/LinkedHashSet;

    const-string v3, "nb"

    invoke-static {v1, v3}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_4d
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_4d} :catch_26

    goto :goto_26

    :cond_4e
    :try_start_4e
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$11$1;->this$1:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$11;

    iget-object p1, p1, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$11;->this$0:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->update()V

    goto :goto_7a

    :cond_56
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1}, Ljava/lang/NumberFormatException;-><init>()V

    throw p1
    :try_end_5c
    .catch Ljava/lang/NumberFormatException; {:try_start_4e .. :try_end_5c} :catch_5c

    :catch_5c
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$11$1;->this$1:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$11;

    iget-object p1, p1, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$11;->this$0:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

    iget-object p1, p1, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u0623\u062f\u062e\u0644 \u0646\u0637\u0627\u0642 \u062d\u0644\u0642\u0627\u062a \u0635\u062d\u064a\u062d\u064b\u0627"

    invoke-static {p2}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_7a
    return-void
.end method
