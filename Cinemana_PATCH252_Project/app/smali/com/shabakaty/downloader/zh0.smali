.class public final Lcom/shabakaty/downloader/zh0;
.super Ljava/lang/Object;
.source "DLNAControllerService.kt"

# interfaces
.implements Lcom/connectsdk/service/capability/listeners/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/vj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/vj3<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lcom/shabakaty/downloader/ho3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vj3;ILcom/shabakaty/downloader/ho3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/vj3<",
            "Ljava/lang/Long;",
            ">;I",
            "Lcom/shabakaty/downloader/ho3;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/zh0;->a:Lcom/shabakaty/downloader/vj3;

    iput-object p3, p0, Lcom/shabakaty/downloader/zh0;->b:Lcom/shabakaty/downloader/ho3;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {}, Lcom/shabakaty/downloader/hc1;->a()Lcom/shabakaty/downloader/hc1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/hc1;->b(Ljava/lang/Throwable;)V

    .line 2
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/zh0;->a:Lcom/shabakaty/downloader/vj3;

    const/16 v0, 0xfa

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/vj3;->e(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/zh0;->b:Lcom/shabakaty/downloader/ho3;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/shabakaty/downloader/ho3;->r:Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/zh0;->a:Lcom/shabakaty/downloader/vj3;

    const/16 v0, 0xfa

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/vj3;->e(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/zh0;->b:Lcom/shabakaty/downloader/ho3;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/shabakaty/downloader/ho3;->r:Z

    return-void
.end method
