.class public final synthetic Lcom/shabakaty/downloader/ww;
.super Ljava/lang/Object;


# direct methods
.method public static a(ILjava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 1

    new-instance v0, Lcom/connectsdk/service/command/ServiceCommandError;

    invoke-direct {v0, p0, p1, p2}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p3, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method
