.class public final Lcom/shabakaty/downloader/a64$a;
.super Ljava/lang/Object;
.source "SignUpViewModel.kt"

# interfaces
.implements Lcom/shabakaty/usermanagement/callbacks/RegisterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/a64;-><init>(Lcom/shabakaty/usermanagement/UserManagement;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/a64$a$a;
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/a64;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/a64;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/a64$a;->a:Lcom/shabakaty/downloader/a64;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegisterResult(ZLcom/shabakaty/usermanagement/data/model/domain/RegistrationErrors;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/a64$a;->a:Lcom/shabakaty/downloader/a64;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/xk;->d:Lcom/shabakaty/downloader/xv2;

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/zi2;->k(Lcom/shabakaty/downloader/xv2;)V

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/a64$a;->a:Lcom/shabakaty/downloader/a64;

    .line 5
    iget-object p2, p1, Lcom/shabakaty/downloader/xk;->d:Lcom/shabakaty/downloader/xv2;

    .line 6
    invoke-static {p2}, Lcom/shabakaty/downloader/zi2;->k(Lcom/shabakaty/downloader/xv2;)V

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/z54;

    invoke-interface {p1}, Lcom/shabakaty/downloader/z54;->o0()V

    goto/16 :goto_3

    :cond_0
    const/4 p1, 0x0

    if-nez p2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrors;->getErrors()Ljava/util/ArrayList;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p2}, Lcom/shabakaty/downloader/m50;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/usermanagement/data/model/domain/RegistrationErrorsTypes;

    :goto_0
    if-nez p1, :cond_3

    const/4 p1, -0x1

    goto :goto_1

    :cond_3
    sget-object p2, Lcom/shabakaty/downloader/a64$a$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/a64$a;->a:Lcom/shabakaty/downloader/a64;

    goto/16 :goto_2

    .line 10
    :pswitch_0
    iget-object p1, p0, Lcom/shabakaty/downloader/a64$a;->a:Lcom/shabakaty/downloader/a64;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/z54;

    const p2, 0x7f120255

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/z54;->g1(I)V

    goto/16 :goto_3

    .line 11
    :pswitch_1
    iget-object p1, p0, Lcom/shabakaty/downloader/a64$a;->a:Lcom/shabakaty/downloader/a64;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/z54;

    const p2, 0x7f120150

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/z54;->W(I)V

    goto :goto_3

    .line 12
    :pswitch_2
    iget-object p1, p0, Lcom/shabakaty/downloader/a64$a;->a:Lcom/shabakaty/downloader/a64;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/z54;

    const p2, 0x7f120254

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/z54;->S(I)V

    goto :goto_3

    .line 13
    :pswitch_3
    iget-object p1, p0, Lcom/shabakaty/downloader/a64$a;->a:Lcom/shabakaty/downloader/a64;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/z54;

    const p2, 0x7f1201eb

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/z54;->S(I)V

    goto :goto_3

    .line 14
    :pswitch_4
    iget-object p1, p0, Lcom/shabakaty/downloader/a64$a;->a:Lcom/shabakaty/downloader/a64;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/z54;

    const p2, 0x7f1201ea

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/z54;->S(I)V

    goto :goto_3

    .line 15
    :pswitch_5
    iget-object p1, p0, Lcom/shabakaty/downloader/a64$a;->a:Lcom/shabakaty/downloader/a64;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/z54;

    const p2, 0x7f1201e9

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/z54;->S(I)V

    goto :goto_3

    .line 16
    :pswitch_6
    iget-object p1, p0, Lcom/shabakaty/downloader/a64$a;->a:Lcom/shabakaty/downloader/a64;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/z54;

    const p2, 0x7f1200e3

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/z54;->W(I)V

    goto :goto_3

    .line 17
    :pswitch_7
    iget-object p1, p0, Lcom/shabakaty/downloader/a64$a;->a:Lcom/shabakaty/downloader/a64;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/z54;

    const p2, 0x7f1202c7

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/z54;->g1(I)V

    goto :goto_3

    .line 18
    :goto_2
    iget-object p2, p1, Lcom/shabakaty/downloader/xk;->d:Lcom/shabakaty/downloader/xv2;

    .line 19
    invoke-static {p2}, Lcom/shabakaty/downloader/zi2;->k(Lcom/shabakaty/downloader/xv2;)V

    .line 20
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/z54;

    invoke-interface {p1}, Lcom/shabakaty/downloader/z54;->s1()V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
