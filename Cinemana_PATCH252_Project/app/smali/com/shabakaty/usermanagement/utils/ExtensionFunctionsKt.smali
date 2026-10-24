.class public final Lcom/shabakaty/usermanagement/utils/ExtensionFunctionsKt;
.super Ljava/lang/Object;
.source "extensionFunctions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0000\u001a\u0014\u0010\u0006\u001a\u00020\u0003*\u00020\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;",
        "Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrors;",
        "toRegisterErrors",
        "Lcom/shabakaty/downloader/mu0;",
        "Lcom/shabakaty/downloader/c90;",
        "compositeDisposable",
        "addTo",
        "usermanagement_debug"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method public static final addTo(Lcom/shabakaty/downloader/mu0;Lcom/shabakaty/downloader/c90;)Lcom/shabakaty/downloader/mu0;
    .locals 1

    const-string v0, "$this$addTo"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/c90;->b(Lcom/shabakaty/downloader/mu0;)Z

    :cond_0
    return-object p0
.end method

.method public static final toRegisterErrors(Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;)Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrors;
    .locals 7

    const-string v0, "$this$toRegisterErrors"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrors;

    invoke-direct {v0}, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrors;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;->getErrors()Lcom/shabakaty/usermanagement/data/model/response/RegisterValidationErrors;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/data/model/response/RegisterValidationErrors;->getEmail()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrors;->getErrors()Ljava/util/ArrayList;

    move-result-object v3

    sget-object v4, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;->EMAIL_ERROR:Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrors;->getMessages()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;->getErrors()Lcom/shabakaty/usermanagement/data/model/response/RegisterValidationErrors;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/data/model/response/RegisterValidationErrors;->getUsername()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrors;->getErrors()Ljava/util/ArrayList;

    move-result-object v3

    sget-object v4, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;->USERNAME_ERROR:Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrors;->getMessages()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;->getErrors()Lcom/shabakaty/usermanagement/data/model/response/RegisterValidationErrors;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/data/model/response/RegisterValidationErrors;->getPassword()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrors;->getErrors()Ljava/util/ArrayList;

    move-result-object v3

    sget-object v4, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;->PASSWORD_ERROR:Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrors;->getMessages()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;->getErrors()Lcom/shabakaty/usermanagement/data/model/response/RegisterValidationErrors;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/data/model/response/RegisterValidationErrors;->getConfirmPassword()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrors;->getErrors()Ljava/util/ArrayList;

    move-result-object v3

    sget-object v4, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;->CONFIRM_PASSWORD_ERROR:Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrors;->getMessages()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;->getError()Lcom/shabakaty/usermanagement/data/model/response/RegisterError;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 15
    invoke-virtual {p0}, Lcom/shabakaty/usermanagement/data/model/response/RegisterError;->getDetails()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 16
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/usermanagement/data/model/response/ErrorDetails;

    .line 17
    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/data/model/response/ErrorDetails;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v3, :cond_4

    const-string v6, "uppercase"

    invoke-static {v3, v6, v2, v5}, Lcom/shabakaty/downloader/re4;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v3

    if-ne v3, v4, :cond_4

    .line 18
    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrors;->getErrors()Ljava/util/ArrayList;

    move-result-object v3

    sget-object v4, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;->PASSWORD_NEED_UPPERCASE:Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_4
    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/data/model/response/ErrorDetails;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v6, "lowercase"

    invoke-static {v3, v6, v2, v5}, Lcom/shabakaty/downloader/re4;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v3

    if-ne v3, v4, :cond_5

    .line 20
    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrors;->getErrors()Ljava/util/ArrayList;

    move-result-object v3

    sget-object v4, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;->PASSWORD_NEED_LOWERCASE:Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 21
    :cond_5
    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/data/model/response/ErrorDetails;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    const-string v6, "digit"

    invoke-static {v3, v6, v2, v5}, Lcom/shabakaty/downloader/re4;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v3

    if-ne v3, v4, :cond_6

    .line 22
    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrors;->getErrors()Ljava/util/ArrayList;

    move-result-object v3

    sget-object v4, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;->PASSWORD_NEED_DIGITS:Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 23
    :cond_6
    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/data/model/response/ErrorDetails;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    const-string v6, "User name"

    invoke-static {v3, v6, v2, v5}, Lcom/shabakaty/downloader/re4;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v3

    if-ne v3, v4, :cond_7

    .line 24
    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrors;->getErrors()Ljava/util/ArrayList;

    move-result-object v3

    sget-object v4, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;->USERNAME_ALREADY_TAKEN:Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 25
    :cond_7
    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/data/model/response/ErrorDetails;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    const-string v6, "Email"

    invoke-static {v3, v6, v2, v5}, Lcom/shabakaty/downloader/re4;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v3

    if-ne v3, v4, :cond_8

    .line 26
    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrors;->getErrors()Ljava/util/ArrayList;

    move-result-object v3

    sget-object v4, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;->EMAIL_ALREADY_TAKEN:Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_8
    :goto_1
    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrors;->getMessages()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/data/model/response/ErrorDetails;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    return-object v0
.end method
