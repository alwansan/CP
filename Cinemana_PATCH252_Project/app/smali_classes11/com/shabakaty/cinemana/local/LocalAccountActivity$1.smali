.class Lcom/shabakaty/cinemana/local/LocalAccountActivity$1;
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

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$1;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$1;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    const-string v1, "image/*"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->access$000(Lcom/shabakaty/cinemana/local/LocalAccountActivity;Ljava/lang/String;I)V

    return-void
.end method
