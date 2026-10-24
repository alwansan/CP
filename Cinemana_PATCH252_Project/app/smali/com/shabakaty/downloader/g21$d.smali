.class public final Lcom/shabakaty/downloader/g21$d;
.super Ljava/lang/Object;
.source "EditProfileViewModel.kt"

# interfaces
.implements Lcom/shabakaty/usermanagement/callbacks/UpdateProfilePictureCallback;


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

    iput-object p1, p0, Lcom/shabakaty/downloader/g21$d;->a:Lcom/shabakaty/downloader/g21;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateProfilePictureResult(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/g21$d;->a:Lcom/shabakaty/downloader/g21;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/g21;->g:Lcom/shabakaty/downloader/xv2;

    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xv2;->postValue(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/g21$d;->a:Lcom/shabakaty/downloader/g21;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/xk;->d:Lcom/shabakaty/downloader/xv2;

    .line 6
    invoke-static {v0}, Lcom/shabakaty/downloader/zi2;->k(Lcom/shabakaty/downloader/xv2;)V

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/g21$d;->a:Lcom/shabakaty/downloader/g21;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/f21;

    invoke-interface {p1}, Lcom/shabakaty/downloader/f21;->d0()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/g21$d;->a:Lcom/shabakaty/downloader/g21;

    .line 9
    iget-object v0, p1, Lcom/shabakaty/downloader/g21;->s:Lcom/shabakaty/downloader/xv2;

    .line 10
    iget-object p1, p1, Lcom/shabakaty/downloader/g21;->f:Lcom/shabakaty/usermanagement/UserManagement;

    .line 11
    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/UserManagement;->getLargePicture()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/xv2;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
