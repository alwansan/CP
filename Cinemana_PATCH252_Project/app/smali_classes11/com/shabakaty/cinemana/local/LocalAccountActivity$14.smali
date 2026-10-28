.class Lcom/shabakaty/cinemana/local/LocalAccountActivity$14;
.super Ljava/lang/Object;
.source "LocalAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/local/LocalAccountActivity;->showList(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

.field final synthetic val$kind:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;


# direct methods
.method constructor <init>(Lcom/shabakaty/cinemana/local/LocalAccountActivity;Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$14;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    iput-object p2, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$14;->val$kind:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v0

    iget-object p1, p1, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->remove(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$run$1$com-shabakaty-cinemana-local-LocalAccountActivity$14(Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p4, :cond_a

    iget-object p2, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$14;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    iget-object p1, p1, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->access$1000(Lcom/shabakaty/cinemana/local/LocalAccountActivity;Ljava/lang/String;)V

    goto :goto_16

    :cond_a
    iget-object p3, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$14;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    new-instance p4, Lcom/shabakaty/cinemana/local/LocalAccountActivity$14$$ExternalSyntheticLambda1;

    invoke-direct {p4, p2, p1}, Lcom/shabakaty/cinemana/local/LocalAccountActivity$14$$ExternalSyntheticLambda1;-><init>(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;)V

    const-string p1, "\u062a\u0645\u062a \u0627\u0644\u0625\u0632\u0627\u0644\u0629"

    invoke-static {p3, p4, p1}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->access$400(Lcom/shabakaty/cinemana/local/LocalAccountActivity;Lcom/shabakaty/cinemana/local/LocalAccountActivity$Task;Ljava/lang/String;)V

    :goto_16
    return-void
.end method

.method synthetic lambda$run$2$com-shabakaty-cinemana-local-LocalAccountActivity$14(Ljava/util/List;Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    new-instance p3, Landroid/app/AlertDialog$Builder;

    iget-object p4, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$14;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    invoke-direct {p3, p4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p4, p1, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->title:Ljava/lang/String;

    invoke-virtual {p3, p4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    if-nez p2, :cond_1c

    const-string p4, "\u0641\u062a\u062d \u0627\u0644\u062d\u0644\u0642\u0629"

    filled-new-array {p4}, [Ljava/lang/String;

    move-result-object p4

    goto :goto_24

    :cond_1c
    const-string p4, "\u0641\u062a\u062d \u0627\u0644\u0639\u0645\u0644"

    const-string v0, "\u0625\u0632\u0627\u0644\u0629 \u0645\u0646 \u0627\u0644\u0642\u0627\u0626\u0645\u0629"

    filled-new-array {p4, v0}, [Ljava/lang/String;

    move-result-object p4

    :goto_24
    new-instance v0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$14$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/shabakaty/cinemana/local/LocalAccountActivity$14$$ExternalSyntheticLambda3;-><init>(Lcom/shabakaty/cinemana/local/LocalAccountActivity$14;Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;)V

    invoke-virtual {p3, p4, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "\u0631\u062c\u0648\u0639"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$run$3$com-shabakaty-cinemana-local-LocalAccountActivity$14(Ljava/util/List;Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;)V
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$14;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_1f

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    iget-object v3, v3, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->title:Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1f
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$14;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-nez p2, :cond_2b

    const-string v2, "\u0627\u0644\u0625\u0634\u0639\u0627\u0631\u0627\u062a"

    goto :goto_2d

    :cond_2b
    const-string v2, "\u0639\u0646\u0627\u0635\u0631 \u0627\u0644\u062d\u0633\u0627\u0628"

    :goto_2d
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/shabakaty/cinemana/local/LocalAccountActivity$14$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, p2}, Lcom/shabakaty/cinemana/local/LocalAccountActivity$14$$ExternalSyntheticLambda2;-><init>(Lcom/shabakaty/cinemana/local/LocalAccountActivity$14;Ljava/util/List;Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "\u0625\u063a\u0644\u0627\u0642"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$14;->val$kind:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    if-nez v0, :cond_d

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->inbox()Ljava/util/List;

    move-result-object v0

    goto :goto_17

    :cond_d
    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$14;->val$kind:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-virtual {v0, v1}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->list(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;)Ljava/util/List;

    move-result-object v0

    :goto_17
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$14;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    iget-object v2, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$14;->val$kind:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    new-instance v3, Lcom/shabakaty/cinemana/local/LocalAccountActivity$14$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v2}, Lcom/shabakaty/cinemana/local/LocalAccountActivity$14$$ExternalSyntheticLambda0;-><init>(Lcom/shabakaty/cinemana/local/LocalAccountActivity$14;Ljava/util/List;Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;)V

    invoke-virtual {v1, v3}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    goto :goto_2d

    :catch_27
    move-exception v0

    const-string v1, "list_ui"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2d
    return-void
.end method
