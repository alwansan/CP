.class Lcom/connectsdk/service/WebOSTVService$32;
.super Ljava/lang/Object;
.source "WebOSTVService.java"

# interfaces
.implements Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection$WebOSTVMouseSocketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/WebOSTVService;->move(DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/WebOSTVService;

.field public final synthetic val$dx:D

.field public final synthetic val$dy:D


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/WebOSTVService;DD)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/WebOSTVService$32;->this$0:Lcom/connectsdk/service/WebOSTVService;

    iput-wide p2, p0, Lcom/connectsdk/service/WebOSTVService$32;->val$dx:D

    iput-wide p4, p0, Lcom/connectsdk/service/WebOSTVService$32;->val$dy:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService$32;->this$0:Lcom/connectsdk/service/WebOSTVService;

    iget-object v0, v0, Lcom/connectsdk/service/WebOSTVService;->mouseSocket:Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;

    iget-wide v1, p0, Lcom/connectsdk/service/WebOSTVService$32;->val$dx:D

    iget-wide v3, p0, Lcom/connectsdk/service/WebOSTVService$32;->val$dy:D

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/connectsdk/service/webos/WebOSTVMouseSocketConnection;->move(DD)V

    return-void
.end method
