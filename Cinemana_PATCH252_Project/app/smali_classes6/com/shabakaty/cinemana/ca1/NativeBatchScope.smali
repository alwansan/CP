.class public final Lcom/shabakaty/cinemana/ca1/NativeBatchScope;
.super Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroidx/fragment/app/Fragment;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;-><init>(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public f()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->s:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
