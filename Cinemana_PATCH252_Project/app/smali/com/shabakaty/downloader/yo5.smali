.class public final Lcom/shabakaty/downloader/yo5;
.super Lcom/shabakaty/downloader/vu4;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/br3$d;


# instance fields
.field public final b:Landroid/view/View;

.field public final c:Lcom/shabakaty/downloader/de5;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/shabakaty/downloader/de5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/vu4;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/yo5;->b:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/yo5;->c:Lcom/shabakaty/downloader/de5;

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yo5;->f()V

    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yo5;->f()V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yo5;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final d(Lcom/shabakaty/downloader/xw;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/vu4;->d(Lcom/shabakaty/downloader/xw;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/vu4;->a:Lcom/shabakaty/downloader/br3;

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x3e8

    .line 3
    invoke-virtual {p1, p0, v0, v1}, Lcom/shabakaty/downloader/br3;->a(Lcom/shabakaty/downloader/br3$d;J)Z

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yo5;->f()V

    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vu4;->a:Lcom/shabakaty/downloader/br3;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/br3;->r(Lcom/shabakaty/downloader/br3$d;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/yo5;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/vu4;->a:Lcom/shabakaty/downloader/br3;

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yo5;->f()V

    return-void
.end method

.method public final f()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vu4;->a:Lcom/shabakaty/downloader/br3;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->n()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->j()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/yo5;->b:Landroid/view/View;

    goto :goto_2

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/shabakaty/downloader/yo5;->b:Landroid/view/View;

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/shabakaty/downloader/yo5;->c:Lcom/shabakaty/downloader/de5;

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/de5;->d()I

    move-result v3

    int-to-long v3, v3

    .line 9
    invoke-virtual {v0}, Lcom/shabakaty/downloader/de5;->g()J

    move-result-wide v5

    add-long/2addr v5, v3

    .line 10
    invoke-virtual {v0, v5, v6}, Lcom/shabakaty/downloader/de5;->c(J)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v2

    goto :goto_2

    :cond_2
    move-object v0, v2

    goto :goto_1

    .line 11
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/yo5;->b:Landroid/view/View;

    :goto_1
    const/4 v1, 0x0

    .line 12
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
