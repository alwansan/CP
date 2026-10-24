.class public final Lcom/shabakaty/downloader/eq5;
.super Lcom/shabakaty/downloader/vu4;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# instance fields
.field public final b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/vu4;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/eq5;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/eq5;->f()V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/eq5;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final d(Lcom/shabakaty/downloader/xw;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/vu4;->d(Lcom/shabakaty/downloader/xw;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/eq5;->f()V

    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/eq5;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/vu4;->a:Lcom/shabakaty/downloader/br3;

    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vu4;->a:Lcom/shabakaty/downloader/br3;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/eq5;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/eq5;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
