.class public final Lcom/shabakaty/epom_view/ui/EpomView$c;
.super Lcom/shabakaty/downloader/ui4;
.source "EpomView.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.epom_view.ui.EpomView$adShown$1"
    f = "EpomView.kt"
    l = {
        0xc7
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/epom_view/ui/EpomView;->f()V
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
.field public v:I

.field public final synthetic w:Lcom/shabakaty/epom_view/ui/EpomView;


# direct methods
.method public constructor <init>(Lcom/shabakaty/epom_view/ui/EpomView;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/epom_view/ui/EpomView;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/epom_view/ui/EpomView$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/epom_view/ui/EpomView$c;->w:Lcom/shabakaty/epom_view/ui/EpomView;

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
    new-instance p1, Lcom/shabakaty/epom_view/ui/EpomView$c;

    iget-object v0, p0, Lcom/shabakaty/epom_view/ui/EpomView$c;->w:Lcom/shabakaty/epom_view/ui/EpomView;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/epom_view/ui/EpomView$c;-><init>(Lcom/shabakaty/epom_view/ui/EpomView;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/epom_view/ui/EpomView$c;->t(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance p1, Lcom/shabakaty/epom_view/ui/EpomView$c;

    iget-object v0, p0, Lcom/shabakaty/epom_view/ui/EpomView$c;->w:Lcom/shabakaty/epom_view/ui/EpomView;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/epom_view/ui/EpomView$c;-><init>(Lcom/shabakaty/epom_view/ui/EpomView;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/epom_view/ui/EpomView$c;->v:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/epom_view/ui/EpomView$c;->w:Lcom/shabakaty/epom_view/ui/EpomView;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/epom_view/ui/EpomView;->R:Lcom/shabakaty/downloader/f41;

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/f41;->a()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    iput v2, p0, Lcom/shabakaty/epom_view/ui/EpomView$c;->v:I

    .line 8
    sget-object v1, Lcom/shabakaty/downloader/e41;->a:Lcom/shabakaty/downloader/gq0;

    if-eqz v1, :cond_4

    .line 9
    invoke-virtual {v1}, Lcom/shabakaty/downloader/gq0;->a()Lcom/shabakaty/downloader/ny2;

    move-result-object v1

    invoke-virtual {v1, p1, p0}, Lcom/shabakaty/downloader/ny2;->a(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 10
    :cond_3
    :goto_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1

    .line 11
    :cond_4
    sget-object p1, Lcom/shabakaty/downloader/j41;->r:Lcom/shabakaty/downloader/j41;

    throw p1
.end method
