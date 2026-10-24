.class public interface abstract Lcom/shabakaty/usermanagement/callbacks/RegisterCallback;
.super Ljava/lang/Object;
.source "RegisterCallback.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u001a\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H&\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/shabakaty/usermanagement/callbacks/RegisterCallback;",
        "",
        "",
        "success",
        "Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrors;",
        "errors",
        "Lcom/shabakaty/downloader/qv4;",
        "onRegisterResult",
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
.method public abstract onRegisterResult(ZLcom/shabakaty/usermanagement/data/model/domain/RegistrationErrors;)V
.end method
