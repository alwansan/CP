.class Lcom/shabakaty/cinemana/local/LocalAccountActivity$2$1;
.super Ljava/lang/Object;
.source "LocalAccountActivity.java"

# interfaces
.implements Lcom/shabakaty/cinemana/local/LocalAccountActivity$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/local/LocalAccountActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shabakaty/cinemana/local/LocalAccountActivity$2;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/shabakaty/cinemana/local/LocalAccountActivity$2;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$2$1;->this$1:Lcom/shabakaty/cinemana/local/LocalAccountActivity$2;

    iput-object p2, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$2$1;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$2$1;->val$value:Ljava/lang/String;

    iget-object v2, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$2$1;->this$1:Lcom/shabakaty/cinemana/local/LocalAccountActivity$2;

    iget-object v2, v2, Lcom/shabakaty/cinemana/local/LocalAccountActivity$2;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    invoke-static {v2}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->access$300(Lcom/shabakaty/cinemana/local/LocalAccountActivity;)[B

    move-result-object v2

    if-nez v2, :cond_15

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->avatar()[B

    move-result-object v2

    goto :goto_1d

    :cond_15
    iget-object v2, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$2$1;->this$1:Lcom/shabakaty/cinemana/local/LocalAccountActivity$2;

    iget-object v2, v2, Lcom/shabakaty/cinemana/local/LocalAccountActivity$2;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    invoke-static {v2}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->access$300(Lcom/shabakaty/cinemana/local/LocalAccountActivity;)[B

    move-result-object v2

    :goto_1d
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->profile(Ljava/lang/String;[B)V

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->updateProfile()V

    return-void
.end method
