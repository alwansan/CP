.class public final Lcom/shabakaty/downloader/zh6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@19.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Ljava/lang/Object;

.field public final synthetic t:Ljava/lang/Object;

.field public final synthetic u:Ljava/lang/Object;

.field public final synthetic v:J

.field public final synthetic w:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/aq6;Landroid/os/Bundle;Lcom/shabakaty/downloader/jp6;Lcom/shabakaty/downloader/jp6;J)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/zh6;->r:I

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/zh6;->w:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/zh6;->s:Ljava/lang/Object;

    iput-object p3, p0, Lcom/shabakaty/downloader/zh6;->t:Ljava/lang/Object;

    iput-object p4, p0, Lcom/shabakaty/downloader/zh6;->u:Ljava/lang/Object;

    iput-wide p5, p0, Lcom/shabakaty/downloader/zh6;->v:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/di6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/zh6;->r:I

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/zh6;->w:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/zh6;->s:Ljava/lang/Object;

    iput-object p3, p0, Lcom/shabakaty/downloader/zh6;->t:Ljava/lang/Object;

    iput-object p4, p0, Lcom/shabakaty/downloader/zh6;->u:Ljava/lang/Object;

    iput-wide p5, p0, Lcom/shabakaty/downloader/zh6;->v:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/vn6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/zh6;->r:I

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/zh6;->w:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/zh6;->s:Ljava/lang/Object;

    iput-object p3, p0, Lcom/shabakaty/downloader/zh6;->t:Ljava/lang/Object;

    iput-object p4, p0, Lcom/shabakaty/downloader/zh6;->u:Ljava/lang/Object;

    iput-wide p5, p0, Lcom/shabakaty/downloader/zh6;->v:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Lcom/shabakaty/downloader/zh6;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/zh6;->w:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/vn6;

    iget-object v0, p0, Lcom/shabakaty/downloader/zh6;->s:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Lcom/shabakaty/downloader/zh6;->t:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/shabakaty/downloader/zh6;->u:Ljava/lang/Object;

    iget-wide v5, p0, Lcom/shabakaty/downloader/zh6;->v:J

    .line 2
    invoke-virtual/range {v1 .. v6}, Lcom/shabakaty/downloader/vn6;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    return-void

    .line 3
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/zh6;->s:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/zh6;->w:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/di6;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->y()Lcom/shabakaty/downloader/aq6;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/zh6;->t:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/aq6;->r(Ljava/lang/String;Lcom/shabakaty/downloader/jp6;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/zh6;->u:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/zh6;->w:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/di6;

    .line 9
    iget-object v0, v0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 10
    iget-object v0, v0, Lcom/shabakaty/downloader/uw6;->l:Lcom/google/android/gms/measurement/internal/d;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->y()Lcom/shabakaty/downloader/aq6;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/zh6;->t:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 12
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d56;->e()V

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lcom/shabakaty/downloader/aq6;->m:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 13
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_1
    iput-object v1, v0, Lcom/shabakaty/downloader/aq6;->m:Ljava/lang/String;

    .line 14
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 15
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/zh6;->w:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/aq6;

    iget-object v0, p0, Lcom/shabakaty/downloader/zh6;->s:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/shabakaty/downloader/zh6;->t:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/jp6;

    iget-object v2, p0, Lcom/shabakaty/downloader/zh6;->u:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Lcom/shabakaty/downloader/jp6;

    iget-wide v9, p0, Lcom/shabakaty/downloader/zh6;->v:J

    const-string v2, "screen_name"

    .line 16
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v2, "screen_class"

    .line 17
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, "screen_view"

    .line 19
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/f;->r0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object v7

    const/4 v6, 0x1

    move-object v2, v0

    move-object v3, v8

    move-wide v4, v9

    .line 20
    invoke-virtual/range {v1 .. v7}, Lcom/shabakaty/downloader/aq6;->j(Lcom/shabakaty/downloader/jp6;Lcom/shabakaty/downloader/jp6;JZLandroid/os/Bundle;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
