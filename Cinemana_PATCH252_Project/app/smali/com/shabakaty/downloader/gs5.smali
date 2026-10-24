.class public final Lcom/shabakaty/downloader/gs5;
.super Lcom/shabakaty/downloader/vu4;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# instance fields
.field public final synthetic b:I

.field public final c:Landroid/view/View;

.field public final d:I


# direct methods
.method public constructor <init>(Landroid/view/View;II)V
    .locals 2

    iput p3, p0, Lcom/shabakaty/downloader/gs5;->b:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p3, v1, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/vu4;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/gs5;->c:Landroid/view/View;

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/gs5;->d:I

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/shabakaty/downloader/vu4;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/shabakaty/downloader/gs5;->c:Landroid/view/View;

    .line 7
    iput p2, p0, Lcom/shabakaty/downloader/gs5;->d:I

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/gs5;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gs5;->f()V

    return-void

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gs5;->f()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/gs5;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/gs5;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/gs5;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Lcom/shabakaty/downloader/xw;)V
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/gs5;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/vu4;->d(Lcom/shabakaty/downloader/xw;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gs5;->f()V

    return-void

    .line 3
    :goto_0
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/vu4;->d(Lcom/shabakaty/downloader/xw;)V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gs5;->f()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()V
    .locals 3

    iget v0, p0, Lcom/shabakaty/downloader/gs5;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/gs5;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 2
    iput-object v1, p0, Lcom/shabakaty/downloader/vu4;->a:Lcom/shabakaty/downloader/br3;

    return-void

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/gs5;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 4
    iput-object v1, p0, Lcom/shabakaty/downloader/vu4;->a:Lcom/shabakaty/downloader/br3;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f()V
    .locals 6

    iget v0, p0, Lcom/shabakaty/downloader/gs5;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_4

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/vu4;->a:Lcom/shabakaty/downloader/br3;

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->e()Lcom/shabakaty/downloader/dr2;

    move-result-object v3

    const-wide/16 v4, 0x80

    .line 4
    invoke-virtual {v3, v4, v5}, Lcom/shabakaty/downloader/dr2;->E1(J)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget v4, v3, Lcom/shabakaty/downloader/dr2;->G:I

    if-nez v4, :cond_3

    .line 6
    iget v4, v3, Lcom/shabakaty/downloader/dr2;->t:I

    .line 7
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/dr2;->o1(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_4

    .line 9
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->n()Z

    move-result v0

    if-nez v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/gs5;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/gs5;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_3

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/shabakaty/downloader/gs5;->c:Landroid/view/View;

    iget v2, p0, Lcom/shabakaty/downloader/gs5;->d:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/shabakaty/downloader/gs5;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :goto_3
    return-void

    .line 14
    :goto_4
    iget-object v0, p0, Lcom/shabakaty/downloader/vu4;->a:Lcom/shabakaty/downloader/br3;

    if-eqz v0, :cond_9

    .line 15
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_5

    .line 16
    :cond_5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->e()Lcom/shabakaty/downloader/dr2;

    move-result-object v3

    const-wide/16 v4, 0x40

    .line 17
    invoke-virtual {v3, v4, v5}, Lcom/shabakaty/downloader/dr2;->E1(J)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_6

    .line 18
    :cond_6
    iget v4, v3, Lcom/shabakaty/downloader/dr2;->G:I

    if-nez v4, :cond_8

    .line 19
    iget v4, v3, Lcom/shabakaty/downloader/dr2;->t:I

    .line 20
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/dr2;->o1(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 21
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 22
    iget-object v3, v3, Lcom/shabakaty/downloader/dr2;->H:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge v4, v3, :cond_7

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v3, 0x0

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v3, 0x1

    :goto_7
    if-eqz v3, :cond_9

    .line 23
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->n()Z

    move-result v0

    if-nez v0, :cond_9

    .line 24
    iget-object v0, p0, Lcom/shabakaty/downloader/gs5;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    iget-object v0, p0, Lcom/shabakaty/downloader/gs5;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_8

    .line 26
    :cond_9
    iget-object v0, p0, Lcom/shabakaty/downloader/gs5;->c:Landroid/view/View;

    iget v2, p0, Lcom/shabakaty/downloader/gs5;->d:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object v0, p0, Lcom/shabakaty/downloader/gs5;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
