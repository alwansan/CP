.class public Lcom/facebook/share/internal/DeviceShareDialogFragment;
.super Lcom/shabakaty/downloader/ct0;
.source "DeviceShareDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static N:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# instance fields
.field public H:Landroid/widget/ProgressBar;

.field public I:Landroid/widget/TextView;

.field public J:Landroid/app/Dialog;

.field public volatile K:Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

.field public volatile L:Ljava/util/concurrent/ScheduledFuture;

.field public M:Lcom/facebook/share/model/ShareContent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/ct0;-><init>()V

    return-void
.end method


# virtual methods
.method public Z1(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .line 1
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lcom/shabakaty/downloader/ji1;

    move-result-object v0

    const v1, 0x7f130391

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->J:Landroid/app/Dialog;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lcom/shabakaty/downloader/ji1;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d003d

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0364

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->H:Landroid/widget/ProgressBar;

    const v0, 0x7f0a0111

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->I:Landroid/widget/TextView;

    const v0, 0x7f0a00c0

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 7
    new-instance v2, Lcom/facebook/share/internal/DeviceShareDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment$1;-><init>(Lcom/facebook/share/internal/DeviceShareDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0103

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f120090

    .line 9
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->J:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 11
    iget-object p1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->M:Lcom/facebook/share/model/ShareContent;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    instance-of v2, p1, Lcom/facebook/share/model/ShareLinkContent;

    const-string v3, "hashtag"

    if-eqz v2, :cond_3

    .line 13
    check-cast p1, Lcom/facebook/share/model/ShareLinkContent;

    .line 14
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 15
    iget-object v2, p1, Lcom/facebook/share/model/ShareContent;->w:Lcom/facebook/share/model/ShareHashtag;

    if-eqz v2, :cond_1

    .line 16
    iget-object v2, v2, Lcom/facebook/share/model/ShareHashtag;->r:Ljava/lang/String;

    .line 17
    invoke-static {v1, v3, v2}, Lcom/facebook/internal/Utility;->B(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_1
    iget-object v2, p1, Lcom/facebook/share/model/ShareContent;->r:Landroid/net/Uri;

    if-eqz v2, :cond_2

    .line 19
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "href"

    invoke-static {v1, v3, v2}, Lcom/facebook/internal/Utility;->B(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_2
    iget-object p1, p1, Lcom/facebook/share/model/ShareLinkContent;->A:Ljava/lang/String;

    const-string v2, "quote"

    .line 21
    invoke-static {v1, v2, p1}, Lcom/facebook/internal/Utility;->B(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_3
    instance-of v2, p1, Lcom/facebook/share/model/ShareOpenGraphContent;

    if-eqz v2, :cond_5

    .line 23
    check-cast p1, Lcom/facebook/share/model/ShareOpenGraphContent;

    .line 24
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 25
    iget-object v2, p1, Lcom/facebook/share/model/ShareContent;->w:Lcom/facebook/share/model/ShareHashtag;

    if-eqz v2, :cond_4

    .line 26
    iget-object v2, v2, Lcom/facebook/share/model/ShareHashtag;->r:Ljava/lang/String;

    .line 27
    invoke-static {v1, v3, v2}, Lcom/facebook/internal/Utility;->B(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_4
    iget-object v2, p1, Lcom/facebook/share/model/ShareOpenGraphContent;->x:Lcom/facebook/share/model/ShareOpenGraphAction;

    .line 29
    iget-object v2, v2, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->r:Landroid/os/Bundle;

    const-string v3, "og:type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "action_type"

    .line 30
    invoke-static {v1, v3, v2}, Lcom/facebook/internal/Utility;->B(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :try_start_0
    invoke-static {p1}, Lcom/facebook/share/internal/ShareInternalUtility;->d(Lcom/facebook/share/model/ShareOpenGraphContent;)Lorg/json/JSONObject;

    move-result-object p1

    .line 32
    invoke-static {p1, v0}, Lcom/facebook/share/internal/ShareInternalUtility;->c(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v2, "action_properties"

    .line 33
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 34
    invoke-static {v1, v2, p1}, Lcom/facebook/internal/Utility;->B(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 35
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Unable to serialize the ShareOpenGraphContent to JSON"

    invoke-direct {v0, v1, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    :goto_0
    move-object v5, v1

    if-eqz v5, :cond_6

    .line 36
    invoke-virtual {v5}, Landroid/os/Bundle;->size()I

    move-result p1

    if-nez p1, :cond_7

    .line 37
    :cond_6
    new-instance p1, Lcom/facebook/FacebookRequestError;

    const-string v1, ""

    const-string v2, "Failed to get share content"

    invoke-direct {p1, v0, v1, v2}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->e2(Lcom/facebook/FacebookRequestError;)V

    .line 38
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    sget-object v0, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 40
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 41
    sget-object v0, Lcom/facebook/FacebookSdk;->c:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 44
    sget-object v0, Lcom/facebook/FacebookSdk;->e:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "access_token"

    .line 46
    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "device_info"

    .line 48
    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance p1, Lcom/facebook/GraphRequest;

    const/4 v3, 0x0

    sget-object v6, Lcom/facebook/HttpMethod;->s:Lcom/facebook/HttpMethod;

    new-instance v7, Lcom/facebook/share/internal/DeviceShareDialogFragment$2;

    invoke-direct {v7, p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment$2;-><init>(Lcom/facebook/share/internal/DeviceShareDialogFragment;)V

    const-string v4, "device/share"

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 50
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->e()Lcom/facebook/GraphRequestAsyncTask;

    .line 51
    iget-object p1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->J:Landroid/app/Dialog;

    return-object p1

    .line 52
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No Client Token found, please set the Client Token."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No App ID found, please set the App ID."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d2(ILandroid/content/Intent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->K:Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->K:Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    .line 3
    iget-object v0, v0, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->r:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->a(Ljava/lang/String;)V

    :cond_0
    const-string v0, "error"

    .line 5
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/FacebookRequestError;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lcom/shabakaty/downloader/ji1;

    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 10
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method

.method public final e2(Lcom/facebook/FacebookRequestError;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/q;

    move-result-object v0

    .line 3
    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/q;)V

    .line 4
    invoke-virtual {v1, p0}, Landroidx/fragment/app/a;->q(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/t;

    invoke-virtual {v1}, Landroidx/fragment/app/a;->d()I

    .line 5
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "error"

    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->d2(ILandroid/content/Intent;)V

    return-void
.end method

.method public final f2(Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->K:Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    .line 2
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->I:Landroid/widget/TextView;

    .line 3
    iget-object v1, p1, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->r:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->I:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->H:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 7
    const-class v0, Lcom/facebook/share/internal/DeviceShareDialogFragment;

    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/facebook/share/internal/DeviceShareDialogFragment;->N:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v1, :cond_0

    .line 9
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v1, Lcom/facebook/share/internal/DeviceShareDialogFragment;->N:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 10
    :cond_0
    sget-object v1, Lcom/facebook/share/internal/DeviceShareDialogFragment;->N:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 11
    new-instance v0, Lcom/facebook/share/internal/DeviceShareDialogFragment$3;

    invoke-direct {v0, p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment$3;-><init>(Lcom/facebook/share/internal/DeviceShareDialogFragment;)V

    .line 12
    iget-wide v2, p1, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->s:J

    .line 13
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 14
    invoke-virtual {v1, v0, v2, v3, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->L:Ljava/util/concurrent/ScheduledFuture;

    return-void

    :catchall_0
    move-exception p1

    .line 15
    monitor-exit v0

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-eqz p3, :cond_0

    const-string p2, "request_state"

    .line 2
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0, p2}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->f2(Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;)V

    :cond_0
    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/ct0;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    iget-object p1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->L:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->L:Ljava/util/concurrent/ScheduledFuture;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 4
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/4 v0, -0x1

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->d2(ILandroid/content/Intent;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/ct0;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->K:Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->K:Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    const-string v1, "request_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method
