.class public final Lcom/shabakaty/downloader/hq6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ma7;

.field public final synthetic s:Z

.field public final synthetic t:Lcom/shabakaty/downloader/qy6;

.field public final synthetic u:Lcom/shabakaty/downloader/zs6;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zs6;Lcom/shabakaty/downloader/ma7;ZLcom/shabakaty/downloader/qy6;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/hq6;->u:Lcom/shabakaty/downloader/zs6;

    iput-object p2, p0, Lcom/shabakaty/downloader/hq6;->r:Lcom/shabakaty/downloader/ma7;

    iput-boolean p3, p0, Lcom/shabakaty/downloader/hq6;->s:Z

    iput-object p4, p0, Lcom/shabakaty/downloader/hq6;->t:Lcom/shabakaty/downloader/qy6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/hq6;->u:Lcom/shabakaty/downloader/zs6;

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/zs6;->d:Lcom/shabakaty/downloader/o46;

    if-nez v1, :cond_0

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v1, "Discarding data. Failed to set user property"

    .line 5
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/hq6;->r:Lcom/shabakaty/downloader/ma7;

    const-string v2, "null reference"

    .line 6
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/hq6;->u:Lcom/shabakaty/downloader/zs6;

    iget-boolean v2, p0, Lcom/shabakaty/downloader/hq6;->s:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/shabakaty/downloader/hq6;->t:Lcom/shabakaty/downloader/qy6;

    .line 9
    :goto_0
    iget-object v3, p0, Lcom/shabakaty/downloader/hq6;->r:Lcom/shabakaty/downloader/ma7;

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/zs6;->i(Lcom/shabakaty/downloader/o46;Lcom/shabakaty/downloader/x0;Lcom/shabakaty/downloader/ma7;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/hq6;->u:Lcom/shabakaty/downloader/zs6;

    .line 11
    invoke-virtual {v0}, Lcom/shabakaty/downloader/zs6;->s()V

    return-void
.end method
