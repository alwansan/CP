.class public final Lcom/shabakaty/downloader/gy0;
.super Lcom/shabakaty/downloader/ui4;
.source "DownloadManager.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.downloader.main.DownloadManager$cancelDownload$1"
    f = "DownloadManager.kt"
    l = {
        0x195,
        0x196
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

.field public synthetic w:Ljava/lang/Object;

.field public final synthetic x:Lcom/shabakaty/downloader/ey0;

.field public final synthetic y:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ey0;ILcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ey0;",
            "I",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/gy0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/gy0;->x:Lcom/shabakaty/downloader/ey0;

    iput p2, p0, Lcom/shabakaty/downloader/gy0;->y:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/gy0;

    iget-object v1, p0, Lcom/shabakaty/downloader/gy0;->x:Lcom/shabakaty/downloader/ey0;

    iget v2, p0, Lcom/shabakaty/downloader/gy0;->y:I

    invoke-direct {v0, v1, v2, p2}, Lcom/shabakaty/downloader/gy0;-><init>(Lcom/shabakaty/downloader/ey0;ILcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/gy0;->w:Ljava/lang/Object;

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/gy0;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 3
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

    new-instance v0, Lcom/shabakaty/downloader/gy0;

    iget-object v1, p0, Lcom/shabakaty/downloader/gy0;->x:Lcom/shabakaty/downloader/ey0;

    iget v2, p0, Lcom/shabakaty/downloader/gy0;->y:I

    invoke-direct {v0, v1, v2, p2}, Lcom/shabakaty/downloader/gy0;-><init>(Lcom/shabakaty/downloader/ey0;ILcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/gy0;->w:Ljava/lang/Object;

    return-object v0
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/gy0;->v:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/gy0;->w:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/se0;

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
    iget-object v1, p0, Lcom/shabakaty/downloader/gy0;->w:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/se0;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/gy0;->w:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/se0;

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/gy0;->x:Lcom/shabakaty/downloader/ey0;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/ey0;->c:Lcom/shabakaty/downloader/uz0;

    .line 6
    iget v4, p0, Lcom/shabakaty/downloader/gy0;->y:I

    iput-object v1, p0, Lcom/shabakaty/downloader/gy0;->w:Ljava/lang/Object;

    iput v3, p0, Lcom/shabakaty/downloader/gy0;->v:I

    invoke-virtual {p1, v4, p0}, Lcom/shabakaty/downloader/uz0;->e(ILcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Lcom/shabakaty/downloader/pw0;

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/shabakaty/downloader/gy0;->x:Lcom/shabakaty/downloader/ey0;

    iget v4, p0, Lcom/shabakaty/downloader/gy0;->y:I

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/pw0;->x:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Lcom/shabakaty/downloader/gy0;->w:Ljava/lang/Object;

    iput v2, p0, Lcom/shabakaty/downloader/gy0;->v:I

    invoke-static {v3, v4, p1, p0}, Lcom/shabakaty/downloader/ey0;->k(Lcom/shabakaty/downloader/ey0;ILjava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 9
    :cond_5
    :goto_1
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_2
    if-nez p1, :cond_6

    .line 10
    iget p1, p0, Lcom/shabakaty/downloader/gy0;->y:I

    iget-object v0, p0, Lcom/shabakaty/downloader/gy0;->x:Lcom/shabakaty/downloader/ey0;

    .line 11
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v1

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tried cancelling download with id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but item was not found in db"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {v1, p1, v0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 15
    iget-object p1, v0, Lcom/shabakaty/downloader/ey0;->a:Landroid/content/Context;

    const-wide/16 v0, 0x2

    .line 16
    invoke-static {p1, v0, v1}, Lcom/shabakaty/downloader/vd5;->z(Landroid/content/Context;J)V

    .line 17
    :cond_6
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
