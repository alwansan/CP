.class public final Lcom/shabakaty/downloader/px0;
.super Lcom/shabakaty/downloader/ui4;
.source "DownloadItemsUseCases.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.profile_fragment.DownloadItemsUseCases$createNewCollection$2"
    f = "DownloadItemsUseCases.kt"
    l = {
        0x8a
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
        "Lcom/shabakaty/downloader/gz0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public v:Ljava/lang/Object;

.field public w:Ljava/lang/Object;

.field public x:I

.field public final synthetic y:Ljava/lang/String;

.field public final synthetic z:Lcom/shabakaty/downloader/qx0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/qx0;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/qx0;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/px0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/px0;->y:Ljava/lang/String;

    iput-object p2, p0, Lcom/shabakaty/downloader/px0;->z:Lcom/shabakaty/downloader/qx0;

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
    new-instance p1, Lcom/shabakaty/downloader/px0;

    iget-object v0, p0, Lcom/shabakaty/downloader/px0;->y:Ljava/lang/String;

    iget-object v1, p0, Lcom/shabakaty/downloader/px0;->z:Lcom/shabakaty/downloader/qx0;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/px0;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/qx0;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/px0;->t(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance p1, Lcom/shabakaty/downloader/px0;

    iget-object v0, p0, Lcom/shabakaty/downloader/px0;->y:Ljava/lang/String;

    iget-object v1, p0, Lcom/shabakaty/downloader/px0;->z:Lcom/shabakaty/downloader/qx0;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/px0;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/qx0;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/px0;->x:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/px0;->w:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/gz0;

    iget-object v1, p0, Lcom/shabakaty/downloader/px0;->v:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/gz0;

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
    new-instance p1, Lcom/shabakaty/downloader/gz0;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/shabakaty/downloader/px0;->y:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xd

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/shabakaty/downloader/gz0;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    iget-object v1, p0, Lcom/shabakaty/downloader/px0;->z:Lcom/shabakaty/downloader/qx0;

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/px0;->v:Ljava/lang/Object;

    iput-object p1, p0, Lcom/shabakaty/downloader/px0;->w:Ljava/lang/Object;

    iput v2, p0, Lcom/shabakaty/downloader/px0;->x:I

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v2, Lcom/shabakaty/downloader/hu0;->b:Lcom/shabakaty/downloader/pe0;

    .line 8
    new-instance v3, Lcom/shabakaty/downloader/ux0;

    const/4 v4, 0x0

    invoke-direct {v3, v1, p1, v4}, Lcom/shabakaty/downloader/ux0;-><init>(Lcom/shabakaty/downloader/qx0;Lcom/shabakaty/downloader/gz0;Lcom/shabakaty/downloader/ud0;)V

    invoke-static {v2, v3, p0}, Lcom/shabakaty/downloader/nh3;->M(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    move-object v1, v0

    .line 9
    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 10
    iput p1, v0, Lcom/shabakaty/downloader/gz0;->r:I

    return-object v1
.end method
