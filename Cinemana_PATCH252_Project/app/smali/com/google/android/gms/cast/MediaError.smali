.class public Lcom/google/android/gms/cast/MediaError;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-cast@@19.0.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/MediaError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public r:Ljava/lang/String;

.field public s:J

.field public final t:Ljava/lang/Integer;

.field public final u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public final w:Lorg/json/JSONObject;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/jp5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/jp5;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/MediaError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p6}, Lcom/shabakaty/downloader/yw;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p6

    .line 2
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaError;->r:Ljava/lang/String;

    .line 4
    iput-wide p2, p0, Lcom/google/android/gms/cast/MediaError;->s:J

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/cast/MediaError;->t:Ljava/lang/Integer;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/cast/MediaError;->u:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/cast/MediaError;->w:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/Integer;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaError;->r:Ljava/lang/String;

    .line 10
    iput-wide p2, p0, Lcom/google/android/gms/cast/MediaError;->s:J

    .line 11
    iput-object p4, p0, Lcom/google/android/gms/cast/MediaError;->t:Ljava/lang/Integer;

    .line 12
    iput-object p5, p0, Lcom/google/android/gms/cast/MediaError;->u:Ljava/lang/String;

    .line 13
    iput-object p6, p0, Lcom/google/android/gms/cast/MediaError;->w:Lorg/json/JSONObject;

    return-void
.end method

.method public static W0(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaError;
    .locals 9

    const-string v0, "type"

    const-string v1, "ERROR"

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "requestId"

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "detailedErrorCode"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, v2

    :goto_0
    const-string v0, "reason"

    .line 5
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object v7, v2

    :goto_1
    const-string v0, "customData"

    .line 6
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    move-object v8, p0

    goto :goto_2

    :cond_2
    move-object v8, v2

    .line 8
    :goto_2
    new-instance p0, Lcom/google/android/gms/cast/MediaError;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/cast/MediaError;-><init>(Ljava/lang/String;JLjava/lang/Integer;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object p0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/cast/MediaError;->w:Lorg/json/JSONObject;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/cast/MediaError;->v:Ljava/lang/String;

    const/16 p2, 0x4f45

    .line 2
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/vw3;->n(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x2

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaError;->r:Ljava/lang/String;

    const/4 v2, 0x0

    .line 4
    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x3

    .line 5
    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaError;->s:J

    const/16 v1, 0x8

    .line 6
    invoke-static {p1, v0, v1}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaError;->t:Ljava/lang/Integer;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    .line 9
    invoke-static {p1, v1, v1}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    const/4 v0, 0x5

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaError;->u:Ljava/lang/String;

    .line 12
    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x6

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaError;->v:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 14
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
