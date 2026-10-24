.class public final Lcom/shabakaty/downloader/xz;
.super Ljava/lang/Object;
.source "ChromeCastController.kt"

# interfaces
.implements Lcom/shabakaty/downloader/z14;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/z14<",
        "Lcom/shabakaty/downloader/xw;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/yz;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/yz;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/xz;->a:Lcom/shabakaty/downloader/yz;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/s14;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/xw;

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xz;->f()V

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "onSessionStartFailed : "

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "chromeCasteSession"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final b(Lcom/shabakaty/downloader/xw;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/shabakaty/downloader/d15;->A:Z

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/xz;->a:Lcom/shabakaty/downloader/yz;

    .line 3
    iput-object p1, v0, Lcom/shabakaty/downloader/yz;->c:Lcom/shabakaty/downloader/xw;

    .line 4
    iget-object p1, v0, Lcom/shabakaty/downloader/yz;->b:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz p1, :cond_0

    const v0, 0x7f08026d

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageResource(I)V

    return-void

    :cond_0
    const-string p1, "castButton"

    .line 6
    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public c(Lcom/shabakaty/downloader/s14;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/xw;

    const-string p1, "session"

    const-string v0, "onSessionEnding : "

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public d(Lcom/shabakaty/downloader/s14;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/xw;

    const-string p1, "chromeCasteSession"

    const-string v0, "onSessionStarting : "

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public e(Lcom/shabakaty/downloader/s14;Ljava/lang/String;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/xw;

    const-string v0, "sessionId"

    .line 2
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xz;->b(Lcom/shabakaty/downloader/xw;)V

    const-string p1, "onSessionStarted : "

    .line 4
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "chromeCasteSession"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final f()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcom/shabakaty/downloader/d15;->A:Z

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/xz;->a:Lcom/shabakaty/downloader/yz;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/yz;->b:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v0, :cond_0

    const v1, 0x7f080227

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageResource(I)V

    return-void

    :cond_0
    const-string v0, "castButton"

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public g(Lcom/shabakaty/downloader/s14;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/xw;

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "onSessionSuspended : "

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "chromeCasteSession"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public h(Lcom/shabakaty/downloader/s14;Ljava/lang/String;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/xw;

    const-string p1, "sessionId"

    .line 2
    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "chromeCasteSession"

    const-string p2, "onSessionResuming : "

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public i(Lcom/shabakaty/downloader/s14;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/xw;

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xz;->f()V

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "onSessionResumeFailed : "

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "chromeCasteSession"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public j(Lcom/shabakaty/downloader/s14;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/xw;

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xz;->f()V

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "onSessionEnded : "

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "chromeCasteSession"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public k(Lcom/shabakaty/downloader/s14;Z)V
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/xw;

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xz;->b(Lcom/shabakaty/downloader/xw;)V

    .line 3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "onSessionResumed : "

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "chromeCasteSession"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
