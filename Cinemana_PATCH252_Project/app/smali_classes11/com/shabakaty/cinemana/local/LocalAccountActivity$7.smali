.class Lcom/shabakaty/cinemana/local/LocalAccountActivity$7;
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

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$7;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$7;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->access$500(Lcom/shabakaty/cinemana/local/LocalAccountActivity;Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;)V

    return-void
.end method
