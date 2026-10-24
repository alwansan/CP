.class public final Lcom/shabakaty/downloader/by0$a;
.super Lcom/shabakaty/downloader/ui4;
.source "DownloadItemsViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.profile_fragment.DownloadItemsViewModel$removeItemFromDB$1"
    f = "DownloadItemsViewModel.kt"
    l = {
        0x47
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/by0;->l(Ljava/lang/String;)Lcom/shabakaty/downloader/e92;
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

.field public final synthetic w:Lcom/shabakaty/downloader/by0;

.field public final synthetic x:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/by0;Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/by0;",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/by0$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/by0$a;->w:Lcom/shabakaty/downloader/by0;

    iput-object p2, p0, Lcom/shabakaty/downloader/by0$a;->x:Ljava/lang/String;

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
    new-instance p1, Lcom/shabakaty/downloader/by0$a;

    iget-object v0, p0, Lcom/shabakaty/downloader/by0$a;->w:Lcom/shabakaty/downloader/by0;

    iget-object v1, p0, Lcom/shabakaty/downloader/by0$a;->x:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/by0$a;-><init>(Lcom/shabakaty/downloader/by0;Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/by0$a;->t(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance p1, Lcom/shabakaty/downloader/by0$a;

    iget-object v0, p0, Lcom/shabakaty/downloader/by0$a;->w:Lcom/shabakaty/downloader/by0;

    iget-object v1, p0, Lcom/shabakaty/downloader/by0$a;->x:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/by0$a;-><init>(Lcom/shabakaty/downloader/by0;Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/by0$a;->v:I

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
    iget-object p1, p0, Lcom/shabakaty/downloader/by0$a;->w:Lcom/shabakaty/downloader/by0;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/by0;->f:Lcom/shabakaty/downloader/qx0;

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/by0$a;->x:Ljava/lang/String;

    iput v2, p0, Lcom/shabakaty/downloader/by0$a;->v:I

    invoke-virtual {p1, v1, p0}, Lcom/shabakaty/downloader/qx0;->c(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
