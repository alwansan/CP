.class public final Lcom/facebook/internal/Utility$1;
.super Ljava/lang/Object;
.source "Utility.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/Utility;->l(Ljava/lang/String;Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/internal/Utility$1;->a:Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;

    iput-object p2, p0, Lcom/facebook/internal/Utility$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/facebook/GraphResponse;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/facebook/GraphResponse;->c:Lcom/facebook/FacebookRequestError;

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/facebook/internal/Utility$1;->a:Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;

    .line 3
    iget-object v0, v0, Lcom/facebook/FacebookRequestError;->z:Lcom/facebook/FacebookException;

    .line 4
    invoke-interface {p1, v0}, Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;->b(Lcom/facebook/FacebookException;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/Utility$1;->b:Ljava/lang/String;

    .line 6
    iget-object v1, p1, Lcom/facebook/GraphResponse;->b:Lorg/json/JSONObject;

    .line 7
    sget-object v2, Lcom/facebook/internal/ProfileInformationCache;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/facebook/internal/Utility$1;->a:Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;

    .line 9
    iget-object p1, p1, Lcom/facebook/GraphResponse;->b:Lorg/json/JSONObject;

    .line 10
    invoke-interface {v0, p1}, Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;->a(Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method
