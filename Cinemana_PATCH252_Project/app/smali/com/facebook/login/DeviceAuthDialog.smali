.class public Lcom/facebook/login/DeviceAuthDialog;
.super Lcom/shabakaty/downloader/ct0;
.source "DeviceAuthDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/DeviceAuthDialog$RequestState;
    }
.end annotation


# static fields
.field public static final synthetic T:I


# instance fields
.field public H:Landroid/view/View;

.field public I:Landroid/widget/TextView;

.field public J:Landroid/widget/TextView;

.field public K:Lcom/facebook/login/DeviceAuthMethodHandler;

.field public L:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile M:Lcom/facebook/GraphRequestAsyncTask;

.field public volatile N:Ljava/util/concurrent/ScheduledFuture;

.field public volatile O:Lcom/facebook/login/DeviceAuthDialog$RequestState;

.field public P:Landroid/app/Dialog;

.field public Q:Z

.field public R:Z

.field public S:Lcom/facebook/login/LoginClient$Request;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/ct0;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->L:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/facebook/login/DeviceAuthDialog;->Q:Z

    .line 4
    iput-boolean v0, p0, Lcom/facebook/login/DeviceAuthDialog;->R:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->S:Lcom/facebook/login/LoginClient$Request;

    return-void
.end method

.method public static d2(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 23

    .line 1
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "fields"

    const-string v1, "id,permissions,name"

    .line 3
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-eqz v8, :cond_0

    new-instance v0, Ljava/util/Date;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    mul-long v10, v10, v4

    add-long/2addr v10, v8

    invoke-direct {v0, v10, v11}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 5
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v1, v8, v6

    if-eqz v1, :cond_1

    new-instance v2, Ljava/util/Date;

    .line 6
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    mul-long v6, v6, v4

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 7
    :cond_1
    new-instance v1, Lcom/facebook/AccessToken;

    .line 8
    sget-object v4, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 9
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 10
    sget-object v14, Lcom/facebook/FacebookSdk;->c:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const-string v15, "0"

    move-object v12, v1

    move-object/from16 v13, p1

    move-object/from16 v20, v0

    move-object/from16 v22, v2

    .line 11
    invoke-direct/range {v12 .. v22}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V

    .line 12
    new-instance v6, Lcom/facebook/GraphRequest;

    sget-object v4, Lcom/facebook/HttpMethod;->r:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/facebook/login/DeviceAuthDialog$7;

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-direct {v5, v7, v8, v0, v2}, Lcom/facebook/login/DeviceAuthDialog$7;-><init>(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    const-string v2, "me"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 13
    invoke-virtual {v6}, Lcom/facebook/GraphRequest;->e()Lcom/facebook/GraphRequestAsyncTask;

    return-void
.end method

.method public static e2(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/internal/Utility$PermissionsLists;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    .line 1
    iget-object v2, v0, Lcom/facebook/login/DeviceAuthDialog;->K:Lcom/facebook/login/DeviceAuthMethodHandler;

    .line 2
    sget-object v3, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 3
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 4
    sget-object v6, Lcom/facebook/FacebookSdk;->c:Ljava/lang/String;

    .line 5
    iget-object v8, v1, Lcom/facebook/internal/Utility$PermissionsLists;->a:Ljava/util/List;

    .line 6
    iget-object v9, v1, Lcom/facebook/internal/Utility$PermissionsLists;->b:Ljava/util/List;

    .line 7
    iget-object v10, v1, Lcom/facebook/internal/Utility$PermissionsLists;->c:Ljava/util/List;

    .line 8
    sget-object v11, Lcom/facebook/AccessTokenSource;->w:Lcom/facebook/AccessTokenSource;

    const/4 v13, 0x0

    .line 9
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v1, Lcom/facebook/AccessToken;

    move-object v4, v1

    move-object/from16 v5, p3

    move-object/from16 v7, p1

    move-object/from16 v12, p4

    move-object/from16 v14, p5

    invoke-direct/range {v4 .. v14}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V

    .line 11
    iget-object v3, v2, Lcom/facebook/login/LoginMethodHandler;->s:Lcom/facebook/login/LoginClient;

    .line 12
    iget-object v3, v3, Lcom/facebook/login/LoginClient;->x:Lcom/facebook/login/LoginClient$Request;

    .line 13
    invoke-static {v3, v1}, Lcom/facebook/login/LoginClient$Result;->d(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v1

    .line 14
    iget-object v2, v2, Lcom/facebook/login/LoginMethodHandler;->s:Lcom/facebook/login/LoginClient;

    invoke-virtual {v2, v1}, Lcom/facebook/login/LoginClient;->d(Lcom/facebook/login/LoginClient$Result;)V

    .line 15
    iget-object v0, v0, Lcom/facebook/login/DeviceAuthDialog;->P:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public Z1(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 1
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lcom/shabakaty/downloader/ji1;

    move-result-object v0

    const v1, 0x7f130391

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog;->P:Landroid/app/Dialog;

    .line 2
    invoke-static {}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/facebook/login/DeviceAuthDialog;->R:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/facebook/login/DeviceAuthDialog;->f2(Z)Landroid/view/View;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->P:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Lcom/facebook/login/DeviceAuthDialog;->P:Landroid/app/Dialog;

    return-object p1
.end method

.method public f2(Z)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lcom/shabakaty/downloader/ji1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    if-eqz p1, :cond_0

    const p1, 0x7f0d003f

    goto :goto_0

    :cond_0
    const p1, 0x7f0d003d

    :goto_0
    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0364

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->H:Landroid/view/View;

    const v0, 0x7f0a0111

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->I:Landroid/widget/TextView;

    const v0, 0x7f0a00c0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 6
    new-instance v1, Lcom/facebook/login/DeviceAuthDialog$2;

    invoke-direct {v1, p0}, Lcom/facebook/login/DeviceAuthDialog$2;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0103

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->J:Landroid/widget/TextView;

    const v1, 0x7f120090

    .line 8
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public g2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->L:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->O:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->O:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 4
    iget-object v0, v0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->s:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->a(Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->K:Lcom/facebook/login/DeviceAuthMethodHandler;

    if-eqz v0, :cond_2

    .line 7
    iget-object v1, v0, Lcom/facebook/login/LoginMethodHandler;->s:Lcom/facebook/login/LoginClient;

    .line 8
    iget-object v1, v1, Lcom/facebook/login/LoginClient;->x:Lcom/facebook/login/LoginClient$Request;

    const-string v2, "User canceled log in."

    .line 9
    invoke-static {v1, v2}, Lcom/facebook/login/LoginClient$Result;->a(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v1

    .line 10
    iget-object v0, v0, Lcom/facebook/login/LoginMethodHandler;->s:Lcom/facebook/login/LoginClient;

    invoke-virtual {v0, v1}, Lcom/facebook/login/LoginClient;->d(Lcom/facebook/login/LoginClient$Result;)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->P:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public h2(Lcom/facebook/FacebookException;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->L:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->O:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->O:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 4
    iget-object v0, v0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->s:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->a(Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->K:Lcom/facebook/login/DeviceAuthMethodHandler;

    .line 7
    iget-object v1, v0, Lcom/facebook/login/LoginMethodHandler;->s:Lcom/facebook/login/LoginClient;

    .line 8
    iget-object v1, v1, Lcom/facebook/login/LoginClient;->x:Lcom/facebook/login/LoginClient$Request;

    const/4 v2, 0x0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {v1, v2, p1}, Lcom/facebook/login/LoginClient$Result;->b(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object p1

    .line 11
    iget-object v0, v0, Lcom/facebook/login/LoginMethodHandler;->s:Lcom/facebook/login/LoginClient;

    invoke-virtual {v0, p1}, Lcom/facebook/login/LoginClient;->d(Lcom/facebook/login/LoginClient$Result;)V

    .line 12
    iget-object p1, p0, Lcom/facebook/login/DeviceAuthDialog;->P:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public final i2()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->O:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 2
    iput-wide v1, v0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->v:J

    .line 3
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->O:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 5
    iget-object v0, v0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->t:Ljava/lang/String;

    const-string v1, "code"

    .line 6
    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/facebook/GraphRequest;

    const/4 v4, 0x0

    sget-object v7, Lcom/facebook/HttpMethod;->s:Lcom/facebook/HttpMethod;

    new-instance v8, Lcom/facebook/login/DeviceAuthDialog$4;

    invoke-direct {v8, p0}, Lcom/facebook/login/DeviceAuthDialog$4;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    const-string v5, "device/login_status"

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 8
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->e()Lcom/facebook/GraphRequestAsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->M:Lcom/facebook/GraphRequestAsyncTask;

    return-void
.end method

.method public final j2()V
    .locals 5

    .line 1
    sget-object v0, Lcom/facebook/login/DeviceAuthMethodHandler;->t:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 2
    const-class v0, Lcom/facebook/login/DeviceAuthMethodHandler;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/facebook/login/DeviceAuthMethodHandler;->t:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v1, Lcom/facebook/login/DeviceAuthMethodHandler;->t:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 5
    :cond_0
    sget-object v1, Lcom/facebook/login/DeviceAuthMethodHandler;->t:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 6
    new-instance v0, Lcom/facebook/login/DeviceAuthDialog$3;

    invoke-direct {v0, p0}, Lcom/facebook/login/DeviceAuthDialog$3;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    iget-object v2, p0, Lcom/facebook/login/DeviceAuthDialog;->O:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 7
    iget-wide v2, v2, Lcom/facebook/login/DeviceAuthDialog$RequestState;->u:J

    .line 8
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    invoke-virtual {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->N:Ljava/util/concurrent/ScheduledFuture;

    return-void

    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0

    throw v1
.end method

.method public final k2(Lcom/facebook/login/DeviceAuthDialog$RequestState;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iput-object v1, v0, Lcom/facebook/login/DeviceAuthDialog;->O:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 2
    iget-object v2, v0, Lcom/facebook/login/DeviceAuthDialog;->I:Landroid/widget/TextView;

    .line 3
    iget-object v3, v1, Lcom/facebook/login/DeviceAuthDialog$RequestState;->s:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v5, v1, Lcom/facebook/login/DeviceAuthDialog$RequestState;->r:Ljava/lang/String;

    .line 6
    sget-object v2, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->a:Ljava/util/HashMap;

    .line 7
    new-instance v9, Ljava/util/EnumMap;

    const-class v2, Lcom/shabakaty/downloader/f31;

    invoke-direct {v9, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 8
    sget-object v2, Lcom/shabakaty/downloader/f31;->w:Lcom/shabakaty/downloader/f31;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 9
    :try_start_0
    new-instance v4, Lcom/shabakaty/downloader/mv2;

    invoke-direct {v4}, Lcom/shabakaty/downloader/mv2;-><init>()V

    sget-object v6, Lcom/shabakaty/downloader/si;->A:Lcom/shabakaty/downloader/si;

    const/16 v7, 0xc8

    const/16 v8, 0xc8

    .line 10
    invoke-virtual/range {v4 .. v9}, Lcom/shabakaty/downloader/mv2;->J(Ljava/lang/String;Lcom/shabakaty/downloader/si;IILjava/util/Map;)Lcom/shabakaty/downloader/jm;

    move-result-object v4

    .line 11
    iget v5, v4, Lcom/shabakaty/downloader/jm;->s:I

    .line 12
    iget v6, v4, Lcom/shabakaty/downloader/jm;->r:I

    mul-int v7, v5, v6

    .line 13
    new-array v12, v7, [I

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_2

    mul-int v8, v7, v6

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v6, :cond_1

    add-int v11, v8, v9

    .line 14
    invoke-virtual {v4, v9, v7}, Lcom/shabakaty/downloader/jm;->a(II)Z

    move-result v13

    if-eqz v13, :cond_0

    const/high16 v13, -0x1000000

    goto :goto_2

    :cond_0
    const/4 v13, -0x1

    :goto_2
    aput v13, v12, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 15
    :cond_2
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v5, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catch Lcom/shabakaty/downloader/c95; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v4

    move v14, v6

    move/from16 v17, v6

    move/from16 v18, v5

    .line 16
    :try_start_1
    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_1
    .catch Lcom/shabakaty/downloader/c95; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_0
    move-object v4, v10

    .line 17
    :catch_1
    :goto_3
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 18
    iget-object v4, v0, Lcom/facebook/login/DeviceAuthDialog;->J:Landroid/widget/TextView;

    invoke-virtual {v4, v10, v5, v10, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 19
    iget-object v4, v0, Lcom/facebook/login/DeviceAuthDialog;->I:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    iget-object v4, v0, Lcom/facebook/login/DeviceAuthDialog;->H:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 21
    iget-boolean v4, v0, Lcom/facebook/login/DeviceAuthDialog;->R:Z

    const/4 v5, 0x1

    if-nez v4, :cond_5

    .line 22
    iget-object v4, v1, Lcom/facebook/login/DeviceAuthDialog$RequestState;->s:Ljava/lang/String;

    .line 23
    invoke-static {}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->c()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 24
    sget-object v6, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_4

    .line 25
    :cond_3
    sget-object v6, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    const/16 v6, 0x2e

    const/16 v7, 0x7c

    const-string v8, "8.1.0"

    invoke-virtual {v8, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "fbsdk"

    aput-object v8, v7, v2

    new-array v8, v3, [Ljava/lang/Object;

    const-string v9, "android"

    aput-object v9, v8, v2

    aput-object v6, v8, v5

    const-string v6, "%s-%s"

    .line 26
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v5

    aput-object v4, v7, v3

    const-string v3, "%s_%s_%s"

    .line 27
    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 28
    new-instance v6, Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {v6}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    const-string v7, "_fb._tcp."

    .line 29
    invoke-virtual {v6, v7}, Landroid/net/nsd/NsdServiceInfo;->setServiceType(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v6, v3}, Landroid/net/nsd/NsdServiceInfo;->setServiceName(Ljava/lang/String;)V

    const/16 v7, 0x50

    .line 31
    invoke-virtual {v6, v7}, Landroid/net/nsd/NsdServiceInfo;->setPort(I)V

    .line 32
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 33
    sget-object v7, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;

    const-string v8, "servicediscovery"

    .line 34
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/nsd/NsdManager;

    .line 35
    new-instance v8, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper$1;

    invoke-direct {v8, v3, v4}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sget-object v3, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {v7, v6, v5, v8}, Landroid/net/nsd/NsdManager;->registerService(Landroid/net/nsd/NsdServiceInfo;ILandroid/net/nsd/NsdManager$RegistrationListener;)V

    :goto_4
    const/4 v3, 0x1

    goto :goto_5

    :cond_4
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_5

    .line 38
    new-instance v3, Lcom/facebook/appevents/InternalAppEventsLogger;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/appevents/InternalAppEventsLogger;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-static {}, Lcom/facebook/FacebookSdk;->a()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 40
    iget-object v3, v3, Lcom/facebook/appevents/InternalAppEventsLogger;->a:Lcom/facebook/appevents/AppEventsLoggerImpl;

    const-string v4, "fb_smart_login_service"

    invoke-virtual {v3, v4, v10, v10}, Lcom/facebook/appevents/AppEventsLoggerImpl;->f(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 41
    :cond_5
    iget-wide v3, v1, Lcom/facebook/login/DeviceAuthDialog$RequestState;->v:J

    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    if-nez v8, :cond_6

    goto :goto_6

    .line 42
    :cond_6
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-wide v8, v1, Lcom/facebook/login/DeviceAuthDialog$RequestState;->v:J

    sub-long/2addr v3, v8

    iget-wide v8, v1, Lcom/facebook/login/DeviceAuthDialog$RequestState;->u:J

    const-wide/16 v10, 0x3e8

    mul-long v8, v8, v10

    sub-long/2addr v3, v8

    cmp-long v1, v3, v6

    if-gez v1, :cond_7

    const/4 v2, 0x1

    :cond_7
    :goto_6
    if-eqz v2, :cond_8

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/login/DeviceAuthDialog;->j2()V

    goto :goto_7

    .line 44
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/login/DeviceAuthDialog;->i2()V

    :goto_7
    return-void
.end method

.method public l2(Lcom/facebook/login/LoginClient$Request;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog;->S:Lcom/facebook/login/LoginClient$Request;

    .line 2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v0, p1, Lcom/facebook/login/LoginClient$Request;->s:Ljava/util/Set;

    const-string v1, ","

    .line 4
    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "scope"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p1, Lcom/facebook/login/LoginClient$Request;->x:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "redirect_uri"

    .line 6
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object p1, p1, Lcom/facebook/login/LoginClient$Request;->z:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v0, "target_user_id"

    .line 8
    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    sget-object v0, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 11
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 12
    sget-object v0, Lcom/facebook/FacebookSdk;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 15
    sget-object v0, Lcom/facebook/FacebookSdk;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "access_token"

    .line 17
    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "device_info"

    .line 19
    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance p1, Lcom/facebook/GraphRequest;

    const/4 v1, 0x0

    sget-object v4, Lcom/facebook/HttpMethod;->s:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/facebook/login/DeviceAuthDialog$1;

    invoke-direct {v5, p0}, Lcom/facebook/login/DeviceAuthDialog$1;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    const-string v2, "device/login"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 21
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->e()Lcom/facebook/GraphRequestAsyncTask;

    return-void

    .line 22
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No Client Token found, please set the Client Token."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No App ID found, please set the App ID."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lcom/shabakaty/downloader/ji1;

    move-result-object p2

    check-cast p2, Lcom/facebook/FacebookActivity;

    .line 3
    iget-object p2, p2, Lcom/facebook/FacebookActivity;->r:Landroidx/fragment/app/Fragment;

    .line 4
    check-cast p2, Lcom/facebook/login/LoginFragment;

    .line 5
    iget-object p2, p2, Lcom/facebook/login/LoginFragment;->s:Lcom/facebook/login/LoginClient;

    .line 6
    invoke-virtual {p2}, Lcom/facebook/login/LoginClient;->f()Lcom/facebook/login/LoginMethodHandler;

    move-result-object p2

    check-cast p2, Lcom/facebook/login/DeviceAuthMethodHandler;

    iput-object p2, p0, Lcom/facebook/login/DeviceAuthDialog;->K:Lcom/facebook/login/DeviceAuthMethodHandler;

    if-eqz p3, :cond_0

    const-string p2, "request_state"

    .line 7
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/facebook/login/DeviceAuthDialog$RequestState;

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p0, p2}, Lcom/facebook/login/DeviceAuthDialog;->k2(Lcom/facebook/login/DeviceAuthDialog$RequestState;)V

    :cond_0
    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/facebook/login/DeviceAuthDialog;->Q:Z

    .line 2
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->L:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    invoke-super {p0}, Lcom/shabakaty/downloader/ct0;->onDestroyView()V

    .line 4
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->M:Lcom/facebook/GraphRequestAsyncTask;

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->M:Lcom/facebook/GraphRequestAsyncTask;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->N:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->N:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/ct0;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    iget-boolean p1, p0, Lcom/facebook/login/DeviceAuthDialog;->Q:Z

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->g2()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/ct0;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->O:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->O:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    const-string v1, "request_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method
