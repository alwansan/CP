.class Lcom/connectsdk/core/Util$2;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$listener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

.field public final synthetic val$object:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/core/Util$2;->val$listener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    iput-object p2, p0, Lcom/connectsdk/core/Util$2;->val$object:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/connectsdk/core/Util$2;->val$listener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    iget-object v1, p0, Lcom/connectsdk/core/Util$2;->val$object:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/connectsdk/service/capability/listeners/ResponseListener;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
