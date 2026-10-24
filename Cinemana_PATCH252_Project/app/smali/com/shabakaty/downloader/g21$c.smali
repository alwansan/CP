.class public final Lcom/shabakaty/downloader/g21$c;
.super Ljava/lang/Object;
.source "EditProfileViewModel.kt"

# interfaces
.implements Lcom/shabakaty/usermanagement/callbacks/UpdateAccountInfoCallback;


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

    iput-object p1, p0, Lcom/shabakaty/downloader/g21$c;->a:Lcom/shabakaty/downloader/g21;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateAccountInfoResult(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/g21$c;->a:Lcom/shabakaty/downloader/g21;

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/g21;->f:Lcom/shabakaty/usermanagement/UserManagement;

    iget-object p1, p1, Lcom/shabakaty/downloader/g21;->k:Lcom/shabakaty/downloader/g21$b;

    invoke-virtual {v0, p1}, Lcom/shabakaty/usermanagement/UserManagement;->getUserInfo(Lcom/shabakaty/usermanagement/callbacks/GetUserInfoCallback;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/g21$c;->a:Lcom/shabakaty/downloader/g21;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/f21;

    invoke-interface {p1}, Lcom/shabakaty/downloader/f21;->e0()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/g21$c;->a:Lcom/shabakaty/downloader/g21;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/f21;

    invoke-interface {p1}, Lcom/shabakaty/downloader/f21;->N1()V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/g21$c;->a:Lcom/shabakaty/downloader/g21;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/xk;->d:Lcom/shabakaty/downloader/xv2;

    .line 7
    invoke-static {p1}, Lcom/shabakaty/downloader/zi2;->k(Lcom/shabakaty/downloader/xv2;)V

    :goto_0
    return-void
.end method
