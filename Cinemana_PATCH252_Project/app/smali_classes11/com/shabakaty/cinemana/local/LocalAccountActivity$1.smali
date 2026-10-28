.class Lcom/shabakaty/cinemana/local/LocalAccountActivity$1;
.super Ljava/lang/Object;
.source "LocalAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/local/LocalAccountActivity;->work(Lcom/shabakaty/cinemana/local/LocalAccountActivity$Task;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

.field final synthetic val$success:Ljava/lang/String;

.field final synthetic val$task:Lcom/shabakaty/cinemana/local/LocalAccountActivity$Task;


# direct methods
.method constructor <init>(Lcom/shabakaty/cinemana/local/LocalAccountActivity;Lcom/shabakaty/cinemana/local/LocalAccountActivity$Task;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$1;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    iput-object p2, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$1;->val$task:Lcom/shabakaty/cinemana/local/LocalAccountActivity$Task;

    iput-object p3, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$1;->val$success:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$run$0$com-shabakaty-cinemana-local-LocalAccountActivity$1(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$1;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->access$102(Lcom/shabakaty/cinemana/local/LocalAccountActivity;Z)Z

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$1;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$1;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    invoke-static {v0, p1}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->access$200(Lcom/shabakaty/cinemana/local/LocalAccountActivity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$1;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    invoke-static {p1}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->access$400(Lcom/shabakaty/cinemana/local/LocalAccountActivity;)Z

    move-result p1

    if-eqz p1, :cond_3e

    iget-object p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$1;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$1;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3e

    const v0, 0x10008000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$1;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    invoke-virtual {v0, p1}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$1;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->finish()V

    return-void

    :cond_3e
    iget-object p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$1;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    invoke-static {p1}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->access$500(Lcom/shabakaty/cinemana/local/LocalAccountActivity;)V

    :cond_43
    return-void
.end method

.method synthetic lambda$run$1$com-shabakaty-cinemana-local-LocalAccountActivity$1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$1;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    invoke-static {p1}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->access$300(Lcom/shabakaty/cinemana/local/LocalAccountActivity;)V

    return-void
.end method

.method synthetic lambda$run$2$com-shabakaty-cinemana-local-LocalAccountActivity$1()V
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$1;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->access$102(Lcom/shabakaty/cinemana/local/LocalAccountActivity;Z)Z

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$1;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$1;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    const-string v1, "\u062a\u0639\u0630\u0631 \u0625\u0643\u0645\u0627\u0644 \u0627\u0644\u0639\u0645\u0644\u064a\u0629\u061b \u0631\u0627\u062c\u0639 \u0633\u062c\u0644 \u0627\u0644\u062a\u0634\u062e\u064a\u0635."

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->access$200(Lcom/shabakaty/cinemana/local/LocalAccountActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$1;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->access$000(Lcom/shabakaty/cinemana/local/LocalAccountActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "backup_export"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    new-instance v0, Lcom/shabakaty/cinemana/local/AccountUi$Builder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$1;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    invoke-direct {v0, v1}, Lcom/shabakaty/cinemana/local/AccountUi$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u0637\u0631\u064a\u0642\u0629 \u062d\u0641\u0638 \u0628\u062f\u064a\u0644\u0629"

    invoke-virtual {v0, v1}, Lcom/shabakaty/cinemana/local/AccountUi$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u064a\u0645\u0643\u0646 \u0627\u062e\u062a\u064a\u0627\u0631 \u0645\u0644\u0641 ZIP \u0645\u0628\u0627\u0634\u0631\u0629 \u0628\u062f\u0644\u0627\u064b \u0645\u0646 \u0627\u0644\u0645\u062c\u0644\u062f."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/shabakaty/cinemana/local/LocalAccountActivity$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity$1$$ExternalSyntheticLambda2;-><init>(Lcom/shabakaty/cinemana/local/LocalAccountActivity$1;)V

    const-string v2, "\u062d\u0641\u0638 \u0645\u0644\u0641 ZIP"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0625\u063a\u0644\u0627\u0642"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_4b
    return-void
.end method

.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$1;->val$task:Lcom/shabakaty/cinemana/local/LocalAccountActivity$Task;

    invoke-interface {v0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity$Task;->run()V

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$1;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$1;->val$success:Ljava/lang/String;

    new-instance v2, Lcom/shabakaty/cinemana/local/LocalAccountActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/shabakaty/cinemana/local/LocalAccountActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/shabakaty/cinemana/local/LocalAccountActivity$1;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_26

    :catch_12
    move-exception v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$1;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    invoke-static {v1}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->access$000(Lcom/shabakaty/cinemana/local/LocalAccountActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$1;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    new-instance v1, Lcom/shabakaty/cinemana/local/LocalAccountActivity$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity$1$$ExternalSyntheticLambda1;-><init>(Lcom/shabakaty/cinemana/local/LocalAccountActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_26
    return-void
.end method
