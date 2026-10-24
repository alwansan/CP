.class public final Lcom/shabakaty/usermanagement/data/model/requestBody/ResetPasswordBody;
.super Ljava/lang/Object;
.source "ResetPassowrdBody.kt"

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
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000e\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0012\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\t\u0010\u0003\u001a\u00020\u0002H\u00d6\u0001J\t\u0010\u0005\u001a\u00020\u0004H\u00d6\u0001J\u0013\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u00d6\u0003R\u001c\u0010\n\u001a\u00020\u00028\u0000@\u0001X\u0081\u0004\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u001c\u0010\u000e\u001a\u00020\u00028\u0000@\u0001X\u0081\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000b\u001a\u0004\u0008\u000f\u0010\rR\u001c\u0010\u0010\u001a\u00020\u00028\u0000@\u0001X\u0081\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u000b\u001a\u0004\u0008\u0011\u0010\rR\u001c\u0010\u0012\u001a\u00020\u00028\u0000@\u0001X\u0081\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u000b\u001a\u0004\u0008\u0013\u0010\r\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/shabakaty/usermanagement/data/model/requestBody/ResetPasswordBody;",
        "Ljava/io/Serializable;",
        "",
        "toString",
        "",
        "hashCode",
        "",
        "other",
        "",
        "equals",
        "email",
        "Ljava/lang/String;",
        "getEmail$usermanagement_debug",
        "()Ljava/lang/String;",
        "password",
        "getPassword$usermanagement_debug",
        "confirmPassword",
        "getConfirmPassword$usermanagement_debug",
        "code",
        "getCode$usermanagement_debug",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
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
.field public final code:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "Code"
    .end annotation
.end field

.field public final confirmPassword:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "ConfirmPassword"
    .end annotation
.end field

.field public final email:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "Email"
    .end annotation
.end field

.field public final password:Ljava/lang/String;
    .annotation runtime Lcom/shabakaty/downloader/c14;
        value = "Password"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "email"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "confirmPassword"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/usermanagement/data/model/requestBody/ResetPasswordBody;->email:Ljava/lang/String;

    iput-object p2, p0, Lcom/shabakaty/usermanagement/data/model/requestBody/ResetPasswordBody;->password:Ljava/lang/String;

    iput-object p3, p0, Lcom/shabakaty/usermanagement/data/model/requestBody/ResetPasswordBody;->confirmPassword:Ljava/lang/String;

    iput-object p4, p0, Lcom/shabakaty/usermanagement/data/model/requestBody/ResetPasswordBody;->code:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/shabakaty/usermanagement/data/model/requestBody/ResetPasswordBody;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/shabakaty/usermanagement/data/model/requestBody/ResetPasswordBody;

    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/requestBody/ResetPasswordBody;->email:Ljava/lang/String;

    iget-object v1, p1, Lcom/shabakaty/usermanagement/data/model/requestBody/ResetPasswordBody;->email:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/requestBody/ResetPasswordBody;->password:Ljava/lang/String;

    iget-object v1, p1, Lcom/shabakaty/usermanagement/data/model/requestBody/ResetPasswordBody;->password:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/requestBody/ResetPasswordBody;->confirmPassword:Ljava/lang/String;

    iget-object v1, p1, Lcom/shabakaty/usermanagement/data/model/requestBody/ResetPasswordBody;->confirmPassword:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/requestBody/ResetPasswordBody;->code:Ljava/lang/String;

    iget-object p1, p1, Lcom/shabakaty/usermanagement/data/model/requestBody/ResetPasswordBody;->code:Ljava/lang/String;

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

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/requestBody/ResetPasswordBody;->email:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/shabakaty/usermanagement/data/model/requestBody/ResetPasswordBody;->password:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/shabakaty/usermanagement/data/model/requestBody/ResetPasswordBody;->confirmPassword:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/shabakaty/usermanagement/data/model/requestBody/ResetPasswordBody;->code:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ResetPasswordBody(email="

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/usermanagement/data/model/requestBody/ResetPasswordBody;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", password="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/usermanagement/data/model/requestBody/ResetPasswordBody;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", confirmPassword="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/usermanagement/data/model/requestBody/ResetPasswordBody;->confirmPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/usermanagement/data/model/requestBody/ResetPasswordBody;->code:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/ni4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
