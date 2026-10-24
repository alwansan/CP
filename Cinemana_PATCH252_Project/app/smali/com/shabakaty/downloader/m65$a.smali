.class public final Lcom/shabakaty/downloader/m65$a;
.super Lcom/shabakaty/downloader/ui4;
.source "WideVerticalVideosView.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.home_fragment.WideVerticalVideosView$enableAccessibilityLiveRegion$1$1"
    f = "WideVerticalVideosView.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/m65;->t(Ljava/lang/Object;)Ljava/lang/Object;
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
.field public final synthetic v:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/m65$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/m65$a;->v:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

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
    new-instance p1, Lcom/shabakaty/downloader/m65$a;

    iget-object v0, p0, Lcom/shabakaty/downloader/m65$a;->v:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/m65$a;-><init>(Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/m65$a;->t(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance p1, Lcom/shabakaty/downloader/m65$a;

    iget-object v0, p0, Lcom/shabakaty/downloader/m65$a;->v:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/m65$a;-><init>(Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/m65$a;->v:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/m65$a;->v:Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;->getBinding()Lcom/shabakaty/downloader/i65;

    move-result-object p1

    iget-object p1, p1, Lcom/shabakaty/downloader/i65;->N:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAccessibilityLiveRegion(I)V

    .line 4
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
