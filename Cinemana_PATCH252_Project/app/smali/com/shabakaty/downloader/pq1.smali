.class public Lcom/shabakaty/downloader/pq1;
.super Lcom/shabakaty/downloader/qq1;
.source "com.google.android.gms:play-services-base@@17.4.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/pq1$a;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/Object;

.field public static final d:Lcom/shabakaty/downloader/pq1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/pq1;->c:Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/pq1;

    invoke-direct {v0}, Lcom/shabakaty/downloader/pq1;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/pq1;->d:Lcom/shabakaty/downloader/pq1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/qq1;-><init>()V

    return-void
.end method

.method public static f(Landroid/content/Context;ILcom/shabakaty/downloader/oa5;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010309

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Theme.Dialog.Alert"

    .line 4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :cond_1
    if-nez v0, :cond_2

    .line 6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7
    :cond_2
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/bb5;->e(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p3, :cond_3

    .line 8
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 9
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    if-eq p1, v4, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const v1, 0x104000a

    .line 10
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_4
    const v1, 0x7f1200a9

    .line 11
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_5
    const v1, 0x7f1200b3

    .line 12
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_6
    const v1, 0x7f1200ac

    .line 13
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    :goto_0
    if-eqz p3, :cond_7

    .line 14
    invoke-virtual {v0, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 15
    :cond_7
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/bb5;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 16
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_8
    new-array p0, v4, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, p2

    const-string p1, "Creating dialog for Google Play services availability issue. ConnectionResult=%s"

    .line 18
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const-string p2, "GoogleApiAvailability"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static h(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 3

    .line 1
    instance-of v0, p0, Lcom/shabakaty/downloader/ji1;

    const/4 v1, 0x0

    const-string v2, "Cannot display null dialog"

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Lcom/shabakaty/downloader/ji1;

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ji1;->getSupportFragmentManager()Landroidx/fragment/app/q;

    move-result-object p0

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/uh4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/uh4;-><init>()V

    .line 5
    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 7
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 8
    iput-object p1, v0, Lcom/shabakaty/downloader/uh4;->H:Landroid/app/Dialog;

    if-eqz p3, :cond_0

    .line 9
    iput-object p3, v0, Lcom/shabakaty/downloader/uh4;->I:Landroid/content/DialogInterface$OnCancelListener;

    .line 10
    :cond_0
    invoke-virtual {v0, p0, p2}, Lcom/shabakaty/downloader/uh4;->c2(Landroidx/fragment/app/q;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 12
    new-instance v0, Lcom/shabakaty/downloader/v41;

    invoke-direct {v0}, Lcom/shabakaty/downloader/v41;-><init>()V

    .line 13
    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 15
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 16
    iput-object p1, v0, Lcom/shabakaty/downloader/v41;->r:Landroid/app/Dialog;

    if-eqz p3, :cond_2

    .line 17
    iput-object p3, v0, Lcom/shabakaty/downloader/v41;->s:Landroid/content/DialogInterface$OnCancelListener;

    .line 18
    :cond_2
    invoke-virtual {v0, p0, p2}, Lcom/shabakaty/downloader/v41;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/shabakaty/downloader/qq1;->b(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/content/Context;I)I
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/qq1;->c(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public d(Landroid/content/Context;)I
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    sget v0, Lcom/shabakaty/downloader/qq1;->a:I

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/pq1;->c(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public e(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    const-string v0, "d"

    .line 1
    invoke-super {p0, p1, p2, v0}, Lcom/shabakaty/downloader/qq1;->b(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/pb5;

    invoke-direct {v1, v0, p1, p3}, Lcom/shabakaty/downloader/pb5;-><init>(Landroid/content/Intent;Landroid/app/Activity;I)V

    .line 3
    invoke-static {p1, p2, v1, p4}, Lcom/shabakaty/downloader/pq1;->f(Landroid/content/Context;ILcom/shabakaty/downloader/oa5;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string p3, "GooglePlayServicesErrorDialog"

    .line 4
    invoke-static {p1, p2, p3, p4}, Lcom/shabakaty/downloader/pq1;->h(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final g(Landroid/content/Context;Lcom/shabakaty/downloader/cl4;)Lcom/shabakaty/downloader/ta5;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/ta5;

    invoke-direct {v1, p2}, Lcom/shabakaty/downloader/ta5;-><init>(Lcom/shabakaty/downloader/cl4;)V

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5
    iput-object p1, v1, Lcom/shabakaty/downloader/ta5;->a:Landroid/content/Context;

    const-string v0, "com.google.android.gms"

    .line 6
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/uq1;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    invoke-virtual {p2}, Lcom/shabakaty/downloader/cl4;->k()V

    .line 8
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ta5;->a()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v1
.end method

.method public final i(Landroid/content/Context;ILandroid/app/PendingIntent;)V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    const-string v0, "GMS core API Availability. ConnectionResult=%s, tag=%s"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const/4 v5, 0x0

    aput-object v5, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "GoogleApiAvailability"

    .line 2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    invoke-static {v2, v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x12

    if-ne p2, v0, :cond_0

    .line 3
    new-instance p2, Lcom/shabakaty/downloader/pq1$a;

    invoke-direct {p2, p0, p1}, Lcom/shabakaty/downloader/pq1$a;-><init>(Lcom/shabakaty/downloader/pq1;Landroid/content/Context;)V

    const-wide/32 v0, 0x1d4c0

    .line 4
    invoke-virtual {p2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    const/4 v0, 0x6

    if-nez p3, :cond_2

    if-ne p2, v0, :cond_1

    const-string p1, "GoogleApiAvailability"

    const-string p2, "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead."

    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    if-ne p2, v0, :cond_3

    const-string v2, "common_google_play_services_resolution_required_title"

    .line 6
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/bb5;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 7
    :cond_3
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/bb5;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const v6, 0x7f1200b0

    if-nez v2, :cond_4

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 9
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_4
    if-eq p2, v0, :cond_6

    const/16 v0, 0x13

    if-ne p2, v0, :cond_5

    goto :goto_1

    .line 10
    :cond_5
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/bb5;->e(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 11
    :cond_6
    :goto_1
    invoke-static {p1}, Lcom/shabakaty/downloader/bb5;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "common_google_play_services_resolution_required_text"

    .line 12
    invoke-static {p1, v7, v0}, Lcom/shabakaty/downloader/bb5;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "notification"

    .line 14
    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "null reference"

    .line 15
    invoke-static {v8, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    check-cast v8, Landroid/app/NotificationManager;

    .line 17
    new-instance v9, Lcom/shabakaty/downloader/m03;

    .line 18
    invoke-direct {v9, p1, v5}, Lcom/shabakaty/downloader/m03;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    iput-boolean v3, v9, Lcom/shabakaty/downloader/m03;->s:Z

    const/16 v5, 0x10

    .line 20
    invoke-virtual {v9, v5, v3}, Lcom/shabakaty/downloader/m03;->i(IZ)V

    .line 21
    invoke-virtual {v9, v2}, Lcom/shabakaty/downloader/m03;->g(Ljava/lang/CharSequence;)Lcom/shabakaty/downloader/m03;

    new-instance v2, Lcom/shabakaty/downloader/l03;

    invoke-direct {v2}, Lcom/shabakaty/downloader/l03;-><init>()V

    .line 22
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/l03;->k(Ljava/lang/CharSequence;)Lcom/shabakaty/downloader/l03;

    invoke-virtual {v9, v2}, Lcom/shabakaty/downloader/m03;->m(Lcom/shabakaty/downloader/r03;)Lcom/shabakaty/downloader/m03;

    .line 23
    invoke-static {p1}, Lcom/shabakaty/downloader/qs0;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 25
    iget-object v2, v9, Lcom/shabakaty/downloader/m03;->B:Landroid/app/Notification;

    iput v0, v2, Landroid/app/Notification;->icon:I

    .line 26
    iput v1, v9, Lcom/shabakaty/downloader/m03;->j:I

    .line 27
    invoke-static {p1}, Lcom/shabakaty/downloader/qs0;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f0800ca

    const v2, 0x7f1200b8

    .line 28
    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-virtual {v9, v0, v2, p3}, Lcom/shabakaty/downloader/m03;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lcom/shabakaty/downloader/m03;

    goto :goto_3

    .line 30
    :cond_7
    iput-object p3, v9, Lcom/shabakaty/downloader/m03;->g:Landroid/app/PendingIntent;

    goto :goto_3

    :cond_8
    const v2, 0x108008a

    .line 31
    iget-object v5, v9, Lcom/shabakaty/downloader/m03;->B:Landroid/app/Notification;

    iput v2, v5, Landroid/app/Notification;->icon:I

    .line 32
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/shabakaty/downloader/m03;->n(Ljava/lang/CharSequence;)Lcom/shabakaty/downloader/m03;

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 34
    iget-object v2, v9, Lcom/shabakaty/downloader/m03;->B:Landroid/app/Notification;

    iput-wide v5, v2, Landroid/app/Notification;->when:J

    .line 35
    iput-object p3, v9, Lcom/shabakaty/downloader/m03;->g:Landroid/app/PendingIntent;

    .line 36
    invoke-virtual {v9, v0}, Lcom/shabakaty/downloader/m03;->f(Ljava/lang/CharSequence;)Lcom/shabakaty/downloader/m03;

    .line 37
    :goto_3
    invoke-static {}, Lcom/shabakaty/downloader/uc3;->a()Z

    move-result p3

    if-eqz p3, :cond_b

    .line 38
    invoke-static {}, Lcom/shabakaty/downloader/uc3;->a()Z

    move-result p3

    invoke-static {p3}, Lcom/google/android/gms/common/internal/a;->k(Z)V

    .line 39
    sget-object p3, Lcom/shabakaty/downloader/pq1;->c:Ljava/lang/Object;

    monitor-enter p3

    .line 40
    :try_start_0
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p3, "com.google.android.gms.availability"

    .line 41
    invoke-virtual {v8, p3}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 42
    sget-object v2, Lcom/shabakaty/downloader/bb5;->a:Lcom/shabakaty/downloader/m64;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f1200af

    .line 44
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez v0, :cond_9

    .line 45
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v2, 0x4

    invoke-direct {v0, p3, p1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v8, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_4

    .line 46
    :cond_9
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 47
    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {v8, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 49
    :cond_a
    :goto_4
    iput-object p3, v9, Lcom/shabakaty/downloader/m03;->x:Ljava/lang/String;

    goto :goto_5

    :catchall_0
    move-exception p1

    .line 50
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 51
    :cond_b
    :goto_5
    invoke-virtual {v9}, Lcom/shabakaty/downloader/m03;->c()Landroid/app/Notification;

    move-result-object p1

    if-eq p2, v3, :cond_c

    if-eq p2, v1, :cond_c

    const/4 p3, 0x3

    if-eq p2, p3, :cond_c

    const p2, 0x9b6d

    goto :goto_6

    :cond_c
    const/16 p2, 0x28c4

    .line 52
    sget-object p3, Lcom/shabakaty/downloader/uq1;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 53
    :goto_6
    invoke-virtual {v8, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public final j(Landroid/app/Activity;Lcom/shabakaty/downloader/nh2;ILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Lcom/shabakaty/downloader/nh2;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    const-string v0, "d"

    .line 1
    invoke-super {p0, p1, p3, v0}, Lcom/shabakaty/downloader/qq1;->b(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/pb5;

    invoke-direct {v1, v0, p2}, Lcom/shabakaty/downloader/pb5;-><init>(Landroid/content/Intent;Lcom/shabakaty/downloader/nh2;)V

    .line 3
    invoke-static {p1, p3, v1, p4}, Lcom/shabakaty/downloader/pq1;->f(Landroid/content/Context;ILcom/shabakaty/downloader/oa5;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string p3, "GooglePlayServicesErrorDialog"

    .line 4
    invoke-static {p1, p2, p3, p4}, Lcom/shabakaty/downloader/pq1;->h(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 p1, 0x1

    return p1
.end method
