.class public Lcom/google/android/gms/cast/MediaInfo;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-cast@@19.0.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/MediaInfo$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/MediaInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/h4;",
            ">;"
        }
    .end annotation
.end field

.field public B:Ljava/lang/String;

.field public C:Lcom/shabakaty/downloader/zz4;

.field public D:J

.field public E:Ljava/lang/String;

.field public F:Ljava/lang/String;

.field public G:Lorg/json/JSONObject;

.field public final H:Lcom/google/android/gms/cast/MediaInfo$a;

.field public r:Ljava/lang/String;

.field public s:I

.field public t:Ljava/lang/String;

.field public u:Lcom/shabakaty/downloader/ip2;

.field public v:J

.field public w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaTrack;",
            ">;"
        }
    .end annotation
.end field

.field public x:Lcom/shabakaty/downloader/dm4;

.field public y:Ljava/lang/String;

.field public z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/i4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/np5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/np5;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/MediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/shabakaty/downloader/ip2;JLjava/util/List;Lcom/shabakaty/downloader/dm4;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/shabakaty/downloader/zz4;JLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ip2;",
            "J",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaTrack;",
            ">;",
            "Lcom/shabakaty/downloader/dm4;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/i4;",
            ">;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/h4;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/zz4;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p9

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    .line 2
    new-instance v2, Lcom/google/android/gms/cast/MediaInfo$a;

    invoke-direct {v2, p0}, Lcom/google/android/gms/cast/MediaInfo$a;-><init>(Lcom/google/android/gms/cast/MediaInfo;)V

    iput-object v2, v0, Lcom/google/android/gms/cast/MediaInfo;->H:Lcom/google/android/gms/cast/MediaInfo$a;

    move-object v2, p1

    .line 3
    iput-object v2, v0, Lcom/google/android/gms/cast/MediaInfo;->r:Ljava/lang/String;

    move v2, p2

    .line 4
    iput v2, v0, Lcom/google/android/gms/cast/MediaInfo;->s:I

    move-object v2, p3

    .line 5
    iput-object v2, v0, Lcom/google/android/gms/cast/MediaInfo;->t:Ljava/lang/String;

    move-object v2, p4

    .line 6
    iput-object v2, v0, Lcom/google/android/gms/cast/MediaInfo;->u:Lcom/shabakaty/downloader/ip2;

    move-wide v2, p5

    .line 7
    iput-wide v2, v0, Lcom/google/android/gms/cast/MediaInfo;->v:J

    move-object v2, p7

    .line 8
    iput-object v2, v0, Lcom/google/android/gms/cast/MediaInfo;->w:Ljava/util/List;

    move-object v2, p8

    .line 9
    iput-object v2, v0, Lcom/google/android/gms/cast/MediaInfo;->x:Lcom/shabakaty/downloader/dm4;

    .line 10
    iput-object v1, v0, Lcom/google/android/gms/cast/MediaInfo;->y:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 11
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, v0, Lcom/google/android/gms/cast/MediaInfo;->y:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/cast/MediaInfo;->G:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 12
    :catch_0
    iput-object v2, v0, Lcom/google/android/gms/cast/MediaInfo;->G:Lorg/json/JSONObject;

    .line 13
    iput-object v2, v0, Lcom/google/android/gms/cast/MediaInfo;->y:Ljava/lang/String;

    goto :goto_0

    .line 14
    :cond_0
    iput-object v2, v0, Lcom/google/android/gms/cast/MediaInfo;->G:Lorg/json/JSONObject;

    :goto_0
    move-object v1, p10

    .line 15
    iput-object v1, v0, Lcom/google/android/gms/cast/MediaInfo;->z:Ljava/util/List;

    move-object v1, p11

    .line 16
    iput-object v1, v0, Lcom/google/android/gms/cast/MediaInfo;->A:Ljava/util/List;

    move-object/from16 v1, p12

    .line 17
    iput-object v1, v0, Lcom/google/android/gms/cast/MediaInfo;->B:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 18
    iput-object v1, v0, Lcom/google/android/gms/cast/MediaInfo;->C:Lcom/shabakaty/downloader/zz4;

    move-wide/from16 v1, p14

    .line 19
    iput-wide v1, v0, Lcom/google/android/gms/cast/MediaInfo;->D:J

    move-object/from16 v1, p16

    .line 20
    iput-object v1, v0, Lcom/google/android/gms/cast/MediaInfo;->E:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 21
    iput-object v1, v0, Lcom/google/android/gms/cast/MediaInfo;->F:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 29

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v0, p0

    const-string v1, "contentId"

    .line 22
    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v16, -0x1

    move-wide/from16 v14, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 23
    invoke-direct/range {v0 .. v17}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/shabakaty/downloader/ip2;JLjava/util/List;Lcom/shabakaty/downloader/dm4;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/shabakaty/downloader/zz4;JLjava/lang/String;Ljava/lang/String;)V

    const-string v0, "streamType"

    const-string v1, "NONE"

    move-object/from16 v2, p1

    .line 24
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_0

    move-object/from16 v3, p0

    .line 26
    iput v6, v3, Lcom/google/android/gms/cast/MediaInfo;->s:I

    goto :goto_0

    :cond_0
    move-object/from16 v3, p0

    const-string v8, "BUFFERED"

    .line 27
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 28
    iput v7, v3, Lcom/google/android/gms/cast/MediaInfo;->s:I

    goto :goto_0

    :cond_1
    const-string v8, "LIVE"

    .line 29
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    iput v5, v3, Lcom/google/android/gms/cast/MediaInfo;->s:I

    goto :goto_0

    .line 31
    :cond_2
    iput v4, v3, Lcom/google/android/gms/cast/MediaInfo;->s:I

    :goto_0
    const-string v0, "contentType"

    const/4 v8, 0x0

    .line 32
    invoke-virtual {v2, v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/cast/MediaInfo;->t:Ljava/lang/String;

    const-string v0, "metadata"

    .line 33
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 34
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v9, "metadataType"

    .line 35
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 36
    new-instance v10, Lcom/shabakaty/downloader/ip2;

    invoke-direct {v10, v9}, Lcom/shabakaty/downloader/ip2;-><init>(I)V

    iput-object v10, v3, Lcom/google/android/gms/cast/MediaInfo;->u:Lcom/shabakaty/downloader/ip2;

    .line 37
    invoke-virtual {v10, v0}, Lcom/shabakaty/downloader/ip2;->W0(Lorg/json/JSONObject;)V

    :cond_3
    const-wide/16 v9, -0x1

    .line 38
    iput-wide v9, v3, Lcom/google/android/gms/cast/MediaInfo;->v:J

    const-string v0, "duration"

    .line 39
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    const-wide/16 v10, 0x0

    if-eqz v9, :cond_4

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 40
    invoke-virtual {v2, v0, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    .line 41
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v12, v13}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_4

    .line 42
    invoke-static {v12, v13}, Lcom/shabakaty/downloader/yw;->c(D)J

    move-result-wide v12

    iput-wide v12, v3, Lcom/google/android/gms/cast/MediaInfo;->v:J

    :cond_4
    const-string v0, "tracks"

    .line 43
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    const-string v13, "customData"

    const/4 v15, 0x4

    if-eqz v9, :cond_15

    .line 44
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v3, Lcom/google/android/gms/cast/MediaInfo;->w:Ljava/util/List;

    .line 45
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v9, 0x0

    .line 46
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v9, v4, :cond_16

    .line 47
    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v10, "trackId"

    .line 48
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v19

    const-string v10, "type"

    .line 49
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "TEXT"

    .line 50
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/16 v21, 0x1

    goto :goto_2

    :cond_5
    const-string v11, "AUDIO"

    .line 51
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/16 v21, 0x2

    goto :goto_2

    :cond_6
    const-string v11, "VIDEO"

    .line 52
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v21, 0x3

    goto :goto_2

    :cond_7
    const/16 v21, 0x0

    :goto_2
    const-string v10, "trackContentId"

    .line 53
    invoke-virtual {v4, v10, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v10, "trackContentType"

    .line 54
    invoke-virtual {v4, v10, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v10, "name"

    .line 55
    invoke-virtual {v4, v10, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v10, "language"

    .line 56
    invoke-virtual {v4, v10, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v10, "subtype"

    .line 57
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 58
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "SUBTITLES"

    .line 59
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/16 v26, 0x1

    goto :goto_3

    :cond_8
    const-string v11, "CAPTIONS"

    .line 60
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/16 v26, 0x2

    goto :goto_3

    :cond_9
    const-string v11, "DESCRIPTIONS"

    .line 61
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/16 v26, 0x3

    goto :goto_3

    :cond_a
    const-string v11, "CHAPTERS"

    .line 62
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    const/16 v26, 0x4

    goto :goto_3

    :cond_b
    const-string v11, "METADATA"

    .line 63
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    const/16 v26, 0x5

    goto :goto_3

    :cond_c
    const/16 v26, -0x1

    goto :goto_3

    :cond_d
    const/16 v26, 0x0

    :goto_3
    const-string v10, "roles"

    .line 64
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 65
    sget-object v11, Lcom/shabakaty/downloader/k96;->s:Lcom/shabakaty/downloader/rc6;

    const-string v11, "initialCapacity"

    .line 66
    invoke-static {v15, v11}, Lcom/shabakaty/downloader/fl3;->r(ILjava/lang/String;)I

    new-array v11, v15, [Ljava/lang/Object;

    .line 67
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v15, 0x0

    .line 68
    :goto_4
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v12, v14, :cond_12

    .line 69
    invoke-virtual {v10, v12}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v14

    .line 70
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v15, 0x1

    .line 71
    array-length v6, v11

    if-ge v6, v5, :cond_11

    .line 72
    array-length v6, v11

    if-ltz v5, :cond_10

    shr-int/lit8 v18, v6, 0x1

    add-int v6, v6, v18

    add-int/2addr v6, v7

    if-ge v6, v5, :cond_e

    add-int/lit8 v6, v5, -0x1

    .line 73
    invoke-static {v6}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v6

    shl-int/2addr v6, v7

    :cond_e
    if-gez v6, :cond_f

    const v6, 0x7fffffff

    .line 74
    :cond_f
    invoke-static {v11, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    goto :goto_5

    .line 75
    :cond_10
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "cannot store more than MAX_VALUE elements"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 76
    :cond_11
    :goto_5
    aput-object v14, v11, v15

    add-int/lit8 v12, v12, 0x1

    move v15, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    goto :goto_4

    :cond_12
    if-nez v15, :cond_13

    .line 77
    sget-object v5, Lcom/shabakaty/downloader/db6;->v:Lcom/shabakaty/downloader/k96;

    goto :goto_6

    .line 78
    :cond_13
    new-instance v5, Lcom/shabakaty/downloader/db6;

    invoke-direct {v5, v11, v15}, Lcom/shabakaty/downloader/db6;-><init>([Ljava/lang/Object;I)V

    :goto_6
    move-object/from16 v27, v5

    goto :goto_7

    :cond_14
    move-object/from16 v27, v8

    .line 79
    :goto_7
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v28

    .line 80
    new-instance v4, Lcom/google/android/gms/cast/MediaTrack;

    move-object/from16 v18, v4

    invoke-direct/range {v18 .. v28}, Lcom/google/android/gms/cast/MediaTrack;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lorg/json/JSONObject;)V

    .line 81
    iget-object v5, v3, Lcom/google/android/gms/cast/MediaInfo;->w:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v10, 0x0

    const/4 v15, 0x4

    goto/16 :goto_1

    .line 82
    :cond_15
    iput-object v8, v3, Lcom/google/android/gms/cast/MediaInfo;->w:Ljava/util/List;

    :cond_16
    const-string v0, "textTrackStyle"

    .line 83
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 84
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 85
    new-instance v4, Lcom/shabakaty/downloader/dm4;

    invoke-direct {v4}, Lcom/shabakaty/downloader/dm4;-><init>()V

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-string v9, "fontScale"

    .line 86
    invoke-virtual {v0, v9, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-float v5, v5

    iput v5, v4, Lcom/shabakaty/downloader/dm4;->r:F

    const-string v5, "foregroundColor"

    .line 87
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/shabakaty/downloader/dm4;->F1(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/shabakaty/downloader/dm4;->s:I

    const-string v5, "backgroundColor"

    .line 88
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/shabakaty/downloader/dm4;->F1(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/shabakaty/downloader/dm4;->t:I

    const-string v5, "edgeType"

    .line 89
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 90
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 91
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    const/4 v6, 0x0

    .line 92
    iput v6, v4, Lcom/shabakaty/downloader/dm4;->u:I

    goto :goto_8

    :cond_17
    const-string v6, "OUTLINE"

    .line 93
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 94
    iput v7, v4, Lcom/shabakaty/downloader/dm4;->u:I

    goto :goto_8

    :cond_18
    const-string v6, "DROP_SHADOW"

    .line 95
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    const/4 v6, 0x2

    .line 96
    iput v6, v4, Lcom/shabakaty/downloader/dm4;->u:I

    goto :goto_8

    :cond_19
    const-string v6, "RAISED"

    .line 97
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    const/4 v6, 0x3

    .line 98
    iput v6, v4, Lcom/shabakaty/downloader/dm4;->u:I

    goto :goto_8

    :cond_1a
    const-string v6, "DEPRESSED"

    .line 99
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    const/4 v5, 0x4

    .line 100
    iput v5, v4, Lcom/shabakaty/downloader/dm4;->u:I

    :cond_1b
    :goto_8
    const-string v5, "edgeColor"

    .line 101
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/shabakaty/downloader/dm4;->F1(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/shabakaty/downloader/dm4;->v:I

    const-string v5, "windowType"

    .line 102
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    const-string v9, "NORMAL"

    if-eqz v6, :cond_1e

    .line 103
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 104
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x0

    .line 105
    iput v1, v4, Lcom/shabakaty/downloader/dm4;->w:I

    goto :goto_9

    .line 106
    :cond_1c
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 107
    iput v7, v4, Lcom/shabakaty/downloader/dm4;->w:I

    goto :goto_9

    :cond_1d
    const-string v1, "ROUNDED_CORNERS"

    .line 108
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x2

    .line 109
    iput v1, v4, Lcom/shabakaty/downloader/dm4;->w:I

    goto :goto_a

    :cond_1e
    :goto_9
    const/4 v1, 0x2

    :goto_a
    const-string v5, "windowColor"

    .line 110
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/shabakaty/downloader/dm4;->F1(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/shabakaty/downloader/dm4;->x:I

    .line 111
    iget v5, v4, Lcom/shabakaty/downloader/dm4;->w:I

    if-ne v5, v1, :cond_1f

    const-string v1, "windowRoundedCornerRadius"

    const/4 v5, 0x0

    .line 112
    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v4, Lcom/shabakaty/downloader/dm4;->y:I

    :cond_1f
    const-string v1, "fontFamily"

    .line 113
    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/shabakaty/downloader/dm4;->z:Ljava/lang/String;

    const-string v1, "fontGenericFamily"

    .line 114
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 115
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "SANS_SERIF"

    .line 116
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    const/4 v5, 0x0

    .line 117
    iput v5, v4, Lcom/shabakaty/downloader/dm4;->A:I

    goto :goto_b

    :cond_20
    const-string v5, "MONOSPACED_SANS_SERIF"

    .line 118
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 119
    iput v7, v4, Lcom/shabakaty/downloader/dm4;->A:I

    goto :goto_b

    :cond_21
    const-string v5, "SERIF"

    .line 120
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    const/4 v5, 0x2

    .line 121
    iput v5, v4, Lcom/shabakaty/downloader/dm4;->A:I

    goto :goto_b

    :cond_22
    const-string v5, "MONOSPACED_SERIF"

    .line 122
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    const/4 v5, 0x3

    .line 123
    iput v5, v4, Lcom/shabakaty/downloader/dm4;->A:I

    goto :goto_b

    :cond_23
    const-string v5, "CASUAL"

    .line 124
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    const/4 v5, 0x4

    .line 125
    iput v5, v4, Lcom/shabakaty/downloader/dm4;->A:I

    goto :goto_b

    :cond_24
    const-string v5, "CURSIVE"

    .line 126
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    const/4 v5, 0x5

    .line 127
    iput v5, v4, Lcom/shabakaty/downloader/dm4;->A:I

    goto :goto_b

    :cond_25
    const-string v5, "SMALL_CAPITALS"

    .line 128
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v1, 0x6

    .line 129
    iput v1, v4, Lcom/shabakaty/downloader/dm4;->A:I

    :cond_26
    :goto_b
    const-string v1, "fontStyle"

    .line 130
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 131
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    const/4 v5, 0x0

    .line 133
    iput v5, v4, Lcom/shabakaty/downloader/dm4;->B:I

    goto :goto_c

    :cond_27
    const-string v5, "BOLD"

    .line 134
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 135
    iput v7, v4, Lcom/shabakaty/downloader/dm4;->B:I

    goto :goto_c

    :cond_28
    const-string v5, "ITALIC"

    .line 136
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    const/4 v5, 0x2

    .line 137
    iput v5, v4, Lcom/shabakaty/downloader/dm4;->B:I

    goto :goto_c

    :cond_29
    const-string v5, "BOLD_ITALIC"

    .line 138
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x3

    .line 139
    iput v1, v4, Lcom/shabakaty/downloader/dm4;->B:I

    .line 140
    :cond_2a
    :goto_c
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v4, Lcom/shabakaty/downloader/dm4;->D:Lorg/json/JSONObject;

    .line 141
    iput-object v4, v3, Lcom/google/android/gms/cast/MediaInfo;->x:Lcom/shabakaty/downloader/dm4;

    goto :goto_d

    .line 142
    :cond_2b
    iput-object v8, v3, Lcom/google/android/gms/cast/MediaInfo;->x:Lcom/shabakaty/downloader/dm4;

    .line 143
    :goto_d
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/cast/MediaInfo;->o1(Lorg/json/JSONObject;)V

    .line 144
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/cast/MediaInfo;->G:Lorg/json/JSONObject;

    const-string v0, "entity"

    .line 145
    invoke-virtual {v2, v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/cast/MediaInfo;->B:Ljava/lang/String;

    const-string v0, "atvEntity"

    .line 146
    invoke-virtual {v2, v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/cast/MediaInfo;->E:Ljava/lang/String;

    const-string v0, "vmapAdsRequest"

    .line 147
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/zz4;->W0(Lorg/json/JSONObject;)Lcom/shabakaty/downloader/zz4;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/cast/MediaInfo;->C:Lcom/shabakaty/downloader/zz4;

    const-string v0, "startAbsoluteTime"

    .line 148
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 149
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 150
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 151
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_2c

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-nez v4, :cond_2c

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-ltz v6, :cond_2c

    .line 152
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/yw;->c(D)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/google/android/gms/cast/MediaInfo;->D:J

    :cond_2c
    const-string v0, "contentUrl"

    .line 153
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 154
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/cast/MediaInfo;->F:Ljava/lang/String;

    :cond_2d
    return-void
.end method


# virtual methods
.method public final W0()Lorg/json/JSONObject;
    .locals 7

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "contentId"

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "contentUrl"

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->F:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    iget v1, p0, Lcom/google/android/gms/cast/MediaInfo;->s:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const-string v1, "NONE"

    goto :goto_0

    :cond_0
    const-string v1, "LIVE"

    goto :goto_0

    :cond_1
    const-string v1, "BUFFERED"

    :goto_0
    const-string v2, "streamType"

    .line 5
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->t:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "contentType"

    .line 7
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->u:Lcom/shabakaty/downloader/ip2;

    if-eqz v1, :cond_3

    const-string v2, "metadata"

    .line 9
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ip2;->G1()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    :cond_3
    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaInfo;->v:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "duration"

    const-wide/16 v4, -0x1

    cmp-long v6, v1, v4

    if-gtz v6, :cond_4

    .line 11
    :try_start_1
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 12
    :cond_4
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/yw;->b(J)D

    move-result-wide v1

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 13
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->w:Ljava/util/List;

    if-eqz v1, :cond_6

    .line 14
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 15
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->w:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/MediaTrack;

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaTrack;->W0()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_5
    const-string v2, "tracks"

    .line 17
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->x:Lcom/shabakaty/downloader/dm4;

    if-eqz v1, :cond_7

    const-string v2, "textTrackStyle"

    .line 19
    invoke-virtual {v1}, Lcom/shabakaty/downloader/dm4;->E1()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->G:Lorg/json/JSONObject;

    if-eqz v1, :cond_8

    const-string v2, "customData"

    .line 21
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->B:Ljava/lang/String;

    if-eqz v1, :cond_9

    const-string v2, "entity"

    .line 23
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->z:Ljava/util/List;

    if-eqz v1, :cond_b

    .line 25
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 26
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->z:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/i4;

    .line 27
    invoke-virtual {v3}, Lcom/shabakaty/downloader/i4;->W0()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    :cond_a
    const-string v2, "breaks"

    .line 28
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->A:Ljava/util/List;

    if-eqz v1, :cond_d

    .line 30
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 31
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->A:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/h4;

    .line 32
    invoke-virtual {v3}, Lcom/shabakaty/downloader/h4;->W0()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    :cond_c
    const-string v2, "breakClips"

    .line 33
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->C:Lcom/shabakaty/downloader/zz4;

    if-eqz v1, :cond_e

    const-string v2, "vmapAdsRequest"

    .line 35
    invoke-virtual {v1}, Lcom/shabakaty/downloader/zz4;->o1()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    :cond_e
    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaInfo;->D:J

    cmp-long v3, v1, v4

    if-eqz v3, :cond_f

    const-string v3, "startAbsoluteTime"

    .line 37
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/yw;->b(J)D

    move-result-wide v1

    .line 38
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_f
    const-string v1, "atvEntity"

    .line 39
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->E:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/MediaInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/MediaInfo;

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->G:Lorg/json/JSONObject;

    if-nez v1, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p1, Lcom/google/android/gms/cast/MediaInfo;->G:Lorg/json/JSONObject;

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
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->r:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->r:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/MediaInfo;->s:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaInfo;->s:I

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->t:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->t:Ljava/lang/String;

    .line 6
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->u:Lcom/shabakaty/downloader/ip2;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->u:Lcom/shabakaty/downloader/ip2;

    .line 7
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaInfo;->v:J

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaInfo;->v:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->w:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->w:Ljava/util/List;

    .line 8
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->x:Lcom/shabakaty/downloader/dm4;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->x:Lcom/shabakaty/downloader/dm4;

    .line 9
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->z:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->z:Ljava/util/List;

    .line 10
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->A:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->A:Ljava/util/List;

    .line 11
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->B:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->B:Ljava/lang/String;

    .line 12
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->C:Lcom/shabakaty/downloader/zz4;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->C:Lcom/shabakaty/downloader/zz4;

    .line 13
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaInfo;->D:J

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaInfo;->D:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->E:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->E:Ljava/lang/String;

    .line 14
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->F:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/cast/MediaInfo;->F:Ljava/lang/String;

    .line 15
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v0

    :cond_6
    return v2
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->r:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaInfo;->s:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->t:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->u:Lcom/shabakaty/downloader/ip2;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaInfo;->v:J

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->G:Lorg/json/JSONObject;

    .line 4
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->w:Ljava/util/List;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->x:Lcom/shabakaty/downloader/dm4;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->z:Ljava/util/List;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->A:Ljava/util/List;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->B:Ljava/lang/String;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->C:Lcom/shabakaty/downloader/zz4;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaInfo;->D:J

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->E:Ljava/lang/String;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 6
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final o1(Lorg/json/JSONObject;)V
    .locals 36

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "breaks"

    .line 1
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "duration"

    const-string v5, "id"

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_6

    .line 2
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v1, Lcom/google/android/gms/cast/MediaInfo;->z:Ljava/util/List;

    const/4 v9, 0x0

    .line 4
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v9, v0, :cond_6

    .line 5
    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 6
    :cond_1
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "position"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    :try_start_0
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 8
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    long-to-double v10, v10

    invoke-static {v10, v11}, Lcom/shabakaty/downloader/yw;->c(D)J

    move-result-wide v13

    const-string v10, "isWatched"

    .line 9
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v18

    .line 10
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    long-to-double v10, v10

    invoke-static {v10, v11}, Lcom/shabakaty/downloader/yw;->c(D)J

    move-result-wide v16

    const-string v10, "breakClipIds"

    .line 11
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 12
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    .line 13
    :goto_2
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v12, v6, :cond_3

    .line 14
    invoke-virtual {v10, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v19, v11

    goto :goto_3

    :cond_4
    const/16 v19, 0x0

    :goto_3
    const-string v6, "isEmbedded"

    .line 15
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v20

    .line 16
    new-instance v0, Lcom/shabakaty/downloader/i4;

    move-object v12, v0

    invoke-direct/range {v12 .. v20}, Lcom/shabakaty/downloader/i4;-><init>(JLjava/lang/String;JZ[Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 17
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v10, v7, [Ljava/lang/Object;

    .line 18
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v8

    const-string v0, "Error while creating an AdBreakInfo from JSON: %s"

    .line 19
    invoke-static {v6, v0, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "AdBreakInfo"

    .line 20
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :goto_4
    if-eqz v0, :cond_5

    .line 21
    iget-object v6, v1, Lcom/google/android/gms/cast/MediaInfo;->z:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 22
    :cond_5
    iget-object v0, v1, Lcom/google/android/gms/cast/MediaInfo;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_6
    const-string v0, "breakClips"

    .line 23
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 24
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v1, Lcom/google/android/gms/cast/MediaInfo;->A:Ljava/util/List;

    const/4 v3, 0x0

    .line 26
    :goto_5
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_e

    .line 27
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v6, "whenSkippable"

    if-nez v0, :cond_7

    :goto_6
    const/4 v0, 0x0

    const/4 v10, 0x0

    goto/16 :goto_a

    .line 28
    :cond_7
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_6

    .line 29
    :cond_8
    :try_start_1
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 30
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    long-to-double v9, v9

    invoke-static {v9, v10}, Lcom/shabakaty/downloader/yw;->c(D)J

    move-result-wide v24

    const-string v9, "clickThroughUrl"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v10, 0x0

    .line 31
    :try_start_2
    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v9, "contentUrl"

    .line 32
    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v9, "mimeType"

    .line 33
    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_9

    const-string v9, "contentType"

    .line 34
    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_9
    move-object/from16 v27, v9

    const-string v9, "title"

    .line 35
    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v9, "customData"

    .line 36
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v11, "contentId"

    .line 37
    invoke-virtual {v0, v11, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string v11, "posterUrl"

    .line 38
    invoke-virtual {v0, v11, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    const-wide/16 v10, -0x1

    .line 39
    :try_start_3
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 40
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-double v10, v6

    invoke-static {v10, v11}, Lcom/shabakaty/downloader/yw;->c(D)J

    move-result-wide v10

    :cond_a
    move-wide/from16 v32, v10

    const-string v6, "hlsSegmentFormat"
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v10, 0x0

    .line 41
    :try_start_4
    invoke-virtual {v0, v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v6, "vastAdsRequest"

    .line 42
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/zz4;->W0(Lorg/json/JSONObject;)Lcom/shabakaty/downloader/zz4;

    move-result-object v35

    .line 43
    new-instance v0, Lcom/shabakaty/downloader/h4;

    if-eqz v9, :cond_c

    .line 44
    invoke-virtual {v9}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-nez v6, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v29, v6

    goto :goto_8

    :cond_c
    :goto_7
    move-object/from16 v29, v10

    :goto_8
    move-object/from16 v21, v0

    invoke-direct/range {v21 .. v35}, Lcom/shabakaty/downloader/h4;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/shabakaty/downloader/zz4;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    const/4 v10, 0x0

    .line 45
    :goto_9
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v9, v7, [Ljava/lang/Object;

    .line 46
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v8

    const-string v0, "Error while creating an AdBreakClipInfo from JSON: %s"

    .line 47
    invoke-static {v6, v0, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "AdBreakClipInfo"

    .line 48
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v10

    :goto_a
    if-eqz v0, :cond_d

    .line 49
    iget-object v6, v1, Lcom/google/android/gms/cast/MediaInfo;->A:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    .line 50
    :cond_d
    iget-object v0, v1, Lcom/google/android/gms/cast/MediaInfo;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_e
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->G:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->y:Ljava/lang/String;

    const/16 v0, 0x4f45

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->n(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v2, 0x2

    .line 3
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaInfo;->r:Ljava/lang/String;

    const/4 v4, 0x0

    .line 4
    invoke-static {p1, v2, v3, v4}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v2, 0x3

    .line 5
    iget v3, p0, Lcom/google/android/gms/cast/MediaInfo;->s:I

    const/4 v5, 0x4

    .line 6
    invoke-static {p1, v2, v5}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->t:Ljava/lang/String;

    .line 9
    invoke-static {p1, v5, v2, v4}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v2, 0x5

    .line 10
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaInfo;->u:Lcom/shabakaty/downloader/ip2;

    .line 11
    invoke-static {p1, v2, v3, p2, v4}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v2, 0x6

    .line 12
    iget-wide v5, p0, Lcom/google/android/gms/cast/MediaInfo;->v:J

    const/16 v3, 0x8

    .line 13
    invoke-static {p1, v2, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 14
    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v2, 0x7

    .line 15
    iget-object v5, p0, Lcom/google/android/gms/cast/MediaInfo;->w:Ljava/util/List;

    .line 16
    invoke-static {p1, v2, v5, v4}, Lcom/shabakaty/downloader/vw3;->m(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 17
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->x:Lcom/shabakaty/downloader/dm4;

    .line 18
    invoke-static {p1, v3, v2, p2, v4}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v2, 0x9

    .line 19
    iget-object v5, p0, Lcom/google/android/gms/cast/MediaInfo;->y:Ljava/lang/String;

    invoke-static {p1, v2, v5, v4}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v2, 0xa

    .line 20
    iget-object v5, p0, Lcom/google/android/gms/cast/MediaInfo;->z:Ljava/util/List;

    if-nez v5, :cond_1

    move-object v5, v1

    goto :goto_1

    :cond_1
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 21
    :goto_1
    invoke-static {p1, v2, v5, v4}, Lcom/shabakaty/downloader/vw3;->m(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v2, 0xb

    .line 22
    iget-object v5, p0, Lcom/google/android/gms/cast/MediaInfo;->A:Ljava/util/List;

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 23
    :goto_2
    invoke-static {p1, v2, v1, v4}, Lcom/shabakaty/downloader/vw3;->m(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v1, 0xc

    .line 24
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->B:Ljava/lang/String;

    .line 25
    invoke-static {p1, v1, v2, v4}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xd

    .line 26
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->C:Lcom/shabakaty/downloader/zz4;

    .line 27
    invoke-static {p1, v1, v2, p2, v4}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 p2, 0xe

    .line 28
    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaInfo;->D:J

    .line 29
    invoke-static {p1, p2, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 30
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p2, 0xf

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->E:Ljava/lang/String;

    .line 32
    invoke-static {p1, p2, v1, v4}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0x10

    .line 33
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->F:Ljava/lang/String;

    .line 34
    invoke-static {p1, p2, v1, v4}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 35
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
