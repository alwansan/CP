.class public final Lcom/shabakaty/downloader/SubtitleSettingsPlayerClick;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field private final receiver:Lcom/shabakaty/downloader/ed3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ed3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/SubtitleSettingsPlayerClick;->receiver:Lcom/shabakaty/downloader/ed3;

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/shabakaty/downloader/SubtitleSettingsPlayerClick;->receiver:Lcom/shabakaty/downloader/ed3;

    iget-object v1, v0, Lcom/shabakaty/downloader/ed3;->b:Landroid/content/Context;

    check-cast v1, Lcom/shabakaty/downloader/ji1;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ji1;->getSupportFragmentManager()Landroidx/fragment/app/q;

    move-result-object v2

    const-string v4, "subtitle_style_settings"

    invoke-virtual {v2, v4}, Landroidx/fragment/app/q;->I(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v3, Lcom/shabakaty/downloader/SubtitleSettingsOverlayFragment;

    invoke-direct {v3}, Lcom/shabakaty/downloader/SubtitleSettingsOverlayFragment;-><init>()V

    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, v2}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/q;)V

    const v1, 0x1020002

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v4, v2}, Landroidx/fragment/app/a;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {v0, v4}, Landroidx/fragment/app/t;->c(Ljava/lang/String;)Landroidx/fragment/app/t;

    invoke-virtual {v0}, Landroidx/fragment/app/a;->d()I

    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0
.end method
