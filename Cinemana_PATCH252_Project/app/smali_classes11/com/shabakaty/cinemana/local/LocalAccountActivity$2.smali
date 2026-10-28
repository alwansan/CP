.class Lcom/shabakaty/cinemana/local/LocalAccountActivity$2;
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

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$2;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$2;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->access$100(Lcom/shabakaty/cinemana/local/LocalAccountActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$2;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    const-string v1, "\u0627\u0643\u062a\u0628 \u0627\u0644\u0627\u0633\u0645 \u0623\u0648\u0644\u0627\u064b"

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->access$200(Lcom/shabakaty/cinemana/local/LocalAccountActivity;Ljava/lang/String;)V

    return-void

    :cond_20
    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$2;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    new-instance v2, Lcom/shabakaty/cinemana/local/LocalAccountActivity$2$1;

    invoke-direct {v2, p0, v0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity$2$1;-><init>(Lcom/shabakaty/cinemana/local/LocalAccountActivity$2;Ljava/lang/String;)V

    const-string v0, "\u062a\u0645 \u062d\u0641\u0638 \u0627\u0644\u062d\u0633\u0627\u0628"

    invoke-static {v1, v2, v0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->access$400(Lcom/shabakaty/cinemana/local/LocalAccountActivity;Lcom/shabakaty/cinemana/local/LocalAccountActivity$Task;Ljava/lang/String;)V

    return-void
.end method
