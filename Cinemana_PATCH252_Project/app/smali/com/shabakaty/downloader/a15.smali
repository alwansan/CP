.class public final Lcom/shabakaty/downloader/a15;
.super Ljava/lang/Object;
.source "LiveDataExtensions.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/mj;

.field public final synthetic s:Lcom/shabakaty/downloader/z05;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/mj;Lcom/shabakaty/downloader/z05;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/a15;->r:Lcom/shabakaty/downloader/mj;

    iput-object p2, p0, Lcom/shabakaty/downloader/a15;->s:Lcom/shabakaty/downloader/z05;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/a15;->r:Lcom/shabakaty/downloader/mj;

    iget-object v0, p0, Lcom/shabakaty/downloader/a15;->s:Lcom/shabakaty/downloader/z05;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->removeObserver(Lcom/shabakaty/downloader/r53;)V

    return-void
.end method
