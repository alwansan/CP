.class public Lcom/shabakaty/downloader/dr2;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/dr2$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/dr2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Z

.field public B:[J

.field public C:I

.field public D:I

.field public E:Ljava/lang/String;

.field public F:Lorg/json/JSONObject;

.field public G:I

.field public final H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/sp2;",
            ">;"
        }
    .end annotation
.end field

.field public I:Z

.field public J:Lcom/shabakaty/downloader/j4;

.field public K:Lcom/shabakaty/downloader/r05;

.field public L:Lcom/shabakaty/downloader/ep2;

.field public M:Lcom/shabakaty/downloader/rp2;

.field public final N:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final O:Lcom/shabakaty/downloader/dr2$a;

.field public r:Lcom/google/android/gms/cast/MediaInfo;

.field public s:J

.field public t:I

.field public u:D

.field public v:I

.field public w:I

.field public x:J

.field public y:J

.field public z:D


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "MediaStatus"

    const-string v1, "The log tag cannot be null or empty."

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/a;->g(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ls5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ls5;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/dr2;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/cast/MediaInfo;JIDIIJJDZ[JIILjava/lang/String;ILjava/util/List;ZLcom/shabakaty/downloader/j4;Lcom/shabakaty/downloader/r05;Lcom/shabakaty/downloader/ep2;Lcom/shabakaty/downloader/rp2;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/cast/MediaInfo;",
            "JIDIIJJDZ[JII",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/sp2;",
            ">;Z",
            "Lcom/shabakaty/downloader/j4;",
            "Lcom/shabakaty/downloader/r05;",
            "Lcom/shabakaty/downloader/ep2;",
            "Lcom/shabakaty/downloader/rp2;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p19

    move-object/from16 v2, p21

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    .line 2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/shabakaty/downloader/dr2;->H:Ljava/util/List;

    .line 3
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v0, Lcom/shabakaty/downloader/dr2;->N:Landroid/util/SparseArray;

    .line 4
    new-instance v3, Lcom/shabakaty/downloader/dr2$a;

    invoke-direct {v3, p0}, Lcom/shabakaty/downloader/dr2$a;-><init>(Lcom/shabakaty/downloader/dr2;)V

    iput-object v3, v0, Lcom/shabakaty/downloader/dr2;->O:Lcom/shabakaty/downloader/dr2$a;

    move-object v3, p1

    .line 5
    iput-object v3, v0, Lcom/shabakaty/downloader/dr2;->r:Lcom/google/android/gms/cast/MediaInfo;

    move-wide v3, p2

    .line 6
    iput-wide v3, v0, Lcom/shabakaty/downloader/dr2;->s:J

    move v3, p4

    .line 7
    iput v3, v0, Lcom/shabakaty/downloader/dr2;->t:I

    move-wide v3, p5

    .line 8
    iput-wide v3, v0, Lcom/shabakaty/downloader/dr2;->u:D

    move v3, p7

    .line 9
    iput v3, v0, Lcom/shabakaty/downloader/dr2;->v:I

    move v3, p8

    .line 10
    iput v3, v0, Lcom/shabakaty/downloader/dr2;->w:I

    move-wide v3, p9

    .line 11
    iput-wide v3, v0, Lcom/shabakaty/downloader/dr2;->x:J

    move-wide/from16 v3, p11

    .line 12
    iput-wide v3, v0, Lcom/shabakaty/downloader/dr2;->y:J

    move-wide/from16 v3, p13

    .line 13
    iput-wide v3, v0, Lcom/shabakaty/downloader/dr2;->z:D

    move/from16 v3, p15

    .line 14
    iput-boolean v3, v0, Lcom/shabakaty/downloader/dr2;->A:Z

    move-object/from16 v3, p16

    .line 15
    iput-object v3, v0, Lcom/shabakaty/downloader/dr2;->B:[J

    move/from16 v3, p17

    .line 16
    iput v3, v0, Lcom/shabakaty/downloader/dr2;->C:I

    move/from16 v3, p18

    .line 17
    iput v3, v0, Lcom/shabakaty/downloader/dr2;->D:I

    .line 18
    iput-object v1, v0, Lcom/shabakaty/downloader/dr2;->E:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 19
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v4, v0, Lcom/shabakaty/downloader/dr2;->E:Ljava/lang/String;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/shabakaty/downloader/dr2;->F:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 20
    :catch_0
    iput-object v3, v0, Lcom/shabakaty/downloader/dr2;->F:Lorg/json/JSONObject;

    .line 21
    iput-object v3, v0, Lcom/shabakaty/downloader/dr2;->E:Ljava/lang/String;

    goto :goto_0

    .line 22
    :cond_0
    iput-object v3, v0, Lcom/shabakaty/downloader/dr2;->F:Lorg/json/JSONObject;

    :goto_0
    move/from16 v1, p20

    .line 23
    iput v1, v0, Lcom/shabakaty/downloader/dr2;->G:I

    if-eqz v2, :cond_1

    .line 24
    invoke-interface/range {p21 .. p21}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 25
    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/dr2;->H1(Ljava/util/List;)V

    :cond_1
    move/from16 v1, p22

    .line 26
    iput-boolean v1, v0, Lcom/shabakaty/downloader/dr2;->I:Z

    move-object/from16 v1, p23

    .line 27
    iput-object v1, v0, Lcom/shabakaty/downloader/dr2;->J:Lcom/shabakaty/downloader/j4;

    move-object/from16 v1, p24

    .line 28
    iput-object v1, v0, Lcom/shabakaty/downloader/dr2;->K:Lcom/shabakaty/downloader/r05;

    move-object/from16 v1, p25

    .line 29
    iput-object v1, v0, Lcom/shabakaty/downloader/dr2;->L:Lcom/shabakaty/downloader/ep2;

    move-object/from16 v1, p26

    .line 30
    iput-object v1, v0, Lcom/shabakaty/downloader/dr2;->M:Lcom/shabakaty/downloader/rp2;

    return-void
.end method

.method public static G1(IIII)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    if-eq p1, v1, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_3

    return v1

    :cond_1
    if-eq p3, p0, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    if-nez p2, :cond_4

    return v1

    :cond_4
    return v0
.end method


# virtual methods
.method public D1(I)Lcom/shabakaty/downloader/sp2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dr2;->N:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/dr2;->H:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/sp2;

    return-object p1
.end method

.method public E1(J)Z
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/dr2;->y:J

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final F1(Lorg/json/JSONObject;I)I
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "extendedStatus"

    .line 1
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 4
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    new-instance v6, Lorg/json/JSONObject;

    new-array v7, v4, [Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-direct {v6, v0, v5}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 7
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 8
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 9
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 10
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    :goto_2
    move-object v6, v0

    :goto_3
    const-string v0, "mediaSessionId"

    .line 12
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 13
    iget-wide v7, v1, Lcom/shabakaty/downloader/dr2;->s:J

    const/4 v0, 0x1

    cmp-long v5, v2, v7

    if-eqz v5, :cond_3

    .line 14
    iput-wide v2, v1, Lcom/shabakaty/downloader/dr2;->s:J

    const/4 v2, 0x1

    goto :goto_4

    :cond_3
    const/4 v2, 0x0

    :goto_4
    const-string v3, "playerState"

    .line 15
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 16
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "IDLE"

    .line 17
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v3, 0x1

    goto :goto_5

    :cond_4
    const-string v5, "PLAYING"

    .line 18
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v3, 0x2

    goto :goto_5

    :cond_5
    const-string v5, "PAUSED"

    .line 19
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v3, 0x3

    goto :goto_5

    :cond_6
    const-string v5, "BUFFERING"

    .line 20
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v3, 0x4

    goto :goto_5

    :cond_7
    const-string v5, "LOADING"

    .line 21
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x5

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    .line 22
    :goto_5
    iget v5, v1, Lcom/shabakaty/downloader/dr2;->v:I

    if-eq v3, v5, :cond_9

    .line 23
    iput v3, v1, Lcom/shabakaty/downloader/dr2;->v:I

    or-int/lit8 v2, v2, 0x2

    :cond_9
    if-ne v3, v0, :cond_e

    const-string v0, "idleReason"

    .line 24
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 25
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "CANCELLED"

    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v0, 0x2

    goto :goto_6

    :cond_a
    const-string v3, "INTERRUPTED"

    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v0, 0x3

    goto :goto_6

    :cond_b
    const-string v3, "FINISHED"

    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v0, 0x1

    goto :goto_6

    :cond_c
    const-string v3, "ERROR"

    .line 29
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x4

    goto :goto_6

    :cond_d
    const/4 v0, 0x0

    .line 30
    :goto_6
    iget v3, v1, Lcom/shabakaty/downloader/dr2;->w:I

    if-eq v0, v3, :cond_e

    .line 31
    iput v0, v1, Lcom/shabakaty/downloader/dr2;->w:I

    or-int/lit8 v2, v2, 0x2

    :cond_e
    const-string v0, "playbackRate"

    .line 32
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 33
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 34
    iget-wide v9, v1, Lcom/shabakaty/downloader/dr2;->u:D

    cmpl-double v0, v9, v7

    if-eqz v0, :cond_f

    .line 35
    iput-wide v7, v1, Lcom/shabakaty/downloader/dr2;->u:D

    or-int/lit8 v2, v2, 0x2

    :cond_f
    const-string v0, "currentTime"

    .line 36
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 37
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/shabakaty/downloader/yw;->c(D)J

    move-result-wide v7

    .line 38
    iget-wide v9, v1, Lcom/shabakaty/downloader/dr2;->x:J

    cmp-long v0, v7, v9

    if-eqz v0, :cond_10

    .line 39
    iput-wide v7, v1, Lcom/shabakaty/downloader/dr2;->x:J

    or-int/lit8 v2, v2, 0x2

    :cond_10
    or-int/lit16 v2, v2, 0x80

    :cond_11
    const-string v0, "supportedMediaCommands"

    .line 40
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 41
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 42
    iget-wide v9, v1, Lcom/shabakaty/downloader/dr2;->y:J

    cmp-long v0, v7, v9

    if-eqz v0, :cond_12

    .line 43
    iput-wide v7, v1, Lcom/shabakaty/downloader/dr2;->y:J

    or-int/lit8 v2, v2, 0x2

    :cond_12
    const-string v0, "volume"

    .line 44
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    and-int/lit8 v3, p2, 0x1

    if-nez v3, :cond_14

    .line 45
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "level"

    .line 46
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 47
    iget-wide v9, v1, Lcom/shabakaty/downloader/dr2;->z:D

    cmpl-double v3, v7, v9

    if-eqz v3, :cond_13

    .line 48
    iput-wide v7, v1, Lcom/shabakaty/downloader/dr2;->z:D

    or-int/lit8 v2, v2, 0x2

    :cond_13
    const-string v3, "muted"

    .line 49
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 50
    iget-boolean v3, v1, Lcom/shabakaty/downloader/dr2;->A:Z

    if-eq v0, v3, :cond_14

    .line 51
    iput-boolean v0, v1, Lcom/shabakaty/downloader/dr2;->A:Z

    or-int/lit8 v2, v2, 0x2

    :cond_14
    const-string v0, "activeTrackIds"

    .line 52
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_1b

    .line 53
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v3, Lcom/shabakaty/downloader/yw;->a:Ljava/util/regex/Pattern;

    if-nez v0, :cond_15

    move-object v3, v5

    goto :goto_8

    .line 54
    :cond_15
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [J

    const/4 v7, 0x0

    .line 55
    :goto_7
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_16

    .line 56
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v8

    aput-wide v8, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 57
    :cond_16
    :goto_8
    iget-object v0, v1, Lcom/shabakaty/downloader/dr2;->B:[J

    if-nez v0, :cond_17

    goto :goto_a

    .line 58
    :cond_17
    array-length v0, v0

    array-length v7, v3

    if-eq v0, v7, :cond_18

    goto :goto_a

    :cond_18
    const/4 v0, 0x0

    .line 59
    :goto_9
    array-length v7, v3

    if-ge v0, v7, :cond_1a

    .line 60
    iget-object v7, v1, Lcom/shabakaty/downloader/dr2;->B:[J

    aget-wide v8, v7, v0

    aget-wide v10, v3, v0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_19

    :goto_a
    const/4 v0, 0x1

    goto :goto_b

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1a
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_1d

    .line 61
    iput-object v3, v1, Lcom/shabakaty/downloader/dr2;->B:[J

    goto :goto_d

    .line 62
    :cond_1b
    iget-object v0, v1, Lcom/shabakaty/downloader/dr2;->B:[J

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_c

    :cond_1c
    const/4 v0, 0x0

    :goto_c
    move-object v3, v5

    :cond_1d
    :goto_d
    if-eqz v0, :cond_1e

    .line 63
    iput-object v3, v1, Lcom/shabakaty/downloader/dr2;->B:[J

    or-int/lit8 v2, v2, 0x2

    :cond_1e
    const-string v0, "customData"

    .line 64
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 65
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lcom/shabakaty/downloader/dr2;->F:Lorg/json/JSONObject;

    .line 66
    iput-object v5, v1, Lcom/shabakaty/downloader/dr2;->E:Ljava/lang/String;

    or-int/lit8 v2, v2, 0x2

    :cond_1f
    const-string v0, "media"

    .line 67
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 68
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 69
    new-instance v3, Lcom/google/android/gms/cast/MediaInfo;

    invoke-direct {v3, v0}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Lorg/json/JSONObject;)V

    .line 70
    iget-object v5, v1, Lcom/shabakaty/downloader/dr2;->r:Lcom/google/android/gms/cast/MediaInfo;

    if-eqz v5, :cond_20

    if-eqz v5, :cond_21

    .line 71
    invoke-virtual {v5, v3}, Lcom/google/android/gms/cast/MediaInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_21

    .line 72
    :cond_20
    iput-object v3, v1, Lcom/shabakaty/downloader/dr2;->r:Lcom/google/android/gms/cast/MediaInfo;

    or-int/lit8 v2, v2, 0x2

    :cond_21
    const-string v3, "metadata"

    .line 73
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    or-int/lit8 v2, v2, 0x4

    :cond_22
    const-string v0, "currentItemId"

    .line 74
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 75
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 76
    iget v3, v1, Lcom/shabakaty/downloader/dr2;->t:I

    if-eq v3, v0, :cond_23

    .line 77
    iput v0, v1, Lcom/shabakaty/downloader/dr2;->t:I

    or-int/lit8 v2, v2, 0x2

    :cond_23
    const-string v0, "preloadedItemId"

    .line 78
    invoke-virtual {v6, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 79
    iget v3, v1, Lcom/shabakaty/downloader/dr2;->D:I

    if-eq v3, v0, :cond_24

    .line 80
    iput v0, v1, Lcom/shabakaty/downloader/dr2;->D:I

    or-int/lit8 v2, v2, 0x10

    :cond_24
    const-string v0, "loadingItemId"

    .line 81
    invoke-virtual {v6, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 82
    iget v3, v1, Lcom/shabakaty/downloader/dr2;->C:I

    if-eq v3, v0, :cond_25

    .line 83
    iput v0, v1, Lcom/shabakaty/downloader/dr2;->C:I

    or-int/lit8 v2, v2, 0x2

    .line 84
    :cond_25
    iget-object v0, v1, Lcom/shabakaty/downloader/dr2;->r:Lcom/google/android/gms/cast/MediaInfo;

    if-nez v0, :cond_26

    const/4 v0, -0x1

    goto :goto_e

    .line 85
    :cond_26
    iget v0, v0, Lcom/google/android/gms/cast/MediaInfo;->s:I

    .line 86
    :goto_e
    iget v3, v1, Lcom/shabakaty/downloader/dr2;->v:I

    iget v5, v1, Lcom/shabakaty/downloader/dr2;->w:I

    iget v7, v1, Lcom/shabakaty/downloader/dr2;->C:I

    invoke-static {v3, v5, v7, v0}, Lcom/shabakaty/downloader/dr2;->G1(IIII)Z

    move-result v0

    const-string v3, "items"

    const-string v5, "repeatMode"

    if-nez v0, :cond_36

    .line 87
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 88
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, Lcom/shabakaty/downloader/cl3;->m(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_27

    .line 90
    iget v0, v1, Lcom/shabakaty/downloader/dr2;->G:I

    goto :goto_f

    :cond_27
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 91
    iget v7, v1, Lcom/shabakaty/downloader/dr2;->G:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v7, v8, :cond_28

    .line 92
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/shabakaty/downloader/dr2;->G:I

    const/4 v0, 0x1

    goto :goto_10

    :cond_28
    const/4 v0, 0x0

    .line 93
    :goto_10
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 94
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 95
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 96
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    const/4 v10, 0x0

    :goto_11
    if-ge v10, v8, :cond_29

    .line 97
    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "itemId"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    .line 98
    :cond_29
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    :goto_12
    if-ge v11, v8, :cond_33

    .line 99
    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 100
    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 101
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v1, v14}, Lcom/shabakaty/downloader/dr2;->D1(I)Lcom/shabakaty/downloader/sp2;

    move-result-object v14

    if-eqz v14, :cond_2a

    .line 102
    invoke-virtual {v14, v13}, Lcom/shabakaty/downloader/sp2;->W0(Lorg/json/JSONObject;)Z

    move-result v13

    or-int/2addr v0, v13

    .line 103
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v1, v12}, Lcom/shabakaty/downloader/dr2;->o1(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 p1, v5

    if-eq v11, v12, :cond_32

    goto/16 :goto_14

    .line 105
    :cond_2a
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v12, v1, Lcom/shabakaty/downloader/dr2;->t:I

    if-ne v0, v12, :cond_31

    iget-object v0, v1, Lcom/shabakaty/downloader/dr2;->r:Lcom/google/android/gms/cast/MediaInfo;

    if-eqz v0, :cond_31

    .line 106
    new-instance v12, Lcom/shabakaty/downloader/sp2;

    const/16 v16, 0x0

    const/16 v17, 0x1

    const-wide/high16 v18, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v20, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object v14, v12

    move-object v15, v0

    .line 107
    invoke-direct/range {v14 .. v25}, Lcom/shabakaty/downloader/sp2;-><init>(Lcom/google/android/gms/cast/MediaInfo;IZDDD[JLjava/lang/String;)V

    if-eqz v0, :cond_30

    .line 108
    iget-object v0, v12, Lcom/shabakaty/downloader/sp2;->r:Lcom/google/android/gms/cast/MediaInfo;

    if-eqz v0, :cond_2f

    .line 109
    iget-wide v14, v12, Lcom/shabakaty/downloader/sp2;->u:D

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const-wide/16 v14, 0x0

    move-object/from16 p1, v5

    if-nez v0, :cond_2c

    iget-wide v4, v12, Lcom/shabakaty/downloader/sp2;->u:D

    cmpg-double v0, v4, v14

    if-ltz v0, :cond_2b

    goto :goto_13

    .line 110
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "startTime cannot be negative or NaN."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_2c
    :goto_13
    iget-wide v4, v12, Lcom/shabakaty/downloader/sp2;->v:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 112
    iget-wide v4, v12, Lcom/shabakaty/downloader/sp2;->w:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-wide v4, v12, Lcom/shabakaty/downloader/sp2;->w:D

    cmpg-double v0, v4, v14

    if-ltz v0, :cond_2d

    .line 113
    invoke-virtual {v12, v13}, Lcom/shabakaty/downloader/sp2;->W0(Lorg/json/JSONObject;)Z

    .line 114
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 115
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "preloadTime cannot be negative or Nan."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "playbackDuration cannot be NaN."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "media cannot be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "media cannot be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    move-object/from16 p1, v5

    .line 119
    new-instance v0, Lcom/shabakaty/downloader/sp2;

    invoke-direct {v0, v13}, Lcom/shabakaty/downloader/sp2;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_14
    const/4 v0, 0x1

    :cond_32
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v5, p1

    const/4 v4, 0x0

    goto/16 :goto_12

    :cond_33
    move-object/from16 p1, v5

    .line 120
    iget-object v4, v1, Lcom/shabakaty/downloader/dr2;->H:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v4, v8, :cond_34

    const/4 v0, 0x1

    .line 121
    :cond_34
    invoke-virtual {v1, v10}, Lcom/shabakaty/downloader/dr2;->H1(Ljava/util/List;)V

    goto :goto_15

    :cond_35
    move-object/from16 p1, v5

    :goto_15
    if-eqz v0, :cond_37

    goto :goto_16

    :cond_36
    move-object/from16 p1, v5

    .line 122
    iput v4, v1, Lcom/shabakaty/downloader/dr2;->t:I

    .line 123
    iput v4, v1, Lcom/shabakaty/downloader/dr2;->C:I

    .line 124
    iput v4, v1, Lcom/shabakaty/downloader/dr2;->D:I

    .line 125
    iget-object v0, v1, Lcom/shabakaty/downloader/dr2;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    .line 126
    iput v4, v1, Lcom/shabakaty/downloader/dr2;->G:I

    .line 127
    iget-object v0, v1, Lcom/shabakaty/downloader/dr2;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    iget-object v0, v1, Lcom/shabakaty/downloader/dr2;->N:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :goto_16
    or-int/lit8 v2, v2, 0x8

    :cond_37
    const-string v0, "breakStatus"

    .line 129
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v4, Lcom/shabakaty/downloader/j4;->w:Lcom/shabakaty/downloader/pk2;

    if-nez v0, :cond_38

    goto :goto_17

    :cond_38
    const-string v4, "currentBreakTime"

    .line 130
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    const-string v5, "currentBreakClipTime"

    .line 131
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_39

    goto :goto_17

    .line 132
    :cond_39
    :try_start_1
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    long-to-double v7, v7

    invoke-static {v7, v8}, Lcom/shabakaty/downloader/yw;->c(D)J

    move-result-wide v18

    .line 133
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-double v4, v4

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/yw;->c(D)J

    move-result-wide v20

    const-string v4, "breakId"

    const/4 v5, 0x0

    .line 134
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v4, "breakClipId"

    .line 135
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v4, "whenSkippable"

    const-wide/16 v7, -0x1

    .line 136
    invoke-virtual {v0, v4, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v0, v4, v7

    if-eqz v0, :cond_3a

    long-to-double v4, v4

    .line 137
    invoke-static {v4, v5}, Lcom/shabakaty/downloader/yw;->c(D)J

    move-result-wide v4

    :cond_3a
    move-wide/from16 v24, v4

    .line 138
    new-instance v0, Lcom/shabakaty/downloader/j4;

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v25}, Lcom/shabakaty/downloader/j4;-><init>(JJLjava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_18

    :catch_1
    move-exception v0

    .line 139
    sget-object v4, Lcom/shabakaty/downloader/j4;->w:Lcom/shabakaty/downloader/pk2;

    const/4 v5, 0x0

    new-array v7, v5, [Ljava/lang/Object;

    .line 140
    iget-object v5, v4, Lcom/shabakaty/downloader/pk2;->a:Ljava/lang/String;

    const-string v8, "Error while creating an AdBreakClipInfo from JSON"

    invoke-virtual {v4, v8, v7}, Lcom/shabakaty/downloader/pk2;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3b
    :goto_17
    const/4 v0, 0x0

    .line 141
    :goto_18
    iget-object v4, v1, Lcom/shabakaty/downloader/dr2;->J:Lcom/shabakaty/downloader/j4;

    if-nez v4, :cond_3c

    if-nez v0, :cond_3d

    :cond_3c
    if-eqz v4, :cond_3f

    .line 142
    invoke-virtual {v4, v0}, Lcom/shabakaty/downloader/j4;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3f

    :cond_3d
    if-eqz v0, :cond_3e

    const/4 v4, 0x1

    goto :goto_19

    :cond_3e
    const/4 v4, 0x0

    .line 143
    :goto_19
    iput-boolean v4, v1, Lcom/shabakaty/downloader/dr2;->I:Z

    .line 144
    iput-object v0, v1, Lcom/shabakaty/downloader/dr2;->J:Lcom/shabakaty/downloader/j4;

    or-int/lit8 v2, v2, 0x20

    :cond_3f
    const-string v0, "videoInfo"

    .line 145
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v4, Lcom/shabakaty/downloader/r05;->u:Lcom/shabakaty/downloader/pk2;

    if-nez v0, :cond_40

    goto/16 :goto_1d

    :cond_40
    :try_start_2
    const-string v4, "hdrType"

    .line 146
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 147
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v7, 0xc92

    if-eq v5, v7, :cond_44

    const v7, 0x192f6

    if-eq v5, v7, :cond_43

    const v7, 0x1bc41

    if-eq v5, v7, :cond_42

    const v7, 0x5e8b395

    if-eq v5, v7, :cond_41

    goto :goto_1a

    :cond_41
    const-string v5, "hdr10"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    const/4 v5, 0x1

    goto :goto_1b

    :cond_42
    const-string v5, "sdr"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    const/4 v5, 0x3

    goto :goto_1b

    :cond_43
    const-string v5, "hdr"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    const/4 v5, 0x2

    goto :goto_1b

    :cond_44
    const-string v5, "dv"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    const/4 v5, 0x0

    goto :goto_1b

    :cond_45
    :goto_1a
    const/4 v5, -0x1

    :goto_1b
    if-eqz v5, :cond_49

    const/4 v7, 0x1

    if-eq v5, v7, :cond_48

    const/4 v8, 0x2

    if-eq v5, v8, :cond_47

    const/4 v8, 0x3

    if-eq v5, v8, :cond_46

    .line 148
    sget-object v5, Lcom/shabakaty/downloader/r05;->u:Lcom/shabakaty/downloader/pk2;

    const-string v8, "Unknown HDR type: %s"

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v7, v9

    invoke-virtual {v5, v8, v7}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x0

    goto :goto_1c

    :cond_46
    const/4 v4, 0x1

    goto :goto_1c

    :cond_47
    const/4 v4, 0x4

    goto :goto_1c

    :cond_48
    const/4 v4, 0x2

    goto :goto_1c

    :cond_49
    const/4 v4, 0x3

    .line 149
    :goto_1c
    new-instance v5, Lcom/shabakaty/downloader/r05;

    const-string v7, "width"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "height"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v5, v7, v0, v4}, Lcom/shabakaty/downloader/r05;-><init>(III)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1e

    :catch_2
    move-exception v0

    .line 150
    sget-object v4, Lcom/shabakaty/downloader/r05;->u:Lcom/shabakaty/downloader/pk2;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    aput-object v0, v5, v7

    const-string v0, "Error while creating a VideoInfo instance from JSON: %s"

    invoke-virtual {v4, v0, v5}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1d
    const/4 v5, 0x0

    .line 151
    :goto_1e
    iget-object v0, v1, Lcom/shabakaty/downloader/dr2;->K:Lcom/shabakaty/downloader/r05;

    if-nez v0, :cond_4a

    if-nez v5, :cond_4b

    :cond_4a
    if-eqz v0, :cond_4c

    .line 152
    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/r05;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 153
    :cond_4b
    iput-object v5, v1, Lcom/shabakaty/downloader/dr2;->K:Lcom/shabakaty/downloader/r05;

    or-int/lit8 v2, v2, 0x40

    :cond_4c
    const-string v0, "breakInfo"

    .line 154
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4d

    iget-object v4, v1, Lcom/shabakaty/downloader/dr2;->r:Lcom/google/android/gms/cast/MediaInfo;

    if-eqz v4, :cond_4d

    .line 155
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/cast/MediaInfo;->o1(Lorg/json/JSONObject;)V

    or-int/lit8 v2, v2, 0x2

    :cond_4d
    const-string v0, "queueData"

    .line 156
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 157
    new-instance v0, Lcom/shabakaty/downloader/rp2;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/shabakaty/downloader/rp2;-><init>(Lcom/shabakaty/downloader/cl3;)V

    const-string v5, "queueData"

    .line 158
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 159
    invoke-virtual {v0}, Lcom/shabakaty/downloader/rp2;->clear()V

    if-nez v5, :cond_4e

    goto/16 :goto_26

    :cond_4e
    const-string v7, "id"

    .line 160
    invoke-virtual {v5, v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/shabakaty/downloader/rp2;->r:Ljava/lang/String;

    const-string v7, "entity"

    .line 161
    invoke-virtual {v5, v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/shabakaty/downloader/rp2;->s:Ljava/lang/String;

    const-string v4, "queueType"

    .line 162
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 163
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x7

    const/4 v8, 0x6

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/16 v10, 0x8

    sparse-switch v9, :sswitch_data_0

    goto/16 :goto_1f

    :sswitch_0
    const-string v9, "LIVE_TV"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    goto/16 :goto_1f

    :cond_4f
    const/16 v4, 0x8

    goto/16 :goto_20

    :sswitch_1
    const-string v9, "VIDEO_PLAYLIST"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_50

    goto :goto_1f

    :cond_50
    const/4 v4, 0x7

    goto :goto_20

    :sswitch_2
    const-string v9, "MOVIE"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_51

    goto :goto_1f

    :cond_51
    const/4 v4, 0x6

    goto :goto_20

    :sswitch_3
    const-string v9, "ALBUM"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_52

    goto :goto_1f

    :cond_52
    const/4 v4, 0x5

    goto :goto_20

    :sswitch_4
    const-string v9, "TV_SERIES"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    goto :goto_1f

    :cond_53
    const/4 v4, 0x4

    goto :goto_20

    :sswitch_5
    const-string v9, "AUDIOBOOK"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_54

    goto :goto_1f

    :cond_54
    const/4 v4, 0x3

    goto :goto_20

    :sswitch_6
    const-string v9, "PLAYLIST"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_55

    goto :goto_1f

    :cond_55
    const/4 v4, 0x2

    goto :goto_20

    :sswitch_7
    const-string v9, "RADIO_STATION"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_56

    goto :goto_1f

    :cond_56
    const/4 v4, 0x1

    goto :goto_20

    :sswitch_8
    const-string v9, "PODCAST_SERIES"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_57

    goto :goto_1f

    :cond_57
    const/4 v4, 0x0

    goto :goto_20

    :goto_1f
    const/4 v4, -0x1

    :goto_20
    packed-switch v4, :pswitch_data_0

    goto :goto_21

    .line 164
    :pswitch_0
    iput v10, v0, Lcom/shabakaty/downloader/rp2;->t:I

    goto :goto_21

    .line 165
    :pswitch_1
    iput v7, v0, Lcom/shabakaty/downloader/rp2;->t:I

    goto :goto_21

    :pswitch_2
    const/16 v4, 0x9

    .line 166
    iput v4, v0, Lcom/shabakaty/downloader/rp2;->t:I

    goto :goto_21

    :pswitch_3
    const/4 v4, 0x1

    .line 167
    iput v4, v0, Lcom/shabakaty/downloader/rp2;->t:I

    goto :goto_21

    .line 168
    :pswitch_4
    iput v8, v0, Lcom/shabakaty/downloader/rp2;->t:I

    goto :goto_21

    :pswitch_5
    const/4 v4, 0x3

    .line 169
    iput v4, v0, Lcom/shabakaty/downloader/rp2;->t:I

    goto :goto_21

    :pswitch_6
    const/4 v4, 0x2

    .line 170
    iput v4, v0, Lcom/shabakaty/downloader/rp2;->t:I

    goto :goto_21

    :pswitch_7
    const/4 v4, 0x4

    .line 171
    iput v4, v0, Lcom/shabakaty/downloader/rp2;->t:I

    goto :goto_21

    :pswitch_8
    const/4 v4, 0x5

    .line 172
    iput v4, v0, Lcom/shabakaty/downloader/rp2;->t:I

    :goto_21
    const-string v4, "name"

    const/4 v7, 0x0

    .line 173
    invoke-virtual {v5, v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/shabakaty/downloader/rp2;->u:Ljava/lang/String;

    const-string v4, "containerMetadata"

    .line 174
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 175
    new-instance v8, Lcom/shabakaty/downloader/qp2;

    invoke-direct {v8, v7}, Lcom/shabakaty/downloader/qp2;-><init>(Lcom/shabakaty/downloader/ol3;)V

    .line 176
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v9, 0x0

    .line 177
    iput v9, v8, Lcom/shabakaty/downloader/qp2;->r:I

    .line 178
    iput-object v7, v8, Lcom/shabakaty/downloader/qp2;->s:Ljava/lang/String;

    .line 179
    iput-object v7, v8, Lcom/shabakaty/downloader/qp2;->t:Ljava/util/List;

    .line 180
    iput-object v7, v8, Lcom/shabakaty/downloader/qp2;->u:Ljava/util/List;

    const-wide/16 v9, 0x0

    .line 181
    iput-wide v9, v8, Lcom/shabakaty/downloader/qp2;->v:D

    if-nez v4, :cond_58

    goto/16 :goto_24

    :cond_58
    const-string v7, "containerType"

    const-string v9, ""

    .line 182
    invoke-virtual {v4, v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 183
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "AUDIOBOOK_CONTAINER"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5a

    const-string v9, "GENERIC_CONTAINER"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_59

    goto :goto_22

    :cond_59
    const/4 v7, 0x0

    .line 184
    iput v7, v8, Lcom/shabakaty/downloader/qp2;->r:I

    goto :goto_22

    :cond_5a
    const/4 v7, 0x1

    .line 185
    iput v7, v8, Lcom/shabakaty/downloader/qp2;->r:I

    :goto_22
    const-string v7, "title"

    const/4 v9, 0x0

    .line 186
    invoke-virtual {v4, v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Lcom/shabakaty/downloader/qp2;->s:Ljava/lang/String;

    const-string v7, "sections"

    .line 187
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_5c

    .line 188
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v8, Lcom/shabakaty/downloader/qp2;->t:Ljava/util/List;

    const/4 v9, 0x0

    .line 189
    :goto_23
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_5c

    .line 190
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_5b

    .line 191
    new-instance v11, Lcom/shabakaty/downloader/ip2;

    const/4 v12, 0x0

    .line 192
    invoke-direct {v11, v12}, Lcom/shabakaty/downloader/ip2;-><init>(I)V

    .line 193
    invoke-virtual {v11, v10}, Lcom/shabakaty/downloader/ip2;->W0(Lorg/json/JSONObject;)V

    .line 194
    iget-object v10, v8, Lcom/shabakaty/downloader/qp2;->t:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5b
    add-int/lit8 v9, v9, 0x1

    goto :goto_23

    :cond_5c
    const-string v7, "containerImages"

    .line 195
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_5d

    .line 196
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v8, Lcom/shabakaty/downloader/qp2;->u:Ljava/util/List;

    .line 197
    invoke-static {v9, v7}, Lcom/shabakaty/downloader/fe5;->a(Ljava/util/List;Lorg/json/JSONArray;)V

    .line 198
    :cond_5d
    iget-wide v9, v8, Lcom/shabakaty/downloader/qp2;->v:D

    const-string v7, "containerDuration"

    invoke-virtual {v4, v7, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    iput-wide v9, v8, Lcom/shabakaty/downloader/qp2;->v:D

    .line 199
    :goto_24
    new-instance v4, Lcom/shabakaty/downloader/qp2;

    const/4 v7, 0x0

    invoke-direct {v4, v8, v7}, Lcom/shabakaty/downloader/qp2;-><init>(Lcom/shabakaty/downloader/qp2;Lcom/shabakaty/downloader/ol3;)V

    .line 200
    iput-object v4, v0, Lcom/shabakaty/downloader/rp2;->v:Lcom/shabakaty/downloader/qp2;

    :cond_5e
    move-object/from16 v4, p1

    .line 201
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/shabakaty/downloader/cl3;->m(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_5f

    .line 202
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Lcom/shabakaty/downloader/rp2;->w:I

    .line 203
    :cond_5f
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_61

    .line 204
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/shabakaty/downloader/rp2;->x:Ljava/util/List;

    const/4 v4, 0x0

    .line 205
    :goto_25
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_61

    .line 206
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_60

    .line 207
    :try_start_3
    iget-object v8, v0, Lcom/shabakaty/downloader/rp2;->x:Ljava/util/List;

    new-instance v9, Lcom/shabakaty/downloader/sp2;

    invoke-direct {v9, v7}, Lcom/shabakaty/downloader/sp2;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 208
    :cond_61
    iget v3, v0, Lcom/shabakaty/downloader/rp2;->y:I

    const-string v4, "startIndex"

    invoke-virtual {v5, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/shabakaty/downloader/rp2;->y:I

    const-string v3, "startTime"

    .line 209
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 210
    iget-wide v7, v0, Lcom/shabakaty/downloader/rp2;->z:J

    long-to-double v7, v7

    invoke-virtual {v5, v3, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    .line 211
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/yw;->c(D)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/shabakaty/downloader/rp2;->z:J

    .line 212
    :cond_62
    :goto_26
    new-instance v3, Lcom/shabakaty/downloader/rp2;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/shabakaty/downloader/rp2;-><init>(Lcom/shabakaty/downloader/rp2;Lcom/shabakaty/downloader/cl3;)V

    .line 213
    iput-object v3, v1, Lcom/shabakaty/downloader/dr2;->M:Lcom/shabakaty/downloader/rp2;

    :cond_63
    const-string v0, "liveSeekableRange"

    .line 214
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    const-string v0, "liveSeekableRange"

    .line 215
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v3, Lcom/shabakaty/downloader/ep2;->v:Lcom/shabakaty/downloader/pk2;

    if-nez v0, :cond_64

    goto :goto_27

    :cond_64
    const-string v3, "start"

    .line 216
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_66

    const-string v4, "end"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_65

    goto :goto_27

    .line 217
    :cond_65
    :try_start_4
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/yw;->c(D)J

    move-result-wide v8

    .line 218
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/yw;->c(D)J

    move-result-wide v10

    const-string v3, "isMovingWindow"

    .line 219
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v12

    const-string v3, "isLiveDone"

    .line 220
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 221
    new-instance v3, Lcom/shabakaty/downloader/ep2;

    move-object v7, v3

    invoke-direct/range {v7 .. v13}, Lcom/shabakaty/downloader/ep2;-><init>(JJZZ)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_28

    .line 222
    :catch_4
    sget-object v3, Lcom/shabakaty/downloader/ep2;->v:Lcom/shabakaty/downloader/pk2;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2b

    const-string v5, "Ignoring Malformed MediaLiveSeekableRange: "

    invoke-static {v4, v5, v0}, Lcom/shabakaty/downloader/re;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Lcom/shabakaty/downloader/pk2;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_66
    :goto_27
    const/4 v3, 0x0

    .line 223
    :goto_28
    iput-object v3, v1, Lcom/shabakaty/downloader/dr2;->L:Lcom/shabakaty/downloader/ep2;

    or-int/lit8 v0, v2, 0x2

    goto :goto_29

    .line 224
    :cond_67
    iget-object v0, v1, Lcom/shabakaty/downloader/dr2;->L:Lcom/shabakaty/downloader/ep2;

    if-eqz v0, :cond_68

    or-int/lit8 v2, v2, 0x2

    :cond_68
    const/4 v0, 0x0

    .line 225
    iput-object v0, v1, Lcom/shabakaty/downloader/dr2;->L:Lcom/shabakaty/downloader/ep2;

    move v0, v2

    :goto_29
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x6b79e7ce -> :sswitch_8
        -0x68d6bb50 -> :sswitch_7
        -0x61538e2e -> :sswitch_6
        -0x4ea9f461 -> :sswitch_5
        -0x40e1912c -> :sswitch_4
        0x3b7864f -> :sswitch_3
        0x4624710 -> :sswitch_2
        0x176e3d36 -> :sswitch_1
        0x35c80eb5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final H1(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/sp2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dr2;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/dr2;->N:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/sp2;

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/dr2;->H:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/dr2;->N:Landroid/util/SparseArray;

    .line 7
    iget v1, v1, Lcom/shabakaty/downloader/sp2;->s:I

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public W0()Lcom/shabakaty/downloader/h4;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dr2;->J:Lcom/shabakaty/downloader/j4;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/shabakaty/downloader/dr2;->r:Lcom/google/android/gms/cast/MediaInfo;

    if-nez v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/downloader/j4;->u:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/shabakaty/downloader/dr2;->r:Lcom/google/android/gms/cast/MediaInfo;

    .line 5
    iget-object v2, v2, Lcom/google/android/gms/cast/MediaInfo;->A:Ljava/util/List;

    if-nez v2, :cond_2

    move-object v2, v1

    goto :goto_0

    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_5

    .line 6
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/h4;

    .line 8
    iget-object v4, v3, Lcom/shabakaty/downloader/h4;->r:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-object v3

    :cond_5
    :goto_1
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/dr2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/dr2;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/dr2;->F:Lorg/json/JSONObject;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lcom/shabakaty/downloader/dr2;->F:Lorg/json/JSONObject;

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_4

    return v2

    .line 4
    :cond_4
    iget-wide v3, p0, Lcom/shabakaty/downloader/dr2;->s:J

    iget-wide v5, p1, Lcom/shabakaty/downloader/dr2;->s:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_6

    iget v1, p0, Lcom/shabakaty/downloader/dr2;->t:I

    iget v3, p1, Lcom/shabakaty/downloader/dr2;->t:I

    if-ne v1, v3, :cond_6

    iget-wide v3, p0, Lcom/shabakaty/downloader/dr2;->u:D

    iget-wide v5, p1, Lcom/shabakaty/downloader/dr2;->u:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_6

    iget v1, p0, Lcom/shabakaty/downloader/dr2;->v:I

    iget v3, p1, Lcom/shabakaty/downloader/dr2;->v:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/shabakaty/downloader/dr2;->w:I

    iget v3, p1, Lcom/shabakaty/downloader/dr2;->w:I

    if-ne v1, v3, :cond_6

    iget-wide v3, p0, Lcom/shabakaty/downloader/dr2;->x:J

    iget-wide v5, p1, Lcom/shabakaty/downloader/dr2;->x:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_6

    iget-wide v3, p0, Lcom/shabakaty/downloader/dr2;->z:D

    iget-wide v5, p1, Lcom/shabakaty/downloader/dr2;->z:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/shabakaty/downloader/dr2;->A:Z

    iget-boolean v3, p1, Lcom/shabakaty/downloader/dr2;->A:Z

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/shabakaty/downloader/dr2;->C:I

    iget v3, p1, Lcom/shabakaty/downloader/dr2;->C:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/shabakaty/downloader/dr2;->D:I

    iget v3, p1, Lcom/shabakaty/downloader/dr2;->D:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/shabakaty/downloader/dr2;->G:I

    iget v3, p1, Lcom/shabakaty/downloader/dr2;->G:I

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/shabakaty/downloader/dr2;->B:[J

    iget-object v3, p1, Lcom/shabakaty/downloader/dr2;->B:[J

    .line 5
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-wide v3, p0, Lcom/shabakaty/downloader/dr2;->y:J

    .line 6
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lcom/shabakaty/downloader/dr2;->y:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/shabakaty/downloader/dr2;->H:Ljava/util/List;

    iget-object v3, p1, Lcom/shabakaty/downloader/dr2;->H:Ljava/util/List;

    .line 7
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/shabakaty/downloader/dr2;->r:Lcom/google/android/gms/cast/MediaInfo;

    iget-object v3, p1, Lcom/shabakaty/downloader/dr2;->r:Lcom/google/android/gms/cast/MediaInfo;

    .line 8
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/dr2;->F:Lorg/json/JSONObject;

    if-eqz v1, :cond_5

    iget-object v3, p1, Lcom/shabakaty/downloader/dr2;->F:Lorg/json/JSONObject;

    if-eqz v3, :cond_5

    .line 10
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/na2;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_6

    .line 11
    iget-boolean v1, p0, Lcom/shabakaty/downloader/dr2;->I:Z

    .line 12
    iget-boolean v3, p1, Lcom/shabakaty/downloader/dr2;->I:Z

    if-ne v1, v3, :cond_6

    .line 13
    iget-object v1, p0, Lcom/shabakaty/downloader/dr2;->J:Lcom/shabakaty/downloader/j4;

    iget-object v3, p1, Lcom/shabakaty/downloader/dr2;->J:Lcom/shabakaty/downloader/j4;

    .line 14
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/shabakaty/downloader/dr2;->K:Lcom/shabakaty/downloader/r05;

    iget-object v3, p1, Lcom/shabakaty/downloader/dr2;->K:Lcom/shabakaty/downloader/r05;

    .line 15
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/shabakaty/downloader/dr2;->L:Lcom/shabakaty/downloader/ep2;

    iget-object v3, p1, Lcom/shabakaty/downloader/dr2;->L:Lcom/shabakaty/downloader/ep2;

    .line 16
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/shabakaty/downloader/dr2;->M:Lcom/shabakaty/downloader/rp2;

    iget-object p1, p1, Lcom/shabakaty/downloader/dr2;->M:Lcom/shabakaty/downloader/rp2;

    .line 17
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v0

    :cond_6
    return v2
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/shabakaty/downloader/dr2;->r:Lcom/google/android/gms/cast/MediaInfo;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/shabakaty/downloader/dr2;->s:J

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/shabakaty/downloader/dr2;->t:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/shabakaty/downloader/dr2;->u:D

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/shabakaty/downloader/dr2;->v:I

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/shabakaty/downloader/dr2;->w:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/shabakaty/downloader/dr2;->x:J

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/shabakaty/downloader/dr2;->y:J

    .line 8
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/shabakaty/downloader/dr2;->z:D

    .line 9
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/shabakaty/downloader/dr2;->A:Z

    .line 10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/dr2;->B:[J

    .line 11
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Lcom/shabakaty/downloader/dr2;->C:I

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Lcom/shabakaty/downloader/dr2;->D:I

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/dr2;->F:Lorg/json/JSONObject;

    .line 14
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget v1, p0, Lcom/shabakaty/downloader/dr2;->G:I

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/dr2;->H:Ljava/util/List;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/shabakaty/downloader/dr2;->I:Z

    .line 16
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/dr2;->J:Lcom/shabakaty/downloader/j4;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/dr2;->K:Lcom/shabakaty/downloader/r05;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/dr2;->L:Lcom/shabakaty/downloader/ep2;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/dr2;->M:Lcom/shabakaty/downloader/rp2;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 17
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public o1(I)Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dr2;->N:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dr2;->F:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/shabakaty/downloader/dr2;->E:Ljava/lang/String;

    const/16 v0, 0x4f45

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->n(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x2

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/dr2;->r:Lcom/google/android/gms/cast/MediaInfo;

    const/4 v3, 0x0

    .line 4
    invoke-static {p1, v1, v2, p2, v3}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    .line 5
    iget-wide v4, p0, Lcom/shabakaty/downloader/dr2;->s:J

    const/16 v2, 0x8

    .line 6
    invoke-static {p1, v1, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 8
    iget v1, p0, Lcom/shabakaty/downloader/dr2;->t:I

    const/4 v4, 0x4

    .line 9
    invoke-static {p1, v4, v4}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 10
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x5

    .line 11
    iget-wide v5, p0, Lcom/shabakaty/downloader/dr2;->u:D

    .line 12
    invoke-static {p1, v1, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 13
    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeDouble(D)V

    const/4 v1, 0x6

    .line 14
    iget v5, p0, Lcom/shabakaty/downloader/dr2;->v:I

    .line 15
    invoke-static {p1, v1, v4}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 16
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x7

    .line 17
    iget v5, p0, Lcom/shabakaty/downloader/dr2;->w:I

    .line 18
    invoke-static {p1, v1, v4}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 19
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    iget-wide v5, p0, Lcom/shabakaty/downloader/dr2;->x:J

    .line 21
    invoke-static {p1, v2, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 22
    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v1, 0x9

    .line 23
    iget-wide v5, p0, Lcom/shabakaty/downloader/dr2;->y:J

    .line 24
    invoke-static {p1, v1, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 25
    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v1, 0xa

    .line 26
    iget-wide v5, p0, Lcom/shabakaty/downloader/dr2;->z:D

    .line 27
    invoke-static {p1, v1, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 28
    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeDouble(D)V

    const/16 v1, 0xb

    .line 29
    iget-boolean v2, p0, Lcom/shabakaty/downloader/dr2;->A:Z

    .line 30
    invoke-static {p1, v1, v4}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 31
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v1, 0xc

    .line 32
    iget-object v2, p0, Lcom/shabakaty/downloader/dr2;->B:[J

    .line 33
    invoke-static {p1, v1, v2, v3}, Lcom/shabakaty/downloader/vw3;->g(Landroid/os/Parcel;I[JZ)V

    const/16 v1, 0xd

    .line 34
    iget v2, p0, Lcom/shabakaty/downloader/dr2;->C:I

    .line 35
    invoke-static {p1, v1, v4}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 36
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v1, 0xe

    .line 37
    iget v2, p0, Lcom/shabakaty/downloader/dr2;->D:I

    .line 38
    invoke-static {p1, v1, v4}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 39
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v1, 0xf

    .line 40
    iget-object v2, p0, Lcom/shabakaty/downloader/dr2;->E:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x10

    .line 41
    iget v2, p0, Lcom/shabakaty/downloader/dr2;->G:I

    .line 42
    invoke-static {p1, v1, v4}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 43
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v1, 0x11

    .line 44
    iget-object v2, p0, Lcom/shabakaty/downloader/dr2;->H:Ljava/util/List;

    invoke-static {p1, v1, v2, v3}, Lcom/shabakaty/downloader/vw3;->m(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v1, 0x12

    .line 45
    iget-boolean v2, p0, Lcom/shabakaty/downloader/dr2;->I:Z

    .line 46
    invoke-static {p1, v1, v4}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 47
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v1, 0x13

    .line 48
    iget-object v2, p0, Lcom/shabakaty/downloader/dr2;->J:Lcom/shabakaty/downloader/j4;

    .line 49
    invoke-static {p1, v1, v2, p2, v3}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x14

    .line 50
    iget-object v2, p0, Lcom/shabakaty/downloader/dr2;->K:Lcom/shabakaty/downloader/r05;

    .line 51
    invoke-static {p1, v1, v2, p2, v3}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x15

    .line 52
    iget-object v2, p0, Lcom/shabakaty/downloader/dr2;->L:Lcom/shabakaty/downloader/ep2;

    .line 53
    invoke-static {p1, v1, v2, p2, v3}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x16

    .line 54
    iget-object v2, p0, Lcom/shabakaty/downloader/dr2;->M:Lcom/shabakaty/downloader/rp2;

    .line 55
    invoke-static {p1, v1, v2, p2, v3}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 56
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
