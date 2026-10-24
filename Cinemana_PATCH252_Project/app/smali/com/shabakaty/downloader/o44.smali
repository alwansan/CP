.class public final Lcom/shabakaty/downloader/o44;
.super Ljava/lang/Object;
.source "TextView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ho3;

.field public final synthetic s:Lcom/shabakaty/downloader/j44;

.field public final synthetic t:Lcom/shabakaty/downloader/rm1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ho3;Lcom/shabakaty/downloader/j44;Lcom/shabakaty/downloader/rm1;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/o44;->r:Lcom/shabakaty/downloader/ho3;

    iput-object p2, p0, Lcom/shabakaty/downloader/o44;->s:Lcom/shabakaty/downloader/j44;

    iput-object p3, p0, Lcom/shabakaty/downloader/o44;->t:Lcom/shabakaty/downloader/rm1;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/o44;->r:Lcom/shabakaty/downloader/ho3;

    iget-object v1, p0, Lcom/shabakaty/downloader/o44;->s:Lcom/shabakaty/downloader/j44;

    .line 2
    iget-object v1, v1, Lcom/shabakaty/downloader/j44;->c:Lcom/shabakaty/downloader/tm1;

    const-string v2, ""

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, p1

    :goto_0
    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    iput-boolean p1, v0, Lcom/shabakaty/downloader/ho3;->r:Z

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/o44;->r:Lcom/shabakaty/downloader/ho3;

    iget-boolean p1, p1, Lcom/shabakaty/downloader/ho3;->r:Z

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/o44;->s:Lcom/shabakaty/downloader/j44;

    .line 6
    iget-object v0, p1, Lcom/shabakaty/downloader/j44;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/j44;->d:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/o44;->s:Lcom/shabakaty/downloader/j44;

    .line 10
    iget-object p1, p1, Lcom/shabakaty/downloader/j44;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 11
    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    goto :goto_1

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/o44;->s:Lcom/shabakaty/downloader/j44;

    .line 13
    iget-object p1, p1, Lcom/shabakaty/downloader/j44;->a:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 15
    iget-object p1, p0, Lcom/shabakaty/downloader/o44;->s:Lcom/shabakaty/downloader/j44;

    .line 16
    iget-object p1, p1, Lcom/shabakaty/downloader/j44;->a:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 18
    iget-object p1, p0, Lcom/shabakaty/downloader/o44;->s:Lcom/shabakaty/downloader/j44;

    .line 19
    iget-object p1, p1, Lcom/shabakaty/downloader/j44;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 20
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->clearFocus()V

    .line 21
    iget-object p1, p0, Lcom/shabakaty/downloader/o44;->s:Lcom/shabakaty/downloader/j44;

    .line 22
    iget-object p1, p1, Lcom/shabakaty/downloader/j44;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 23
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 24
    :goto_1
    iget-object p1, p0, Lcom/shabakaty/downloader/o44;->s:Lcom/shabakaty/downloader/j44;

    .line 25
    iget-boolean v0, p1, Lcom/shabakaty/downloader/j44;->b:Z

    .line 26
    iget-object v2, p0, Lcom/shabakaty/downloader/o44;->r:Lcom/shabakaty/downloader/ho3;

    iget-boolean v2, v2, Lcom/shabakaty/downloader/ho3;->r:Z

    xor-int/lit8 v3, v2, 0x1

    if-eq v0, v3, :cond_3

    xor-int/lit8 v0, v2, 0x1

    .line 27
    iput-boolean v0, p1, Lcom/shabakaty/downloader/j44;->b:Z

    .line 28
    iget-object p1, p0, Lcom/shabakaty/downloader/o44;->t:Lcom/shabakaty/downloader/rm1;

    invoke-interface {p1}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
