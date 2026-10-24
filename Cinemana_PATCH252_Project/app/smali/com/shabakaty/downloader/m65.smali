.class public final Lcom/shabakaty/downloader/m65;
.super Lcom/shabakaty/downloader/ui4;
.source "WideVerticalVideosView.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.home_fragment.WideVerticalVideosView$enableAccessibilityLiveRegion$1"
    f = "WideVerticalVideosView.kt"
    l = {
        0x90,
        0x92
    }
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
.field public v:I

.field public final synthetic w:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/m65;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/m65;->w:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

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
    new-instance p1, Lcom/shabakaty/downloader/m65;

    iget-object v0, p0, Lcom/shabakaty/downloader/m65;->w:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/m65;-><init>(Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/m65;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    new-instance p1, Lcom/shabakaty/downloader/m65;

    iget-object v0, p0, Lcom/shabakaty/downloader/m65;->w:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/m65;-><init>(Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/m65;->v:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    const-wide/16 v4, 0x5dc

    .line 4
    iput v3, p0, Lcom/shabakaty/downloader/m65;->v:I

    invoke-static {v4, v5, p0}, Lcom/shabakaty/downloader/rm3;->f(JLcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 5
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/m65;->w:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 6
    sget-object p1, Lcom/shabakaty/downloader/hu0;->a:Lcom/shabakaty/downloader/pe0;

    .line 7
    sget-object p1, Lcom/shabakaty/downloader/wl2;->a:Lcom/shabakaty/downloader/vl2;

    .line 8
    new-instance v1, Lcom/shabakaty/downloader/m65$a;

    iget-object v3, p0, Lcom/shabakaty/downloader/m65;->w:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/shabakaty/downloader/m65$a;-><init>(Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;Lcom/shabakaty/downloader/ud0;)V

    iput v2, p0, Lcom/shabakaty/downloader/m65;->v:I

    invoke-static {p1, v1, p0}, Lcom/shabakaty/downloader/nh3;->M(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 9
    :cond_4
    :goto_1
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
