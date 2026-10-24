.class public final Lcom/shabakaty/cinemana/mod/SubtitlePreviewChoiceListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final context:Landroid/content/Context;

.field private final controller:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

.field private final list:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/mod/SubtitlePreviewChoiceListener;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/shabakaty/cinemana/mod/SubtitlePreviewChoiceListener;->controller:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    iput-object p3, p0, Lcom/shabakaty/cinemana/mod/SubtitlePreviewChoiceListener;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    if-ltz p2, :cond_2

    iget-object v0, p0, Lcom/shabakaty/cinemana/mod/SubtitlePreviewChoiceListener;->list:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_2

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    iget-object v2, v1, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->file:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, v1, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->type:Ljava/lang/String;

    iget-object v4, p0, Lcom/shabakaty/cinemana/mod/SubtitlePreviewChoiceListener;->context:Landroid/content/Context;

    if-eqz v4, :cond_2

    if-eqz v3, :cond_0

    invoke-static {v4}, Lcom/shabakaty/downloader/df3;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v1, "cinemana_preview_subtitle_language"

    invoke-interface {v5, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_1
    iget-object v5, p0, Lcom/shabakaty/cinemana/mod/SubtitlePreviewChoiceListener;->controller:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    if-eqz v5, :cond_2

    invoke-static {v4, v5, v2}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewHelper;->startSourcePreview(Landroid/content/Context;Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
