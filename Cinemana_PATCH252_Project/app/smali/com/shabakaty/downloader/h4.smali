.class public Lcom/shabakaty/downloader/h4;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/h4;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:J

.field public final B:Ljava/lang/String;

.field public final C:Lcom/shabakaty/downloader/zz4;

.field public D:Lorg/json/JSONObject;

.field public final r:Ljava/lang/String;

.field public final s:Ljava/lang/String;

.field public final t:J

.field public final u:Ljava/lang/String;

.field public final v:Ljava/lang/String;

.field public final w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/zd5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/zd5;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/h4;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/shabakaty/downloader/zz4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/h4;->r:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/h4;->s:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/shabakaty/downloader/h4;->t:J

    .line 5
    iput-object p5, p0, Lcom/shabakaty/downloader/h4;->u:Ljava/lang/String;

    .line 6
    iput-object p6, p0, Lcom/shabakaty/downloader/h4;->v:Ljava/lang/String;

    .line 7
    iput-object p7, p0, Lcom/shabakaty/downloader/h4;->w:Ljava/lang/String;

    .line 8
    iput-object p8, p0, Lcom/shabakaty/downloader/h4;->x:Ljava/lang/String;

    .line 9
    iput-object p9, p0, Lcom/shabakaty/downloader/h4;->y:Ljava/lang/String;

    .line 10
    iput-object p10, p0, Lcom/shabakaty/downloader/h4;->z:Ljava/lang/String;

    .line 11
    iput-wide p11, p0, Lcom/shabakaty/downloader/h4;->A:J

    .line 12
    iput-object p13, p0, Lcom/shabakaty/downloader/h4;->B:Ljava/lang/String;

    .line 13
    iput-object p14, p0, Lcom/shabakaty/downloader/h4;->C:Lcom/shabakaty/downloader/zz4;

    .line 14
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 15
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/h4;->D:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 16
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    .line 17
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, p4

    const-string p1, "Error creating AdBreakClipInfo: %s"

    invoke-static {p2, p1, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AdBreakClipInfo"

    .line 18
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/shabakaty/downloader/h4;->x:Ljava/lang/String;

    .line 20
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/h4;->D:Lorg/json/JSONObject;

    return-void

    .line 21
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/h4;->D:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final W0()Lorg/json/JSONObject;
    .locals 6

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "id"

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/h4;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "duration"

    .line 3
    iget-wide v2, p0, Lcom/shabakaty/downloader/h4;->t:J

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/yw;->b(J)D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 4
    iget-wide v1, p0, Lcom/shabakaty/downloader/h4;->A:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const-string v3, "whenSkippable"

    .line 5
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/yw;->b(J)D

    move-result-wide v1

    .line 6
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->y:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "contentId"

    .line 8
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->v:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "contentType"

    .line 10
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->s:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "title"

    .line 12
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    :cond_3
    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->u:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v2, "contentUrl"

    .line 14
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    :cond_4
    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->w:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v2, "clickThroughUrl"

    .line 16
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    :cond_5
    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->D:Lorg/json/JSONObject;

    if-eqz v1, :cond_6

    const-string v2, "customData"

    .line 18
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    :cond_6
    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->z:Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v2, "posterUrl"

    .line 20
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    :cond_7
    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->B:Ljava/lang/String;

    if-eqz v1, :cond_8

    const-string v2, "hlsSegmentFormat"

    .line 22
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    :cond_8
    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->C:Lcom/shabakaty/downloader/zz4;

    if-eqz v1, :cond_9

    const-string v2, "vastAdsRequest"

    .line 24
    invoke-virtual {v1}, Lcom/shabakaty/downloader/zz4;->o1()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_9
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/h4;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/h4;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->r:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/h4;->r:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->s:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/h4;->s:Ljava/lang/String;

    .line 4
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/shabakaty/downloader/h4;->t:J

    iget-wide v5, p1, Lcom/shabakaty/downloader/h4;->t:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->u:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/h4;->u:Ljava/lang/String;

    .line 5
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->v:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/h4;->v:Ljava/lang/String;

    .line 6
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->w:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/h4;->w:Ljava/lang/String;

    .line 7
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->x:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/h4;->x:Ljava/lang/String;

    .line 8
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->y:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/h4;->y:Ljava/lang/String;

    .line 9
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->z:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/h4;->z:Ljava/lang/String;

    .line 10
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/shabakaty/downloader/h4;->A:J

    iget-wide v5, p1, Lcom/shabakaty/downloader/h4;->A:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->B:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/h4;->B:Ljava/lang/String;

    .line 11
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->C:Lcom/shabakaty/downloader/zz4;

    iget-object p1, p1, Lcom/shabakaty/downloader/h4;->C:Lcom/shabakaty/downloader/zz4;

    .line 12
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->r:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->s:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/shabakaty/downloader/h4;->t:J

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->u:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->v:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->w:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->x:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->y:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->z:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/shabakaty/downloader/h4;->A:J

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->B:Ljava/lang/String;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->C:Lcom/shabakaty/downloader/zz4;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 4
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->n(Landroid/os/Parcel;I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->r:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v2, v1, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->s:Ljava/lang/String;

    const/4 v2, 0x3

    .line 5
    invoke-static {p1, v2, v1, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 6
    iget-wide v1, p0, Lcom/shabakaty/downloader/h4;->t:J

    const/4 v4, 0x4

    const/16 v5, 0x8

    .line 7
    invoke-static {p1, v4, v5}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 8
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->u:Ljava/lang/String;

    const/4 v2, 0x5

    .line 10
    invoke-static {p1, v2, v1, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 11
    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->v:Ljava/lang/String;

    const/4 v2, 0x6

    .line 12
    invoke-static {p1, v2, v1, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 13
    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->w:Ljava/lang/String;

    const/4 v2, 0x7

    .line 14
    invoke-static {p1, v2, v1, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 15
    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->x:Ljava/lang/String;

    .line 16
    invoke-static {p1, v5, v1, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 17
    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->y:Ljava/lang/String;

    const/16 v2, 0x9

    .line 18
    invoke-static {p1, v2, v1, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 19
    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->z:Ljava/lang/String;

    const/16 v2, 0xa

    .line 20
    invoke-static {p1, v2, v1, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 21
    iget-wide v1, p0, Lcom/shabakaty/downloader/h4;->A:J

    const/16 v4, 0xb

    .line 22
    invoke-static {p1, v4, v5}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 23
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 24
    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->B:Ljava/lang/String;

    const/16 v2, 0xc

    .line 25
    invoke-static {p1, v2, v1, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 26
    iget-object v1, p0, Lcom/shabakaty/downloader/h4;->C:Lcom/shabakaty/downloader/zz4;

    const/16 v2, 0xd

    .line 27
    invoke-static {p1, v2, v1, p2, v3}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 28
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
