.class public Lcom/shabakaty/downloader/sq1$a$b;
.super Ljava/lang/Object;
.source "GooglePlayServicesUpgradePrompt.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/sq1$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/sq1$a;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shabakaty/downloader/sq1$a$b;->r:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/sq1$a$b;->r:Landroid/app/Activity;

    .line 2
    :try_start_0
    sget-object p2, Lcom/shabakaty/downloader/pq1;->c:Ljava/lang/Object;

    sget-object p2, Lcom/shabakaty/downloader/pq1;->d:Lcom/shabakaty/downloader/pq1;

    .line 3
    sget-object v0, Lcom/onesignal/q0;->b:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/pq1;->d(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x2328

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p2, p1, v0, v2}, Lcom/shabakaty/downloader/pq1;->b(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x8000000

    .line 5
    invoke-static {p1, v1, p2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method
