.class public final Lcom/shabakaty/cinemana/ca1/Dialogs;
.super Ljava/lang/Object;
.source "Dialogs.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;
    .locals 2

    .line 4
    const-string v0, "\u0625\u0644\u063a\u0627\u0621"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Dialogs;->style(Landroid/app/AlertDialog;)V

    return-object p0
.end method

.method public static style(Landroid/app/AlertDialog;)V
    .locals 4

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->ink(Landroid/content/Context;)I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    const/4 v2, -0x2

    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_1
    const/4 v2, -0x3

    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_2
    return-void
.end method
