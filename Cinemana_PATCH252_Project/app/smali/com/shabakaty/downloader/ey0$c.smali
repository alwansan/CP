.class public final Lcom/shabakaty/downloader/ey0$c;
.super Lcom/shabakaty/downloader/ui4;
.source "DownloadManager.kt"

# interfaces
.implements Lcom/shabakaty/downloader/jn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.downloader.main.DownloadManager$attachGlobalListener$3"
    f = "DownloadManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ey0;->g(Lcom/shabakaty/downloader/gq1;Lcom/shabakaty/downloader/rh2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/jn1<",
        "Lcom/shabakaty/downloader/ue1<",
        "-",
        "Lcom/shabakaty/downloader/pw0;",
        ">;",
        "Ljava/lang/Throwable;",
        "Lcom/shabakaty/downloader/ud0<",
        "-",
        "Lcom/shabakaty/downloader/qv4;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public synthetic v:Ljava/lang/Object;

.field public final synthetic w:Lcom/shabakaty/downloader/gq1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gq1;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/gq1;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/ey0$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/ey0$c;->w:Lcom/shabakaty/downloader/gq1;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/shabakaty/downloader/ue1;

    check-cast p2, Ljava/lang/Throwable;

    check-cast p3, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/ey0$c;

    iget-object v0, p0, Lcom/shabakaty/downloader/ey0$c;->w:Lcom/shabakaty/downloader/gq1;

    invoke-direct {p1, v0, p3}, Lcom/shabakaty/downloader/ey0$c;-><init>(Lcom/shabakaty/downloader/gq1;Lcom/shabakaty/downloader/ud0;)V

    iput-object p2, p1, Lcom/shabakaty/downloader/ey0$c;->v:Ljava/lang/Object;

    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    .line 2
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/shabakaty/downloader/ey0$c;->v:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/d91;->f(Ljava/lang/Throwable;)V

    const/4 p3, 0x0

    .line 4
    invoke-interface {v0, p3, p1}, Lcom/shabakaty/downloader/gq1;->h0(Lcom/shabakaty/downloader/pw0;Ljava/lang/Throwable;)V

    return-object p2
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/ey0$c;->v:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/d91;->f(Ljava/lang/Throwable;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ey0$c;->w:Lcom/shabakaty/downloader/gq1;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/shabakaty/downloader/gq1;->h0(Lcom/shabakaty/downloader/pw0;Ljava/lang/Throwable;)V

    .line 4
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
