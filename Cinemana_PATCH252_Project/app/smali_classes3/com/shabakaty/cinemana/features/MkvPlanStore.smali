.class public final Lcom/shabakaty/cinemana/features/MkvPlanStore;
.super Ljava/lang/Object;
.source "MkvPlanStore.java"


# static fields
.field private static final PREFS:Ljava/lang/String; = "cnm_mkv_plan_v54"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static expectedSubtitleCount(Landroid/content/Context;Ljava/lang/Object;)I
    .locals 3

    const/4 v0, -0x1

    if-eqz p0, :cond_0

    instance-of v1, p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    invoke-static {p1}, Lcom/shabakaty/cinemana/features/DownloadIdentity;->contentToken(Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "cnm_mkv_plan_v54"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static record(Landroid/content/Context;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;I)V
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Fresh121;->begin(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->plan(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/shabakaty/cinemana/features/DownloadIdentity;->contentToken(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {p0, v0, p2}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->beginPlan(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method
