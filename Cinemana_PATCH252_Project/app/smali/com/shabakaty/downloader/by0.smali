.class public final Lcom/shabakaty/downloader/by0;
.super Lcom/shabakaty/downloader/xk;
.source "DownloadItemsViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/xk<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:Lcom/shabakaty/downloader/qx0;

.field public g:Lcom/shabakaty/downloader/gz0;

.field public h:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qx0;)V
    .locals 2

    const-string v0, "downloadItemsUseCases"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/xk;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/by0;->f:Lcom/shabakaty/downloader/qx0;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/xv2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/xv2;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/by0;->h:Lcom/shabakaty/downloader/xv2;

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/qx0;->a:Lcom/shabakaty/downloader/jw0;

    invoke-interface {p1}, Lcom/shabakaty/downloader/jw0;->H()Landroidx/lifecycle/LiveData;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/em1;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/em1;-><init>(Lcom/shabakaty/downloader/by0;)V

    const-string v1, "<this>"

    .line 6
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "observer"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v1, Lcom/shabakaty/downloader/yi2;

    invoke-direct {v1, v0, p1}, Lcom/shabakaty/downloader/yi2;-><init>(Lcom/shabakaty/downloader/r53;Landroidx/lifecycle/LiveData;)V

    invoke-virtual {p1, v1}, Landroidx/lifecycle/LiveData;->observeForever(Lcom/shabakaty/downloader/r53;)V

    return-void
.end method


# virtual methods
.method public final l(Ljava/lang/String;)Lcom/shabakaty/downloader/e92;
    .locals 7

    const-string v0, "externalId"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xk;->e()Lcom/shabakaty/downloader/se0;

    move-result-object v1

    new-instance v4, Lcom/shabakaty/downloader/by0$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/shabakaty/downloader/by0$a;-><init>(Lcom/shabakaty/downloader/by0;Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    move-result-object p1

    return-object p1
.end method

.method public final m()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/by0;->f:Lcom/shabakaty/downloader/qx0;

    iget-object v1, p0, Lcom/shabakaty/downloader/by0;->g:Lcom/shabakaty/downloader/gz0;

    .line 2
    iget-object v2, v0, Lcom/shabakaty/downloader/qx0;->a:Lcom/shabakaty/downloader/jw0;

    invoke-interface {v2}, Lcom/shabakaty/downloader/jw0;->C()Lcom/shabakaty/downloader/t43;

    move-result-object v4

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v8, Lcom/shabakaty/downloader/ay3;->b:Lcom/shabakaty/downloader/wx3;

    const-string v2, "unit is null"

    .line 4
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "scheduler is null"

    .line 5
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance v2, Lcom/shabakaty/downloader/n53;

    const-wide/16 v5, 0x5

    const/4 v9, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/shabakaty/downloader/n53;-><init>(Lcom/shabakaty/downloader/t43;JLjava/util/concurrent/TimeUnit;Lcom/shabakaty/downloader/wx3;Z)V

    .line 7
    new-instance v3, Lcom/shabakaty/downloader/jb4;

    invoke-direct {v3, v0, v1}, Lcom/shabakaty/downloader/jb4;-><init>(Lcom/shabakaty/downloader/qx0;Lcom/shabakaty/downloader/gz0;)V

    .line 8
    new-instance v0, Lcom/shabakaty/downloader/d53;

    invoke-direct {v0, v2, v3}, Lcom/shabakaty/downloader/d53;-><init>(Lcom/shabakaty/downloader/l53;Lcom/shabakaty/downloader/in1;)V

    .line 9
    new-instance v1, Lcom/shabakaty/downloader/g54;

    .line 10
    sget-object v2, Lcom/shabakaty/downloader/ay3;->c:Lcom/shabakaty/downloader/wx3;

    .line 11
    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/g54;-><init>(Lcom/shabakaty/downloader/wx3;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/t43;->k(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/t43;

    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/shabakaty/downloader/uv3;->a(Lcom/shabakaty/downloader/t43;)Lcom/shabakaty/downloader/t43;

    move-result-object v0

    .line 13
    new-instance v1, Lcom/shabakaty/downloader/f00;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/f00;-><init>(Lcom/shabakaty/downloader/by0;)V

    sget-object v2, Lcom/shabakaty/downloader/o5;->v:Lcom/shabakaty/downloader/o5;

    .line 14
    sget-object v3, Lcom/shabakaty/downloader/do1;->c:Lcom/shabakaty/downloader/j2;

    sget-object v4, Lcom/shabakaty/downloader/do1;->d:Lcom/shabakaty/downloader/xc0;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/t43;->h(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/xc0;)Lcom/shabakaty/downloader/mu0;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/shabakaty/downloader/xk;->b:Lcom/shabakaty/downloader/c90;

    .line 16
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/tp6;->a(Lcom/shabakaty/downloader/mu0;Lcom/shabakaty/downloader/c90;)Lcom/shabakaty/downloader/mu0;

    return-void
.end method

.method public final n(Lcom/shabakaty/downloader/pw0;)Lcom/shabakaty/downloader/e92;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xk;->e()Lcom/shabakaty/downloader/se0;

    move-result-object v0

    new-instance v3, Lcom/shabakaty/downloader/by0$b;

    const/4 v1, 0x0

    invoke-direct {v3, p0, p1, v1}, Lcom/shabakaty/downloader/by0$b;-><init>(Lcom/shabakaty/downloader/by0;Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/downloader/ud0;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    move-result-object p1

    return-object p1
.end method
