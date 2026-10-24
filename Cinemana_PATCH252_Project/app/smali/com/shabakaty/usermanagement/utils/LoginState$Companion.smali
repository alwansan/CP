.class public final Lcom/shabakaty/usermanagement/utils/LoginState$Companion;
.super Ljava/lang/Object;
.source "LoginState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/usermanagement/utils/LoginState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/shabakaty/usermanagement/utils/LoginState$Companion;",
        "",
        "",
        "id",
        "Lcom/shabakaty/usermanagement/utils/LoginState;",
        "fromId",
        "<init>",
        "()V",
        "usermanagement_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/nn0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/shabakaty/usermanagement/utils/LoginState$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromId(I)Lcom/shabakaty/usermanagement/utils/LoginState;
    .locals 6

    .line 1
    invoke-static {}, Lcom/shabakaty/usermanagement/utils/LoginState;->values()[Lcom/shabakaty/usermanagement/utils/LoginState;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 3
    invoke-virtual {v4}, Lcom/shabakaty/usermanagement/utils/LoginState;->getId()I

    move-result v5

    if-ne v5, p1, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    sget-object v4, Lcom/shabakaty/usermanagement/utils/LoginState;->LOGGED_OUT:Lcom/shabakaty/usermanagement/utils/LoginState;

    :goto_3
    return-object v4
.end method
