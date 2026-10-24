.class public final Lcom/shabakaty/downloader/wj;
.super Lcom/shabakaty/downloader/ui4;
.source "BaseViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.base.BaseNavigator$showToastOnMain$2"
    f = "BaseViewModel.kt"
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
.field public final synthetic v:Lcom/shabakaty/downloader/vj;

.field public final synthetic w:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vj;ILcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/vj;",
            "I",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/wj;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/wj;->v:Lcom/shabakaty/downloader/vj;

    iput p2, p0, Lcom/shabakaty/downloader/wj;->w:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/wj;

    iget-object v0, p0, Lcom/shabakaty/downloader/wj;->v:Lcom/shabakaty/downloader/vj;

    iget v1, p0, Lcom/shabakaty/downloader/wj;->w:I

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/wj;-><init>(Lcom/shabakaty/downloader/vj;ILcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/vj;->q(I)V

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 2
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

    new-instance p1, Lcom/shabakaty/downloader/wj;

    iget-object v0, p0, Lcom/shabakaty/downloader/wj;->v:Lcom/shabakaty/downloader/vj;

    iget v1, p0, Lcom/shabakaty/downloader/wj;->w:I

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/wj;-><init>(Lcom/shabakaty/downloader/vj;ILcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/wj;->v:Lcom/shabakaty/downloader/vj;

    iget v0, p0, Lcom/shabakaty/downloader/wj;->w:I

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/vj;->q(I)V

    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
