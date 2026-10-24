.class public final Lcom/shabakaty/downloader/gc5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final r:Lcom/shabakaty/downloader/ic5;

.field public final synthetic s:Lcom/shabakaty/downloader/dc5;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/dc5;Lcom/shabakaty/downloader/ic5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/gc5;->s:Lcom/shabakaty/downloader/dc5;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/gc5;->r:Lcom/shabakaty/downloader/ic5;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gc5;->s:Lcom/shabakaty/downloader/dc5;

    iget-boolean v0, v0, Lcom/shabakaty/downloader/dc5;->s:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/gc5;->r:Lcom/shabakaty/downloader/ic5;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/ic5;->b:Lcom/shabakaty/downloader/gb0;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/gb0;->W0()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/gc5;->s:Lcom/shabakaty/downloader/dc5;

    iget-object v4, v1, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->r:Lcom/shabakaty/downloader/nh2;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->b()Landroid/app/Activity;

    move-result-object v1

    .line 7
    iget-object v0, v0, Lcom/shabakaty/downloader/gb0;->t:Landroid/app/PendingIntent;

    const-string v5, "null reference"

    .line 8
    invoke-static {v0, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iget-object v5, p0, Lcom/shabakaty/downloader/gc5;->r:Lcom/shabakaty/downloader/ic5;

    .line 10
    iget v5, v5, Lcom/shabakaty/downloader/ic5;->a:I

    .line 11
    sget v6, Lcom/google/android/gms/common/api/GoogleApiActivity;->s:I

    .line 12
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/google/android/gms/common/api/GoogleApiActivity;

    invoke-direct {v6, v1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "pending_intent"

    .line 13
    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "failing_client_id"

    .line 14
    invoke-virtual {v6, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "notify_manager"

    .line 15
    invoke-virtual {v6, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 16
    invoke-interface {v4, v6, v2}, Lcom/shabakaty/downloader/nh2;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/gc5;->s:Lcom/shabakaty/downloader/dc5;

    iget-object v4, v1, Lcom/shabakaty/downloader/dc5;->v:Lcom/shabakaty/downloader/pq1;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->b()Landroid/app/Activity;

    move-result-object v1

    .line 19
    iget v5, v0, Lcom/shabakaty/downloader/gb0;->s:I

    const/4 v6, 0x0

    .line 20
    invoke-virtual {v4, v1, v5, v6}, Lcom/shabakaty/downloader/pq1;->b(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 21
    iget-object v1, p0, Lcom/shabakaty/downloader/gc5;->s:Lcom/shabakaty/downloader/dc5;

    iget-object v2, v1, Lcom/shabakaty/downloader/dc5;->v:Lcom/shabakaty/downloader/pq1;

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->b()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/shabakaty/downloader/gc5;->s:Lcom/shabakaty/downloader/dc5;

    iget-object v4, v3, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->r:Lcom/shabakaty/downloader/nh2;

    .line 23
    iget v0, v0, Lcom/shabakaty/downloader/gb0;->s:I

    .line 24
    invoke-virtual {v2, v1, v4, v0, v3}, Lcom/shabakaty/downloader/pq1;->j(Landroid/app/Activity;Lcom/shabakaty/downloader/nh2;ILandroid/content/DialogInterface$OnCancelListener;)Z

    return-void

    .line 25
    :cond_2
    iget v1, v0, Lcom/shabakaty/downloader/gb0;->s:I

    const/16 v4, 0x12

    if-ne v1, v4, :cond_3

    .line 26
    iget-object v0, p0, Lcom/shabakaty/downloader/gc5;->s:Lcom/shabakaty/downloader/dc5;

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/gc5;->s:Lcom/shabakaty/downloader/dc5;

    .line 28
    new-instance v5, Landroid/widget/ProgressBar;

    const v7, 0x101007a

    invoke-direct {v5, v0, v6, v7}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-virtual {v5, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 30
    invoke-virtual {v5, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 31
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 33
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/bb5;->e(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v3, ""

    .line 35
    invoke-virtual {v2, v3, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 36
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    const-string v3, "GooglePlayServicesUpdatingDialog"

    .line 37
    invoke-static {v0, v2, v3, v1}, Lcom/shabakaty/downloader/pq1;->h(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 38
    iget-object v0, p0, Lcom/shabakaty/downloader/gc5;->s:Lcom/shabakaty/downloader/dc5;

    iget-object v1, v0, Lcom/shabakaty/downloader/dc5;->v:Lcom/shabakaty/downloader/pq1;

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Lcom/shabakaty/downloader/kc5;

    invoke-direct {v3, p0, v2}, Lcom/shabakaty/downloader/kc5;-><init>(Lcom/shabakaty/downloader/gc5;Landroid/app/Dialog;)V

    .line 40
    invoke-virtual {v1, v0, v3}, Lcom/shabakaty/downloader/pq1;->g(Landroid/content/Context;Lcom/shabakaty/downloader/cl4;)Lcom/shabakaty/downloader/ta5;

    return-void

    .line 41
    :cond_3
    iget-object v1, p0, Lcom/shabakaty/downloader/gc5;->s:Lcom/shabakaty/downloader/dc5;

    iget-object v2, p0, Lcom/shabakaty/downloader/gc5;->r:Lcom/shabakaty/downloader/ic5;

    .line 42
    iget v2, v2, Lcom/shabakaty/downloader/ic5;->a:I

    .line 43
    invoke-virtual {v1, v0, v2}, Lcom/shabakaty/downloader/dc5;->k(Lcom/shabakaty/downloader/gb0;I)V

    return-void
.end method
