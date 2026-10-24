.class public final synthetic Lcom/shabakaty/downloader/a64$a$a;
.super Ljava/lang/Object;
.source "SignUpViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/a64$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;->values()[Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;->USERNAME_ALREADY_TAKEN:Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;->EMAIL_ALREADY_TAKEN:Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;->PASSWORD_NEED_DIGITS:Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;->PASSWORD_NEED_LOWERCASE:Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;->PASSWORD_NEED_UPPERCASE:Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;->PASSWORD_ERROR:Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v1, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;->EMAIL_ERROR:Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v1, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;->USERNAME_ERROR:Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sput-object v0, Lcom/shabakaty/downloader/a64$a$a;->a:[I

    return-void
.end method
