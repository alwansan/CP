.class public final Lcom/shabakaty/usermanagement/UserManagement$observeLoginState$2;
.super Ljava/lang/Object;
.source "UserManagement.kt"

# interfaces
.implements Lcom/shabakaty/downloader/in1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/usermanagement/UserManagement;->observeLoginState()Lcom/shabakaty/downloader/qf1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/in1<",
        "Ljava/lang/Throwable;",
        "Lcom/shabakaty/usermanagement/utils/LoginState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0006\u001a\n \u0003*\u0004\u0018\u00010\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "",
        "it",
        "Lcom/shabakaty/usermanagement/utils/LoginState;",
        "kotlin.jvm.PlatformType",
        "apply",
        "(Ljava/lang/Throwable;)Lcom/shabakaty/usermanagement/utils/LoginState;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/shabakaty/usermanagement/UserManagement$observeLoginState$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/usermanagement/UserManagement$observeLoginState$2;

    invoke-direct {v0}, Lcom/shabakaty/usermanagement/UserManagement$observeLoginState$2;-><init>()V

    sput-object v0, Lcom/shabakaty/usermanagement/UserManagement$observeLoginState$2;->INSTANCE:Lcom/shabakaty/usermanagement/UserManagement$observeLoginState$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Throwable;)Lcom/shabakaty/usermanagement/utils/LoginState;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/shabakaty/usermanagement/utils/LoginState;->LOGGED_OUT:Lcom/shabakaty/usermanagement/utils/LoginState;

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/shabakaty/usermanagement/UserManagement$observeLoginState$2;->apply(Ljava/lang/Throwable;)Lcom/shabakaty/usermanagement/utils/LoginState;

    move-result-object p1

    return-object p1
.end method
