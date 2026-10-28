.class Lcom/shabakaty/cinemana/local/LocalRuntime$LocalSingle$1;
.super Ljava/lang/Object;
.source "LocalRuntime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/local/LocalRuntime$LocalSingle;->l(Lcom/shabakaty/downloader/y74;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shabakaty/cinemana/local/LocalRuntime$LocalSingle;

.field final synthetic val$cancel:Lcom/shabakaty/cinemana/local/LocalRuntime$Cancel;

.field final synthetic val$observer:Lcom/shabakaty/downloader/y74;


# direct methods
.method constructor <init>(Lcom/shabakaty/cinemana/local/LocalRuntime$LocalSingle;Lcom/shabakaty/cinemana/local/LocalRuntime$Cancel;Lcom/shabakaty/downloader/y74;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$LocalSingle$1;->this$0:Lcom/shabakaty/cinemana/local/LocalRuntime$LocalSingle;

    iput-object p2, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$LocalSingle$1;->val$cancel:Lcom/shabakaty/cinemana/local/LocalRuntime$Cancel;

    iput-object p3, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$LocalSingle$1;->val$observer:Lcom/shabakaty/downloader/y74;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$LocalSingle$1;->val$cancel:Lcom/shabakaty/cinemana/local/LocalRuntime$Cancel;

    iget-boolean v0, v0, Lcom/shabakaty/cinemana/local/LocalRuntime$Cancel;->cancelled:Z

    if-eqz v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$LocalSingle$1;->this$0:Lcom/shabakaty/cinemana/local/LocalRuntime$LocalSingle;

    iget-object v0, v0, Lcom/shabakaty/cinemana/local/LocalRuntime$LocalSingle;->call:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$LocalSingle$1;->val$cancel:Lcom/shabakaty/cinemana/local/LocalRuntime$Cancel;

    iget-boolean v1, v1, Lcom/shabakaty/cinemana/local/LocalRuntime$Cancel;->cancelled:Z

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$LocalSingle$1;->val$observer:Lcom/shabakaty/downloader/y74;

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/y74;->onSuccess(Ljava/lang/Object;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1a} :catch_1b

    goto :goto_2c

    :catch_1b
    move-exception v0

    const-string v1, "local_operation"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$LocalSingle$1;->val$cancel:Lcom/shabakaty/cinemana/local/LocalRuntime$Cancel;

    iget-boolean v1, v1, Lcom/shabakaty/cinemana/local/LocalRuntime$Cancel;->cancelled:Z

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$LocalSingle$1;->val$observer:Lcom/shabakaty/downloader/y74;

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/y74;->b(Ljava/lang/Throwable;)V

    :cond_2c
    :goto_2c
    return-void
.end method
