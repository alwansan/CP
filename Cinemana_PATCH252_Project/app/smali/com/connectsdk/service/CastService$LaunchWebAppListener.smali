.class public interface abstract Lcom/connectsdk/service/CastService$LaunchWebAppListener;
.super Ljava/lang/Object;
.source "CastService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/connectsdk/service/CastService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LaunchWebAppListener"
.end annotation


# virtual methods
.method public abstract onFailure(Lcom/connectsdk/service/command/ServiceCommandError;)V
.end method

.method public abstract onSuccess(Lcom/connectsdk/service/sessions/WebAppSession;)V
.end method
