.class public final Lcom/shabakaty/downloader/y05$a;
.super Lcom/shabakaty/downloader/ui4;
.source "VideoInfoFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.video_info.VideoInfoFragment$enableAccessibilityLiveRegion$1$1"
    f = "VideoInfoFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/y05;->t(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
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
.field public final synthetic v:Lcom/shabakaty/downloader/d15;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/d15;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/d15;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/y05$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/y05$a;->v:Lcom/shabakaty/downloader/d15;

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
    new-instance p1, Lcom/shabakaty/downloader/y05$a;

    iget-object v0, p0, Lcom/shabakaty/downloader/y05$a;->v:Lcom/shabakaty/downloader/d15;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/y05$a;-><init>(Lcom/shabakaty/downloader/d15;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/y05$a;->t(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance p1, Lcom/shabakaty/downloader/y05$a;

    iget-object v0, p0, Lcom/shabakaty/downloader/y05$a;->v:Lcom/shabakaty/downloader/d15;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/y05$a;-><init>(Lcom/shabakaty/downloader/d15;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/y05$a;->v:Lcom/shabakaty/downloader/d15;

    sget-boolean v0, Lcom/shabakaty/downloader/d15;->A:Z

    .line 3
    invoke-virtual {p1, p1}, Lcom/shabakaty/downloader/hj;->b2(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/y05$a;->v:Lcom/shabakaty/downloader/d15;

    invoke-static {p1}, Lcom/shabakaty/downloader/d15;->i2(Lcom/shabakaty/downloader/d15;)Lcom/shabakaty/downloader/jl1;

    move-result-object p1

    iget-object p1, p1, Lcom/shabakaty/downloader/jl1;->O:Landroidx/core/widget/NestedScrollView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAccessibilityLiveRegion(I)V

    .line 5
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
