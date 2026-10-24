.class public final Lcom/shabakaty/downloader/r54;
.super Lcom/shabakaty/downloader/xk;
.source "ShowMoreViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/r54$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/xk<",
        "Lcom/shabakaty/downloader/o54;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:Lcom/shabakaty/downloader/q54;

.field public final g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lcom/shabakaty/downloader/r54$a;

.field public i:Lcom/shabakaty/downloader/mj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/mj<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;>;"
        }
    .end annotation
.end field

.field public j:Ljava/lang/String;

.field public k:Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$b;

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/q54;Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q54;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    const-string v0, "showMoreUseCases"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "weakContext"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/xk;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/r54;->f:Lcom/shabakaty/downloader/q54;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/r54;->g:Ljava/lang/ref/WeakReference;

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/r54$a;

    const/4 p2, 0x0

    const/4 v0, 0x3

    invoke-direct {p1, p2, p2, v0}, Lcom/shabakaty/downloader/r54$a;-><init>(IZI)V

    iput-object p1, p0, Lcom/shabakaty/downloader/r54;->h:Lcom/shabakaty/downloader/r54$a;

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/mj;

    const/4 p2, 0x0

    .line 6
    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/mj;-><init>(Ljava/lang/Object;)V

    .line 7
    iput-object p1, p0, Lcom/shabakaty/downloader/r54;->i:Lcom/shabakaty/downloader/mj;

    const-string p1, "0"

    .line 8
    iput-object p1, p0, Lcom/shabakaty/downloader/r54;->j:Ljava/lang/String;

    .line 9
    sget-object p1, Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$b$b;->a:Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$b$b;

    iput-object p1, p0, Lcom/shabakaty/downloader/r54;->k:Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType$b;

    const-string p1, ""

    .line 10
    iput-object p1, p0, Lcom/shabakaty/downloader/r54;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final l()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/r54;->f:Lcom/shabakaty/downloader/q54;

    iget-object v1, p0, Lcom/shabakaty/downloader/r54;->j:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "collectionId"

    .line 2
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v2, v0, Lcom/shabakaty/downloader/q54;->c:Lcom/shabakaty/downloader/n24;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/n24;->e()Lcom/shabakaty/downloader/ia3;

    move-result-object v2

    .line 4
    iget-object v2, v2, Lcom/shabakaty/downloader/ia3;->a:Ljava/lang/String;

    .line 5
    iget-object v3, v0, Lcom/shabakaty/downloader/q54;->a:Lcom/shabakaty/downloader/k9;

    const-string v4, "cacheable-for-authorized, max-age=900"

    .line 6
    invoke-interface {v3, v2, v1, v4}, Lcom/shabakaty/downloader/k9;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object v1

    .line 7
    sget-object v2, Lcom/shabakaty/downloader/p15;->t:Lcom/shabakaty/downloader/p15;

    .line 8
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/f74;->h(Lcom/shabakaty/downloader/in1;)Lcom/shabakaty/downloader/qf1;

    move-result-object v1

    .line 9
    new-instance v12, Lcom/shabakaty/cinemana/domain/models/remote/home_page/CollectionItemApi;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xff

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/shabakaty/cinemana/domain/models/remote/home_page/CollectionItemApi;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 10
    new-instance v2, Lcom/shabakaty/downloader/ag1;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v1, v3, v4, v12}, Lcom/shabakaty/downloader/ag1;-><init>(Lcom/shabakaty/downloader/qf1;JLjava/lang/Object;)V

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/q54;->b:Lcom/shabakaty/downloader/qm2;

    new-instance v1, Lcom/shabakaty/downloader/p54;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lcom/shabakaty/downloader/p54;-><init>(Lcom/shabakaty/downloader/qm2;I)V

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/f74;->i(Lcom/shabakaty/downloader/in1;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/shabakaty/downloader/uv3;->f(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object v2

    .line 13
    new-instance v3, Lcom/shabakaty/downloader/r54$b;

    invoke-direct {v3, p0}, Lcom/shabakaty/downloader/r54$b;-><init>(Lcom/shabakaty/downloader/r54;)V

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/xk;->d(Lcom/shabakaty/downloader/xk;Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;ILjava/lang/Object;)Lcom/shabakaty/downloader/mu0;

    return-void
.end method

.method public final m()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/r54;->i:Lcom/shabakaty/downloader/mj;

    invoke-static {v0}, Lcom/shabakaty/downloader/zi2;->e(Lcom/shabakaty/downloader/xv2;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/r54;->h:Lcom/shabakaty/downloader/r54$a;

    .line 2
    iget-boolean v0, v0, Lcom/shabakaty/downloader/r54$a;->b:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/r54;->i:Lcom/shabakaty/downloader/mj;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/zi2;->h(Lcom/shabakaty/downloader/mj;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/r54;->f:Lcom/shabakaty/downloader/q54;

    iget-object v2, p0, Lcom/shabakaty/downloader/r54;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/shabakaty/downloader/r54;->h:Lcom/shabakaty/downloader/r54$a;

    .line 6
    iget v3, v3, Lcom/shabakaty/downloader/r54$a;->a:I

    .line 7
    iget-object v4, v0, Lcom/shabakaty/downloader/q54;->a:Lcom/shabakaty/downloader/k9;

    .line 8
    iget-object v5, v0, Lcom/shabakaty/downloader/q54;->c:Lcom/shabakaty/downloader/n24;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/n24;->e()Lcom/shabakaty/downloader/ia3;

    move-result-object v5

    .line 9
    iget-object v5, v5, Lcom/shabakaty/downloader/ia3;->a:Ljava/lang/String;

    const-string v6, "12"

    .line 10
    invoke-interface {v4, v2, v5, v6, v3}, Lcom/shabakaty/downloader/k9;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/f74;

    move-result-object v2

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/q54;->b:Lcom/shabakaty/downloader/qm2;

    new-instance v3, Lcom/shabakaty/downloader/p54;

    invoke-direct {v3, v0, v1}, Lcom/shabakaty/downloader/p54;-><init>(Lcom/shabakaty/downloader/qm2;I)V

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v0, Lcom/shabakaty/downloader/v74;

    invoke-direct {v0, v2, v3}, Lcom/shabakaty/downloader/v74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/in1;)V

    .line 13
    invoke-static {v0}, Lcom/shabakaty/downloader/uv3;->f(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 14
    new-instance v1, Lcom/shabakaty/downloader/r54$c;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/r54$c;-><init>(Lcom/shabakaty/downloader/r54;)V

    new-instance v2, Lcom/shabakaty/downloader/r54$d;

    invoke-direct {v2, p0}, Lcom/shabakaty/downloader/r54$d;-><init>(Lcom/shabakaty/downloader/r54;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/shabakaty/downloader/xk;->b(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/mu0;

    :cond_0
    return-void
.end method

.method public onCleared()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/r54;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 2
    invoke-super {p0}, Lcom/shabakaty/downloader/xk;->onCleared()V

    return-void
.end method
