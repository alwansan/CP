.class public final Lcom/shabakaty/downloader/wz;
.super Lcom/shabakaty/downloader/br3$a;
.source "ChromeCastController.kt"


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/yz;

.field public final synthetic b:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

.field public final synthetic c:Lcom/shabakaty/downloader/br3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/yz;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/br3;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/wz;->a:Lcom/shabakaty/downloader/yz;

    iput-object p2, p0, Lcom/shabakaty/downloader/wz;->b:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    iput-object p3, p0, Lcom/shabakaty/downloader/wz;->c:Lcom/shabakaty/downloader/br3;

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/br3$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shabakaty/downloader/wz;->a:Lcom/shabakaty/downloader/yz;

    .line 2
    iget-object v1, v1, Lcom/shabakaty/downloader/yz;->a:Landroid/content/Context;

    .line 3
    const-class v2, Lcom/shabakaty/cinemana/helpers/casting/ExpandedControlsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/wz;->b:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->skippingDurations:Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;

    const-string v2, "parental"

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/wz;->b:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const-string v2, "VideoModelArg"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/wz;->b:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 9
    iget-object v1, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->subtitles:Ljava/util/List;

    .line 10
    invoke-static {v1}, Lcom/shabakaty/downloader/m50;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, ".srt"

    if-nez v1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, v1, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->file:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    .line 12
    invoke-static {v1, v4, v2, v5}, Lcom/shabakaty/downloader/re4;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v1

    if-ne v1, v3, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_5

    .line 13
    iget-object v1, p0, Lcom/shabakaty/downloader/wz;->b:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 14
    iget-object v1, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->subtitles:Ljava/util/List;

    .line 15
    invoke-static {v1}, Lcom/shabakaty/downloader/m50;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    const/4 v3, 0x0

    if-nez v1, :cond_3

    goto :goto_2

    .line 16
    :cond_3
    iget-object v1, v1, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->file:Ljava/lang/String;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x4

    const-string v5, ".vtt"

    .line 17
    invoke-static {v1, v4, v5, v2, v3}, Lcom/shabakaty/downloader/ne4;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v3

    :goto_2
    const-string v1, "trans"

    .line 18
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    const/high16 v1, 0x10000000

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 20
    iget-object v1, p0, Lcom/shabakaty/downloader/wz;->a:Lcom/shabakaty/downloader/yz;

    .line 21
    iget-object v1, v1, Lcom/shabakaty/downloader/yz;->a:Landroid/content/Context;

    .line 22
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 23
    iget-object v0, p0, Lcom/shabakaty/downloader/wz;->c:Lcom/shabakaty/downloader/br3;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Must be called from the main thread."

    .line 24
    invoke-static {v1}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 25
    iget-object v0, v0, Lcom/shabakaty/downloader/br3;->h:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
