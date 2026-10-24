.class public final Lcom/shabakaty/downloader/mc4$b;
.super Lcom/shabakaty/downloader/ui4;
.source "StateListener.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.downloader.main.StateListener$error$1"
    f = "StateListener.kt"
    l = {
        0x31
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/mc4;->error(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/Throwable;)V
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

.field public final synthetic w:Lcom/shabakaty/downloader/mc4;

.field public final synthetic x:Lcom/liulishuo/filedownloader/BaseDownloadTask;

.field public final synthetic y:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/mc4;Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/Throwable;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/mc4;",
            "Lcom/liulishuo/filedownloader/BaseDownloadTask;",
            "Ljava/lang/Throwable;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/mc4$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/mc4$b;->w:Lcom/shabakaty/downloader/mc4;

    iput-object p2, p0, Lcom/shabakaty/downloader/mc4$b;->x:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    iput-object p3, p0, Lcom/shabakaty/downloader/mc4$b;->y:Ljava/lang/Throwable;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/mc4$b;

    iget-object v0, p0, Lcom/shabakaty/downloader/mc4$b;->w:Lcom/shabakaty/downloader/mc4;

    iget-object v1, p0, Lcom/shabakaty/downloader/mc4$b;->x:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    iget-object v2, p0, Lcom/shabakaty/downloader/mc4$b;->y:Ljava/lang/Throwable;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/shabakaty/downloader/mc4$b;-><init>(Lcom/shabakaty/downloader/mc4;Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/Throwable;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/mc4$b;->t(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance p1, Lcom/shabakaty/downloader/mc4$b;

    iget-object v0, p0, Lcom/shabakaty/downloader/mc4$b;->w:Lcom/shabakaty/downloader/mc4;

    iget-object v1, p0, Lcom/shabakaty/downloader/mc4$b;->x:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    iget-object v2, p0, Lcom/shabakaty/downloader/mc4$b;->y:Ljava/lang/Throwable;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/shabakaty/downloader/mc4$b;-><init>(Lcom/shabakaty/downloader/mc4;Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/Throwable;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/mc4$b;->v:I

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
    iget-object p1, p0, Lcom/shabakaty/downloader/mc4$b;->w:Lcom/shabakaty/downloader/mc4;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/mc4;->a:Lcom/shabakaty/downloader/qd4;

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/mc4$b;->x:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    sget-object v3, Lcom/shabakaty/downloader/xc4;->w:Lcom/shabakaty/downloader/xc4;

    iget-object v4, p0, Lcom/shabakaty/downloader/mc4$b;->y:Ljava/lang/Throwable;

    iput v2, p0, Lcom/shabakaty/downloader/mc4$b;->v:I

    invoke-virtual {p1, v1, v3, v4, p0}, Lcom/shabakaty/downloader/qd4;->d(Lcom/liulishuo/filedownloader/BaseDownloadTask;Lcom/shabakaty/downloader/xc4;Ljava/lang/Throwable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/mc4$b;->w:Lcom/shabakaty/downloader/mc4;

    .line 8
    iget-object p1, p1, Lcom/shabakaty/downloader/mc4;->b:Lcom/shabakaty/downloader/i13;

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/mc4$b;->x:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getId()I

    move-result v0

    .line 10
    iget-object v1, p1, Lcom/shabakaty/downloader/i13;->d:Lcom/shabakaty/downloader/se0;

    new-instance v4, Lcom/shabakaty/downloader/g13;

    const/4 v2, 0x0

    invoke-direct {v4, p1, v0, v2}, Lcom/shabakaty/downloader/g13;-><init>(Lcom/shabakaty/downloader/i13;ILcom/shabakaty/downloader/ud0;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    .line 11
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
