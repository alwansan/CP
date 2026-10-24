.class public final Lcom/shabakaty/downloader/fi0;
.super Lcom/shabakaty/downloader/af2;
.source "DLNAControlsActivity.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

.field public final synthetic s:Lcom/shabakaty/cinemana/domain/models/local/Quality;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;Lcom/shabakaty/cinemana/domain/models/local/Quality;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/fi0;->r:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

    iput-object p2, p0, Lcom/shabakaty/downloader/fi0;->s:Lcom/shabakaty/cinemana/domain/models/local/Quality;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fi0;->r:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

    new-instance v1, Lcom/shabakaty/downloader/ei0;

    iget-object v2, p0, Lcom/shabakaty/downloader/fi0;->s:Lcom/shabakaty/cinemana/domain/models/local/Quality;

    invoke-direct {v1, v0, v2}, Lcom/shabakaty/downloader/ei0;-><init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;Lcom/shabakaty/cinemana/domain/models/local/Quality;)V

    const-string v2, "<this>"

    .line 2
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "init"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Lcom/shabakaty/downloader/da4;

    invoke-direct {v2, v1, v0}, Lcom/shabakaty/downloader/da4;-><init>(Lcom/shabakaty/downloader/tm1;Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0
.end method
