.class public Lcom/shabakaty/downloader/ua;
.super Lcom/shabakaty/downloader/ai1;
.source "AppCompatSpinner.java"


# instance fields
.field public final synthetic A:Lcom/shabakaty/downloader/va$d;

.field public final synthetic B:Lcom/shabakaty/downloader/va;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/va;Landroid/view/View;Lcom/shabakaty/downloader/va$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ua;->B:Lcom/shabakaty/downloader/va;

    iput-object p3, p0, Lcom/shabakaty/downloader/ua;->A:Lcom/shabakaty/downloader/va$d;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/ai1;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b()Lcom/shabakaty/downloader/s54;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ua;->A:Lcom/shabakaty/downloader/va$d;

    return-object v0
.end method

.method public c()Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ua;->B:Lcom/shabakaty/downloader/va;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/va;->getInternalPopup()Lcom/shabakaty/downloader/va$f;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/va$f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ua;->B:Lcom/shabakaty/downloader/va;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/va;->b()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
