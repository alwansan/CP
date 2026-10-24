.class public final Lcom/shabakaty/downloader/lq5;
.super Lcom/shabakaty/downloader/vu4;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# instance fields
.field public final b:Landroid/widget/ImageView;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Landroid/content/Context;

.field public f:Lcom/shabakaty/downloader/nw$d;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/vu4;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/lq5;->b:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/lq5;->e:Landroid/content/Context;

    const v0, 0x7f120067

    .line 4
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/lq5;->c:Ljava/lang/String;

    const v0, 0x7f12007d

    .line 5
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/lq5;->d:Ljava/lang/String;

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/shabakaty/downloader/lq5;->f:Lcom/shabakaty/downloader/nw$d;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/lq5;->f()V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lq5;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public final d(Lcom/shabakaty/downloader/xw;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lq5;->f:Lcom/shabakaty/downloader/nw$d;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/lr5;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/lr5;-><init>(Lcom/shabakaty/downloader/lq5;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/lq5;->f:Lcom/shabakaty/downloader/nw$d;

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/vu4;->d(Lcom/shabakaty/downloader/xw;)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/lq5;->f:Lcom/shabakaty/downloader/nw$d;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Must be called from the main thread."

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/xw;->d:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/lq5;->f()V

    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lq5;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/lq5;->e:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/tw;->d(Landroid/content/Context;)Lcom/shabakaty/downloader/tw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/tw;->c()Lcom/shabakaty/downloader/y14;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/y14;->c()Lcom/shabakaty/downloader/xw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/lq5;->f:Lcom/shabakaty/downloader/nw$d;

    if-eqz v1, :cond_0

    const-string v2, "Must be called from the main thread."

    .line 5
    invoke-static {v2}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/xw;->d:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/shabakaty/downloader/vu4;->a:Lcom/shabakaty/downloader/br3;

    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lq5;->e:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/tw;->d(Landroid/content/Context;)Lcom/shabakaty/downloader/tw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/tw;->c()Lcom/shabakaty/downloader/y14;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/y14;->c()Lcom/shabakaty/downloader/xw;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/s14;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/vu4;->a:Lcom/shabakaty/downloader/br3;

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/lq5;->b:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/lq5;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 8
    :goto_1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xw;->l()Z

    move-result v0

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/lq5;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/lq5;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/shabakaty/downloader/lq5;->d:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/lq5;->c:Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/lq5;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method
