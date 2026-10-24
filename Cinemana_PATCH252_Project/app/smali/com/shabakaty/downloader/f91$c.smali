.class public final Lcom/shabakaty/downloader/f91$c;
.super Ljava/lang/Object;
.source "LiveDataExtensions.kt"

# interfaces
.implements Lcom/shabakaty/downloader/r53;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/f91;->K(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/views/DownloadButton;)V
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

.field public final synthetic d:Lcom/shabakaty/downloader/f91;

.field public final synthetic e:Lcom/shabakaty/downloader/views/DownloadButton;


# direct methods
.method public constructor <init>(Landroid/app/Dialog;Lcom/shabakaty/downloader/mj;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/f91;Lcom/shabakaty/downloader/views/DownloadButton;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/f91$c;->a:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/shabakaty/downloader/f91$c;->b:Lcom/shabakaty/downloader/mj;

    iput-object p3, p0, Lcom/shabakaty/downloader/f91$c;->c:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    iput-object p4, p0, Lcom/shabakaty/downloader/f91$c;->d:Lcom/shabakaty/downloader/f91;

    iput-object p5, p0, Lcom/shabakaty/downloader/f91$c;->e:Lcom/shabakaty/downloader/views/DownloadButton;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/tj;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 3
    :goto_0
    check-cast v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 4
    iget-object v4, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 5
    iget-object v5, p0, Lcom/shabakaty/downloader/f91$c;->c:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 6
    iget-object v5, v5, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 7
    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 8
    iget-object v1, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->qualities:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 9
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_5

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/f91$c;->a:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 11
    iget-object v1, p0, Lcom/shabakaty/downloader/f91$c;->d:Lcom/shabakaty/downloader/f91;

    iget-object v2, p0, Lcom/shabakaty/downloader/f91$c;->e:Lcom/shabakaty/downloader/views/DownloadButton;

    .line 12
    iput-object v2, v1, Lcom/shabakaty/downloader/f91;->N:Lcom/shabakaty/downloader/views/DownloadButton;

    if-nez p1, :cond_4

    goto :goto_3

    .line 13
    :cond_4
    iget-object p1, p1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 14
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    :goto_3
    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    new-instance p1, Lcom/shabakaty/downloader/f91$e;

    iget-object v2, p0, Lcom/shabakaty/downloader/f91$c;->e:Lcom/shabakaty/downloader/views/DownloadButton;

    invoke-direct {p1, v2}, Lcom/shabakaty/downloader/f91$e;-><init>(Lcom/shabakaty/downloader/views/DownloadButton;)V

    invoke-static {v1, v0, p1}, Lcom/shabakaty/downloader/he0;->p(Landroidx/fragment/app/Fragment;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/tm1;)V

    .line 15
    iget-object p1, p0, Lcom/shabakaty/downloader/f91$c;->b:Lcom/shabakaty/downloader/mj;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Lcom/shabakaty/downloader/r53;)V

    :cond_5
    return-void
.end method
