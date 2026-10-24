.class public abstract Lcom/shabakaty/usermanagement/di/UserManagementModule;
.super Ljava/lang/Object;
.source "UserManagementModule.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/usermanagement/di/UserManagementModule$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\'\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/shabakaty/usermanagement/di/UserManagementModule;",
        "",
        "Companion",
        "usermanagement_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/shabakaty/usermanagement/di/UserManagementModule$Companion;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/usermanagement/di/UserManagementModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/usermanagement/di/UserManagementModule$Companion;-><init>(Lcom/shabakaty/downloader/nn0;)V

    sput-object v0, Lcom/shabakaty/usermanagement/di/UserManagementModule;->Companion:Lcom/shabakaty/usermanagement/di/UserManagementModule$Companion;

    return-void
.end method
