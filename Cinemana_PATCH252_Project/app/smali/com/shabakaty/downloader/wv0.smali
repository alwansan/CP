.class public final Lcom/shabakaty/downloader/wv0;
.super Lcom/shabakaty/downloader/af2;
.source "DownloadButton.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/xv0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Landroid/content/Context;

.field public final synthetic s:Lcom/shabakaty/downloader/views/DownloadButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/views/DownloadButton;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/wv0;->r:Landroid/content/Context;

    iput-object p2, p0, Lcom/shabakaty/downloader/wv0;->s:Lcom/shabakaty/downloader/views/DownloadButton;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wv0;->r:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/wv0;->s:Lcom/shabakaty/downloader/views/DownloadButton;

    sget v2, Lcom/shabakaty/downloader/xv0;->P:I

    .line 2
    sget-object v2, Lcom/shabakaty/downloader/hl0;->a:Lcom/shabakaty/downloader/fl0;

    const/4 v2, 0x0

    .line 3
    invoke-static {v2}, Landroidx/databinding/ViewDataBinding;->g(Ljava/lang/Object;)Lcom/shabakaty/downloader/gl0;

    move-result-object v2

    const v3, 0x7f0d0057

    const/4 v4, 0x1

    .line 4
    invoke-static {v0, v3, v1, v4, v2}, Lcom/shabakaty/downloader/hl0;->c(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLcom/shabakaty/downloader/gl0;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    .line 5
    check-cast v0, Lcom/shabakaty/downloader/xv0;

    const-string v1, "inflate(LayoutInflater.from(context), this, true)"

    .line 6
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
