.class public Lcom/shabakaty/downloader/sp2;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/sp2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public r:Lcom/google/android/gms/cast/MediaInfo;

.field public s:I

.field public t:Z

.field public u:D

.field public v:D

.field public w:D

.field public x:[J

.field public y:Ljava/lang/String;

.field public z:Lorg/json/JSONObject;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/as5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/as5;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/sp2;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/cast/MediaInfo;IZDDD[JLjava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 2
    iput-wide v0, p0, Lcom/shabakaty/downloader/sp2;->u:D

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/sp2;->r:Lcom/google/android/gms/cast/MediaInfo;

    .line 4
    iput p2, p0, Lcom/shabakaty/downloader/sp2;->s:I

    .line 5
    iput-boolean p3, p0, Lcom/shabakaty/downloader/sp2;->t:Z

    .line 6
    iput-wide p4, p0, Lcom/shabakaty/downloader/sp2;->u:D

    .line 7
    iput-wide p6, p0, Lcom/shabakaty/downloader/sp2;->v:D

    .line 8
    iput-wide p8, p0, Lcom/shabakaty/downloader/sp2;->w:D

    .line 9
    iput-object p10, p0, Lcom/shabakaty/downloader/sp2;->x:[J

    .line 10
    iput-object p11, p0, Lcom/shabakaty/downloader/sp2;->y:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz p11, :cond_0

    .line 11
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    iget-object p3, p0, Lcom/shabakaty/downloader/sp2;->y:Ljava/lang/String;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/sp2;->z:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 12
    :catch_0
    iput-object p1, p0, Lcom/shabakaty/downloader/sp2;->z:Lorg/json/JSONObject;

    .line 13
    iput-object p1, p0, Lcom/shabakaty/downloader/sp2;->y:Ljava/lang/String;

    return-void

    .line 14
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/sp2;->z:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 12

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    .line 15
    invoke-direct/range {v0 .. v11}, Lcom/shabakaty/downloader/sp2;-><init>(Lcom/google/android/gms/cast/MediaInfo;IZDDD[JLjava/lang/String;)V

    .line 16
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/sp2;->W0(Lorg/json/JSONObject;)Z

    return-void
.end method


# virtual methods
.method public W0(Lorg/json/JSONObject;)Z
    .locals 11

    const-string v0, "media"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/sp2;->r:Lcom/google/android/gms/cast/MediaInfo;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "itemId"

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 5
    iget v4, p0, Lcom/shabakaty/downloader/sp2;->s:I

    if-eq v4, v1, :cond_1

    .line 6
    iput v1, p0, Lcom/shabakaty/downloader/sp2;->s:I

    const/4 v0, 0x1

    :cond_1
    const-string v1, "autoplay"

    .line 7
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 9
    iget-boolean v4, p0, Lcom/shabakaty/downloader/sp2;->t:Z

    if-eq v4, v1, :cond_2

    .line 10
    iput-boolean v1, p0, Lcom/shabakaty/downloader/sp2;->t:Z

    const/4 v0, 0x1

    :cond_2
    const-string v1, "startTime"

    .line 11
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 12
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    iget-wide v6, p0, Lcom/shabakaty/downloader/sp2;->u:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    const-wide v7, 0x3e7ad7f29abcaf48L    # 1.0E-7

    if-eq v1, v6, :cond_3

    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    .line 13
    :cond_3
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_4

    iget-wide v9, p0, Lcom/shabakaty/downloader/sp2;->u:D

    sub-double v9, v4, v9

    .line 14
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpl-double v1, v9, v7

    if-lez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    .line 15
    iput-wide v4, p0, Lcom/shabakaty/downloader/sp2;->u:D

    const/4 v0, 0x1

    :cond_5
    const-string v1, "playbackDuration"

    .line 16
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 17
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 18
    iget-wide v9, p0, Lcom/shabakaty/downloader/sp2;->v:D

    sub-double v9, v4, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpl-double v1, v9, v7

    if-lez v1, :cond_6

    .line 19
    iput-wide v4, p0, Lcom/shabakaty/downloader/sp2;->v:D

    const/4 v0, 0x1

    :cond_6
    const-string v1, "preloadTime"

    .line 20
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 21
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 22
    iget-wide v9, p0, Lcom/shabakaty/downloader/sp2;->w:D

    sub-double v9, v4, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpl-double v1, v9, v7

    if-lez v1, :cond_7

    .line 23
    iput-wide v4, p0, Lcom/shabakaty/downloader/sp2;->w:D

    const/4 v0, 0x1

    :cond_7
    const/4 v1, 0x0

    const-string v4, "activeTrackIds"

    .line 24
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 25
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 27
    new-array v5, v4, [J

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v4, :cond_8

    .line 28
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v7

    aput-wide v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 29
    :cond_8
    iget-object v1, p0, Lcom/shabakaty/downloader/sp2;->x:[J

    if-nez v1, :cond_9

    :goto_4
    move-object v1, v5

    const/4 v2, 0x1

    goto :goto_6

    .line 30
    :cond_9
    array-length v1, v1

    if-eq v1, v4, :cond_a

    goto :goto_4

    :cond_a
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v4, :cond_c

    .line 31
    iget-object v6, p0, Lcom/shabakaty/downloader/sp2;->x:[J

    aget-wide v7, v6, v1

    aget-wide v9, v5, v1

    cmp-long v6, v7, v9

    if-eqz v6, :cond_b

    goto :goto_4

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_c
    move-object v1, v5

    :cond_d
    :goto_6
    if-eqz v2, :cond_e

    .line 32
    iput-object v1, p0, Lcom/shabakaty/downloader/sp2;->x:[J

    const/4 v0, 0x1

    :cond_e
    const-string v1, "customData"

    .line 33
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 34
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/sp2;->z:Lorg/json/JSONObject;

    goto :goto_7

    :cond_f
    move v3, v0

    :goto_7
    return v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/sp2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/sp2;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/sp2;->z:Lorg/json/JSONObject;

    if-nez v1, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p1, Lcom/shabakaty/downloader/sp2;->z:Lorg/json/JSONObject;

    if-nez v4, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-eq v3, v5, :cond_4

    return v2

    :cond_4
    if-eqz v1, :cond_5

    if-eqz v4, :cond_5

    .line 4
    invoke-static {v1, v4}, Lcom/shabakaty/downloader/na2;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 5
    :cond_5
    iget-object v1, p0, Lcom/shabakaty/downloader/sp2;->r:Lcom/google/android/gms/cast/MediaInfo;

    iget-object v3, p1, Lcom/shabakaty/downloader/sp2;->r:Lcom/google/android/gms/cast/MediaInfo;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/shabakaty/downloader/sp2;->s:I

    iget v3, p1, Lcom/shabakaty/downloader/sp2;->s:I

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Lcom/shabakaty/downloader/sp2;->t:Z

    iget-boolean v3, p1, Lcom/shabakaty/downloader/sp2;->t:Z

    if-ne v1, v3, :cond_8

    iget-wide v3, p0, Lcom/shabakaty/downloader/sp2;->u:D

    .line 6
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-wide v3, p1, Lcom/shabakaty/downloader/sp2;->u:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    iget-wide v3, p0, Lcom/shabakaty/downloader/sp2;->u:D

    iget-wide v5, p1, Lcom/shabakaty/downloader/sp2;->u:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_8

    :cond_7
    iget-wide v3, p0, Lcom/shabakaty/downloader/sp2;->v:D

    iget-wide v5, p1, Lcom/shabakaty/downloader/sp2;->v:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_8

    iget-wide v3, p0, Lcom/shabakaty/downloader/sp2;->w:D

    iget-wide v5, p1, Lcom/shabakaty/downloader/sp2;->w:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/shabakaty/downloader/sp2;->x:[J

    iget-object p1, p1, Lcom/shabakaty/downloader/sp2;->x:[J

    .line 7
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p1

    if-eqz p1, :cond_8

    return v0

    :cond_8
    return v2
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/shabakaty/downloader/sp2;->r:Lcom/google/android/gms/cast/MediaInfo;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/shabakaty/downloader/sp2;->s:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/shabakaty/downloader/sp2;->t:Z

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/shabakaty/downloader/sp2;->u:D

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/shabakaty/downloader/sp2;->v:D

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/shabakaty/downloader/sp2;->w:D

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/sp2;->x:[J

    .line 7
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/sp2;->z:Lorg/json/JSONObject;

    .line 8
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 9
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public o1()Lorg/json/JSONObject;
    .locals 7

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/sp2;->r:Lcom/google/android/gms/cast/MediaInfo;

    if-eqz v1, :cond_0

    const-string v2, "media"

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaInfo;->W0()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    :cond_0
    iget v1, p0, Lcom/shabakaty/downloader/sp2;->s:I

    if-eqz v1, :cond_1

    const-string v2, "itemId"

    .line 5
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    const-string v1, "autoplay"

    .line 6
    iget-boolean v2, p0, Lcom/shabakaty/downloader/sp2;->t:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 7
    iget-wide v1, p0, Lcom/shabakaty/downloader/sp2;->u:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "startTime"

    .line 8
    iget-wide v2, p0, Lcom/shabakaty/downloader/sp2;->u:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 9
    :cond_2
    iget-wide v1, p0, Lcom/shabakaty/downloader/sp2;->v:D

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_3

    const-string v3, "playbackDuration"

    .line 10
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_3
    const-string v1, "preloadTime"

    .line 11
    iget-wide v2, p0, Lcom/shabakaty/downloader/sp2;->w:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 12
    iget-object v1, p0, Lcom/shabakaty/downloader/sp2;->x:[J

    if-eqz v1, :cond_5

    .line 13
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 14
    iget-object v2, p0, Lcom/shabakaty/downloader/sp2;->x:[J

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-wide v5, v2, v4

    .line 15
    invoke-virtual {v1, v5, v6}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const-string v2, "activeTrackIds"

    .line 16
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    :cond_5
    iget-object v1, p0, Lcom/shabakaty/downloader/sp2;->z:Lorg/json/JSONObject;

    if-eqz v1, :cond_6

    const-string v2, "customData"

    .line 18
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sp2;->z:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/shabakaty/downloader/sp2;->y:Ljava/lang/String;

    const/16 v0, 0x4f45

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->n(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x2

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/sp2;->r:Lcom/google/android/gms/cast/MediaInfo;

    const/4 v3, 0x0

    .line 4
    invoke-static {p1, v1, v2, p2, v3}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x3

    .line 5
    iget v1, p0, Lcom/shabakaty/downloader/sp2;->s:I

    const/4 v2, 0x4

    .line 6
    invoke-static {p1, p2, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-boolean p2, p0, Lcom/shabakaty/downloader/sp2;->t:Z

    .line 9
    invoke-static {p1, v2, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x5

    .line 11
    iget-wide v1, p0, Lcom/shabakaty/downloader/sp2;->u:D

    const/16 v4, 0x8

    .line 12
    invoke-static {p1, p2, v4}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 13
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    const/4 p2, 0x6

    .line 14
    iget-wide v1, p0, Lcom/shabakaty/downloader/sp2;->v:D

    .line 15
    invoke-static {p1, p2, v4}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 16
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    const/4 p2, 0x7

    .line 17
    iget-wide v1, p0, Lcom/shabakaty/downloader/sp2;->w:D

    .line 18
    invoke-static {p1, p2, v4}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 19
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 20
    iget-object p2, p0, Lcom/shabakaty/downloader/sp2;->x:[J

    .line 21
    invoke-static {p1, v4, p2, v3}, Lcom/shabakaty/downloader/vw3;->g(Landroid/os/Parcel;I[JZ)V

    const/16 p2, 0x9

    .line 22
    iget-object v1, p0, Lcom/shabakaty/downloader/sp2;->y:Ljava/lang/String;

    invoke-static {p1, p2, v1, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 23
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
