.class public final Lcom/shabakaty/downloader/g70;
.super Lcom/shabakaty/downloader/xk;
.source "CommentsViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/xk<",
        "Lcom/shabakaty/downloader/v60;",
        ">;"
    }
.end annotation


# instance fields
.field public f:Lcom/shabakaty/usermanagement/UserManagement;

.field public g:Lcom/shabakaty/downloader/q15;

.field public h:Lcom/shabakaty/downloader/ox4;

.field public i:Lcom/shabakaty/downloader/mj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/mj<",
            "Lcom/shabakaty/cinemana/domain/models/local/CommentsRules;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lcom/shabakaty/downloader/mj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/mj<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/Comment;",
            ">;>;"
        }
    .end annotation
.end field

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shabakaty/usermanagement/UserManagement;Lcom/shabakaty/downloader/q15;Lcom/shabakaty/downloader/ox4;)V
    .locals 1

    const-string v0, "userManagement"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoInfoUseCases"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userActionsUseCases"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/xk;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/g70;->f:Lcom/shabakaty/usermanagement/UserManagement;

    iput-object p2, p0, Lcom/shabakaty/downloader/g70;->g:Lcom/shabakaty/downloader/q15;

    iput-object p3, p0, Lcom/shabakaty/downloader/g70;->h:Lcom/shabakaty/downloader/ox4;

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/mj;

    const/4 p2, 0x0

    .line 3
    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/mj;-><init>(Ljava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/g70;->i:Lcom/shabakaty/downloader/mj;

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/xv2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/xv2;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/g70;->j:Lcom/shabakaty/downloader/xv2;

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/mj;

    .line 7
    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/mj;-><init>(Ljava/lang/Object;)V

    .line 8
    iput-object p1, p0, Lcom/shabakaty/downloader/g70;->k:Lcom/shabakaty/downloader/mj;

    const-string p1, "0"

    .line 9
    iput-object p1, p0, Lcom/shabakaty/downloader/g70;->l:Ljava/lang/String;

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/g70;->f:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/UserManagement;->isLoggedIn()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/shabakaty/downloader/g70;->j:Lcom/shabakaty/downloader/xv2;

    iget-object p2, p0, Lcom/shabakaty/downloader/g70;->f:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {p2}, Lcom/shabakaty/usermanagement/UserManagement;->getSmallPicture()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
