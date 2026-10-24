.class public final Lcom/shabakaty/usermanagement/utils/account/AccountAuthenticator;
.super Lcom/shabakaty/usermanagement/utils/account/SimpleAccountAuthenticator;
.source "AccountAuthenticator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u000e\u0010\u0007\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00050\u0004\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00050\u0004H\u0016R!\u0010\u0007\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00050\u00048\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/shabakaty/usermanagement/utils/account/AccountAuthenticator;",
        "Lcom/shabakaty/usermanagement/utils/account/SimpleAccountAuthenticator;",
        "",
        "provideAuthenticator",
        "Ljava/lang/Class;",
        "Landroid/app/Activity;",
        "provideStartDestination",
        "lunchClass",
        "Ljava/lang/Class;",
        "getLunchClass",
        "()Ljava/lang/Class;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;Ljava/lang/Class;)V",
        "usermanagement_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public final lunchClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lunchClass"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/usermanagement/utils/account/SimpleAccountAuthenticator;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/shabakaty/usermanagement/utils/account/AccountAuthenticator;->lunchClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public provideAuthenticator()Ljava/lang/String;
    .locals 1

    const-string v0, "com.shabakaty.usermanagement"

    return-object v0
.end method

.method public provideStartDestination()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/utils/account/AccountAuthenticator;->lunchClass:Ljava/lang/Class;

    return-object v0
.end method
