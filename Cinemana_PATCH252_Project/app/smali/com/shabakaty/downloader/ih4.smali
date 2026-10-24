.class public final Lcom/shabakaty/downloader/ih4;
.super Lcom/shabakaty/downloader/xk;
.source "SubtitlesSettingsViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/xk<",
        "Lcom/shabakaty/downloader/ah4;",
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
    iput-object p1, p0, Lcom/shabakaty/downloader/ih4;->f:Lcom/shabakaty/downloader/n24;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/n24;->h:Lcom/shabakaty/downloader/gc4;

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/ih4;->g:Lcom/shabakaty/downloader/gc4;

    return-void
.end method
