.class public final Lcom/shabakaty/downloader/d15$h;
.super Ljava/lang/Object;
.source "LiveDataExtensions.kt"

# interfaces
.implements Lcom/shabakaty/downloader/r53;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/d15;->n2(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/views/DownloadButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/r53<",
        "Lcom/shabakaty/downloader/tj<",
        "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/Dialog;

.field public final synthetic b:Lcom/shabakaty/downloader/mj;

.field public final synthetic c:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

.field public final synthetic d:Lcom/shabakaty/downloader/d15;

.field public final synthetic e:Lcom/shabakaty/downloader/views/DownloadButton;


# direct methods
.method public constructor <init>(Landroid/app/Dialog;Lcom/shabakaty/downloader/mj;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/d15;Lcom/shabakaty/downloader/views/DownloadButton;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/d15$h;->a:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/shabakaty/downloader/d15$h;->b:Lcom/shabakaty/downloader/mj;

    iput-object p3, p0, Lcom/shabakaty/downloader/d15$h;->c:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    iput-object p4, p0, Lcom/shabakaty/downloader/d15$h;->d:Lcom/shabakaty/downloader/d15;

    iput-object p5, p0, Lcom/shabakaty/downloader/d15$h;->e:Lcom/shabakaty/downloader/views/DownloadButton;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/tj;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 3
    :goto_0
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez p1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 5
    :goto_1
    iget-object p1, p0, Lcom/shabakaty/downloader/d15$h;->c:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 7
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/d15$h;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/d15$h;->d:Lcom/shabakaty/downloader/d15;

    iget-object v0, p0, Lcom/shabakaty/downloader/d15$h;->e:Lcom/shabakaty/downloader/views/DownloadButton;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/d15;->u(Lcom/shabakaty/downloader/views/DownloadButton;)V

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/d15$h;->d:Lcom/shabakaty/downloader/d15;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/u15;

    .line 11
    iget-object p1, p1, Lcom/shabakaty/downloader/u15;->v:Lcom/shabakaty/downloader/mj;

    .line 12
    invoke-static {p1}, Lcom/shabakaty/downloader/zi2;->f(Lcom/shabakaty/downloader/xv2;)V

    .line 13
    iget-object p1, p0, Lcom/shabakaty/downloader/d15$h;->b:Lcom/shabakaty/downloader/mj;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Lcom/shabakaty/downloader/r53;)V

    :cond_2
    return-void
.end method
