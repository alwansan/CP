.class Lcom/shabakaty/cinemana/local/LocalAccountActivity$9;
.super Ljava/lang/Object;
.source "LocalAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/local/LocalAccountActivity;->render()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;


# direct methods
.method constructor <init>(Lcom/shabakaty/cinemana/local/LocalAccountActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$9;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$run$0$com-shabakaty-cinemana-local-LocalAccountActivity$9(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$9;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    const-string p2, "application/zip"

    const/4 v0, 0x3

    invoke-static {p1, p2, v0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->access$000(Lcom/shabakaty/cinemana/local/LocalAccountActivity;Ljava/lang/String;I)V

    return-void
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$9;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->access$600(Lcom/shabakaty/cinemana/local/LocalAccountActivity;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$9;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u0627\u0644\u0627\u0633\u062a\u064a\u0631\u0627\u062f \u064a\u0633\u062a\u0628\u062f\u0644 \u0628\u064a\u0627\u0646\u0627\u062a \u0627\u0644\u062d\u0633\u0627\u0628 \u0627\u0644\u0645\u062d\u0644\u064a \u0627\u0644\u062d\u0627\u0644\u064a\u0629 \u0628\u0628\u064a\u0627\u0646\u0627\u062a \u0627\u0644\u0646\u0633\u062e\u0629. \u0627\u0644\u062a\u0646\u0632\u064a\u0644\u0627\u062a \u0644\u0627 \u062a\u062a\u063a\u064a\u0631."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0625\u0644\u063a\u0627\u0621"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/shabakaty/cinemana/local/LocalAccountActivity$9$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity$9$$ExternalSyntheticLambda0;-><init>(Lcom/shabakaty/cinemana/local/LocalAccountActivity$9;)V

    const-string v2, "\u0627\u062e\u062a\u064a\u0627\u0631 \u0627\u0644\u0646\u0633\u062e\u0629"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
