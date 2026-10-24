.class public final Lcom/shabakaty/downloader/rb;
.super Lcom/shabakaty/downloader/xk;
.source "AppSettingsViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/xk<",
        "Lcom/shabakaty/downloader/nb;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:Lcom/shabakaty/downloader/n24;

.field public final g:Lcom/shabakaty/downloader/gc4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/gc4<",
            "Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/n24;)V
    .locals 1

    const-string v0, "settings"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/xk;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/rb;->f:Lcom/shabakaty/downloader/n24;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/n24;->h:Lcom/shabakaty/downloader/gc4;

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/rb;->g:Lcom/shabakaty/downloader/gc4;

    return-void
.end method


# virtual methods
.method public final l()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/rb;->f:Lcom/shabakaty/downloader/n24;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/n24;->c()Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;

    move-result-object v0

    .line 3
    iget v0, v0, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;->seekPeriod:I

    return v0
.end method
