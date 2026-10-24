.class public final Lcom/shabakaty/downloader/g21;
.super Lcom/shabakaty/downloader/xk;
.source "EditProfileViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/xk<",
        "Lcom/shabakaty/downloader/f21;",
        ">;"
    }
.end annotation


# instance fields
.field public f:Lcom/shabakaty/usermanagement/UserManagement;

.field public final g:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lcom/shabakaty/downloader/g21$d;

.field public final i:Lcom/shabakaty/downloader/g21$c;

.field public final j:Lcom/shabakaty/downloader/g21$a;

.field public final k:Lcom/shabakaty/downloader/g21$b;

.field public final l:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public n:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public o:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public q:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public r:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public s:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/usermanagement/UserManagement;Lcom/shabakaty/downloader/ff3;)V
    .locals 4

    const-string v0, "userManagement"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefsManager"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/xk;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/g21;->f:Lcom/shabakaty/usermanagement/UserManagement;

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/xv2;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/xv2;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/g21;->g:Lcom/shabakaty/downloader/xv2;

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/g21$d;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/g21$d;-><init>(Lcom/shabakaty/downloader/g21;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/g21;->h:Lcom/shabakaty/downloader/g21$d;

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/g21$c;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/g21$c;-><init>(Lcom/shabakaty/downloader/g21;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/g21;->i:Lcom/shabakaty/downloader/g21$c;

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/g21$a;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/g21$a;-><init>(Lcom/shabakaty/downloader/g21;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/g21;->j:Lcom/shabakaty/downloader/g21$a;

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/g21$b;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/g21$b;-><init>(Lcom/shabakaty/downloader/g21;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/g21;->k:Lcom/shabakaty/downloader/g21$b;

    .line 8
    iget-object p2, p0, Lcom/shabakaty/downloader/g21;->f:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {p2}, Lcom/shabakaty/usermanagement/UserManagement;->isLoggedIn()Z

    move-result p2

    const-string v0, ""

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/shabakaty/downloader/g21;->f:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {p2}, Lcom/shabakaty/usermanagement/UserManagement;->getFirstName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/g21;->f:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/UserManagement;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/shabakaty/downloader/g21;->f:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/UserManagement;->getLastName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 10
    :goto_1
    iget-object v2, p0, Lcom/shabakaty/downloader/g21;->f:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v2}, Lcom/shabakaty/usermanagement/UserManagement;->isLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/shabakaty/downloader/g21;->f:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v2}, Lcom/shabakaty/usermanagement/UserManagement;->getLargePicture()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v0

    .line 11
    :goto_2
    new-instance v3, Lcom/shabakaty/downloader/xv2;

    invoke-direct {v3, p2}, Lcom/shabakaty/downloader/xv2;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/shabakaty/downloader/g21;->l:Lcom/shabakaty/downloader/xv2;

    .line 12
    new-instance p2, Lcom/shabakaty/downloader/xv2;

    invoke-direct {p2, v1}, Lcom/shabakaty/downloader/xv2;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/g21;->m:Lcom/shabakaty/downloader/xv2;

    .line 13
    new-instance p2, Lcom/shabakaty/downloader/xv2;

    invoke-direct {p2, v0}, Lcom/shabakaty/downloader/xv2;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/g21;->n:Lcom/shabakaty/downloader/xv2;

    .line 14
    new-instance p2, Lcom/shabakaty/downloader/xv2;

    invoke-direct {p2, v0}, Lcom/shabakaty/downloader/xv2;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/g21;->o:Lcom/shabakaty/downloader/xv2;

    .line 15
    new-instance p2, Lcom/shabakaty/downloader/xv2;

    invoke-direct {p2, v0}, Lcom/shabakaty/downloader/xv2;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/g21;->p:Lcom/shabakaty/downloader/xv2;

    .line 16
    new-instance p2, Lcom/shabakaty/downloader/xv2;

    invoke-direct {p2, v0}, Lcom/shabakaty/downloader/xv2;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/g21;->q:Lcom/shabakaty/downloader/xv2;

    .line 17
    new-instance p2, Lcom/shabakaty/downloader/xv2;

    invoke-direct {p2, v0}, Lcom/shabakaty/downloader/xv2;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/g21;->r:Lcom/shabakaty/downloader/xv2;

    .line 18
    new-instance p2, Lcom/shabakaty/downloader/xv2;

    invoke-direct {p2, v2}, Lcom/shabakaty/downloader/xv2;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/g21;->s:Lcom/shabakaty/downloader/xv2;

    .line 19
    iget-object p2, p0, Lcom/shabakaty/downloader/g21;->f:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {p2, p1}, Lcom/shabakaty/usermanagement/UserManagement;->getUserInfo(Lcom/shabakaty/usermanagement/callbacks/GetUserInfoCallback;)V

    return-void
.end method
