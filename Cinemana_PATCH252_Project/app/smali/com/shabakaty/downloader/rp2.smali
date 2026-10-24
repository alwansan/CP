.class public Lcom/shabakaty/downloader/rp2;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/rp2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:I

.field public u:Ljava/lang/String;

.field public v:Lcom/shabakaty/downloader/qp2;

.field public w:I

.field public x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/sp2;",
            ">;"
        }
    .end annotation
.end field

.field public y:I

.field public z:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/sr5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/sr5;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/rp2;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    .line 12
    invoke-virtual {p0}, Lcom/shabakaty/downloader/rp2;->clear()V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/cl3;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    .line 14
    invoke-virtual {p0}, Lcom/shabakaty/downloader/rp2;->clear()V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/rp2;Lcom/shabakaty/downloader/cl3;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    .line 16
    iget-object p2, p1, Lcom/shabakaty/downloader/rp2;->r:Ljava/lang/String;

    iput-object p2, p0, Lcom/shabakaty/downloader/rp2;->r:Ljava/lang/String;

    .line 17
    iget-object p2, p1, Lcom/shabakaty/downloader/rp2;->s:Ljava/lang/String;

    iput-object p2, p0, Lcom/shabakaty/downloader/rp2;->s:Ljava/lang/String;

    .line 18
    iget p2, p1, Lcom/shabakaty/downloader/rp2;->t:I

    iput p2, p0, Lcom/shabakaty/downloader/rp2;->t:I

    .line 19
    iget-object p2, p1, Lcom/shabakaty/downloader/rp2;->u:Ljava/lang/String;

    iput-object p2, p0, Lcom/shabakaty/downloader/rp2;->u:Ljava/lang/String;

    .line 20
    iget-object p2, p1, Lcom/shabakaty/downloader/rp2;->v:Lcom/shabakaty/downloader/qp2;

    iput-object p2, p0, Lcom/shabakaty/downloader/rp2;->v:Lcom/shabakaty/downloader/qp2;

    .line 21
    iget p2, p1, Lcom/shabakaty/downloader/rp2;->w:I

    iput p2, p0, Lcom/shabakaty/downloader/rp2;->w:I

    .line 22
    iget-object p2, p1, Lcom/shabakaty/downloader/rp2;->x:Ljava/util/List;

    iput-object p2, p0, Lcom/shabakaty/downloader/rp2;->x:Ljava/util/List;

    .line 23
    iget p2, p1, Lcom/shabakaty/downloader/rp2;->y:I

    iput p2, p0, Lcom/shabakaty/downloader/rp2;->y:I

    .line 24
    iget-wide p1, p1, Lcom/shabakaty/downloader/rp2;->z:J

    iput-wide p1, p0, Lcom/shabakaty/downloader/rp2;->z:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/shabakaty/downloader/qp2;ILjava/util/List;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/qp2;",
            "I",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/sp2;",
            ">;IJ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/rp2;->r:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/rp2;->s:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/shabakaty/downloader/rp2;->t:I

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/rp2;->u:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/rp2;->v:Lcom/shabakaty/downloader/qp2;

    .line 7
    iput p6, p0, Lcom/shabakaty/downloader/rp2;->w:I

    .line 8
    iput-object p7, p0, Lcom/shabakaty/downloader/rp2;->x:Ljava/util/List;

    .line 9
    iput p8, p0, Lcom/shabakaty/downloader/rp2;->y:I

    .line 10
    iput-wide p9, p0, Lcom/shabakaty/downloader/rp2;->z:J

    return-void
.end method


# virtual methods
.method public final W0()Lorg/json/JSONObject;
    .locals 6

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/rp2;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "id"

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/rp2;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/rp2;->s:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "entity"

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/rp2;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    :cond_1
    iget v1, p0, Lcom/shabakaty/downloader/rp2;->t:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "queueType"

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_1
    const-string v1, "MOVIE"

    .line 7
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :pswitch_1
    const-string v1, "LIVE_TV"

    .line 8
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :pswitch_2
    const-string v1, "VIDEO_PLAYLIST"

    .line 9
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :pswitch_3
    const-string v1, "TV_SERIES"

    .line 10
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :pswitch_4
    const-string v1, "PODCAST_SERIES"

    .line 11
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :pswitch_5
    const-string v1, "RADIO_STATION"

    .line 12
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :pswitch_6
    const-string v1, "AUDIOBOOK"

    .line 13
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :pswitch_7
    const-string v1, "PLAYLIST"

    .line 14
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :pswitch_8
    const-string v1, "ALBUM"

    .line 15
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/rp2;->u:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "name"

    .line 17
    iget-object v2, p0, Lcom/shabakaty/downloader/rp2;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/rp2;->v:Lcom/shabakaty/downloader/qp2;

    if-eqz v1, :cond_3

    const-string v2, "containerMetadata"

    .line 19
    invoke-virtual {v1}, Lcom/shabakaty/downloader/qp2;->W0()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    :cond_3
    iget v1, p0, Lcom/shabakaty/downloader/rp2;->w:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/cl3;->p(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "repeatMode"

    .line 21
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    :cond_4
    iget-object v1, p0, Lcom/shabakaty/downloader/rp2;->x:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 23
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 24
    iget-object v2, p0, Lcom/shabakaty/downloader/rp2;->x:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/sp2;

    .line 25
    invoke-virtual {v3}, Lcom/shabakaty/downloader/sp2;->o1()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_5
    const-string v2, "items"

    .line 26
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    const-string v1, "startIndex"

    .line 27
    iget v2, p0, Lcom/shabakaty/downloader/rp2;->y:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 28
    iget-wide v1, p0, Lcom/shabakaty/downloader/rp2;->z:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_7

    const-string v3, "startTime"

    .line 29
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/yw;->b(J)D

    move-result-wide v1

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_7
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final clear()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/shabakaty/downloader/rp2;->r:Ljava/lang/String;

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/rp2;->s:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/shabakaty/downloader/rp2;->t:I

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/rp2;->u:Ljava/lang/String;

    .line 5
    iput v1, p0, Lcom/shabakaty/downloader/rp2;->w:I

    .line 6
    iput-object v0, p0, Lcom/shabakaty/downloader/rp2;->x:Ljava/util/List;

    .line 7
    iput v1, p0, Lcom/shabakaty/downloader/rp2;->y:I

    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Lcom/shabakaty/downloader/rp2;->z:J

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/rp2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/rp2;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/rp2;->r:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/rp2;->r:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/rp2;->s:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/rp2;->s:Ljava/lang/String;

    .line 4
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/shabakaty/downloader/rp2;->t:I

    iget v3, p1, Lcom/shabakaty/downloader/rp2;->t:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/rp2;->u:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/rp2;->u:Ljava/lang/String;

    .line 5
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/rp2;->v:Lcom/shabakaty/downloader/qp2;

    iget-object v3, p1, Lcom/shabakaty/downloader/rp2;->v:Lcom/shabakaty/downloader/qp2;

    .line 6
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/shabakaty/downloader/rp2;->w:I

    iget v3, p1, Lcom/shabakaty/downloader/rp2;->w:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/rp2;->x:Ljava/util/List;

    iget-object v3, p1, Lcom/shabakaty/downloader/rp2;->x:Ljava/util/List;

    .line 7
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/shabakaty/downloader/rp2;->y:I

    iget v3, p1, Lcom/shabakaty/downloader/rp2;->y:I

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Lcom/shabakaty/downloader/rp2;->z:J

    iget-wide v5, p1, Lcom/shabakaty/downloader/rp2;->z:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/shabakaty/downloader/rp2;->r:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/rp2;->s:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/shabakaty/downloader/rp2;->t:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/rp2;->u:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/rp2;->v:Lcom/shabakaty/downloader/qp2;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/shabakaty/downloader/rp2;->w:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/rp2;->x:Ljava/util/List;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lcom/shabakaty/downloader/rp2;->y:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/shabakaty/downloader/rp2;->z:J

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 6
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->n(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x2

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/rp2;->r:Ljava/lang/String;

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v1, v2, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/rp2;->s:Ljava/lang/String;

    .line 5
    invoke-static {p1, v1, v2, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 6
    iget v1, p0, Lcom/shabakaty/downloader/rp2;->t:I

    const/4 v2, 0x4

    .line 7
    invoke-static {p1, v2, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x5

    .line 9
    iget-object v4, p0, Lcom/shabakaty/downloader/rp2;->u:Ljava/lang/String;

    .line 10
    invoke-static {p1, v1, v4, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x6

    .line 11
    iget-object v4, p0, Lcom/shabakaty/downloader/rp2;->v:Lcom/shabakaty/downloader/qp2;

    .line 12
    invoke-static {p1, v1, v4, p2, v3}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x7

    .line 13
    iget v1, p0, Lcom/shabakaty/downloader/rp2;->w:I

    .line 14
    invoke-static {p1, p2, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 15
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    iget-object p2, p0, Lcom/shabakaty/downloader/rp2;->x:Ljava/util/List;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    :goto_0
    const/16 v1, 0x8

    .line 17
    invoke-static {p1, v1, p2, v3}, Lcom/shabakaty/downloader/vw3;->m(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 p2, 0x9

    .line 18
    iget v3, p0, Lcom/shabakaty/downloader/rp2;->y:I

    .line 19
    invoke-static {p1, p2, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 20
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0xa

    .line 21
    iget-wide v2, p0, Lcom/shabakaty/downloader/rp2;->z:J

    .line 22
    invoke-static {p1, p2, v1}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 23
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 24
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
