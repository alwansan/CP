.class Lcom/shabakaty/cinemana/local/LocalRuntime$CategorySingle$1;
.super Ljava/lang/Object;
.source "LocalRuntime.java"

# interfaces
.implements Lcom/shabakaty/downloader/y74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/local/LocalRuntime$CategorySingle;->l(Lcom/shabakaty/downloader/y74;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shabakaty/cinemana/local/LocalRuntime$CategorySingle;

.field final synthetic val$o:Lcom/shabakaty/downloader/y74;


# direct methods
.method constructor <init>(Lcom/shabakaty/cinemana/local/LocalRuntime$CategorySingle;Lcom/shabakaty/downloader/y74;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$CategorySingle$1;->this$0:Lcom/shabakaty/cinemana/local/LocalRuntime$CategorySingle;

    iput-object p2, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$CategorySingle$1;->val$o:Lcom/shabakaty/downloader/y74;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$CategorySingle$1;->val$o:Lcom/shabakaty/downloader/y74;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/y74;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lcom/shabakaty/downloader/mu0;)V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$CategorySingle$1;->val$o:Lcom/shabakaty/downloader/y74;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/y74;->c(Lcom/shabakaty/downloader/mu0;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$CategorySingle$1;->val$o:Lcom/shabakaty/downloader/y74;

    invoke-static {p1}, Lcom/shabakaty/cinemana/local/LocalRuntime;->categories(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/y74;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
