.class public Lcom/shabakaty/downloader/uh4;
.super Lcom/shabakaty/downloader/ct0;
.source "com.google.android.gms:play-services-base@@17.4.0"


# instance fields
.field public H:Landroid/app/Dialog;

.field public I:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/ct0;-><init>()V

    return-void
.end method


# virtual methods
.method public Z1(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/uh4;->H:Landroid/app/Dialog;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ct0;->y:Z

    :cond_0
    return-object p1
.end method

.method public c2(Landroidx/fragment/app/q;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroidx/fragment/app/q;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/ct0;->c2(Landroidx/fragment/app/q;Ljava/lang/String;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uh4;->I:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
