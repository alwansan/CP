.class public final Lcom/shabakaty/downloader/v24;
.super Ljava/lang/Object;
.source "SettingsDao_Impl.java"

# interfaces
.implements Lcom/shabakaty/downloader/u24;


# instance fields
.field public final a:Lcom/shabakaty/downloader/vt3;

.field public final b:Lcom/shabakaty/downloader/x31;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/x31<",
            "Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/shabakaty/downloader/zl2;

.field public final d:Lcom/shabakaty/downloader/xl2;

.field public final e:Lcom/shabakaty/downloader/cp6;

.field public final f:Lcom/shabakaty/downloader/kd;

.field public final g:Lcom/shabakaty/downloader/wt2;

.field public final h:Lcom/shabakaty/downloader/ll3;

.field public final i:Lcom/shabakaty/downloader/w31;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/w31<",
            "Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lcom/shabakaty/downloader/f54;

.field public final k:Lcom/shabakaty/downloader/f54;

.field public final l:Lcom/shabakaty/downloader/f54;

.field public final m:Lcom/shabakaty/downloader/f54;

.field public final n:Lcom/shabakaty/downloader/f54;

.field public final o:Lcom/shabakaty/downloader/f54;

.field public final p:Lcom/shabakaty/downloader/f54;

.field public final q:Lcom/shabakaty/downloader/f54;

.field public final r:Lcom/shabakaty/downloader/f54;

.field public final s:Lcom/shabakaty/downloader/f54;

.field public final t:Lcom/shabakaty/downloader/f54;

.field public final u:Lcom/shabakaty/downloader/f54;

.field public final v:Lcom/shabakaty/downloader/f54;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vt3;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/zl2;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/zl2;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/v24;->c:Lcom/shabakaty/downloader/zl2;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/xl2;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/xl2;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/v24;->d:Lcom/shabakaty/downloader/xl2;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/cp6;

    const/4 v2, 0x6

    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/cp6;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/v24;->e:Lcom/shabakaty/downloader/cp6;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/kd;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/kd;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/v24;->f:Lcom/shabakaty/downloader/kd;

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/wt2;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/wt2;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/v24;->g:Lcom/shabakaty/downloader/wt2;

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/ll3;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ll3;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/v24;->h:Lcom/shabakaty/downloader/ll3;

    .line 8
    iput-object p1, p0, Lcom/shabakaty/downloader/v24;->a:Lcom/shabakaty/downloader/vt3;

    .line 9
    new-instance v0, Lcom/shabakaty/downloader/v24$j;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/v24$j;-><init>(Lcom/shabakaty/downloader/v24;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/v24;->b:Lcom/shabakaty/downloader/x31;

    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 11
    new-instance v0, Lcom/shabakaty/downloader/v24$z;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/v24$z;-><init>(Lcom/shabakaty/downloader/v24;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/v24;->i:Lcom/shabakaty/downloader/w31;

    .line 12
    new-instance v0, Lcom/shabakaty/downloader/v24$a0;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/v24$a0;-><init>(Lcom/shabakaty/downloader/v24;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/v24;->j:Lcom/shabakaty/downloader/f54;

    .line 13
    new-instance v0, Lcom/shabakaty/downloader/v24$b0;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/v24$b0;-><init>(Lcom/shabakaty/downloader/v24;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/v24;->k:Lcom/shabakaty/downloader/f54;

    .line 14
    new-instance v0, Lcom/shabakaty/downloader/v24$c0;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/v24$c0;-><init>(Lcom/shabakaty/downloader/v24;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/v24;->l:Lcom/shabakaty/downloader/f54;

    .line 15
    new-instance v0, Lcom/shabakaty/downloader/v24$d0;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/v24$d0;-><init>(Lcom/shabakaty/downloader/v24;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/v24;->m:Lcom/shabakaty/downloader/f54;

    .line 16
    new-instance v0, Lcom/shabakaty/downloader/v24$e0;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/v24$e0;-><init>(Lcom/shabakaty/downloader/v24;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/v24;->n:Lcom/shabakaty/downloader/f54;

    .line 17
    new-instance v0, Lcom/shabakaty/downloader/v24$f0;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/v24$f0;-><init>(Lcom/shabakaty/downloader/v24;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/v24;->o:Lcom/shabakaty/downloader/f54;

    .line 18
    new-instance v0, Lcom/shabakaty/downloader/v24$a;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/v24$a;-><init>(Lcom/shabakaty/downloader/v24;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/v24;->p:Lcom/shabakaty/downloader/f54;

    .line 19
    new-instance v0, Lcom/shabakaty/downloader/v24$b;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/v24$b;-><init>(Lcom/shabakaty/downloader/v24;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/v24;->q:Lcom/shabakaty/downloader/f54;

    .line 20
    new-instance v0, Lcom/shabakaty/downloader/v24$c;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/v24$c;-><init>(Lcom/shabakaty/downloader/v24;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/v24;->r:Lcom/shabakaty/downloader/f54;

    .line 21
    new-instance v0, Lcom/shabakaty/downloader/v24$d;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/v24$d;-><init>(Lcom/shabakaty/downloader/v24;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/v24;->s:Lcom/shabakaty/downloader/f54;

    .line 22
    new-instance v0, Lcom/shabakaty/downloader/v24$e;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/v24$e;-><init>(Lcom/shabakaty/downloader/v24;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/v24;->t:Lcom/shabakaty/downloader/f54;

    .line 23
    new-instance v0, Lcom/shabakaty/downloader/v24$f;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/v24$f;-><init>(Lcom/shabakaty/downloader/v24;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/v24;->u:Lcom/shabakaty/downloader/f54;

    .line 24
    new-instance v0, Lcom/shabakaty/downloader/v24$g;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/v24$g;-><init>(Lcom/shabakaty/downloader/v24;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/v24;->v:Lcom/shabakaty/downloader/f54;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/v24;->a:Lcom/shabakaty/downloader/vt3;

    new-instance v1, Lcom/shabakaty/downloader/v24$o;

    invoke-direct {v1, p0, p1, p2}, Lcom/shabakaty/downloader/v24$o;-><init>(Lcom/shabakaty/downloader/v24;ILjava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Lcom/shabakaty/downloader/af0;->c(Lcom/shabakaty/downloader/vt3;ZLjava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/shabakaty/downloader/ia3;Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ia3;",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/v24;->a:Lcom/shabakaty/downloader/vt3;

    new-instance v1, Lcom/shabakaty/downloader/v24$k;

    invoke-direct {v1, p0, p1, p2}, Lcom/shabakaty/downloader/v24$k;-><init>(Lcom/shabakaty/downloader/v24;Lcom/shabakaty/downloader/ia3;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Lcom/shabakaty/downloader/af0;->c(Lcom/shabakaty/downloader/vt3;ZLjava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(ILjava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/v24;->a:Lcom/shabakaty/downloader/vt3;

    new-instance v1, Lcom/shabakaty/downloader/v24$s;

    invoke-direct {v1, p0, p1, p2}, Lcom/shabakaty/downloader/v24$s;-><init>(Lcom/shabakaty/downloader/v24;ILjava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Lcom/shabakaty/downloader/af0;->c(Lcom/shabakaty/downloader/vt3;ZLjava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d()Lcom/shabakaty/downloader/te1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/te1<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM settings"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/yt3;->a(Ljava/lang/String;I)Lcom/shabakaty/downloader/yt3;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/v24;->a:Lcom/shabakaty/downloader/vt3;

    const-string v3, "settings"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shabakaty/downloader/v24$y;

    invoke-direct {v4, p0, v0}, Lcom/shabakaty/downloader/v24$y;-><init>(Lcom/shabakaty/downloader/v24;Lcom/shabakaty/downloader/yt3;)V

    invoke-static {v2, v1, v3, v4}, Lcom/shabakaty/downloader/af0;->a(Lcom/shabakaty/downloader/vt3;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/shabakaty/downloader/te1;

    move-result-object v0

    return-object v0
.end method

.method public e(ZLjava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/v24;->a:Lcom/shabakaty/downloader/vt3;

    new-instance v1, Lcom/shabakaty/downloader/v24$u;

    invoke-direct {v1, p0, p1, p2}, Lcom/shabakaty/downloader/v24$u;-><init>(Lcom/shabakaty/downloader/v24;ZLjava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Lcom/shabakaty/downloader/af0;->c(Lcom/shabakaty/downloader/vt3;ZLjava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(ZLjava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/v24;->a:Lcom/shabakaty/downloader/vt3;

    new-instance v1, Lcom/shabakaty/downloader/v24$t;

    invoke-direct {v1, p0, p1, p2}, Lcom/shabakaty/downloader/v24$t;-><init>(Lcom/shabakaty/downloader/v24;ZLjava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Lcom/shabakaty/downloader/af0;->c(Lcom/shabakaty/downloader/vt3;ZLjava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(ILjava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/v24;->a:Lcom/shabakaty/downloader/vt3;

    new-instance v1, Lcom/shabakaty/downloader/v24$p;

    invoke-direct {v1, p0, p1, p2}, Lcom/shabakaty/downloader/v24$p;-><init>(Lcom/shabakaty/downloader/v24;ILjava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Lcom/shabakaty/downloader/af0;->c(Lcom/shabakaty/downloader/vt3;ZLjava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h(Lcom/shabakaty/downloader/hg4;Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hg4;",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/v24;->a:Lcom/shabakaty/downloader/vt3;

    new-instance v1, Lcom/shabakaty/downloader/v24$m;

    invoke-direct {v1, p0, p1, p2}, Lcom/shabakaty/downloader/v24$m;-><init>(Lcom/shabakaty/downloader/v24;Lcom/shabakaty/downloader/hg4;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Lcom/shabakaty/downloader/af0;->c(Lcom/shabakaty/downloader/vt3;ZLjava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/shabakaty/downloader/ky4;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ky4;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/v24;->a:Lcom/shabakaty/downloader/vt3;

    new-instance v1, Lcom/shabakaty/downloader/v24$v;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/v24$v;-><init>(Lcom/shabakaty/downloader/v24;Lcom/shabakaty/downloader/ky4;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Lcom/shabakaty/downloader/af0;->c(Lcom/shabakaty/downloader/vt3;ZLjava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT * FROM settings WHERE userId = ?"

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
    iget-object v1, p0, Lcom/shabakaty/downloader/v24;->a:Lcom/shabakaty/downloader/vt3;

    const/4 v2, 0x0

    new-instance v3, Lcom/shabakaty/downloader/v24$x;

    invoke-direct {v3, p0, v0}, Lcom/shabakaty/downloader/v24$x;-><init>(Lcom/shabakaty/downloader/v24;Lcom/shabakaty/downloader/yt3;)V

    invoke-static {v1, v2, p1, v3, p2}, Lcom/shabakaty/downloader/af0;->b(Lcom/shabakaty/downloader/vt3;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public k(Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/v24;->a:Lcom/shabakaty/downloader/vt3;

    new-instance v1, Lcom/shabakaty/downloader/v24$h;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/v24$h;-><init>(Lcom/shabakaty/downloader/v24;Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Lcom/shabakaty/downloader/af0;->c(Lcom/shabakaty/downloader/vt3;ZLjava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public l(Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/v24;->a:Lcom/shabakaty/downloader/vt3;

    new-instance v1, Lcom/shabakaty/downloader/v24$i;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/v24$i;-><init>(Lcom/shabakaty/downloader/v24;Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Lcom/shabakaty/downloader/af0;->c(Lcom/shabakaty/downloader/vt3;ZLjava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public m(ILjava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/v24;->a:Lcom/shabakaty/downloader/vt3;

    new-instance v1, Lcom/shabakaty/downloader/v24$q;

    invoke-direct {v1, p0, p1, p2}, Lcom/shabakaty/downloader/v24$q;-><init>(Lcom/shabakaty/downloader/v24;ILjava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Lcom/shabakaty/downloader/af0;->c(Lcom/shabakaty/downloader/vt3;ZLjava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public n(Lcom/shabakaty/downloader/tx4;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/tx4;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/v24;->a:Lcom/shabakaty/downloader/vt3;

    new-instance v1, Lcom/shabakaty/downloader/v24$w;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/v24$w;-><init>(Lcom/shabakaty/downloader/v24;Lcom/shabakaty/downloader/tx4;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Lcom/shabakaty/downloader/af0;->c(Lcom/shabakaty/downloader/vt3;ZLjava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public o(Lcom/shabakaty/downloader/fg4;Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/fg4;",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/v24;->a:Lcom/shabakaty/downloader/vt3;

    new-instance v1, Lcom/shabakaty/downloader/v24$n;

    invoke-direct {v1, p0, p1, p2}, Lcom/shabakaty/downloader/v24$n;-><init>(Lcom/shabakaty/downloader/v24;Lcom/shabakaty/downloader/fg4;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Lcom/shabakaty/downloader/af0;->c(Lcom/shabakaty/downloader/vt3;ZLjava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public p(ZLjava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/v24;->a:Lcom/shabakaty/downloader/vt3;

    new-instance v1, Lcom/shabakaty/downloader/v24$r;

    invoke-direct {v1, p0, p1, p2}, Lcom/shabakaty/downloader/v24$r;-><init>(Lcom/shabakaty/downloader/v24;ZLjava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Lcom/shabakaty/downloader/af0;->c(Lcom/shabakaty/downloader/vt3;ZLjava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public q(Lcom/shabakaty/downloader/gg4;Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/gg4;",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/v24;->a:Lcom/shabakaty/downloader/vt3;

    new-instance v1, Lcom/shabakaty/downloader/v24$l;

    invoke-direct {v1, p0, p1, p2}, Lcom/shabakaty/downloader/v24$l;-><init>(Lcom/shabakaty/downloader/v24;Lcom/shabakaty/downloader/gg4;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Lcom/shabakaty/downloader/af0;->c(Lcom/shabakaty/downloader/vt3;ZLjava/util/concurrent/Callable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
