.class public final Lcom/shabakaty/downloader/ov5;
.super Lcom/shabakaty/downloader/vu4;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/br3$d;


# instance fields
.field public final b:Landroid/widget/TextView;

.field public final c:Lcom/shabakaty/downloader/de5;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Lcom/shabakaty/downloader/de5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/vu4;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ov5;->b:Landroid/widget/TextView;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/ov5;->c:Lcom/shabakaty/downloader/de5;

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ov5;->f()V

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ov5;->f()V

    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ov5;->f()V

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
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ov5;->f()V

    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vu4;->a:Lcom/shabakaty/downloader/br3;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/br3;->r(Lcom/shabakaty/downloader/br3$d;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/vu4;->a:Lcom/shabakaty/downloader/br3;

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ov5;->f()V

    return-void
.end method

.method public final f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vu4;->a:Lcom/shabakaty/downloader/br3;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/ov5;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/shabakaty/downloader/ov5;->c:Lcom/shabakaty/downloader/de5;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->b()J

    move-result-wide v3

    .line 5
    invoke-virtual {v2, v3, v4}, Lcom/shabakaty/downloader/de5;->m(J)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ov5;->b:Landroid/widget/TextView;

    .line 8
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120064

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
