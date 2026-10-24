.class public final Lcom/shabakaty/downloader/kb1;
.super Lcom/shabakaty/downloader/xk;
.source "FilterSettingsViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/xk<",
        "Lcom/shabakaty/downloader/gb1;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:Lcom/shabakaty/usermanagement/UserManagement;

.field public final g:Lcom/shabakaty/downloader/n24;

.field public final h:Lcom/shabakaty/downloader/gc4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/gc4<",
            "Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/usermanagement/UserManagement;Lcom/shabakaty/downloader/n24;)V
    .locals 1

    const-string v0, "userManagement"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/xk;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/kb1;->f:Lcom/shabakaty/usermanagement/UserManagement;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/kb1;->g:Lcom/shabakaty/downloader/n24;

    .line 4
    iget-object p1, p2, Lcom/shabakaty/downloader/n24;->h:Lcom/shabakaty/downloader/gc4;

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/kb1;->h:Lcom/shabakaty/downloader/gc4;

    return-void
.end method
