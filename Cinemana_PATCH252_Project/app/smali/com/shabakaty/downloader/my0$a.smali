.class public Lcom/shabakaty/downloader/my0$a;
.super Ljava/lang/Object;
.source "DownloadRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/my0;->b(Lcom/shabakaty/downloader/r41;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/my0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/my0;Lcom/shabakaty/downloader/r41;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/my0$a;->r:Lcom/shabakaty/downloader/my0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/my0$a;->r:Lcom/shabakaty/downloader/my0;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/my0;->l:Lcom/shabakaty/downloader/n63;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/jz4$a;

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/jz4$a;->a:Landroidx/appcompat/app/b;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/fa;->dismiss()V

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/jz4$a;->c:Landroid/content/Context;

    const v1, 0x7f120186

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/my0$a;->r:Lcom/shabakaty/downloader/my0;

    invoke-static {v0}, Lcom/shabakaty/downloader/my0;->a(Lcom/shabakaty/downloader/my0;)V

    return-void
.end method
