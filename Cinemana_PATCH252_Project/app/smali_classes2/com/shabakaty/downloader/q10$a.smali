.class public final Lcom/shabakaty/downloader/q10$a;
.super Lcom/shabakaty/downloader/ui4;
.source "CinemanaVideoPlayerViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.player.CinemanaVideoPlayerViewModel$1$1"
    f = "CinemanaVideoPlayerViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/q10;-><init>(Lcom/shabakaty/downloader/ff3;Lcom/shabakaty/downloader/q15;Lcom/shabakaty/downloader/rh3$b;Lcom/shabakaty/downloader/n24;Lcom/shabakaty/downloader/ep0;Lcom/shabakaty/downloader/s64;Lcom/shabakaty/usermanagement/UserManagement;Ljava/lang/ref/WeakReference;Lcom/shabakaty/downloader/ox4;)V
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
.field public final synthetic v:Lcom/shabakaty/downloader/q10;

.field public final synthetic w:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/q10;Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q10;",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/q10$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/q10$a;->v:Lcom/shabakaty/downloader/q10;

    iput-object p2, p0, Lcom/shabakaty/downloader/q10$a;->w:Ljava/lang/String;

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
    new-instance p1, Lcom/shabakaty/downloader/q10$a;

    iget-object v0, p0, Lcom/shabakaty/downloader/q10$a;->v:Lcom/shabakaty/downloader/q10;

    iget-object v1, p0, Lcom/shabakaty/downloader/q10$a;->w:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/q10$a;-><init>(Lcom/shabakaty/downloader/q10;Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/q10$a;->t(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
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

    new-instance p1, Lcom/shabakaty/downloader/q10$a;

    iget-object v0, p0, Lcom/shabakaty/downloader/q10$a;->v:Lcom/shabakaty/downloader/q10;

    iget-object v1, p0, Lcom/shabakaty/downloader/q10$a;->w:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/q10$a;-><init>(Lcom/shabakaty/downloader/q10;Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/q10$a;->v:Lcom/shabakaty/downloader/q10;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/q10;->n:Lcom/shabakaty/downloader/ox4;

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/q10$a;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ox4;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/q10$a;->v:Lcom/shabakaty/downloader/q10;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/q10;->z:Lcom/shabakaty/downloader/xv2;

    .line 7
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez p1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    if-nez p1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/q10$a;->v:Lcom/shabakaty/downloader/q10;

    .line 10
    iget-object v0, v0, Lcom/shabakaty/downloader/q10;->q:Ljava/util/List;

    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_2
    :goto_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
