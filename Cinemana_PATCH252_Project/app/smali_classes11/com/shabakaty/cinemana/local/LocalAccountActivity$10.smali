.class Lcom/shabakaty/cinemana/local/LocalAccountActivity$10;
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

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$10;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->requestScan(Z)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$10;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    const-string v1, "\u062a\u0645 \u0637\u0644\u0628 \u0627\u0644\u0641\u062d\u0635\u061b \u0627\u0644\u0646\u062a\u064a\u062c\u0629 \u062a\u0638\u0647\u0631 \u0641\u064a \u0627\u0644\u0625\u0634\u0639\u0627\u0631\u0627\u062a \u0648\u0627\u0644\u0644\u0648\u0642"

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->access$200(Lcom/shabakaty/cinemana/local/LocalAccountActivity;Ljava/lang/String;)V

    return-void
.end method
