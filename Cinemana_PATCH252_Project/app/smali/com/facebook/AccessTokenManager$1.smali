.class public Lcom/facebook/AccessTokenManager$1;
.super Ljava/lang/Object;
.source "AccessTokenManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

.field public final synthetic s:Lcom/facebook/AccessTokenManager;


# direct methods
.method public constructor <init>(Lcom/facebook/AccessTokenManager;Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/AccessTokenManager$1;->s:Lcom/facebook/AccessTokenManager;

    iput-object p2, p0, Lcom/facebook/AccessTokenManager$1;->r:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/AccessTokenManager$1;->s:Lcom/facebook/AccessTokenManager;

    iget-object v1, p0, Lcom/facebook/AccessTokenManager$1;->r:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    .line 2
    invoke-virtual {v0, v1}, Lcom/facebook/AccessTokenManager;->b(Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V

    return-void
.end method
