.class public final Lcom/shabakaty/downloader/sw5;
.super Lcom/shabakaty/downloader/cr3$e;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# instance fields
.field public final synthetic t:Lcom/google/android/gms/cast/MediaInfo;

.field public final synthetic u:Z

.field public final synthetic v:J

.field public final synthetic w:[J

.field public final synthetic x:Lorg/json/JSONObject;

.field public final synthetic y:Lcom/shabakaty/downloader/cr3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/cr3;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/MediaInfo;ZJ[JLorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/sw5;->y:Lcom/shabakaty/downloader/cr3;

    iput-object p3, p0, Lcom/shabakaty/downloader/sw5;->t:Lcom/google/android/gms/cast/MediaInfo;

    iput-boolean p4, p0, Lcom/shabakaty/downloader/sw5;->u:Z

    iput-wide p5, p0, Lcom/shabakaty/downloader/sw5;->v:J

    iput-object p7, p0, Lcom/shabakaty/downloader/sw5;->w:[J

    iput-object p8, p0, Lcom/shabakaty/downloader/sw5;->x:Lorg/json/JSONObject;

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/cr3$e;-><init>(Lcom/shabakaty/downloader/cr3;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final q(Lcom/shabakaty/downloader/s57;)V
    .locals 21

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/shabakaty/downloader/sw5;->y:Lcom/shabakaty/downloader/cr3;

    .line 2
    iget-object v2, v0, Lcom/shabakaty/downloader/cr3;->a:Ljava/lang/Object;

    .line 3
    monitor-enter v2

    .line 4
    :try_start_0
    iget-object v0, v1, Lcom/shabakaty/downloader/sw5;->y:Lcom/shabakaty/downloader/cr3;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/cr3;->b:Lcom/shabakaty/downloader/oh5;

    .line 6
    iget-object v3, v1, Lcom/shabakaty/downloader/cr3$e;->q:Lcom/shabakaty/downloader/pj5;

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/4 v15, 0x0

    iget-object v5, v1, Lcom/shabakaty/downloader/sw5;->t:Lcom/google/android/gms/cast/MediaInfo;

    .line 7
    iget-boolean v4, v1, Lcom/shabakaty/downloader/sw5;->u:Z

    .line 8
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-wide v8, v1, Lcom/shabakaty/downloader/sw5;->v:J

    .line 9
    iget-object v12, v1, Lcom/shabakaty/downloader/sw5;->w:[J

    .line 10
    iget-object v13, v1, Lcom/shabakaty/downloader/sw5;->x:Lorg/json/JSONObject;

    .line 11
    new-instance v14, Lcom/shabakaty/downloader/gp2;

    const/4 v6, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    move-object v4, v14

    move-object/from16 v20, v14

    move-object v14, v15

    .line 12
    invoke-direct/range {v4 .. v19}, Lcom/shabakaty/downloader/gp2;-><init>(Lcom/google/android/gms/cast/MediaInfo;Lcom/shabakaty/downloader/rp2;Ljava/lang/Boolean;JD[JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v4, v20

    .line 13
    invoke-virtual {v0, v3, v4}, Lcom/shabakaty/downloader/oh5;->j(Lcom/shabakaty/downloader/pj5;Lcom/shabakaty/downloader/gp2;)J

    .line 14
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
