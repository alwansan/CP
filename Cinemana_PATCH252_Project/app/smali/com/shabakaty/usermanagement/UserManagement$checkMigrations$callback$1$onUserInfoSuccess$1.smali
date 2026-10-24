.class public final Lcom/shabakaty/usermanagement/UserManagement$checkMigrations$callback$1$onUserInfoSuccess$1;
.super Ljava/lang/Object;
.source "UserManagement.kt"

# interfaces
.implements Lcom/shabakaty/downloader/xc0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/usermanagement/UserManagement$checkMigrations$callback$1;->onUserInfoSuccess(Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/xc0<",
        "Ljava/lang/Throwable;",
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
        "\u0000\u0010\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "",
        "kotlin.jvm.PlatformType",
        "it",
        "Lcom/shabakaty/downloader/qv4;",
        "accept",
        "(Ljava/lang/Throwable;)V",
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
.field public static final INSTANCE:Lcom/shabakaty/usermanagement/UserManagement$checkMigrations$callback$1$onUserInfoSuccess$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/usermanagement/UserManagement$checkMigrations$callback$1$onUserInfoSuccess$1;

    invoke-direct {v0}, Lcom/shabakaty/usermanagement/UserManagement$checkMigrations$callback$1$onUserInfoSuccess$1;-><init>()V

    sput-object v0, Lcom/shabakaty/usermanagement/UserManagement$checkMigrations$callback$1$onUserInfoSuccess$1;->INSTANCE:Lcom/shabakaty/usermanagement/UserManagement$checkMigrations$callback$1$onUserInfoSuccess$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/shabakaty/usermanagement/UserManagement$checkMigrations$callback$1$onUserInfoSuccess$1;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final accept(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "USER_MANAGEMENT"

    const-string v1, "checkMigrations-OnUserInfoSuccess"

    .line 2
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
