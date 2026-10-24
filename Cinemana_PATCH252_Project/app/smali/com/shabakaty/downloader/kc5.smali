.class public final Lcom/shabakaty/downloader/kc5;
.super Lcom/shabakaty/downloader/cl4;
.source "com.google.android.gms:play-services-base@@17.4.0"


# instance fields
.field public final synthetic s:Landroid/app/Dialog;

.field public final synthetic t:Lcom/shabakaty/downloader/gc5;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gc5;Landroid/app/Dialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/kc5;->t:Lcom/shabakaty/downloader/gc5;

    iput-object p2, p0, Lcom/shabakaty/downloader/kc5;->s:Landroid/app/Dialog;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/cl4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kc5;->t:Lcom/shabakaty/downloader/gc5;

    iget-object v0, v0, Lcom/shabakaty/downloader/gc5;->s:Lcom/shabakaty/downloader/dc5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/dc5;->l()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/kc5;->s:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/kc5;->s:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
