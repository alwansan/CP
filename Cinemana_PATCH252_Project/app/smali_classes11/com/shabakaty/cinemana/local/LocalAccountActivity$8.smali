.class Lcom/shabakaty/cinemana/local/LocalAccountActivity$8;
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

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$8;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$8;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->access$600(Lcom/shabakaty/cinemana/local/LocalAccountActivity;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$8;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
