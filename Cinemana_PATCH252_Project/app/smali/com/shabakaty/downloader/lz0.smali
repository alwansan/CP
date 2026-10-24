.class public final Lcom/shabakaty/downloader/lz0;
.super Ljava/lang/Object;
.source "DownloadsDao_Impl.java"

# interfaces
.implements Lcom/shabakaty/downloader/kz0;


# instance fields
.field public final a:Lcom/shabakaty/downloader/vt3;

.field public final b:Lcom/shabakaty/downloader/x31;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/x31<",
            "Lcom/shabakaty/downloader/pw0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/shabakaty/downloader/w31;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/w31<",
            "Lcom/shabakaty/downloader/pw0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/shabakaty/downloader/f54;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vt3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/lz0;->a:Lcom/shabakaty/downloader/vt3;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/lz0$f;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/lz0$f;-><init>(Lcom/shabakaty/downloader/lz0;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/lz0;->b:Lcom/shabakaty/downloader/x31;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/lz0$i;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/lz0$i;-><init>(Lcom/shabakaty/downloader/lz0;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/lz0;->c:Lcom/shabakaty/downloader/w31;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/lz0$j;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/lz0$j;-><init>(Lcom/shabakaty/downloader/lz0;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/lz0;->d:Lcom/shabakaty/downloader/f54;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public a(ILcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/pw0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT * FROM Downloads WHERE ? = task_id"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/yt3;->a(Ljava/lang/String;I)Lcom/shabakaty/downloader/yt3;

    move-result-object v0

    int-to-long v2, p1

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/yt3;->h0(IJ)V

    .line 3
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/lz0;->a:Lcom/shabakaty/downloader/vt3;

    const/4 v2, 0x0

    new-instance v3, Lcom/shabakaty/downloader/lz0$a;

    invoke-direct {v3, p0, v0}, Lcom/shabakaty/downloader/lz0$a;-><init>(Lcom/shabakaty/downloader/lz0;Lcom/shabakaty/downloader/yt3;)V

    invoke-static {v1, v2, p1, v3, p2}, Lcom/shabakaty/downloader/af0;->b(Lcom/shabakaty/downloader/vt3;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/pw0;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT * FROM Downloads"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/yt3;->a(Ljava/lang/String;I)Lcom/shabakaty/downloader/yt3;

    move-result-object v0

    .line 2
    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    .line 3
    iget-object v3, p0, Lcom/shabakaty/downloader/lz0;->a:Lcom/shabakaty/downloader/vt3;

    new-instance v4, Lcom/shabakaty/downloader/lz0$c;

    invoke-direct {v4, p0, v0}, Lcom/shabakaty/downloader/lz0$c;-><init>(Lcom/shabakaty/downloader/lz0;Lcom/shabakaty/downloader/yt3;)V

    invoke-static {v3, v1, v2, v4, p1}, Lcom/shabakaty/downloader/af0;->b(Lcom/shabakaty/downloader/vt3;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/pw0;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "\n\t\tSELECT *\n\t\tFROM Downloads\n\t\tWHERE status = -1\n\t\tOR (status != 1 AND status != 3 AND status != 6 AND status != -2 AND status != -3)\n\t"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/yt3;->a(Ljava/lang/String;I)Lcom/shabakaty/downloader/yt3;

    move-result-object v0

    .line 2
    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    .line 3
    iget-object v3, p0, Lcom/shabakaty/downloader/lz0;->a:Lcom/shabakaty/downloader/vt3;

    new-instance v4, Lcom/shabakaty/downloader/lz0$h;

    invoke-direct {v4, p0, v0}, Lcom/shabakaty/downloader/lz0$h;-><init>(Lcom/shabakaty/downloader/lz0;Lcom/shabakaty/downloader/yt3;)V

    invoke-static {v3, v1, v2, v4, p1}, Lcom/shabakaty/downloader/af0;->b(Lcom/shabakaty/downloader/vt3;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT count(*) FROM (select 0 from Downloads limit 1)"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/yt3;->a(Ljava/lang/String;I)Lcom/shabakaty/downloader/yt3;

    move-result-object v0

    .line 2
    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    .line 3
    iget-object v3, p0, Lcom/shabakaty/downloader/lz0;->a:Lcom/shabakaty/downloader/vt3;

    new-instance v4, Lcom/shabakaty/downloader/lz0$e;

    invoke-direct {v4, p0, v0}, Lcom/shabakaty/downloader/lz0$e;-><init>(Lcom/shabakaty/downloader/lz0;Lcom/shabakaty/downloader/yt3;)V

    invoke-static {v3, v1, v2, v4, p1}, Lcom/shabakaty/downloader/af0;->b(Lcom/shabakaty/downloader/vt3;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "\n\t\tSELECT Count(task_id)\n\t\tFROM Downloads\n\t\tWHERE status = 1 OR status = 3 OR status = 6\n\t"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/yt3;->a(Ljava/lang/String;I)Lcom/shabakaty/downloader/yt3;

    move-result-object v0

    .line 2
    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    .line 3
    iget-object v3, p0, Lcom/shabakaty/downloader/lz0;->a:Lcom/shabakaty/downloader/vt3;

    new-instance v4, Lcom/shabakaty/downloader/lz0$g;

    invoke-direct {v4, p0, v0}, Lcom/shabakaty/downloader/lz0$g;-><init>(Lcom/shabakaty/downloader/lz0;Lcom/shabakaty/downloader/yt3;)V

    invoke-static {v3, v1, v2, v4, p1}, Lcom/shabakaty/downloader/af0;->b(Lcom/shabakaty/downloader/vt3;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/pw0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT * FROM Downloads WHERE ? = external_id"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/yt3;->a(Ljava/lang/String;I)Lcom/shabakaty/downloader/yt3;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/yt3;->T0(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/yt3;->I(ILjava/lang/String;)V

    .line 4
    :goto_0
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/lz0;->a:Lcom/shabakaty/downloader/vt3;

    const/4 v2, 0x0

    new-instance v3, Lcom/shabakaty/downloader/lz0$b;

    invoke-direct {v3, p0, v0}, Lcom/shabakaty/downloader/lz0$b;-><init>(Lcom/shabakaty/downloader/lz0;Lcom/shabakaty/downloader/yt3;)V

    invoke-static {v1, v2, p1, v3, p2}, Lcom/shabakaty/downloader/af0;->b(Lcom/shabakaty/downloader/vt3;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/util/List;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/pw0;",
            ">;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lz0;->a:Lcom/shabakaty/downloader/vt3;

    new-instance v1, Lcom/shabakaty/downloader/lz0$l;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/lz0$l;-><init>(Lcom/shabakaty/downloader/lz0;Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Lcom/shabakaty/downloader/af0;->c(Lcom/shabakaty/downloader/vt3;ZLjava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h(ILcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lz0;->a:Lcom/shabakaty/downloader/vt3;

    new-instance v1, Lcom/shabakaty/downloader/lz0$n;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/lz0$n;-><init>(Lcom/shabakaty/downloader/lz0;I)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Lcom/shabakaty/downloader/af0;->c(Lcom/shabakaty/downloader/vt3;ZLjava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/pw0;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lz0;->a:Lcom/shabakaty/downloader/vt3;

    new-instance v1, Lcom/shabakaty/downloader/lz0$m;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/lz0$m;-><init>(Lcom/shabakaty/downloader/lz0;Lcom/shabakaty/downloader/pw0;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Lcom/shabakaty/downloader/af0;->c(Lcom/shabakaty/downloader/vt3;ZLjava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public j(Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/pw0;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lz0;->a:Lcom/shabakaty/downloader/vt3;

    new-instance v1, Lcom/shabakaty/downloader/lz0$k;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/lz0$k;-><init>(Lcom/shabakaty/downloader/lz0;Lcom/shabakaty/downloader/pw0;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Lcom/shabakaty/downloader/af0;->c(Lcom/shabakaty/downloader/vt3;ZLjava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public k()Lcom/shabakaty/downloader/te1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/te1<",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/pw0;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM Downloads"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/yt3;->a(Ljava/lang/String;I)Lcom/shabakaty/downloader/yt3;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/lz0;->a:Lcom/shabakaty/downloader/vt3;

    const-string v3, "Downloads"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shabakaty/downloader/lz0$d;

    invoke-direct {v4, p0, v0}, Lcom/shabakaty/downloader/lz0$d;-><init>(Lcom/shabakaty/downloader/lz0;Lcom/shabakaty/downloader/yt3;)V

    invoke-static {v2, v1, v3, v4}, Lcom/shabakaty/downloader/af0;->a(Lcom/shabakaty/downloader/vt3;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/shabakaty/downloader/te1;

    move-result-object v0

    return-object v0
.end method
