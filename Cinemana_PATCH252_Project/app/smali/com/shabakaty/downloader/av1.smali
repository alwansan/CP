.class public final Lcom/shabakaty/downloader/av1;
.super Lcom/shabakaty/downloader/ui4;
.source "HomeViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.home_activity.HomeViewModel$getUserInfo$1"
    f = "HomeViewModel.kt"
    l = {
        0x3c
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

.field public final synthetic w:Lcom/shabakaty/downloader/zu1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zu1;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/zu1;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/av1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/av1;->w:Lcom/shabakaty/downloader/zu1;

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
    new-instance p1, Lcom/shabakaty/downloader/av1;

    iget-object v0, p0, Lcom/shabakaty/downloader/av1;->w:Lcom/shabakaty/downloader/zu1;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/av1;-><init>(Lcom/shabakaty/downloader/zu1;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/av1;->t(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance p1, Lcom/shabakaty/downloader/av1;

    iget-object v0, p0, Lcom/shabakaty/downloader/av1;->w:Lcom/shabakaty/downloader/zu1;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/av1;-><init>(Lcom/shabakaty/downloader/zu1;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/av1;->v:I

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

    const-wide/16 v3, 0xbb8

    .line 4
    iput v2, p0, Lcom/shabakaty/downloader/av1;->v:I

    invoke-static {v3, v4, p0}, Lcom/shabakaty/downloader/rm3;->f(JLcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/av1;->w:Lcom/shabakaty/downloader/zu1;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/zu1;->j:Lcom/shabakaty/usermanagement/UserManagement;

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/UserManagement;->isLoggedIn()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/av1;->w:Lcom/shabakaty/downloader/zu1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/eu1;

    iget-object v0, p0, Lcom/shabakaty/downloader/av1;->w:Lcom/shabakaty/downloader/zu1;

    .line 9
    iget-object v0, v0, Lcom/shabakaty/downloader/zu1;->j:Lcom/shabakaty/usermanagement/UserManagement;

    .line 10
    invoke-virtual {v0}, Lcom/shabakaty/usermanagement/UserManagement;->getSmallPicture()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/kx2;->H0(Ljava/lang/String;)V

    .line 11
    :cond_3
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
