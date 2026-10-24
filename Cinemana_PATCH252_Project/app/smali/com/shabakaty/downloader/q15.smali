.class public final Lcom/shabakaty/downloader/q15;
.super Ljava/lang/Object;
.source "VideoInfoUseCases.kt"


# instance fields
.field public final a:Lcom/shabakaty/downloader/k9;

.field public final b:Lcom/shabakaty/downloader/s25;

.field public final c:Lcom/shabakaty/downloader/g25;

.field public d:Lcom/shabakaty/downloader/qm2;

.field public final e:Lcom/shabakaty/downloader/ox4;

.field public final f:Lcom/shabakaty/usermanagement/UserManagement;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/k9;Lcom/shabakaty/downloader/s25;Lcom/shabakaty/downloader/g25;Lcom/shabakaty/downloader/qm2;Lcom/shabakaty/downloader/ox4;Lcom/shabakaty/usermanagement/UserManagement;Lcom/shabakaty/downloader/n24;)V
    .locals 1

    const-string v0, "apiServices"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoStatusDao"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoModelDao"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapper"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userActionsUseCases"

    invoke-static {p5, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userManagement"

    invoke-static {p6, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p7, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/q15;->a:Lcom/shabakaty/downloader/k9;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/q15;->b:Lcom/shabakaty/downloader/s25;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/q15;->c:Lcom/shabakaty/downloader/g25;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/q15;->d:Lcom/shabakaty/downloader/qm2;

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/q15;->e:Lcom/shabakaty/downloader/ox4;

    .line 7
    iput-object p6, p0, Lcom/shabakaty/downloader/q15;->f:Lcom/shabakaty/usermanagement/UserManagement;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/tj<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/TranscodeFile;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "videoNb"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/q15;->a:Lcom/shabakaty/downloader/k9;

    const-string v1, "cacheable-for-authorized, max-age=900"

    .line 2
    invoke-interface {v0, p1, v1}, Lcom/shabakaty/downloader/k9;->z(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/q15;->d:Lcom/shabakaty/downloader/qm2;

    new-instance v1, Lcom/shabakaty/downloader/hx;

    const/16 v2, 0x19

    invoke-direct {v1, v0, v2}, Lcom/shabakaty/downloader/hx;-><init>(Lcom/shabakaty/downloader/qm2;I)V

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/f74;->i(Lcom/shabakaty/downloader/in1;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/uv3;->f(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "Lcom/shabakaty/downloader/tj<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;>;"
        }
    .end annotation

    const-string v0, "videoNb"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/q15;->a:Lcom/shabakaty/downloader/k9;

    const-string v1, "max-age=900"

    .line 2
    invoke-interface {v0, p1, v1}, Lcom/shabakaty/downloader/k9;->A(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/q15;->d:Lcom/shabakaty/downloader/qm2;

    new-instance v1, Lcom/shabakaty/downloader/hx;

    const/16 v2, 0x1a

    invoke-direct {v1, v0, v2}, Lcom/shabakaty/downloader/hx;-><init>(Lcom/shabakaty/downloader/qm2;I)V

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/f74;->i(Lcom/shabakaty/downloader/in1;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/uv3;->f(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    return-object p1
.end method
