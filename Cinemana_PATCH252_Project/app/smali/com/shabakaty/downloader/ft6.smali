.class public final synthetic Lcom/shabakaty/downloader/ft6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@19.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/tt6;

.field public final synthetic s:I

.field public final synthetic t:Lcom/google/android/gms/measurement/internal/b;

.field public final synthetic u:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/tt6;ILcom/google/android/gms/measurement/internal/b;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ft6;->r:Lcom/shabakaty/downloader/tt6;

    iput p2, p0, Lcom/shabakaty/downloader/ft6;->s:I

    iput-object p3, p0, Lcom/shabakaty/downloader/ft6;->t:Lcom/google/android/gms/measurement/internal/b;

    iput-object p4, p0, Lcom/shabakaty/downloader/ft6;->u:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/shabakaty/downloader/ft6;->r:Lcom/shabakaty/downloader/tt6;

    iget v1, p0, Lcom/shabakaty/downloader/ft6;->s:I

    iget-object v2, p0, Lcom/shabakaty/downloader/ft6;->t:Lcom/google/android/gms/measurement/internal/b;

    iget-object v3, p0, Lcom/shabakaty/downloader/ft6;->u:Landroid/content/Intent;

    .line 1
    iget-object v4, v0, Lcom/shabakaty/downloader/tt6;->a:Landroid/content/Context;

    .line 2
    check-cast v4, Lcom/shabakaty/downloader/qt6;

    invoke-interface {v4, v1}, Lcom/shabakaty/downloader/qt6;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "Local AppMeasurementService processed last upload request. StartId"

    .line 5
    invoke-virtual {v2, v4, v1}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/tt6;->c()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 7
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    const-string v2, "Completed wakeful intent."

    .line 8
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/shabakaty/downloader/tt6;->a:Landroid/content/Context;

    .line 9
    check-cast v0, Lcom/shabakaty/downloader/qt6;

    invoke-interface {v0, v3}, Lcom/shabakaty/downloader/qt6;->b(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
