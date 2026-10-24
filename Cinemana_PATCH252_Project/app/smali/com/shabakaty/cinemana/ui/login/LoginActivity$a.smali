.class public final Lcom/shabakaty/cinemana/ui/login/LoginActivity$a;
.super Lcom/shabakaty/downloader/ui4;
.source "LoginActivity.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.login.LoginActivity$onLoginFailure$1"
    f = "LoginActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ui/login/LoginActivity;->G0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/se0;",
        "Lcom/shabakaty/downloader/ud0<",
        "-",
        "Lcom/shabakaty/downloader/qv4;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic v:Lcom/shabakaty/cinemana/ui/login/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/ui/login/LoginActivity;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/ui/login/LoginActivity;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/cinemana/ui/login/LoginActivity$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/login/LoginActivity$a;->v:Lcom/shabakaty/cinemana/ui/login/LoginActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p1, Lcom/shabakaty/cinemana/ui/login/LoginActivity$a;

    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/login/LoginActivity$a;->v:Lcom/shabakaty/cinemana/ui/login/LoginActivity;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/cinemana/ui/login/LoginActivity$a;-><init>(Lcom/shabakaty/cinemana/ui/login/LoginActivity;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    const p2, 0x7f1202c1

    .line 4
    invoke-virtual {v0, p2}, Lcom/shabakaty/cinemana/ui/login/LoginActivity;->q(I)V

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/ud0<",
            "*>;)",
            "Lcom/shabakaty/downloader/ud0<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/shabakaty/cinemana/ui/login/LoginActivity$a;

    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/login/LoginActivity$a;->v:Lcom/shabakaty/cinemana/ui/login/LoginActivity;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/cinemana/ui/login/LoginActivity$a;-><init>(Lcom/shabakaty/cinemana/ui/login/LoginActivity;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/cinemana/ui/login/LoginActivity$a;->v:Lcom/shabakaty/cinemana/ui/login/LoginActivity;

    const v0, 0x7f1202c1

    invoke-virtual {p1, v0}, Lcom/shabakaty/cinemana/ui/login/LoginActivity;->q(I)V

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
