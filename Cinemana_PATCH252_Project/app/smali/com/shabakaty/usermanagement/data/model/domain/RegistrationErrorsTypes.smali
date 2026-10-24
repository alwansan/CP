.class public final enum Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;
.super Ljava/lang/Enum;
.source "RegistrationErrors.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000c\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "USERNAME_ERROR",
        "EMAIL_ERROR",
        "PASSWORD_ERROR",
        "CONFIRM_PASSWORD_ERROR",
        "PASSWORD_NEED_DIGITS",
        "PASSWORD_NEED_UPPERCASE",
        "PASSWORD_NEED_LOWERCASE",
        "USERNAME_ALREADY_TAKEN",
        "EMAIL_ALREADY_TAKEN",
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
.field public static final synthetic $VALUES:[Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

.field public static final enum CONFIRM_PASSWORD_ERROR:Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

.field public static final enum EMAIL_ALREADY_TAKEN:Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

.field public static final enum EMAIL_ERROR:Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

.field public static final enum PASSWORD_ERROR:Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

.field public static final enum PASSWORD_NEED_DIGITS:Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

.field public static final enum PASSWORD_NEED_LOWERCASE:Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

.field public static final enum PASSWORD_NEED_UPPERCASE:Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

.field public static final enum USERNAME_ALREADY_TAKEN:Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

.field public static final enum USERNAME_ERROR:Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    new-instance v1, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    const-string v2, "USERNAME_ERROR"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;->USERNAME_ERROR:Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    aput-object v1, v0, v3

    new-instance v1, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    const-string v2, "EMAIL_ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;->EMAIL_ERROR:Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    aput-object v1, v0, v3

    new-instance v1, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    const-string v2, "PASSWORD_ERROR"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;->PASSWORD_ERROR:Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    aput-object v1, v0, v3

    new-instance v1, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    const-string v2, "CONFIRM_PASSWORD_ERROR"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;->CONFIRM_PASSWORD_ERROR:Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    aput-object v1, v0, v3

    new-instance v1, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    const-string v2, "PASSWORD_NEED_DIGITS"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;->PASSWORD_NEED_DIGITS:Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    aput-object v1, v0, v3

    new-instance v1, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    const-string v2, "PASSWORD_NEED_UPPERCASE"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;->PASSWORD_NEED_UPPERCASE:Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    aput-object v1, v0, v3

    new-instance v1, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    const-string v2, "PASSWORD_NEED_LOWERCASE"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;->PASSWORD_NEED_LOWERCASE:Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    aput-object v1, v0, v3

    new-instance v1, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    const-string v2, "USERNAME_ALREADY_TAKEN"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;->USERNAME_ALREADY_TAKEN:Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    aput-object v1, v0, v3

    new-instance v1, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    const-string v2, "EMAIL_ALREADY_TAKEN"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;->EMAIL_ALREADY_TAKEN:Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    aput-object v1, v0, v3

    sput-object v0, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;->$VALUES:[Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;
    .locals 1

    const-class v0, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;
    .locals 1

    sget-object v0, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;->$VALUES:[Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    invoke-virtual {v0}, [Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    return-object v0
.end method
