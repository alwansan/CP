.class Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection$1;
.super Lcom/shabakaty/downloader/w55;
.source "WebOSTVMouseSocketConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;->connectPointer(Ljava/net/URI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;Ljava/net/URI;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection$1;->this$0:Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/w55;-><init>(Ljava/net/URI;)V

    return-void
.end method


# virtual methods
.method public onClose(ILjava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onOpen(Lcom/shabakaty/downloader/e14;)V
    .locals 1

    const-string p1, "connected to "

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/shabakaty/downloader/w55;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PtrAndKeyboardFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection$1;->this$0:Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;

    iget-object p1, p1, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;->listener:Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection$WebOSTVMouseSocketListener;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection$WebOSTVMouseSocketListener;->onConnected()V

    :cond_0
    return-void
.end method
