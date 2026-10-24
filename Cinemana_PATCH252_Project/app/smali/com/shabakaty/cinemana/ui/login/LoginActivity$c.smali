.class public final Lcom/shabakaty/cinemana/ui/login/LoginActivity$c;
.super Ljava/lang/Object;
.source "TextView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ui/login/LoginActivity;->M1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/ui/login/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/ui/login/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/login/LoginActivity$c;->r:Lcom/shabakaty/cinemana/ui/login/LoginActivity;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/login/LoginActivity$c;->r:Lcom/shabakaty/cinemana/ui/login/LoginActivity;

    invoke-static {v0}, Lcom/shabakaty/cinemana/ui/login/LoginActivity;->k0(Lcom/shabakaty/cinemana/ui/login/LoginActivity;)Lcom/shabakaty/downloader/dl2;

    move-result-object v0

    const-string v1, ""

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    const-string p1, "<set-?>"

    .line 2
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object v1, v0, Lcom/shabakaty/downloader/dl2;->q:Ljava/lang/String;

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
