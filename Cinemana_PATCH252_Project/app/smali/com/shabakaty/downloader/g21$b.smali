.class public final Lcom/shabakaty/downloader/g21$b;
.super Ljava/lang/Object;
.source "EditProfileViewModel.kt"

# interfaces
.implements Lcom/shabakaty/usermanagement/callbacks/GetUserInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/g21;-><init>(Lcom/shabakaty/usermanagement/UserManagement;Lcom/shabakaty/downloader/ff3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/g21;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/g21;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/g21$b;->a:Lcom/shabakaty/downloader/g21;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserInfoFail()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/g21$b;->a:Lcom/shabakaty/downloader/g21;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/xk;->d:Lcom/shabakaty/downloader/xv2;

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/zi2;->k(Lcom/shabakaty/downloader/xv2;)V

    return-void
.end method

.method public onUserInfoSuccess(Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;)V
    .locals 2

    const-string v0, "userInfo"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/g21$b;->a:Lcom/shabakaty/downloader/g21;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/g21;->n:Lcom/shabakaty/downloader/xv2;

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;->getGender()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/g21$b;->a:Lcom/shabakaty/downloader/g21;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/g21;->o:Lcom/shabakaty/downloader/xv2;

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/g21$b;->a:Lcom/shabakaty/downloader/g21;

    .line 8
    iget-object v0, v0, Lcom/shabakaty/downloader/g21;->p:Lcom/shabakaty/downloader/xv2;

    .line 9
    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;->getMobileNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/g21$b;->a:Lcom/shabakaty/downloader/g21;

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/g21;->q:Lcom/shabakaty/downloader/xv2;

    .line 12
    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lcom/shabakaty/downloader/g21$b;->a:Lcom/shabakaty/downloader/g21;

    .line 14
    iget-object v0, v0, Lcom/shabakaty/downloader/g21;->r:Lcom/shabakaty/downloader/xv2;

    .line 15
    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;->getDateOfBirth()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 16
    iget-object v0, p0, Lcom/shabakaty/downloader/g21$b;->a:Lcom/shabakaty/downloader/g21;

    .line 17
    iget-object v0, v0, Lcom/shabakaty/downloader/g21;->l:Lcom/shabakaty/downloader/xv2;

    .line 18
    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 19
    iget-object v0, p0, Lcom/shabakaty/downloader/g21$b;->a:Lcom/shabakaty/downloader/g21;

    .line 20
    iget-object v0, v0, Lcom/shabakaty/downloader/g21;->m:Lcom/shabakaty/downloader/xv2;

    .line 21
    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;->getLastName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 22
    iget-object p1, p0, Lcom/shabakaty/downloader/g21$b;->a:Lcom/shabakaty/downloader/g21;

    .line 23
    iget-object v0, p1, Lcom/shabakaty/downloader/g21;->s:Lcom/shabakaty/downloader/xv2;

    .line 24
    iget-object p1, p1, Lcom/shabakaty/downloader/g21;->f:Lcom/shabakaty/usermanagement/UserManagement;

    .line 25
    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/UserManagement;->getLargePicture()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 26
    iget-object p1, p0, Lcom/shabakaty/downloader/g21$b;->a:Lcom/shabakaty/downloader/g21;

    .line 27
    iget-object p1, p1, Lcom/shabakaty/downloader/xk;->d:Lcom/shabakaty/downloader/xv2;

    .line 28
    invoke-static {p1}, Lcom/shabakaty/downloader/zi2;->k(Lcom/shabakaty/downloader/xv2;)V

    return-void
.end method
