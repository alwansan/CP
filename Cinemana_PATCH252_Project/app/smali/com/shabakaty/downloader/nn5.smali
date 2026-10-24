.class public final Lcom/shabakaty/downloader/nn5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/op4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/op4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/nn5;->r:Lcom/shabakaty/downloader/op4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/nn5;->r:Lcom/shabakaty/downloader/op4;

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/op4;->L:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/nn5;->r:Lcom/shabakaty/downloader/op4;

    const/4 p2, 0x0

    .line 5
    iput-object p2, p1, Lcom/shabakaty/downloader/op4;->L:Landroid/app/Dialog;

    :cond_0
    return-void
.end method
