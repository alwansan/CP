.class public final Lcom/shabakaty/downloader/mc7;
.super Landroid/support/v4/media/session/MediaSessionCompat$a;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# instance fields
.field public final synthetic f:Lcom/shabakaty/downloader/o27;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/o27;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/mc7;->f:Lcom/shabakaty/downloader/o27;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "android.intent.extra.KEY_EVENT"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/KeyEvent;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x7e

    if-ne p1, v0, :cond_1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/mc7;->f:Lcom/shabakaty/downloader/o27;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/o27;->i:Lcom/shabakaty/downloader/br3;

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/br3;->v()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mc7;->f:Lcom/shabakaty/downloader/o27;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/o27;->i:Lcom/shabakaty/downloader/br3;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->v()V

    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mc7;->f:Lcom/shabakaty/downloader/o27;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/o27;->i:Lcom/shabakaty/downloader/br3;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->v()V

    return-void
.end method

.method public final e(J)V
    .locals 8

    const/4 v3, 0x0

    .line 1
    new-instance v7, Lcom/shabakaty/downloader/pq2;

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-wide v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/pq2;-><init>(JIZLorg/json/JSONObject;Lcom/shabakaty/downloader/hl3;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/mc7;->f:Lcom/shabakaty/downloader/o27;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/o27;->i:Lcom/shabakaty/downloader/br3;

    .line 4
    invoke-virtual {p1, v7}, Lcom/shabakaty/downloader/br3;->t(Lcom/shabakaty/downloader/pq2;)Lcom/shabakaty/downloader/nb3;

    return-void
.end method
