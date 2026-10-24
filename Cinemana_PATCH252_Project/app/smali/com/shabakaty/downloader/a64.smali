.class public final Lcom/shabakaty/downloader/a64;
.super Lcom/shabakaty/downloader/xk;
.source "SignUpViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/xk<",
        "Lcom/shabakaty/downloader/z54;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:Lcom/shabakaty/usermanagement/UserManagement;

.field public final g:Lcom/shabakaty/downloader/a64$a;

.field public final h:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/usermanagement/UserManagement;)V
    .locals 1

    const-string v0, "userManagement"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/xk;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/a64;->f:Lcom/shabakaty/usermanagement/UserManagement;

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/a64$a;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/a64$a;-><init>(Lcom/shabakaty/downloader/a64;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/a64;->g:Lcom/shabakaty/downloader/a64$a;

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/xv2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/xv2;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/a64;->h:Lcom/shabakaty/downloader/xv2;

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/xv2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/xv2;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/a64;->i:Lcom/shabakaty/downloader/xv2;

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/xv2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/xv2;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/a64;->j:Lcom/shabakaty/downloader/xv2;

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/xv2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/xv2;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/a64;->k:Lcom/shabakaty/downloader/xv2;

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/xk;->d:Lcom/shabakaty/downloader/xv2;

    .line 9
    invoke-static {p1}, Lcom/shabakaty/downloader/zi2;->k(Lcom/shabakaty/downloader/xv2;)V

    return-void
.end method
