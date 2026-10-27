.class Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$12;
.super Ljava/lang/Object;
.source "ContinueActions262.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->chooseScope(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

.field final synthetic val$keys:Ljava/util/List;

.field final synthetic val$range:Z


# direct methods
.method constructor <init>(Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$12;->this$0:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$12;->val$keys:Ljava/util/List;

    iput-boolean p3, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$12;->val$range:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$12;->this$0:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->items()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$12;->val$keys:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->access$200(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "season"

    invoke-static {v1, v4}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_49
    iget-boolean p2, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$12;->val$range:Z

    if-nez p2, :cond_6f

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_51
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_69

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$12;->this$0:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

    iget-object v0, v0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->selected:Ljava/util/LinkedHashSet;

    const-string v1, "nb"

    invoke-static {p2, v1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_51

    :cond_69
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$12;->this$0:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->update()V

    return-void

    :cond_6f
    iget-object p2, p0, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$12;->this$0:Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;

    iget-object p2, p2, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    const-string v3, "\u0645\u0646 \u0627\u0644\u062d\u0644\u0642\u0629"

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const-string v3, "\u0625\u0644\u0649 \u0627\u0644\u062d\u0644\u0642\u0629"

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p2, "\u062a\u062d\u062f\u064a\u062f \u0646\u0637\u0627\u0642"

    invoke-static {p2}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const-string v0, "\u062a\u062d\u062f\u064a\u062f"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$12$1;

    invoke-direct {v3, p0, v1, v2, p1}, Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$12$1;-><init>(Lcom/shabakaty/cinemana/ca1/ContinueActions262$More$12;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/util/List;)V

    invoke-virtual {p2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "\u0625\u0644\u063a\u0627\u0621"

    invoke-static {p2}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
