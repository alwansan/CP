.class public final Lcom/shabakaty/downloader/bv1;
.super Lcom/shabakaty/downloader/ui4;
.source "HomeViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.home_activity.HomeViewModel$logout$1$1"
    f = "HomeViewModel.kt"
    l = {
        0x4e,
        0x4f,
        0x53
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
            "Lcom/shabakaty/downloader/bv1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/bv1;->w:Lcom/shabakaty/downloader/zu1;

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
    new-instance p1, Lcom/shabakaty/downloader/bv1;

    iget-object v0, p0, Lcom/shabakaty/downloader/bv1;->w:Lcom/shabakaty/downloader/zu1;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/bv1;-><init>(Lcom/shabakaty/downloader/zu1;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/bv1;->t(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance p1, Lcom/shabakaty/downloader/bv1;

    iget-object v0, p0, Lcom/shabakaty/downloader/bv1;->w:Lcom/shabakaty/downloader/zu1;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/bv1;-><init>(Lcom/shabakaty/downloader/zu1;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/bv1;->v:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/bv1;->w:Lcom/shabakaty/downloader/zu1;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/zu1;->i:Lcom/shabakaty/downloader/vu1;

    .line 6
    iput v4, p0, Lcom/shabakaty/downloader/bv1;->v:I

    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/vu1;->a(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 7
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/bv1;->w:Lcom/shabakaty/downloader/zu1;

    .line 8
    iget-object p1, p1, Lcom/shabakaty/downloader/zu1;->n:Lcom/shabakaty/downloader/n24;

    .line 9
    iput v3, p0, Lcom/shabakaty/downloader/bv1;->v:I

    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/n24;->j(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 10
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/shabakaty/downloader/bv1;->w:Lcom/shabakaty/downloader/zu1;

    .line 11
    iget-object p1, p1, Lcom/shabakaty/downloader/zu1;->j:Lcom/shabakaty/usermanagement/UserManagement;

    .line 12
    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/UserManagement;->logout()Lcom/shabakaty/downloader/f74;

    move-result-object p1

    .line 13
    sget-object v1, Lcom/shabakaty/downloader/ay3;->c:Lcom/shabakaty/downloader/wx3;

    .line 14
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/f74;->m(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    .line 15
    sget-object v1, Lcom/shabakaty/downloader/do1;->d:Lcom/shabakaty/downloader/xc0;

    sget-object v3, Lcom/shabakaty/downloader/do1;->e:Lcom/shabakaty/downloader/xc0;

    .line 16
    new-instance v4, Lcom/shabakaty/downloader/zc0;

    invoke-direct {v4, v1, v3}, Lcom/shabakaty/downloader/zc0;-><init>(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;)V

    .line 17
    invoke-virtual {p1, v4}, Lcom/shabakaty/downloader/f74;->a(Lcom/shabakaty/downloader/y74;)V

    .line 18
    sget-object p1, Lcom/shabakaty/downloader/hu0;->a:Lcom/shabakaty/downloader/pe0;

    .line 19
    sget-object p1, Lcom/shabakaty/downloader/wl2;->a:Lcom/shabakaty/downloader/vl2;

    .line 20
    new-instance v1, Lcom/shabakaty/downloader/bv1$a;

    iget-object v3, p0, Lcom/shabakaty/downloader/bv1;->w:Lcom/shabakaty/downloader/zu1;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/shabakaty/downloader/bv1$a;-><init>(Lcom/shabakaty/downloader/zu1;Lcom/shabakaty/downloader/ud0;)V

    iput v2, p0, Lcom/shabakaty/downloader/bv1;->v:I

    invoke-static {p1, v1, p0}, Lcom/shabakaty/downloader/nh3;->M(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 21
    :cond_6
    :goto_2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
