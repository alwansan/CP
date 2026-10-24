.class public final Lcom/shabakaty/usermanagement/data/model/UserConstants;
.super Ljava/lang/Object;
.source "UserConstants.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/usermanagement/data/model/UserConstants$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/shabakaty/usermanagement/data/model/UserConstants;",
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
.field public static final Companion:Lcom/shabakaty/usermanagement/data/model/UserConstants$Companion;

.field public static final DEFAULT_ACCESS_TOKEN:Ljava/lang/String;

.field public static final DEFAULT_EMAIL:Ljava/lang/String;

.field public static final DEFAULT_FIRST_NAME:Ljava/lang/String;

.field public static final DEFAULT_ID:Ljava/lang/String;

.field public static final DEFAULT_LAST_NAME:Ljava/lang/String;

.field public static final DEFAULT_LOGIN_STATE_ID:I

.field public static final DEFAULT_PICTURE_LARGE:Ljava/lang/String;

.field public static final DEFAULT_PICTURE_SMALL:Ljava/lang/String;

.field public static final DEFAULT_REFRESH_TIME:Ljava/lang/String;

.field public static final DEFAULT_REFRESH_TOKEN:Ljava/lang/String;

.field public static final DEFAULT_TOKEN_TYPE:Ljava/lang/String;

.field public static final DEFAULT_USER_NAME:Ljava/lang/String;

.field public static final KEY_ACCESS_TOKEN:Ljava/lang/String;

.field public static final KEY_EMAIL:Ljava/lang/String;

.field public static final KEY_FIRST_NAME:Ljava/lang/String;

.field public static final KEY_ID:Ljava/lang/String;

.field public static final KEY_LAST_NAME:Ljava/lang/String;

.field public static final KEY_LOGIN_STATE_ID:Ljava/lang/String;

.field public static final KEY_PICTURE_LARGE:Ljava/lang/String;

.field public static final KEY_PICTURE_SMALL:Ljava/lang/String;

.field public static final KEY_REFRESH_TIME:Ljava/lang/String;

.field public static final KEY_REFRESH_TOKEN:Ljava/lang/String;

.field public static final KEY_TOKEN_TYPE:Ljava/lang/String;

.field public static final KEY_USER_NAME:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/usermanagement/data/model/UserConstants$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/usermanagement/data/model/UserConstants$Companion;-><init>(Lcom/shabakaty/downloader/nn0;)V

    sput-object v0, Lcom/shabakaty/usermanagement/data/model/UserConstants;->Companion:Lcom/shabakaty/usermanagement/data/model/UserConstants$Companion;

    const-string v0, "id"

    .line 1
    sput-object v0, Lcom/shabakaty/usermanagement/data/model/UserConstants;->KEY_ID:Ljava/lang/String;

    const-string v0, ""

    .line 2
    sput-object v0, Lcom/shabakaty/usermanagement/data/model/UserConstants;->DEFAULT_ID:Ljava/lang/String;

    const-string v1, "userName"

    .line 3
    sput-object v1, Lcom/shabakaty/usermanagement/data/model/UserConstants;->KEY_USER_NAME:Ljava/lang/String;

    .line 4
    sput-object v0, Lcom/shabakaty/usermanagement/data/model/UserConstants;->DEFAULT_USER_NAME:Ljava/lang/String;

    const-string v1, "firstName"

    .line 5
    sput-object v1, Lcom/shabakaty/usermanagement/data/model/UserConstants;->KEY_FIRST_NAME:Ljava/lang/String;

    .line 6
    sput-object v0, Lcom/shabakaty/usermanagement/data/model/UserConstants;->DEFAULT_FIRST_NAME:Ljava/lang/String;

    const-string v1, "lastName"

    .line 7
    sput-object v1, Lcom/shabakaty/usermanagement/data/model/UserConstants;->KEY_LAST_NAME:Ljava/lang/String;

    .line 8
    sput-object v0, Lcom/shabakaty/usermanagement/data/model/UserConstants;->DEFAULT_LAST_NAME:Ljava/lang/String;

    const-string v1, "email"

    .line 9
    sput-object v1, Lcom/shabakaty/usermanagement/data/model/UserConstants;->KEY_EMAIL:Ljava/lang/String;

    .line 10
    sput-object v0, Lcom/shabakaty/usermanagement/data/model/UserConstants;->DEFAULT_EMAIL:Ljava/lang/String;

    const-string v1, "accessToken"

    .line 11
    sput-object v1, Lcom/shabakaty/usermanagement/data/model/UserConstants;->KEY_ACCESS_TOKEN:Ljava/lang/String;

    .line 12
    sput-object v0, Lcom/shabakaty/usermanagement/data/model/UserConstants;->DEFAULT_ACCESS_TOKEN:Ljava/lang/String;

    const-string v1, "tokenType"

    .line 13
    sput-object v1, Lcom/shabakaty/usermanagement/data/model/UserConstants;->KEY_TOKEN_TYPE:Ljava/lang/String;

    .line 14
    sput-object v0, Lcom/shabakaty/usermanagement/data/model/UserConstants;->DEFAULT_TOKEN_TYPE:Ljava/lang/String;

    const-string v1, "refreshToken"

    .line 15
    sput-object v1, Lcom/shabakaty/usermanagement/data/model/UserConstants;->KEY_REFRESH_TOKEN:Ljava/lang/String;

    .line 16
    sput-object v0, Lcom/shabakaty/usermanagement/data/model/UserConstants;->DEFAULT_REFRESH_TOKEN:Ljava/lang/String;

    const-string v1, "refreshTime"

    .line 17
    sput-object v1, Lcom/shabakaty/usermanagement/data/model/UserConstants;->KEY_REFRESH_TIME:Ljava/lang/String;

    .line 18
    sput-object v0, Lcom/shabakaty/usermanagement/data/model/UserConstants;->DEFAULT_REFRESH_TIME:Ljava/lang/String;

    const-string v1, "pictureSmall"

    .line 19
    sput-object v1, Lcom/shabakaty/usermanagement/data/model/UserConstants;->KEY_PICTURE_SMALL:Ljava/lang/String;

    .line 20
    sput-object v0, Lcom/shabakaty/usermanagement/data/model/UserConstants;->DEFAULT_PICTURE_SMALL:Ljava/lang/String;

    const-string v1, "pictureLarge"

    .line 21
    sput-object v1, Lcom/shabakaty/usermanagement/data/model/UserConstants;->KEY_PICTURE_LARGE:Ljava/lang/String;

    .line 22
    sput-object v0, Lcom/shabakaty/usermanagement/data/model/UserConstants;->DEFAULT_PICTURE_LARGE:Ljava/lang/String;

    const-string v0, "loginStateId"

    .line 23
    sput-object v0, Lcom/shabakaty/usermanagement/data/model/UserConstants;->KEY_LOGIN_STATE_ID:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getDEFAULT_ACCESS_TOKEN$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/usermanagement/data/model/UserConstants;->DEFAULT_ACCESS_TOKEN:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_EMAIL$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/usermanagement/data/model/UserConstants;->DEFAULT_EMAIL:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_FIRST_NAME$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/usermanagement/data/model/UserConstants;->DEFAULT_FIRST_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_ID$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/usermanagement/data/model/UserConstants;->DEFAULT_ID:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_LAST_NAME$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/usermanagement/data/model/UserConstants;->DEFAULT_LAST_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_LOGIN_STATE_ID$cp()I
    .locals 1

    .line 1
    sget v0, Lcom/shabakaty/usermanagement/data/model/UserConstants;->DEFAULT_LOGIN_STATE_ID:I

    return v0
.end method

.method public static final synthetic access$getDEFAULT_PICTURE_LARGE$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/usermanagement/data/model/UserConstants;->DEFAULT_PICTURE_LARGE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_PICTURE_SMALL$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/usermanagement/data/model/UserConstants;->DEFAULT_PICTURE_SMALL:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_REFRESH_TIME$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/usermanagement/data/model/UserConstants;->DEFAULT_REFRESH_TIME:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_REFRESH_TOKEN$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/usermanagement/data/model/UserConstants;->DEFAULT_REFRESH_TOKEN:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_TOKEN_TYPE$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/usermanagement/data/model/UserConstants;->DEFAULT_TOKEN_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_USER_NAME$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/usermanagement/data/model/UserConstants;->DEFAULT_USER_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_ACCESS_TOKEN$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/usermanagement/data/model/UserConstants;->KEY_ACCESS_TOKEN:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_EMAIL$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/usermanagement/data/model/UserConstants;->KEY_EMAIL:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_FIRST_NAME$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/usermanagement/data/model/UserConstants;->KEY_FIRST_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_ID$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/usermanagement/data/model/UserConstants;->KEY_ID:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_LAST_NAME$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/usermanagement/data/model/UserConstants;->KEY_LAST_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_LOGIN_STATE_ID$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/usermanagement/data/model/UserConstants;->KEY_LOGIN_STATE_ID:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_PICTURE_LARGE$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/usermanagement/data/model/UserConstants;->KEY_PICTURE_LARGE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_PICTURE_SMALL$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/usermanagement/data/model/UserConstants;->KEY_PICTURE_SMALL:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_REFRESH_TIME$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/usermanagement/data/model/UserConstants;->KEY_REFRESH_TIME:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_REFRESH_TOKEN$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/usermanagement/data/model/UserConstants;->KEY_REFRESH_TOKEN:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_TOKEN_TYPE$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/usermanagement/data/model/UserConstants;->KEY_TOKEN_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_USER_NAME$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/usermanagement/data/model/UserConstants;->KEY_USER_NAME:Ljava/lang/String;

    return-object v0
.end method
