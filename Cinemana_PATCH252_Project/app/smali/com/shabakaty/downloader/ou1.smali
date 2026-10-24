.class public final Lcom/shabakaty/downloader/ou1;
.super Ljava/lang/Object;
.source "HomePageUseCases.kt"


# instance fields
.field public final a:Lcom/shabakaty/downloader/k9;

.field public final b:Lcom/shabakaty/downloader/qm2;

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
    iput-object p1, p0, Lcom/shabakaty/downloader/ou1;->a:Lcom/shabakaty/downloader/k9;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/ou1;->b:Lcom/shabakaty/downloader/qm2;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/ou1;->c:Lcom/shabakaty/downloader/n24;

    return-void
.end method


# virtual methods
.method public final a()Lcom/shabakaty/downloader/f74;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/tj<",
            "Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ou1;->a:Lcom/shabakaty/downloader/k9;

    invoke-interface {v0}, Lcom/shabakaty/downloader/k9;->k()Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/ay3;->c:Lcom/shabakaty/downloader/wx3;

    .line 3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/f74;->m(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/shabakaty/downloader/n7;->a()Lcom/shabakaty/downloader/wx3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/f74;->j(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/ou1;->b:Lcom/shabakaty/downloader/qm2;

    new-instance v2, Lcom/shabakaty/downloader/hx;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/shabakaty/downloader/hx;-><init>(Lcom/shabakaty/downloader/qm2;I)V

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/f74;->i(Lcom/shabakaty/downloader/in1;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/shabakaty/downloader/uv3;->f(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    return-object v0
.end method
