.class public final synthetic Lcom/shabakaty/downloader/wk2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/ui/login/LoginActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/wk2;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/wk2;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/ui/login/SignUpActivity;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/wk2;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/wk2;->s:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4

    iget p1, p0, Lcom/shabakaty/downloader/wk2;->r:I

    const/4 p3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x6

    const-string v2, "this$0"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/shabakaty/downloader/wk2;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/cinemana/ui/login/LoginActivity;

    sget v3, Lcom/shabakaty/cinemana/ui/login/LoginActivity;->z:I

    .line 1
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p2, v1, :cond_0

    if-nez p2, :cond_1

    .line 2
    :cond_0
    iget-object p2, p1, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 3
    check-cast p2, Lcom/shabakaty/downloader/c3;

    iget-object p2, p2, Lcom/shabakaty/downloader/c3;->M:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p2}, Landroid/widget/Button;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xi;->F()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/dl2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/dl2;->p()V

    const/4 p3, 0x1

    :cond_1
    return p3

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/wk2;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/cinemana/ui/login/SignUpActivity;

    sget v3, Lcom/shabakaty/cinemana/ui/login/SignUpActivity;->w:I

    .line 6
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p2, v1, :cond_2

    if-nez p2, :cond_3

    .line 7
    :cond_2
    iget-object p2, p1, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 8
    check-cast p2, Lcom/shabakaty/downloader/x3;

    iget-object p2, p2, Lcom/shabakaty/downloader/x3;->N:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p2}, Landroid/widget/Button;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ui/login/SignUpActivity;->x0()V

    const/4 p3, 0x1

    :cond_3
    return p3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
