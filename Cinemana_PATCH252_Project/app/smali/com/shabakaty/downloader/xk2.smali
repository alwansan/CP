.class public final Lcom/shabakaty/downloader/xk2;
.super Lcom/shabakaty/downloader/af2;
.source "LoginActivity.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Ljava/lang/Boolean;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/ui/login/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/ui/login/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/xk2;->r:Lcom/shabakaty/cinemana/ui/login/LoginActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/xk2;->r:Lcom/shabakaty/cinemana/ui/login/LoginActivity;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 4
    check-cast v0, Lcom/shabakaty/downloader/c3;

    iget-object v0, v0, Lcom/shabakaty/downloader/c3;->M:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/xk2;->r:Lcom/shabakaty/cinemana/ui/login/LoginActivity;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 7
    check-cast v0, Lcom/shabakaty/downloader/c3;

    iget-object v0, v0, Lcom/shabakaty/downloader/c3;->M:Lcom/google/android/material/button/MaterialButton;

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/xk2;->r:Lcom/shabakaty/cinemana/ui/login/LoginActivity;

    const v1, 0x7f06005f

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/wt2;->g(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/xk2;->r:Lcom/shabakaty/cinemana/ui/login/LoginActivity;

    const v1, 0x7f060136

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/wt2;->g(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 10
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 11
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
