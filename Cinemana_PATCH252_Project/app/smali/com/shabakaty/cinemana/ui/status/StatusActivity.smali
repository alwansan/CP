.class public final Lcom/shabakaty/cinemana/ui/status/StatusActivity;
.super Lcom/shabakaty/downloader/xi;
.source "StatusActivity.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ad4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/xi<",
        "Lcom/shabakaty/downloader/b4;",
        "Lcom/shabakaty/downloader/ad4;",
        "Lcom/shabakaty/downloader/fd4;",
        ">;",
        "Lcom/shabakaty/downloader/ad4;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/ui/status/StatusActivity;",
        "Lcom/shabakaty/downloader/xi;",
        "Lcom/shabakaty/downloader/b4;",
        "Lcom/shabakaty/downloader/ad4;",
        "Lcom/shabakaty/downloader/fd4;",
        "<init>",
        "()V",
        "app_productionBetaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d0025

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/xi;-><init>(I)V

    return-void
.end method


# virtual methods
.method public P1()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/shabakaty/cinemana/ui/downloads/DownloadsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public h0()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/shabakaty/downloader/fd4;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/shabakaty/downloader/fd4;

    return-object v0
.end method

.method public o()V
    .locals 1

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/xi;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "SERVICE_STATUS_EXTRA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "under_maintenance"

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    const-string v1, "major_outage"

    .line 3
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lcom/shabakaty/downloader/q14$a$a;->e:Lcom/shabakaty/downloader/q14$a$a;

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/shabakaty/downloader/q14$a$b;->e:Lcom/shabakaty/downloader/q14$a$b;

    goto :goto_0

    .line 5
    :cond_2
    sget-object p1, Lcom/shabakaty/downloader/q14$a$b;->e:Lcom/shabakaty/downloader/q14$a$b;

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 7
    check-cast v0, Lcom/shabakaty/downloader/b4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/b4;->G(Lcom/shabakaty/downloader/q14;)V

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 9
    check-cast v0, Lcom/shabakaty/downloader/b4;

    .line 10
    iget v1, p1, Lcom/shabakaty/downloader/q14$a;->c:I

    .line 11
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(status.headerRes)"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/b4;->I(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 14
    check-cast v0, Lcom/shabakaty/downloader/b4;

    .line 15
    iget p1, p1, Lcom/shabakaty/downloader/q14$a;->d:I

    .line 16
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "getString(status.bodyRes)"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/b4;->H(Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 19
    check-cast p1, Lcom/shabakaty/downloader/b4;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->k()V

    return-void
.end method

.method public q(I)V
    .locals 1

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/vj$a;->a(Lcom/shabakaty/downloader/vj;I)V

    return-void
.end method

.method public r()Lcom/shabakaty/downloader/vj;
    .locals 0

    return-object p0
.end method
