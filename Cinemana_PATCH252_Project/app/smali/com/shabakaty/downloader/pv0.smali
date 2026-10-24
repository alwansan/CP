.class public final Lcom/shabakaty/downloader/pv0;
.super Lcom/shabakaty/downloader/ui4;
.source "DownloadButton.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.downloader.views.DownloadButton$handleClicks$1"
    f = "DownloadButton.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/se0;",
        "Lcom/shabakaty/downloader/ud0<",
        "-",
        "Lcom/shabakaty/downloader/qv4;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic v:Lcom/shabakaty/downloader/views/DownloadButton;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/views/DownloadButton;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/views/DownloadButton;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/pv0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/pv0;->v:Lcom/shabakaty/downloader/views/DownloadButton;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/pv0;

    iget-object v0, p0, Lcom/shabakaty/downloader/pv0;->v:Lcom/shabakaty/downloader/views/DownloadButton;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/pv0;-><init>(Lcom/shabakaty/downloader/views/DownloadButton;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/pv0;->t(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/ud0<",
            "*>;)",
            "Lcom/shabakaty/downloader/ud0<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/shabakaty/downloader/pv0;

    iget-object v0, p0, Lcom/shabakaty/downloader/pv0;->v:Lcom/shabakaty/downloader/views/DownloadButton;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/pv0;-><init>(Lcom/shabakaty/downloader/views/DownloadButton;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/pv0;->v:Lcom/shabakaty/downloader/views/DownloadButton;

    .line 3
    iget-object v0, p1, Lcom/shabakaty/downloader/views/DownloadButton;->H:Lcom/shabakaty/downloader/pw0;

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p1, Lcom/shabakaty/downloader/views/DownloadButton;->B:Lcom/shabakaty/downloader/tm1;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1
    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 5
    :cond_2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/pw0;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6
    iget-object v0, p1, Lcom/shabakaty/downloader/views/DownloadButton;->D:Lcom/shabakaty/downloader/tm1;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/pw0;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 8
    iget-object v0, p1, Lcom/shabakaty/downloader/views/DownloadButton;->E:Lcom/shabakaty/downloader/tm1;

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/pw0;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 10
    invoke-static {}, Lcom/shabakaty/downloader/vy0;->c()Lcom/shabakaty/downloader/i44;

    move-result-object p1

    .line 11
    iget v0, v0, Lcom/shabakaty/downloader/pw0;->r:I

    .line 12
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/i44;->d(I)V

    goto :goto_0

    .line 13
    :cond_7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/pw0;->c()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 14
    iget-object v0, p1, Lcom/shabakaty/downloader/views/DownloadButton;->C:Lcom/shabakaty/downloader/tm1;

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_9
    invoke-virtual {v0}, Lcom/shabakaty/downloader/pw0;->e()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 16
    invoke-static {}, Lcom/shabakaty/downloader/vy0;->c()Lcom/shabakaty/downloader/i44;

    move-result-object p1

    .line 17
    iget v0, v0, Lcom/shabakaty/downloader/pw0;->r:I

    .line 18
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/i44;->i(I)V

    goto :goto_0

    .line 19
    :cond_a
    iget-object v0, v0, Lcom/shabakaty/downloader/pw0;->z:Lcom/shabakaty/downloader/xc4;

    .line 20
    sget-object v1, Lcom/shabakaty/downloader/xc4;->A:Lcom/shabakaty/downloader/xc4;

    if-ne v0, v1, :cond_b

    .line 21
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1201e1

    const-string v1, "<this>"

    .line 22
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 24
    :cond_b
    :goto_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
