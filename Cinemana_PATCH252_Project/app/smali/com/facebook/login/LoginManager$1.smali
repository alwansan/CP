.class public Lcom/facebook/login/LoginManager$1;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/facebook/internal/CallbackManagerImpl$Callback;


# instance fields
.field public final synthetic a:Lcom/facebook/FacebookCallback;

.field public final synthetic b:Lcom/facebook/login/LoginManager;


# direct methods
.method public constructor <init>(Lcom/facebook/login/LoginManager;Lcom/facebook/FacebookCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/login/LoginManager$1;->b:Lcom/facebook/login/LoginManager;

    iput-object p2, p0, Lcom/facebook/login/LoginManager$1;->a:Lcom/facebook/FacebookCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Intent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/login/LoginManager$1;->b:Lcom/facebook/login/LoginManager;

    iget-object v1, p0, Lcom/facebook/login/LoginManager$1;->a:Lcom/facebook/FacebookCallback;

    invoke-virtual {v0, p1, p2, v1}, Lcom/facebook/login/LoginManager;->d(ILandroid/content/Intent;Lcom/facebook/FacebookCallback;)Z

    const/4 p1, 0x1

    return p1
.end method
