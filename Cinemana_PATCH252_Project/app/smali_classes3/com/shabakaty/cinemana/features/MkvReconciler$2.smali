.class final Lcom/shabakaty/cinemana/features/MkvReconciler$2;
.super Landroid/os/FileObserver;
.source "MkvReconciler.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x88

    invoke-direct {p0, p1, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    # Observe the temporary download suffix as well as the final MP4 name.
    const-string v0, ".mp4.temp"
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :watch_final_mp4
    invoke-static {p2}, Lcom/shabakaty/cinemana/features/MkvReconciler;->reconcileToken(Ljava/lang/String;)V
    goto :cond_1

    :watch_final_mp4
    # Only finalized MP4s and .mp4.temp transitions trigger disk reconciliation.
    const-string v0, ".mp4"
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :cond_1
    invoke-static {p2}, Lcom/shabakaty/cinemana/features/MkvReconciler;->reconcileToken(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
