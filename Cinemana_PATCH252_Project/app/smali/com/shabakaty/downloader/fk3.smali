.class public final Lcom/shabakaty/downloader/fk3;
.super Lcom/shabakaty/downloader/xk;
.source "QrLoginViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/xk<",
        "Lcom/shabakaty/downloader/dk3;",
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

.field public h:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/lang/String;",
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
    iput-object p1, p0, Lcom/shabakaty/downloader/fk3;->f:Lcom/shabakaty/usermanagement/UserManagement;

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/xv2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/xv2;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/fk3;->g:Lcom/shabakaty/downloader/xv2;

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/xv2;

    const-string v0, ""

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/xv2;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/fk3;->h:Lcom/shabakaty/downloader/xv2;

    return-void
.end method
