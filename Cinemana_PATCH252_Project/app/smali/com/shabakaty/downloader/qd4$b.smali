.class public final Lcom/shabakaty/downloader/qd4$b;
.super Lcom/shabakaty/downloader/ui4;
.source "StorageUtils.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.downloader.utils.StorageUtils$createDownloadItem$3$1$1"
    f = "StorageUtils.kt"
    l = {
        0x2b,
        0x2d
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/qd4;->a(Lcom/liulishuo/filedownloader/BaseDownloadTask;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
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
        "Lcom/shabakaty/downloader/pw0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public v:I

.field public synthetic w:Ljava/lang/Object;

.field public final synthetic x:Lcom/shabakaty/downloader/qd4;

.field public final synthetic y:Lcom/shabakaty/downloader/pw0;

.field public final synthetic z:Lcom/liulishuo/filedownloader/BaseDownloadTask;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qd4;Lcom/shabakaty/downloader/pw0;Lcom/liulishuo/filedownloader/BaseDownloadTask;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qd4;",
            "Lcom/shabakaty/downloader/pw0;",
            "Lcom/liulishuo/filedownloader/BaseDownloadTask;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qd4$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/qd4$b;->x:Lcom/shabakaty/downloader/qd4;

    iput-object p2, p0, Lcom/shabakaty/downloader/qd4$b;->y:Lcom/shabakaty/downloader/pw0;

    iput-object p3, p0, Lcom/shabakaty/downloader/qd4$b;->z:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/qd4$b;

    iget-object v1, p0, Lcom/shabakaty/downloader/qd4$b;->x:Lcom/shabakaty/downloader/qd4;

    iget-object v2, p0, Lcom/shabakaty/downloader/qd4$b;->y:Lcom/shabakaty/downloader/pw0;

    iget-object v3, p0, Lcom/shabakaty/downloader/qd4$b;->z:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/shabakaty/downloader/qd4$b;-><init>(Lcom/shabakaty/downloader/qd4;Lcom/shabakaty/downloader/pw0;Lcom/liulishuo/filedownloader/BaseDownloadTask;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/qd4$b;->w:Ljava/lang/Object;

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/qd4$b;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 4
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

    new-instance v0, Lcom/shabakaty/downloader/qd4$b;

    iget-object v1, p0, Lcom/shabakaty/downloader/qd4$b;->x:Lcom/shabakaty/downloader/qd4;

    iget-object v2, p0, Lcom/shabakaty/downloader/qd4$b;->y:Lcom/shabakaty/downloader/pw0;

    iget-object v3, p0, Lcom/shabakaty/downloader/qd4$b;->z:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/shabakaty/downloader/qd4$b;-><init>(Lcom/shabakaty/downloader/qd4;Lcom/shabakaty/downloader/pw0;Lcom/liulishuo/filedownloader/BaseDownloadTask;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/qd4$b;->w:Ljava/lang/Object;

    return-object v0
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/qd4$b;->v:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/qd4$b;->w:Ljava/lang/Object;

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
    iget-object v1, p0, Lcom/shabakaty/downloader/qd4$b;->w:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/se0;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    move-object p1, v1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/qd4$b;->w:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/se0;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/qd4$b;->x:Lcom/shabakaty/downloader/qd4;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/downloader/qd4;->a:Lcom/shabakaty/downloader/uz0;

    .line 6
    iget-object v4, p0, Lcom/shabakaty/downloader/qd4$b;->y:Lcom/shabakaty/downloader/pw0;

    .line 7
    iget v4, v4, Lcom/shabakaty/downloader/pw0;->r:I

    .line 8
    iput-object p1, p0, Lcom/shabakaty/downloader/qd4$b;->w:Ljava/lang/Object;

    iput v3, p0, Lcom/shabakaty/downloader/qd4$b;->v:I

    iget-object v1, v1, Lcom/shabakaty/downloader/uz0;->a:Lcom/shabakaty/downloader/kz0;

    invoke-interface {v1, v4, p0}, Lcom/shabakaty/downloader/kz0;->h(ILcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    return-object v0

    .line 9
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/qd4$b;->y:Lcom/shabakaty/downloader/pw0;

    iget-object v3, p0, Lcom/shabakaty/downloader/qd4$b;->z:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    invoke-interface {v3}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getId()I

    move-result v3

    .line 10
    iput v3, v1, Lcom/shabakaty/downloader/pw0;->r:I

    .line 11
    iget-object v1, p0, Lcom/shabakaty/downloader/qd4$b;->x:Lcom/shabakaty/downloader/qd4;

    iget-object v3, p0, Lcom/shabakaty/downloader/qd4$b;->y:Lcom/shabakaty/downloader/pw0;

    iput-object p1, p0, Lcom/shabakaty/downloader/qd4$b;->w:Ljava/lang/Object;

    iput v2, p0, Lcom/shabakaty/downloader/qd4$b;->v:I

    .line 12
    invoke-virtual {v1, v3, p0}, Lcom/shabakaty/downloader/qd4;->b(Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    .line 13
    :goto_1
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object p1

    const-string v1, "item already exists, returning"

    invoke-virtual {p1, v1, v0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 14
    iget-object p1, p0, Lcom/shabakaty/downloader/qd4$b;->y:Lcom/shabakaty/downloader/pw0;

    return-object p1
.end method
