.class public final Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;
.super Ljava/lang/Object;
.source "RegisterUserResponse.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0086\u0008\u0018\u00002\u00020\u0001BC\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001d\u0012\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010$\u00a2\u0006\u0004\u0008+\u0010,J\t\u0010\u0003\u001a\u00020\u0002H\u00d6\u0001J\t\u0010\u0005\u001a\u00020\u0004H\u00d6\u0001J\u0013\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u00d6\u0003R$\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R$\u0010\u0011\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R$\u0010\u0017\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR$\u0010\u001e\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R$\u0010%\u001a\u0004\u0018\u00010$8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*\u00a8\u0006-"
    }
    d2 = {
        "Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;",
        "Ljava/io/Serializable;",
        "",
        "toString",
        "",
        "hashCode",
        "",
        "other",
        "",
        "equals",
        "Lcom/shabakaty/usermanagement/data/model/response/RegisterInfo;",
        "value",
        "Lcom/shabakaty/usermanagement/data/model/response/RegisterInfo;",
        "getValue",
        "()Lcom/shabakaty/usermanagement/data/model/response/RegisterInfo;",
        "setValue",
        "(Lcom/shabakaty/usermanagement/data/model/response/RegisterInfo;)V",
        "success",
        "Ljava/lang/Boolean;",
        "getSuccess",
        "()Ljava/lang/Boolean;",
        "setSuccess",
        "(Ljava/lang/Boolean;)V",
        "responseStatusCode",
        "Ljava/lang/String;",
        "getResponseStatusCode",
        "()Ljava/lang/String;",
        "setResponseStatusCode",
        "(Ljava/lang/String;)V",
        "Lcom/shabakaty/usermanagement/data/model/response/RegisterError;",
        "error",
        "Lcom/shabakaty/usermanagement/data/model/response/RegisterError;",
        "getError",
        "()Lcom/shabakaty/usermanagement/data/model/response/RegisterError;",
        "setError",
        "(Lcom/shabakaty/usermanagement/data/model/response/RegisterError;)V",
        "Lcom/shabakaty/usermanagement/data/model/response/RegisterValidationErrors;",
        "errors",
        "Lcom/shabakaty/usermanagement/data/model/response/RegisterValidationErrors;",
        "getErrors",
        "()Lcom/shabakaty/usermanagement/data/model/response/RegisterValidationErrors;",
        "setErrors",
        "(Lcom/shabakaty/usermanagement/data/model/response/RegisterValidationErrors;)V",
        "<init>",
        "(Lcom/shabakaty/usermanagement/data/model/response/RegisterInfo;Ljava/lang/Boolean;Ljava/lang/String;Lcom/shabakaty/usermanagement/data/model/response/RegisterError;Lcom/shabakaty/usermanagement/data/model/response/RegisterValidationErrors;)V",
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
.field public error:Lcom/shabakaty/usermanagement/data/model/response/RegisterError;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "error"
    .end annotation
.end field

.field public errors:Lcom/shabakaty/usermanagement/data/model/response/RegisterValidationErrors;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "errors"
    .end annotation
.end field

.field public responseStatusCode:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "responseStatusCode"
    .end annotation
.end field

.field public success:Ljava/lang/Boolean;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "success"
    .end annotation
.end field

.field public value:Lcom/shabakaty/usermanagement/data/model/response/RegisterInfo;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "value"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;-><init>(Lcom/shabakaty/usermanagement/data/model/response/RegisterInfo;Ljava/lang/Boolean;Ljava/lang/String;Lcom/shabakaty/usermanagement/data/model/response/RegisterError;Lcom/shabakaty/usermanagement/data/model/response/RegisterValidationErrors;ILcom/shabakaty/downloader/nn0;)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/usermanagement/data/model/response/RegisterInfo;Ljava/lang/Boolean;Ljava/lang/String;Lcom/shabakaty/usermanagement/data/model/response/RegisterError;Lcom/shabakaty/usermanagement/data/model/response/RegisterValidationErrors;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;->value:Lcom/shabakaty/usermanagement/data/model/response/RegisterInfo;

    iput-object p2, p0, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;->success:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;->responseStatusCode:Ljava/lang/String;

    iput-object p4, p0, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;->error:Lcom/shabakaty/usermanagement/data/model/response/RegisterError;

    iput-object p5, p0, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;->errors:Lcom/shabakaty/usermanagement/data/model/response/RegisterValidationErrors;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/usermanagement/data/model/response/RegisterInfo;Ljava/lang/Boolean;Ljava/lang/String;Lcom/shabakaty/usermanagement/data/model/response/RegisterError;Lcom/shabakaty/usermanagement/data/model/response/RegisterValidationErrors;ILcom/shabakaty/downloader/nn0;)V
    .locals 4

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p7, v0

    goto :goto_0

    :cond_0
    move-object p7, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v2, p3

    :goto_2
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    move-object v3, v0

    goto :goto_3

    :cond_3
    move-object v3, p4

    :goto_3
    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    move-object p6, v0

    goto :goto_4

    :cond_4
    move-object p6, p5

    :goto_4
    move-object p1, p0

    move-object p2, p7

    move-object p3, v1

    move-object p4, v2

    move-object p5, v3

    .line 2
    invoke-direct/range {p1 .. p6}, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;-><init>(Lcom/shabakaty/usermanagement/data/model/response/RegisterInfo;Ljava/lang/Boolean;Ljava/lang/String;Lcom/shabakaty/usermanagement/data/model/response/RegisterError;Lcom/shabakaty/usermanagement/data/model/response/RegisterValidationErrors;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;

    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;->value:Lcom/shabakaty/usermanagement/data/model/response/RegisterInfo;

    iget-object v1, p1, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;->value:Lcom/shabakaty/usermanagement/data/model/response/RegisterInfo;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;->success:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;->success:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;->responseStatusCode:Ljava/lang/String;

    iget-object v1, p1, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;->responseStatusCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;->error:Lcom/shabakaty/usermanagement/data/model/response/RegisterError;

    iget-object v1, p1, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;->error:Lcom/shabakaty/usermanagement/data/model/response/RegisterError;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;->errors:Lcom/shabakaty/usermanagement/data/model/response/RegisterValidationErrors;

    iget-object p1, p1, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;->errors:Lcom/shabakaty/usermanagement/data/model/response/RegisterValidationErrors;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getError()Lcom/shabakaty/usermanagement/data/model/response/RegisterError;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;->error:Lcom/shabakaty/usermanagement/data/model/response/RegisterError;

    return-object v0
.end method

.method public final getErrors()Lcom/shabakaty/usermanagement/data/model/response/RegisterValidationErrors;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;->errors:Lcom/shabakaty/usermanagement/data/model/response/RegisterValidationErrors;

    return-object v0
.end method

.method public final getSuccess()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;->success:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;->value:Lcom/shabakaty/usermanagement/data/model/response/RegisterInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/data/model/response/RegisterInfo;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;->success:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;->responseStatusCode:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;->error:Lcom/shabakaty/usermanagement/data/model/response/RegisterError;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/shabakaty/usermanagement/data/model/response/RegisterError;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;->errors:Lcom/shabakaty/usermanagement/data/model/response/RegisterValidationErrors;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/shabakaty/usermanagement/data/model/response/RegisterValidationErrors;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "RegistererUserResponse(value="

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;->value:Lcom/shabakaty/usermanagement/data/model/response/RegisterInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;->success:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", responseStatusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;->responseStatusCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;->error:Lcom/shabakaty/usermanagement/data/model/response/RegisterError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/usermanagement/data/model/response/RegistererUserResponse;->errors:Lcom/shabakaty/usermanagement/data/model/response/RegisterValidationErrors;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
