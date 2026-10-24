.class public final Lcom/shabakaty/downloader/d15$i;
.super Ljava/lang/Object;
.source "LiveDataExtensions.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/d15;->n2(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/views/DownloadButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/mj;

.field public final synthetic s:Lcom/shabakaty/downloader/d15$h;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/mj;Lcom/shabakaty/downloader/d15$h;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/d15$i;->r:Lcom/shabakaty/downloader/mj;

    iput-object p2, p0, Lcom/shabakaty/downloader/d15$i;->s:Lcom/shabakaty/downloader/d15$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/d15$i;->r:Lcom/shabakaty/downloader/mj;

    iget-object v0, p0, Lcom/shabakaty/downloader/d15$i;->s:Lcom/shabakaty/downloader/d15$h;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->removeObserver(Lcom/shabakaty/downloader/r53;)V

    return-void
.end method
