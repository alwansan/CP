.class public Lcom/facebook/login/LoginManager$3;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/facebook/internal/CallbackManagerImpl$Callback;


# instance fields
.field public final synthetic a:Lcom/facebook/login/LoginManager;


# direct methods
.method public constructor <init>(Lcom/facebook/login/LoginManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/login/LoginManager$3;->a:Lcom/facebook/login/LoginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Intent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/login/LoginManager$3;->a:Lcom/facebook/login/LoginManager;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, p2, v1}, Lcom/facebook/login/LoginManager;->d(ILandroid/content/Intent;Lcom/facebook/FacebookCallback;)Z

    const/4 p1, 0x1

    return p1
.end method
