.class public final Lcom/shabakaty/usermanagement/UserManagement$loginResult$1;
.super Ljava/lang/Object;
.source "UserManagement.kt"

# interfaces
.implements Lcom/shabakaty/downloader/j2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/usermanagement/UserManagement;->loginResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lcom/shabakaty/downloader/qv4;",
        "run",
        "()V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public final synthetic $success:Z

.field public final synthetic this$0:Lcom/shabakaty/usermanagement/UserManagement;


# direct methods
.method public constructor <init>(Lcom/shabakaty/usermanagement/UserManagement;Z)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/usermanagement/UserManagement$loginResult$1;->this$0:Lcom/shabakaty/usermanagement/UserManagement;

    iput-boolean p2, p0, Lcom/shabakaty/usermanagement/UserManagement$loginResult$1;->$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/UserManagement$loginResult$1;->this$0:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-static {v0}, Lcom/shabakaty/usermanagement/UserManagement;->access$getLoginCallback$p(Lcom/shabakaty/usermanagement/UserManagement;)Lcom/shabakaty/usermanagement/callbacks/LoginCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/shabakaty/usermanagement/UserManagement$loginResult$1;->$success:Z

    invoke-interface {v0, v1}, Lcom/shabakaty/usermanagement/callbacks/LoginCallback;->onLoginResult(Z)V

    :cond_0
    return-void
.end method
