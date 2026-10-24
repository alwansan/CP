.class public interface abstract Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLoginCallback;
.super Ljava/lang/Object;
.source "GoogleLogin.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J\u0008\u0010\u0006\u001a\u00020\u0004H&\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLoginCallback;",
        "",
        "",
        "googleAccessToken",
        "Lcom/shabakaty/downloader/qv4;",
        "onGoogleLoginSuccess",
        "onGoogleLoginFail",
        "usermanagement_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# virtual methods
.method public abstract onGoogleLoginFail()V
.end method

.method public abstract onGoogleLoginSuccess(Ljava/lang/String;)V
.end method
