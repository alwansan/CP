.class public final synthetic Lcom/shabakaty/downloader/wx1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/nk3;


# instance fields
.field public final synthetic a:Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/wx1;->a:Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/cinemana/domain/models/local/Quality;)V
    .locals 5

    iget-object v0, p0, Lcom/shabakaty/downloader/wx1;->a:Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;

    const-string v1, "this$0"

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, v0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->u:Lcom/shabakaty/downloader/views/DownloadButton;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1}, Lcom/shabakaty/downloader/views/DownloadButton;->c()V

    .line 4
    :goto_0
    iget-object v1, v0, Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;->y:Lcom/shabakaty/downloader/rm1;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    .line 5
    :goto_1
    iget-object v1, v0, Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;->w:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 6
    iget-object v2, p1, Lcom/shabakaty/cinemana/domain/models/local/Quality;->url:Ljava/lang/String;

    .line 7
    iget-object v3, p1, Lcom/shabakaty/cinemana/domain/models/local/Quality;->resolution:Ljava/lang/String;

    .line 8
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/local/Quality;->name:Ljava/lang/String;

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "<set-?>"

    .line 10
    invoke-static {v2, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object v2, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->url:Ljava/lang/String;

    .line 12
    new-instance v4, Lcom/shabakaty/cinemana/domain/models/local/Quality;

    invoke-direct {v4, v3, p1, v2}, Lcom/shabakaty/cinemana/domain/models/local/Quality;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iput-object v4, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->wantedQuality:Lcom/shabakaty/cinemana/domain/models/local/Quality;

    .line 14
    invoke-virtual {v0}, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->i()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, v0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->v:Z

    .line 16
    invoke-virtual {v0}, Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;->f()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/wt2;->l(Landroid/content/Context;)V

    goto :goto_2

    .line 17
    :cond_3
    invoke-virtual {v0}, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->m()V

    :goto_2
    return-void
.end method
