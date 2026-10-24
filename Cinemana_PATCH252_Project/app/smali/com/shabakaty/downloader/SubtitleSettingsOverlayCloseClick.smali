.class public final Lcom/shabakaty/downloader/SubtitleSettingsOverlayCloseClick;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final fragment:Lcom/shabakaty/downloader/SubtitleSettingsOverlayFragment;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/SubtitleSettingsOverlayFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/SubtitleSettingsOverlayCloseClick;->fragment:Lcom/shabakaty/downloader/SubtitleSettingsOverlayFragment;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/SubtitleSettingsOverlayCloseClick;->fragment:Lcom/shabakaty/downloader/SubtitleSettingsOverlayFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/q;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/q;->Y()Z

    return-void
.end method
