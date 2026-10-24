.class public final Lcom/shabakaty/downloader/pb;
.super Lcom/shabakaty/downloader/ui4;
.source "AppSettingsViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.settings.AppSettingsViewModel$changeSelectedTheme$1"
    f = "AppSettingsViewModel.kt"
    l = {
        0x1c
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

.field public final synthetic w:Lcom/shabakaty/downloader/ky4;

.field public final synthetic x:Lcom/shabakaty/downloader/rb;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ky4;Lcom/shabakaty/downloader/rb;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ky4;",
            "Lcom/shabakaty/downloader/rb;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/pb;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/pb;->w:Lcom/shabakaty/downloader/ky4;

    iput-object p2, p0, Lcom/shabakaty/downloader/pb;->x:Lcom/shabakaty/downloader/rb;

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
    new-instance p1, Lcom/shabakaty/downloader/pb;

    iget-object v0, p0, Lcom/shabakaty/downloader/pb;->w:Lcom/shabakaty/downloader/ky4;

    iget-object v1, p0, Lcom/shabakaty/downloader/pb;->x:Lcom/shabakaty/downloader/rb;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/pb;-><init>(Lcom/shabakaty/downloader/ky4;Lcom/shabakaty/downloader/rb;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/pb;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

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

    new-instance p1, Lcom/shabakaty/downloader/pb;

    iget-object v0, p0, Lcom/shabakaty/downloader/pb;->w:Lcom/shabakaty/downloader/ky4;

    iget-object v1, p0, Lcom/shabakaty/downloader/pb;->x:Lcom/shabakaty/downloader/rb;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/pb;-><init>(Lcom/shabakaty/downloader/ky4;Lcom/shabakaty/downloader/rb;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/pb;->v:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

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

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/pb;->w:Lcom/shabakaty/downloader/ky4;

    .line 5
    iget p1, p1, Lcom/shabakaty/downloader/ky4;->a:I

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/pb;->x:Lcom/shabakaty/downloader/rb;

    .line 7
    iget-object v1, v1, Lcom/shabakaty/downloader/rb;->f:Lcom/shabakaty/downloader/n24;

    .line 8
    invoke-virtual {v1}, Lcom/shabakaty/downloader/n24;->c()Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;

    move-result-object v1

    .line 9
    iget-object v1, v1, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;->theme:Lcom/shabakaty/downloader/ky4;

    .line 10
    iget v1, v1, Lcom/shabakaty/downloader/ky4;->a:I

    if-eq p1, v1, :cond_5

    .line 11
    iget-object p1, p0, Lcom/shabakaty/downloader/pb;->x:Lcom/shabakaty/downloader/rb;

    .line 12
    iget-object p1, p1, Lcom/shabakaty/downloader/rb;->f:Lcom/shabakaty/downloader/n24;

    .line 13
    iget-object v1, p0, Lcom/shabakaty/downloader/pb;->w:Lcom/shabakaty/downloader/ky4;

    iput v2, p0, Lcom/shabakaty/downloader/pb;->v:I

    .line 14
    iget-object p1, p1, Lcom/shabakaty/downloader/n24;->a:Lcom/shabakaty/downloader/n34;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v2, Lcom/shabakaty/downloader/a44;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v1, v3}, Lcom/shabakaty/downloader/a44;-><init>(Lcom/shabakaty/downloader/n34;Lcom/shabakaty/downloader/ky4;Lcom/shabakaty/downloader/ud0;)V

    invoke-static {v2, p0}, Lcom/shabakaty/downloader/j96;->g(Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_0
    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 16
    :cond_3
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_1
    if-ne p1, v0, :cond_4

    return-object v0

    .line 17
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/shabakaty/downloader/pb;->x:Lcom/shabakaty/downloader/rb;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/nb;

    invoke-interface {p1}, Lcom/shabakaty/downloader/nb;->w0()V

    .line 18
    :cond_5
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
