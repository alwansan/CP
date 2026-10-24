.class public final Lcom/shabakaty/downloader/dl2$b;
.super Ljava/lang/Object;
.source "LoginViewModel.kt"

# interfaces
.implements Lcom/shabakaty/usermanagement/callbacks/ForgotPasswordCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/dl2;-><init>(Lcom/shabakaty/usermanagement/UserManagement;Lcom/shabakaty/downloader/ox4;Lcom/shabakaty/downloader/al2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/dl2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/dl2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/dl2$b;->a:Lcom/shabakaty/downloader/dl2;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onForgotPasswordRequestResult(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/dl2$b;->a:Lcom/shabakaty/downloader/dl2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/yk2;

    const v0, 0x7f1201fb

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/vj;->q(I)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/dl2$b;->a:Lcom/shabakaty/downloader/dl2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/yk2;

    invoke-interface {p1}, Lcom/shabakaty/downloader/yk2;->M1()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/dl2$b;->a:Lcom/shabakaty/downloader/dl2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/yk2;

    const v0, 0x7f120209

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/vj;->q(I)V

    :goto_0
    return-void
.end method
