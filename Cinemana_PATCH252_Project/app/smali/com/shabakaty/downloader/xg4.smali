.class public final Lcom/shabakaty/downloader/xg4;
.super Lcom/shabakaty/downloader/ui4;
.source "SubtitlesSettingsFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.settings.SubtitlesSettingsFragment$showFontsBottomList$1$1"
    f = "SubtitlesSettingsFragment.kt"
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
.field public final synthetic v:Lcom/shabakaty/downloader/vg4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vg4;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/vg4;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/xg4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/xg4;->v:Lcom/shabakaty/downloader/vg4;

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
    new-instance p1, Lcom/shabakaty/downloader/xg4;

    iget-object v0, p0, Lcom/shabakaty/downloader/xg4;->v:Lcom/shabakaty/downloader/vg4;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/xg4;-><init>(Lcom/shabakaty/downloader/vg4;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/xg4;->t(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance p1, Lcom/shabakaty/downloader/xg4;

    iget-object v0, p0, Lcom/shabakaty/downloader/xg4;->v:Lcom/shabakaty/downloader/vg4;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/xg4;-><init>(Lcom/shabakaty/downloader/vg4;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/xg4;->v:Lcom/shabakaty/downloader/vg4;

    sget v0, Lcom/shabakaty/downloader/vg4;->x:I

    .line 3
    invoke-virtual {p1, p1}, Lcom/shabakaty/downloader/hj;->b2(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/xg4;->v:Lcom/shabakaty/downloader/vg4;

    invoke-static {p1}, Lcom/shabakaty/downloader/vg4;->h2(Lcom/shabakaty/downloader/vg4;)Lcom/shabakaty/downloader/wk1;

    move-result-object p1

    iget-object p1, p1, Lcom/shabakaty/downloader/wk1;->a0:Landroid/widget/TextView;

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/xg4;->v:Lcom/shabakaty/downloader/vg4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ih4;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/ih4;->f:Lcom/shabakaty/downloader/n24;

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/n24;->g()Lcom/shabakaty/downloader/pg4;

    move-result-object v0

    .line 8
    iget-object v0, v0, Lcom/shabakaty/downloader/pg4;->f:Lcom/shabakaty/downloader/gg4;

    .line 9
    iget-object v0, v0, Lcom/shabakaty/downloader/gg4;->a:Ljava/lang/String;

    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
