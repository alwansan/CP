.class public abstract Lcom/shabakaty/downloader/cl2;
.super Lcom/shabakaty/downloader/xk;
.source "LoginStateViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N::",
        "Lcom/shabakaty/downloader/vj;",
        ">",
        "Lcom/shabakaty/downloader/xk<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public final f:Lcom/shabakaty/downloader/al2;

.field public g:Lcom/shabakaty/downloader/mu0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/al2;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/xk;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/cl2;->f:Lcom/shabakaty/downloader/al2;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/cl2;->g:Lcom/shabakaty/downloader/mu0;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/mu0;->n()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/shabakaty/downloader/mu0;->h()V

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/shabakaty/downloader/cl2;->g:Lcom/shabakaty/downloader/mu0;

    .line 7
    :goto_0
    iget-object p1, p1, Lcom/shabakaty/downloader/al2;->c:Lcom/shabakaty/downloader/vj3;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/t43;->l(I)Lcom/shabakaty/downloader/qf1;

    move-result-object p1

    .line 8
    new-instance v0, Lcom/shabakaty/downloader/bl2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/bl2;-><init>(Lcom/shabakaty/downloader/cl2;I)V

    new-instance v1, Lcom/shabakaty/downloader/bl2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/shabakaty/downloader/bl2;-><init>(Lcom/shabakaty/downloader/cl2;I)V

    .line 9
    sget-object v2, Lcom/shabakaty/downloader/do1;->c:Lcom/shabakaty/downloader/j2;

    sget-object v3, Lcom/shabakaty/downloader/jg1;->r:Lcom/shabakaty/downloader/jg1;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/shabakaty/downloader/qf1;->g(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/xc0;)Lcom/shabakaty/downloader/mu0;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/xk;->b:Lcom/shabakaty/downloader/c90;

    .line 11
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/tp6;->a(Lcom/shabakaty/downloader/mu0;Lcom/shabakaty/downloader/c90;)Lcom/shabakaty/downloader/mu0;

    .line 12
    iput-object p1, p0, Lcom/shabakaty/downloader/cl2;->g:Lcom/shabakaty/downloader/mu0;

    return-void
.end method


# virtual methods
.method public l()V
    .locals 0

    return-void
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method public n(Lcom/shabakaty/usermanagement/utils/LoginState;)V
    .locals 0

    return-void
.end method

.method public o(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
