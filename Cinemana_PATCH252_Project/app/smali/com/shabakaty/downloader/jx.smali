.class public final Lcom/shabakaty/downloader/jx;
.super Ljava/lang/Object;
.source "CategoriesUseCases.kt"


# instance fields
.field public final a:Lcom/shabakaty/downloader/k9;

.field public b:Lcom/shabakaty/downloader/qm2;

.field public final c:Lcom/shabakaty/downloader/n24;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/k9;Lcom/shabakaty/downloader/qm2;Lcom/shabakaty/downloader/n24;)V
    .locals 1

    const-string v0, "apiServices"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapper"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/jx;->a:Lcom/shabakaty/downloader/k9;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/jx;->b:Lcom/shabakaty/downloader/qm2;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/jx;->c:Lcom/shabakaty/downloader/n24;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/shabakaty/downloader/f74;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/tj<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "langNb"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sortingParameter"

    invoke-static {p5, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/shabakaty/downloader/jx;->a:Lcom/shabakaty/downloader/k9;

    .line 2
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 3
    iget-object p4, p0, Lcom/shabakaty/downloader/jx;->c:Lcom/shabakaty/downloader/n24;

    invoke-virtual {p4}, Lcom/shabakaty/downloader/n24;->e()Lcom/shabakaty/downloader/ia3;

    move-result-object p4

    .line 4
    iget-object v7, p4, Lcom/shabakaty/downloader/ia3;->a:Ljava/lang/String;

    const-string v5, "30"

    const-string v9, "cacheable-for-authorized, max-age=900"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v8, p5

    .line 5
    invoke-interface/range {v1 .. v9}, Lcom/shabakaty/downloader/k9;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/shabakaty/downloader/jx;->b:Lcom/shabakaty/downloader/qm2;

    new-instance p3, Lcom/shabakaty/downloader/hx;

    const/4 p4, 0x0

    invoke-direct {p3, p2, p4}, Lcom/shabakaty/downloader/hx;-><init>(Lcom/shabakaty/downloader/qm2;I)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance p2, Lcom/shabakaty/downloader/v74;

    invoke-direct {p2, p1, p3}, Lcom/shabakaty/downloader/v74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/in1;)V

    .line 8
    invoke-static {p2}, Lcom/shabakaty/downloader/uv3;->f(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    return-object p1
.end method
