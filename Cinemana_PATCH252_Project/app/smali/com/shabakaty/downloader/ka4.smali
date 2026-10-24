.class public final Lcom/shabakaty/downloader/ka4;
.super Lcom/shabakaty/downloader/xk;
.source "SplashViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/xk<",
        "Lcom/shabakaty/downloader/fa4;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:Lcom/shabakaty/downloader/ff3;

.field public final g:Lcom/shabakaty/downloader/ou1;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Lcom/shabakaty/downloader/kf2;

.field public final k:Lcom/shabakaty/downloader/kf2;

.field public final l:Lcom/shabakaty/downloader/kf2;

.field public final m:I

.field public n:I

.field public o:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ff3;Lcom/shabakaty/downloader/ou1;)V
    .locals 1

    const-string v0, "prefsManager"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "homePageUseCases"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/xk;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ka4;->f:Lcom/shabakaty/downloader/ff3;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/ka4;->g:Lcom/shabakaty/downloader/ou1;

    const-string p1, "https://cinemana.shabakaty.cc/hacheckphp.php"

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/ka4;->h:Ljava/lang/String;

    const-string p1, "https://api.github.com"

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/ka4;->i:Ljava/lang/String;

    .line 6
    sget-object p1, Lcom/shabakaty/downloader/ka4$b;->r:Lcom/shabakaty/downloader/ka4$b;

    invoke-static {p1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ka4;->j:Lcom/shabakaty/downloader/kf2;

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/ka4$a;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/ka4$a;-><init>(Lcom/shabakaty/downloader/ka4;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ka4;->k:Lcom/shabakaty/downloader/kf2;

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/ka4$c;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/ka4$c;-><init>(Lcom/shabakaty/downloader/ka4;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ka4;->l:Lcom/shabakaty/downloader/kf2;

    const/4 p1, 0x3

    .line 9
    iput p1, p0, Lcom/shabakaty/downloader/ka4;->m:I

    return-void
.end method


# virtual methods
.method public final l()V
    .locals 2

    invoke-virtual {p0}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/fa4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/fa4;->U()V

    return-void
.end method

.method public final m()V
    .locals 1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/fa4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/fa4;->U()V

    return-void
.end method
