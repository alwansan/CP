.class public final Lcom/shabakaty/downloader/kb4;
.super Ljava/lang/Object;
.source "StaffInfoUseCases.kt"


# instance fields
.field public final a:Lcom/shabakaty/downloader/k9;

.field public final b:Lcom/shabakaty/downloader/n24;

.field public c:Lcom/shabakaty/downloader/qm2;

.field public final d:Lcom/shabakaty/usermanagement/UserManagement;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/k9;Lcom/shabakaty/downloader/n24;Lcom/shabakaty/downloader/qm2;Lcom/shabakaty/usermanagement/UserManagement;)V
    .locals 1

    const-string v0, "apiServices"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapper"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userManagement"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/kb4;->a:Lcom/shabakaty/downloader/k9;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/kb4;->b:Lcom/shabakaty/downloader/n24;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/kb4;->c:Lcom/shabakaty/downloader/qm2;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/kb4;->d:Lcom/shabakaty/usermanagement/UserManagement;

    return-void
.end method
