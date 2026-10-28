.class Lcom/shabakaty/cinemana/local/LocalAccountActivity$12;
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

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$12;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$run$0$com-shabakaty-cinemana-local-LocalAccountActivity$12(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$12;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$12;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->access$700(Lcom/shabakaty/cinemana/local/LocalAccountActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_11
    return-void
.end method

.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->avatar()[B

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_d

    const/4 v0, 0x0

    goto :goto_13

    :cond_d
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_13
    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$12;->this$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    new-instance v2, Lcom/shabakaty/cinemana/local/LocalAccountActivity$12$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/shabakaty/cinemana/local/LocalAccountActivity$12$$ExternalSyntheticLambda0;-><init>(Lcom/shabakaty/cinemana/local/LocalAccountActivity$12;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_24

    :catch_1e
    move-exception v0

    const-string v1, "profile_load"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_24
    return-void
.end method
