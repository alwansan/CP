.class public final Lcom/shabakaty/downloader/kx;
.super Lcom/shabakaty/downloader/xk;
.source "CategoriesViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/xk<",
        "Lcom/shabakaty/downloader/gx;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:Lcom/shabakaty/downloader/jx;

.field public final g:Lcom/shabakaty/downloader/mj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/mj<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/categories/NewCategoryItem;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/jx;)V
    .locals 1

    const-string v0, "categoriesUseCases"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/xk;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/kx;->f:Lcom/shabakaty/downloader/jx;

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/mj;

    const/4 v0, 0x0

    .line 3
    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/mj;-><init>(Ljava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/kx;->g:Lcom/shabakaty/downloader/mj;

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/kx;->l()V

    return-void
.end method


# virtual methods
.method public final l()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kx;->f:Lcom/shabakaty/downloader/jx;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/jx;->c:Lcom/shabakaty/downloader/n24;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/n24;->i()Z

    move-result v1

    .line 3
    iget-object v2, v0, Lcom/shabakaty/downloader/jx;->a:Lcom/shabakaty/downloader/k9;

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 4
    invoke-static {v2, v3, v4, v3}, Lcom/shabakaty/downloader/k9$a;->a(Lcom/shabakaty/downloader/k9;Ljava/lang/String;ILjava/lang/Object;)Lcom/shabakaty/downloader/f74;

    move-result-object v2

    .line 5
    new-instance v3, Lcom/shabakaty/downloader/ix;

    invoke-direct {v3, v0, v1}, Lcom/shabakaty/downloader/ix;-><init>(Lcom/shabakaty/downloader/jx;Z)V

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/f74;->i(Lcom/shabakaty/downloader/in1;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/shabakaty/downloader/uv3;->f(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/kx;->g:Lcom/shabakaty/downloader/mj;

    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/xk;->c(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/xv2;)Lcom/shabakaty/downloader/mu0;

    return-void
.end method
