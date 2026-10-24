.class public final Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService$a;
.super Ljava/lang/Object;
.source "DLNAControllerService.kt"

# interfaces
.implements Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->g(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService$a;->a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    iput-object p2, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService$a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService$a;->c:Ljava/lang/String;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {}, Lcom/shabakaty/downloader/hc1;->a()Lcom/shabakaty/downloader/hc1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/hc1;->b(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcom/connectsdk/service/command/ServiceCommandError;->getCode()I

    move-result v2

    const/16 v3, 0x1f4

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_3

    .line 3
    iget-object p1, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService$a;->a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    const-string v2, "something went wrong, please try again"

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/wt2;->m(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    .line 4
    :cond_3
    iget-object v2, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService$a;->a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    :goto_3
    const-string p1, ""

    :cond_5
    invoke-static {v2, p1}, Lcom/shabakaty/downloader/wt2;->m(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    :goto_4
    iget-object p1, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService$a;->a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    .line 6
    iget v2, p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->D:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_6

    add-int/2addr v2, v1

    .line 7
    iput v2, p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->D:I

    .line 8
    iget-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService$a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService$a;->b:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->g(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_5

    .line 9
    :cond_6
    iput v0, p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->D:I

    .line 10
    invoke-static {}, Lcom/shabakaty/downloader/j51;->b()Lcom/shabakaty/downloader/j51;

    move-result-object p1

    new-instance v0, Lcom/shabakaty/downloader/zw;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/zw;-><init>(Ljava/lang/Boolean;I)V

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/j51;->f(Ljava/lang/Object;)V

    :goto_5
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 14

    .line 1
    check-cast p1, Lcom/connectsdk/service/capability/MediaPlayer$MediaLaunchObject;

    .line 2
    const-class v0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

    iget-object v1, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService$a;->a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    sget-object v2, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->G:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/shabakaty/downloader/j51;->b()Lcom/shabakaty/downloader/j51;

    move-result-object v1

    new-instance v2, Lcom/shabakaty/downloader/zw;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/shabakaty/downloader/zw;-><init>(Ljava/lang/Boolean;I)V

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/j51;->f(Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService$a;->a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    .line 6
    iput-object p1, v1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->w:Lcom/connectsdk/service/capability/MediaPlayer$MediaLaunchObject;

    .line 7
    iget-object p1, v1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->x:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const-string v2, "notification"

    .line 8
    invoke-virtual {v1, v2}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, v1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->C:Landroid/app/NotificationManager;

    .line 9
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {v1}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0d00ec

    invoke-direct {v2, v3, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const-string v3, "<set-?>"

    .line 10
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object v2, v1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->B:Landroid/widget/RemoteViews;

    .line 12
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/shabakaty/cinemana/helpers/casting/receivers/RemoteReceiver;

    invoke-direct {v2, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "pause"

    .line 13
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/shabakaty/cinemana/helpers/casting/receivers/RemoteReceiver;

    invoke-direct {v2, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "close"

    .line 15
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    invoke-virtual {v1}, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->e()Landroid/widget/RemoteViews;

    move-result-object v2

    const v5, 0x7f0a031a

    const/4 v6, 0x0

    if-nez p1, :cond_0

    move-object v7, v6

    goto :goto_0

    .line 17
    :cond_0
    iget-object v7, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->enTitle:Ljava/lang/String;

    .line 18
    :goto_0
    invoke-virtual {v2, v5, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 19
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "VideoModelArg"

    .line 20
    invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 21
    iget-object p1, v1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->x:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 22
    iget-object p1, v1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->z:Ljava/lang/String;

    const-string v7, "VIDEO_URL"

    invoke-virtual {v2, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    new-instance p1, Lcom/shabakaty/downloader/jl4;

    invoke-direct {p1, v1}, Lcom/shabakaty/downloader/jl4;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/jl4;->d(Landroid/content/Intent;)Lcom/shabakaty/downloader/jl4;

    const v2, 0x41a864

    const/high16 v8, 0x8000000

    .line 25
    invoke-virtual {p1, v2, v8}, Lcom/shabakaty/downloader/jl4;->i(II)Landroid/app/PendingIntent;

    move-result-object p1

    .line 26
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v8, "com.cinemana.pro"

    const/16 v9, 0x1a

    if-lt v2, v9, :cond_2

    .line 27
    new-instance v10, Landroid/app/NotificationChannel;

    const/4 v11, 0x2

    const-string v12, "Cinemana"

    invoke-direct {v10, v8, v12, v11}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v11, "Casting Remote"

    .line 28
    invoke-virtual {v10, v11}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 29
    iget-object v11, v1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->C:Landroid/app/NotificationManager;

    if-nez v11, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v11, v10}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 30
    :cond_2
    :goto_1
    new-instance v10, Lcom/shabakaty/downloader/m03;

    invoke-direct {v10, v1, v8}, Lcom/shabakaty/downloader/m03;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    invoke-static {v10, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object v10, v1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->A:Lcom/shabakaty/downloader/m03;

    .line 33
    invoke-virtual {v1}, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->d()Lcom/shabakaty/downloader/m03;

    move-result-object v3

    const v8, 0x7f0800ae

    .line 34
    iget-object v10, v3, Lcom/shabakaty/downloader/m03;->B:Landroid/app/Notification;

    iput v8, v10, Landroid/app/Notification;->icon:I

    .line 35
    new-instance v8, Lcom/shabakaty/downloader/n03;

    invoke-direct {v8}, Lcom/shabakaty/downloader/n03;-><init>()V

    invoke-virtual {v3, v8}, Lcom/shabakaty/downloader/m03;->m(Lcom/shabakaty/downloader/r03;)Lcom/shabakaty/downloader/m03;

    .line 36
    invoke-virtual {v1}, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->e()Landroid/widget/RemoteViews;

    move-result-object v8

    .line 37
    iput-object v8, v3, Lcom/shabakaty/downloader/m03;->w:Landroid/widget/RemoteViews;

    new-array v8, v4, [J

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    aput-wide v11, v8, v10

    .line 38
    iget-object v10, v3, Lcom/shabakaty/downloader/m03;->B:Landroid/app/Notification;

    iput-object v8, v10, Landroid/app/Notification;->vibrate:[J

    .line 39
    iput-object p1, v3, Lcom/shabakaty/downloader/m03;->g:Landroid/app/PendingIntent;

    .line 40
    invoke-virtual {v3}, Lcom/shabakaty/downloader/m03;->c()Landroid/app/Notification;

    move-result-object p1

    const-string v3, "notificationBuilder\n\t\t\t\t\u2026ndingIntent)\n\t\t\t\t.build()"

    invoke-static {p1, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x3db

    if-lt v2, v9, :cond_3

    .line 41
    invoke-virtual {v1, v3, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    goto :goto_2

    .line 42
    :cond_3
    iget-object v1, v1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->C:Landroid/app/NotificationManager;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v3, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 43
    :goto_2
    iget-object p1, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService$a;->a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    .line 44
    iget-object v1, p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->x:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez v1, :cond_5

    move-object v1, v6

    goto :goto_3

    .line 45
    :cond_5
    iget-object v1, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->imgObjUrl:Ljava/lang/String;

    .line 46
    :goto_3
    sget-object v2, Lcom/facebook/imagepipeline/request/ImageRequest;->t:Lcom/facebook/common/internal/Fn;

    if-eqz v1, :cond_8

    .line 47
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_4

    .line 48
    :cond_7
    invoke-static {v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->b(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v6

    :cond_8
    :goto_4
    move-object v9, v6

    .line 49
    sget-object v1, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->t:Lcom/facebook/imagepipeline/core/ImagePipelineFactory;

    const-string v2, "ImagePipelineFactory was not initialized!"

    invoke-static {v1, v2}, Lcom/facebook/common/internal/Preconditions;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v2, v1, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->k:Lcom/facebook/imagepipeline/core/ImagePipeline;

    if-nez v2, :cond_9

    .line 51
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->a()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->k:Lcom/facebook/imagepipeline/core/ImagePipeline;

    .line 52
    :cond_9
    iget-object v8, v1, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->k:Lcom/facebook/imagepipeline/core/ImagePipeline;

    const/4 v10, 0x0

    .line 53
    sget-object v11, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->s:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 54
    invoke-virtual/range {v8 .. v13}, Lcom/facebook/imagepipeline/core/ImagePipeline;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;)Lcom/facebook/datasource/DataSource;

    move-result-object v1

    .line 55
    new-instance v2, Lcom/shabakaty/downloader/vh0;

    invoke-direct {v2, p1}, Lcom/shabakaty/downloader/vh0;-><init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;)V

    .line 56
    sget-object p1, Lcom/facebook/common/executors/UiThreadImmediateExecutorService;->s:Lcom/facebook/common/executors/UiThreadImmediateExecutorService;

    if-nez p1, :cond_a

    .line 57
    new-instance p1, Lcom/facebook/common/executors/UiThreadImmediateExecutorService;

    invoke-direct {p1}, Lcom/facebook/common/executors/UiThreadImmediateExecutorService;-><init>()V

    sput-object p1, Lcom/facebook/common/executors/UiThreadImmediateExecutorService;->s:Lcom/facebook/common/executors/UiThreadImmediateExecutorService;

    .line 58
    :cond_a
    sget-object p1, Lcom/facebook/common/executors/UiThreadImmediateExecutorService;->s:Lcom/facebook/common/executors/UiThreadImmediateExecutorService;

    .line 59
    check-cast v1, Lcom/facebook/datasource/AbstractDataSource;

    invoke-virtual {v1, v2, p1}, Lcom/facebook/datasource/AbstractDataSource;->h(Lcom/facebook/datasource/DataSubscriber;Ljava/util/concurrent/Executor;)V

    .line 60
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService$a;->b:Landroid/content/Context;

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 62
    iget-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService$a;->a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    .line 63
    iget-object v0, v0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->x:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 64
    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 65
    iget-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService$a;->a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    .line 66
    iget-object v0, v0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->x:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 67
    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 68
    iget-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    iget-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService$a;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 70
    iget-object p1, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService$a;->a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    .line 71
    iget-object v0, p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->x:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez v0, :cond_b

    goto/16 :goto_7

    :cond_b
    const-string v1, "model"

    .line 72
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->skippingDurations:Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;

    .line 74
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;->start:Ljava/util/List;

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 77
    check-cast v5, Ljava/lang/String;

    .line 78
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    invoke-virtual {p1, v2}, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->h(Ljava/util/List;)[J

    move-result-object v7

    .line 79
    iget-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;->end:Ljava/util/List;

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 82
    check-cast v3, Ljava/lang/String;

    .line 83
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    invoke-virtual {p1, v2}, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->h(Ljava/util/List;)[J

    move-result-object v8

    .line 84
    new-instance v9, Lcom/shabakaty/downloader/ho3;

    invoke-direct {v9}, Lcom/shabakaty/downloader/ho3;-><init>()V

    .line 85
    new-instance v1, Lcom/shabakaty/downloader/vj3;

    invoke-direct {v1}, Lcom/shabakaty/downloader/vj3;-><init>()V

    .line 86
    new-instance v10, Lcom/shabakaty/downloader/zh0;

    const/16 v2, 0xfa

    invoke-direct {v10, v1, v2, v9}, Lcom/shabakaty/downloader/zh0;-><init>(Lcom/shabakaty/downloader/vj3;ILcom/shabakaty/downloader/ho3;)V

    .line 87
    invoke-static {v1}, Lcom/shabakaty/downloader/uv3;->a(Lcom/shabakaty/downloader/t43;)Lcom/shabakaty/downloader/t43;

    move-result-object v3

    .line 88
    new-instance v13, Lcom/shabakaty/downloader/th0;

    const/16 v12, 0xfa

    move-object v5, v13

    move-object v6, p1

    move-object v11, v1

    invoke-direct/range {v5 .. v12}, Lcom/shabakaty/downloader/th0;-><init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;[J[JLcom/shabakaty/downloader/ho3;Lcom/shabakaty/downloader/zh0;Lcom/shabakaty/downloader/vj3;I)V

    .line 89
    sget-object v5, Lcom/shabakaty/downloader/do1;->d:Lcom/shabakaty/downloader/xc0;

    sget-object v6, Lcom/shabakaty/downloader/do1;->c:Lcom/shabakaty/downloader/j2;

    invoke-virtual {v3, v13, v5, v6, v6}, Lcom/shabakaty/downloader/t43;->d(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/j2;)Lcom/shabakaty/downloader/t43;

    move-result-object v3

    .line 90
    sget-object v7, Lcom/shabakaty/downloader/nx4;->t:Lcom/shabakaty/downloader/nx4;

    sget-object v8, Lcom/shabakaty/downloader/g00;->u:Lcom/shabakaty/downloader/g00;

    .line 91
    invoke-virtual {v3, v7, v8, v6, v5}, Lcom/shabakaty/downloader/t43;->h(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/xc0;)Lcom/shabakaty/downloader/mu0;

    move-result-object v3

    .line 92
    iput-object v3, p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->r:Lcom/shabakaty/downloader/mu0;

    .line 93
    iget-object p1, v0, Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;->start:Ljava/util/List;

    .line 94
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v4

    if-eqz p1, :cond_e

    int-to-long v2, v2

    .line 95
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/vj3;->e(Ljava/lang/Object;)V

    .line 96
    :cond_e
    :goto_7
    iget-object p1, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService$a;->a:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    .line 97
    iget-object v0, p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->u:Lcom/connectsdk/service/DLNAService;

    if-nez v0, :cond_f

    goto :goto_8

    .line 98
    :cond_f
    new-instance v1, Lcom/shabakaty/cinemana/helpers/casting/a;

    invoke-direct {v1, p1}, Lcom/shabakaty/cinemana/helpers/casting/a;-><init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;)V

    invoke-virtual {v0, v1}, Lcom/connectsdk/service/DLNAService;->subscribePlayState(Lcom/connectsdk/service/capability/MediaControl$PlayStateListener;)Lcom/connectsdk/service/command/ServiceSubscription;

    :goto_8
    return-void
.end method
