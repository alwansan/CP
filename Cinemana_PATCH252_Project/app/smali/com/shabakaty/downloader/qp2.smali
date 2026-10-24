.class public Lcom/shabakaty/downloader/qp2;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/qp2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public r:I

.field public s:Ljava/lang/String;

.field public t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ip2;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/s55;",
            ">;"
        }
    .end annotation
.end field

.field public v:D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/er5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/er5;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/qp2;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/shabakaty/downloader/qp2;->r:I

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/shabakaty/downloader/qp2;->s:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/shabakaty/downloader/qp2;->t:Ljava/util/List;

    .line 11
    iput-object v0, p0, Lcom/shabakaty/downloader/qp2;->u:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcom/shabakaty/downloader/qp2;->v:D

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ip2;",
            ">;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/s55;",
            ">;D)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/qp2;->r:I

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/qp2;->s:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/qp2;->t:Ljava/util/List;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/qp2;->u:Ljava/util/List;

    .line 6
    iput-wide p5, p0, Lcom/shabakaty/downloader/qp2;->v:D

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/ol3;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/shabakaty/downloader/qp2;->r:I

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/shabakaty/downloader/qp2;->s:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/shabakaty/downloader/qp2;->t:Ljava/util/List;

    .line 17
    iput-object p1, p0, Lcom/shabakaty/downloader/qp2;->u:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 18
    iput-wide v0, p0, Lcom/shabakaty/downloader/qp2;->v:D

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/qp2;Lcom/shabakaty/downloader/ol3;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    .line 20
    iget p2, p1, Lcom/shabakaty/downloader/qp2;->r:I

    iput p2, p0, Lcom/shabakaty/downloader/qp2;->r:I

    .line 21
    iget-object p2, p1, Lcom/shabakaty/downloader/qp2;->s:Ljava/lang/String;

    iput-object p2, p0, Lcom/shabakaty/downloader/qp2;->s:Ljava/lang/String;

    .line 22
    iget-object p2, p1, Lcom/shabakaty/downloader/qp2;->t:Ljava/util/List;

    iput-object p2, p0, Lcom/shabakaty/downloader/qp2;->t:Ljava/util/List;

    .line 23
    iget-object p2, p1, Lcom/shabakaty/downloader/qp2;->u:Ljava/util/List;

    iput-object p2, p0, Lcom/shabakaty/downloader/qp2;->u:Ljava/util/List;

    .line 24
    iget-wide p1, p1, Lcom/shabakaty/downloader/qp2;->v:D

    iput-wide p1, p0, Lcom/shabakaty/downloader/qp2;->v:D

    return-void
.end method


# virtual methods
.method public final W0()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    :try_start_0
    iget v1, p0, Lcom/shabakaty/downloader/qp2;->r:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "containerType"

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v1, "AUDIOBOOK_CONTAINER"

    .line 3
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const-string v1, "GENERIC_CONTAINER"

    .line 4
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/qp2;->s:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "title"

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/qp2;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/qp2;->t:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 8
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 9
    iget-object v2, p0, Lcom/shabakaty/downloader/qp2;->t:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/ip2;

    .line 10
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ip2;->G1()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_3
    const-string v2, "sections"

    .line 11
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    :cond_4
    iget-object v1, p0, Lcom/shabakaty/downloader/qp2;->u:Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 13
    iget-object v1, p0, Lcom/shabakaty/downloader/qp2;->u:Ljava/util/List;

    invoke-static {v1}, Lcom/shabakaty/downloader/fe5;->c(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "containerImages"

    .line 14
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    const-string v1, "containerDuration"

    .line 15
    iget-wide v2, p0, Lcom/shabakaty/downloader/qp2;->v:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
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
    instance-of v1, p1, Lcom/shabakaty/downloader/qp2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/qp2;

    .line 3
    iget v1, p0, Lcom/shabakaty/downloader/qp2;->r:I

    iget v3, p1, Lcom/shabakaty/downloader/qp2;->r:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/qp2;->s:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/qp2;->s:Ljava/lang/String;

    .line 4
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/qp2;->t:Ljava/util/List;

    iget-object v3, p1, Lcom/shabakaty/downloader/qp2;->t:Ljava/util/List;

    .line 5
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/qp2;->u:Ljava/util/List;

    iget-object v3, p1, Lcom/shabakaty/downloader/qp2;->u:Ljava/util/List;

    .line 6
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/shabakaty/downloader/qp2;->v:D

    iget-wide v5, p1, Lcom/shabakaty/downloader/qp2;->v:D

    cmpl-double p1, v3, v5

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/qp2;->r:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/qp2;->s:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/qp2;->t:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/qp2;->u:Ljava/util/List;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/shabakaty/downloader/qp2;->v:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 p2, 0x4f45

    .line 1
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/vw3;->n(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x2

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/qp2;->r:I

    const/4 v2, 0x4

    .line 3
    invoke-static {p1, v0, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x3

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/qp2;->s:Ljava/lang/String;

    const/4 v3, 0x0

    .line 6
    invoke-static {p1, v0, v1, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/qp2;->t:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 8
    :goto_0
    invoke-static {p1, v2, v0, v3}, Lcom/shabakaty/downloader/vw3;->m(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v0, 0x5

    .line 9
    iget-object v2, p0, Lcom/shabakaty/downloader/qp2;->u:Ljava/util/List;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 10
    :goto_1
    invoke-static {p1, v0, v1, v3}, Lcom/shabakaty/downloader/vw3;->m(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v0, 0x6

    .line 11
    iget-wide v1, p0, Lcom/shabakaty/downloader/qp2;->v:D

    const/16 v3, 0x8

    .line 12
    invoke-static {p1, v0, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 13
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 14
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
