.class public final Lcom/shabakaty/downloader/ek3;
.super Ljava/lang/Object;
.source "QrLoginViewModel.kt"

# interfaces
.implements Lcom/shabakaty/usermanagement/callbacks/VerifyDeviceCallback;


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/fk3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fk3;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/ek3;->a:Lcom/shabakaty/downloader/fk3;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerifyResult(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ek3;->a:Lcom/shabakaty/downloader/fk3;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/fk3;->g:Lcom/shabakaty/downloader/xv2;

    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xv2;->postValue(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/ek3;->a:Lcom/shabakaty/downloader/fk3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/dk3;

    const v0, 0x7f120205

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/vj;->q(I)V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/ek3;->a:Lcom/shabakaty/downloader/fk3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/dk3;

    invoke-interface {p1}, Lcom/shabakaty/downloader/dk3;->k1()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/ek3;->a:Lcom/shabakaty/downloader/fk3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/dk3;

    const v0, 0x7f120202

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/vj;->q(I)V

    :goto_0
    return-void
.end method
