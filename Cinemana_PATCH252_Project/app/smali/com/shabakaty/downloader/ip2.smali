.class public Lcom/shabakaty/downloader/ip2;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ip2$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/ip2;",
            ">;"
        }
    .end annotation
.end field

.field public static final u:[Ljava/lang/String;

.field public static final v:Lcom/shabakaty/downloader/ip2$a;


# instance fields
.field public final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/s55;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Landroid/os/Bundle;

.field public t:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x0

    const-string v1, "String"

    const-string v2, "int"

    const-string v3, "double"

    const-string v4, "ISO-8601 date String"

    const-string v5, "Time in milliseconds as long"

    .line 1
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/ip2;->u:[Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/rq5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/rq5;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ip2;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/ip2$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ip2$a;-><init>()V

    const-string v1, "com.google.android.gms.cast.metadata.CREATION_DATE"

    const-string v2, "creationDateTime"

    const/4 v3, 0x4

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/ip2$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/ip2$a;

    const-string v1, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    const-string v2, "releaseDate"

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/ip2$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/ip2$a;

    const-string v1, "com.google.android.gms.cast.metadata.BROADCAST_DATE"

    const-string v2, "originalAirdate"

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/ip2$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/ip2$a;

    const-string v1, "com.google.android.gms.cast.metadata.TITLE"

    const-string v2, "title"

    const/4 v3, 0x1

    .line 7
    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/ip2$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/ip2$a;

    const-string v1, "com.google.android.gms.cast.metadata.SUBTITLE"

    const-string v2, "subtitle"

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/ip2$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/ip2$a;

    const-string v1, "com.google.android.gms.cast.metadata.ARTIST"

    const-string v2, "artist"

    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/ip2$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/ip2$a;

    const-string v1, "com.google.android.gms.cast.metadata.ALBUM_ARTIST"

    const-string v2, "albumArtist"

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/ip2$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/ip2$a;

    const-string v1, "com.google.android.gms.cast.metadata.ALBUM_TITLE"

    const-string v2, "albumName"

    .line 11
    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/ip2$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/ip2$a;

    const-string v1, "com.google.android.gms.cast.metadata.COMPOSER"

    const-string v2, "composer"

    .line 12
    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/ip2$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/ip2$a;

    const-string v1, "com.google.android.gms.cast.metadata.DISC_NUMBER"

    const-string v2, "discNumber"

    const/4 v4, 0x2

    .line 13
    invoke-virtual {v0, v1, v2, v4}, Lcom/shabakaty/downloader/ip2$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/ip2$a;

    const-string v1, "com.google.android.gms.cast.metadata.TRACK_NUMBER"

    const-string v2, "trackNumber"

    .line 14
    invoke-virtual {v0, v1, v2, v4}, Lcom/shabakaty/downloader/ip2$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/ip2$a;

    const-string v1, "com.google.android.gms.cast.metadata.SEASON_NUMBER"

    const-string v2, "season"

    .line 15
    invoke-virtual {v0, v1, v2, v4}, Lcom/shabakaty/downloader/ip2$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/ip2$a;

    const-string v1, "com.google.android.gms.cast.metadata.EPISODE_NUMBER"

    const-string v2, "episode"

    .line 16
    invoke-virtual {v0, v1, v2, v4}, Lcom/shabakaty/downloader/ip2$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/ip2$a;

    const-string v1, "com.google.android.gms.cast.metadata.SERIES_TITLE"

    const-string v2, "seriesTitle"

    .line 17
    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/ip2$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/ip2$a;

    const-string v1, "com.google.android.gms.cast.metadata.STUDIO"

    const-string v2, "studio"

    .line 18
    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/ip2$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/ip2$a;

    const-string v1, "com.google.android.gms.cast.metadata.WIDTH"

    const-string v2, "width"

    .line 19
    invoke-virtual {v0, v1, v2, v4}, Lcom/shabakaty/downloader/ip2$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/ip2$a;

    const-string v1, "com.google.android.gms.cast.metadata.HEIGHT"

    const-string v2, "height"

    .line 20
    invoke-virtual {v0, v1, v2, v4}, Lcom/shabakaty/downloader/ip2$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/ip2$a;

    const-string v1, "com.google.android.gms.cast.metadata.LOCATION_NAME"

    const-string v2, "location"

    .line 21
    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/ip2$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/ip2$a;

    const-string v1, "com.google.android.gms.cast.metadata.LOCATION_LATITUDE"

    const-string v2, "latitude"

    const/4 v5, 0x3

    .line 22
    invoke-virtual {v0, v1, v2, v5}, Lcom/shabakaty/downloader/ip2$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/ip2$a;

    const-string v1, "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE"

    const-string v2, "longitude"

    .line 23
    invoke-virtual {v0, v1, v2, v5}, Lcom/shabakaty/downloader/ip2$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/ip2$a;

    const-string v1, "com.google.android.gms.cast.metadata.SECTION_DURATION"

    const-string v2, "sectionDuration"

    const/4 v5, 0x5

    .line 24
    invoke-virtual {v0, v1, v2, v5}, Lcom/shabakaty/downloader/ip2$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/ip2$a;

    const-string v1, "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_MEDIA"

    const-string v2, "sectionStartTimeInMedia"

    .line 25
    invoke-virtual {v0, v1, v2, v5}, Lcom/shabakaty/downloader/ip2$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/ip2$a;

    const-string v1, "com.google.android.gms.cast.metadata.SECTION_START_ABSOLUTE_TIME"

    const-string v2, "sectionStartAbsoluteTime"

    .line 26
    invoke-virtual {v0, v1, v2, v5}, Lcom/shabakaty/downloader/ip2$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/ip2$a;

    const-string v1, "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_CONTAINER"

    const-string v2, "sectionStartTimeInContainer"

    .line 27
    invoke-virtual {v0, v1, v2, v5}, Lcom/shabakaty/downloader/ip2$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/ip2$a;

    const-string v1, "com.google.android.gms.cast.metadata.QUEUE_ITEM_ID"

    const-string v2, "queueItemId"

    .line 28
    invoke-virtual {v0, v1, v2, v4}, Lcom/shabakaty/downloader/ip2$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/ip2$a;

    const-string v1, "com.google.android.gms.cast.metadata.BOOK_TITLE"

    const-string v2, "bookTitle"

    .line 29
    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/ip2$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/ip2$a;

    const-string v1, "com.google.android.gms.cast.metadata.CHAPTER_NUMBER"

    const-string v2, "chapterNumber"

    .line 30
    invoke-virtual {v0, v1, v2, v4}, Lcom/shabakaty/downloader/ip2$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/ip2$a;

    const-string v1, "com.google.android.gms.cast.metadata.CHAPTER_TITLE"

    const-string v2, "chapterTitle"

    .line 31
    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/ip2$a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/ip2$a;

    sput-object v0, Lcom/shabakaty/downloader/ip2;->v:Lcom/shabakaty/downloader/ip2$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/ip2;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 7
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/shabakaty/downloader/ip2;->r:Ljava/util/List;

    .line 9
    iput-object v1, p0, Lcom/shabakaty/downloader/ip2;->s:Landroid/os/Bundle;

    .line 10
    iput p1, p0, Lcom/shabakaty/downloader/ip2;->t:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/os/Bundle;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/s55;",
            ">;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ip2;->r:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/ip2;->s:Landroid/os/Bundle;

    .line 4
    iput p3, p0, Lcom/shabakaty/downloader/ip2;->t:I

    return-void
.end method

.method public static F1(Ljava/lang/String;I)V
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/ip2;->v:Lcom/shabakaty/downloader/ip2$a;

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/ip2$a;->c(Ljava/lang/String;)I

    move-result v0

    if-eq v0, p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lcom/shabakaty/downloader/ip2;->u:[Ljava/lang/String;

    aget-object p1, v1, p1

    const/16 v1, 0x15

    invoke-static {p0, v1}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "Value for "

    const-string v3, " must be a "

    invoke-static {v1, v2, p0, v3, p1}, Lcom/shabakaty/downloader/nm0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    .line 4
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null and empty keys are not allowed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public D1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ip2;->r:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public E1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/ip2;->F1(Ljava/lang/String;I)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ip2;->s:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final G1()Lorg/json/JSONObject;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "metadataType"

    .line 2
    iget v3, v0, Lcom/shabakaty/downloader/ip2;->t:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 3
    :goto_0
    iget-object v2, v0, Lcom/shabakaty/downloader/ip2;->r:Ljava/util/List;

    invoke-static {v2}, Lcom/shabakaty/downloader/fe5;->c(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-eqz v3, :cond_0

    :try_start_1
    const-string v3, "images"

    .line 5
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 6
    :catch_1
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget v3, v0, Lcom/shabakaty/downloader/ip2;->t:I

    const-string v4, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const-string v9, "com.google.android.gms.cast.metadata.SUBTITLE"

    const/4 v10, 0x1

    const-string v11, "com.google.android.gms.cast.metadata.TITLE"

    if-eqz v3, :cond_6

    if-eq v3, v10, :cond_5

    if-eq v3, v8, :cond_4

    if-eq v3, v7, :cond_3

    if-eq v3, v6, :cond_2

    if-eq v3, v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "com.google.android.gms.cast.metadata.CHAPTER_TITLE"

    const-string v4, "com.google.android.gms.cast.metadata.CHAPTER_NUMBER"

    const-string v12, "com.google.android.gms.cast.metadata.BOOK_TITLE"

    .line 8
    filled-new-array {v3, v4, v11, v12, v9}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v11, "com.google.android.gms.cast.metadata.TITLE"

    const-string v12, "com.google.android.gms.cast.metadata.ARTIST"

    const-string v13, "com.google.android.gms.cast.metadata.LOCATION_NAME"

    const-string v14, "com.google.android.gms.cast.metadata.LOCATION_LATITUDE"

    const-string v15, "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE"

    const-string v16, "com.google.android.gms.cast.metadata.WIDTH"

    const-string v17, "com.google.android.gms.cast.metadata.HEIGHT"

    const-string v18, "com.google.android.gms.cast.metadata.CREATION_DATE"

    .line 9
    filled-new-array/range {v11 .. v18}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v11, "com.google.android.gms.cast.metadata.TITLE"

    const-string v12, "com.google.android.gms.cast.metadata.ARTIST"

    const-string v13, "com.google.android.gms.cast.metadata.ALBUM_TITLE"

    const-string v14, "com.google.android.gms.cast.metadata.ALBUM_ARTIST"

    const-string v15, "com.google.android.gms.cast.metadata.COMPOSER"

    const-string v16, "com.google.android.gms.cast.metadata.TRACK_NUMBER"

    const-string v17, "com.google.android.gms.cast.metadata.DISC_NUMBER"

    const-string v18, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    .line 10
    filled-new-array/range {v11 .. v18}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string v3, "com.google.android.gms.cast.metadata.SERIES_TITLE"

    const-string v4, "com.google.android.gms.cast.metadata.SEASON_NUMBER"

    const-string v9, "com.google.android.gms.cast.metadata.EPISODE_NUMBER"

    const-string v12, "com.google.android.gms.cast.metadata.BROADCAST_DATE"

    .line 11
    filled-new-array {v11, v3, v4, v9, v12}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const-string v3, "com.google.android.gms.cast.metadata.STUDIO"

    .line 12
    filled-new-array {v11, v3, v9, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    const-string v3, "com.google.android.gms.cast.metadata.ARTIST"

    .line 13
    filled-new-array {v11, v3, v9, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :goto_1
    const-string v3, "com.google.android.gms.cast.metadata.SECTION_DURATION"

    const-string v4, "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_MEDIA"

    const-string v9, "com.google.android.gms.cast.metadata.SECTION_START_ABSOLUTE_TIME"

    const-string v11, "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_CONTAINER"

    const-string v12, "com.google.android.gms.cast.metadata.QUEUE_ITEM_ID"

    .line 14
    filled-new-array {v3, v4, v9, v11, v12}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 15
    :try_start_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_7
    :goto_2
    if-ge v4, v3, :cond_c

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v4, v4, 0x1

    check-cast v9, Ljava/lang/String;

    .line 16
    iget-object v11, v0, Lcom/shabakaty/downloader/ip2;->s:Landroid/os/Bundle;

    invoke-virtual {v11, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 17
    sget-object v11, Lcom/shabakaty/downloader/ip2;->v:Lcom/shabakaty/downloader/ip2$a;

    invoke-virtual {v11, v9}, Lcom/shabakaty/downloader/ip2$a;->c(Ljava/lang/String;)I

    move-result v12

    if-eq v12, v10, :cond_b

    if-eq v12, v8, :cond_a

    if-eq v12, v7, :cond_9

    if-eq v12, v6, :cond_b

    if-eq v12, v5, :cond_8

    goto :goto_2

    .line 18
    :cond_8
    invoke-virtual {v11, v9}, Lcom/shabakaty/downloader/ip2$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/shabakaty/downloader/ip2;->s:Landroid/os/Bundle;

    invoke-virtual {v12, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/shabakaty/downloader/yw;->b(J)D

    move-result-wide v12

    invoke-virtual {v1, v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_2

    .line 19
    :cond_9
    invoke-virtual {v11, v9}, Lcom/shabakaty/downloader/ip2$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/shabakaty/downloader/ip2;->s:Landroid/os/Bundle;

    invoke-virtual {v12, v9}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-virtual {v1, v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_2

    .line 20
    :cond_a
    invoke-virtual {v11, v9}, Lcom/shabakaty/downloader/ip2$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/shabakaty/downloader/ip2;->s:Landroid/os/Bundle;

    invoke-virtual {v12, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v11, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    .line 21
    :cond_b
    invoke-virtual {v11, v9}, Lcom/shabakaty/downloader/ip2$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/shabakaty/downloader/ip2;->s:Landroid/os/Bundle;

    invoke-virtual {v12, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v11, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 22
    :cond_c
    iget-object v2, v0, Lcom/shabakaty/downloader/ip2;->s:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "com.google."

    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 24
    iget-object v4, v0, Lcom/shabakaty/downloader/ip2;->s:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 25
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_e

    .line 26
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 27
    :cond_e
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_f

    .line 28
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 29
    :cond_f
    instance-of v5, v4, Ljava/lang/Double;

    if-eqz v5, :cond_d

    .line 30
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    :cond_10
    return-object v1
.end method

.method public final H1(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Bundle;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 5
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 6
    instance-of v5, v3, Landroid/os/Bundle;

    if-eqz v5, :cond_2

    instance-of v5, v4, Landroid/os/Bundle;

    if-eqz v5, :cond_2

    move-object v5, v3

    check-cast v5, Landroid/os/Bundle;

    move-object v6, v4

    check-cast v6, Landroid/os/Bundle;

    .line 7
    invoke-virtual {p0, v5, v6}, Lcom/shabakaty/downloader/ip2;->H1(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v5

    if-nez v5, :cond_2

    return v2

    :cond_2
    if-nez v3, :cond_4

    if-nez v4, :cond_3

    .line 8
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_3
    return v2

    .line 9
    :cond_4
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public final W0(Lorg/json/JSONObject;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "metadataType"

    .line 1
    iget-object v3, v0, Lcom/shabakaty/downloader/ip2;->s:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->clear()V

    .line 2
    iget-object v3, v0, Lcom/shabakaty/downloader/ip2;->r:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v3, 0x0

    .line 3
    iput v3, v0, Lcom/shabakaty/downloader/ip2;->t:I

    .line 4
    :try_start_0
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/shabakaty/downloader/ip2;->t:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const-string v3, "images"

    .line 5
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 6
    iget-object v4, v0, Lcom/shabakaty/downloader/ip2;->r:Ljava/util/List;

    invoke-static {v4, v3}, Lcom/shabakaty/downloader/fe5;->a(Ljava/util/List;Lorg/json/JSONArray;)V

    .line 7
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget v4, v0, Lcom/shabakaty/downloader/ip2;->t:I

    const-string v5, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const-string v11, "com.google.android.gms.cast.metadata.SUBTITLE"

    const-string v12, "com.google.android.gms.cast.metadata.TITLE"

    if-eqz v4, :cond_6

    if-eq v4, v10, :cond_5

    if-eq v4, v9, :cond_4

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_2

    if-eq v4, v6, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "com.google.android.gms.cast.metadata.CHAPTER_TITLE"

    const-string v5, "com.google.android.gms.cast.metadata.CHAPTER_NUMBER"

    const-string v13, "com.google.android.gms.cast.metadata.BOOK_TITLE"

    .line 9
    filled-new-array {v4, v5, v12, v13, v11}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v11, "com.google.android.gms.cast.metadata.TITLE"

    const-string v12, "com.google.android.gms.cast.metadata.ARTIST"

    const-string v13, "com.google.android.gms.cast.metadata.LOCATION_NAME"

    const-string v14, "com.google.android.gms.cast.metadata.LOCATION_LATITUDE"

    const-string v15, "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE"

    const-string v16, "com.google.android.gms.cast.metadata.WIDTH"

    const-string v17, "com.google.android.gms.cast.metadata.HEIGHT"

    const-string v18, "com.google.android.gms.cast.metadata.CREATION_DATE"

    .line 10
    filled-new-array/range {v11 .. v18}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v11, "com.google.android.gms.cast.metadata.TITLE"

    const-string v12, "com.google.android.gms.cast.metadata.ALBUM_TITLE"

    const-string v13, "com.google.android.gms.cast.metadata.ARTIST"

    const-string v14, "com.google.android.gms.cast.metadata.ALBUM_ARTIST"

    const-string v15, "com.google.android.gms.cast.metadata.COMPOSER"

    const-string v16, "com.google.android.gms.cast.metadata.TRACK_NUMBER"

    const-string v17, "com.google.android.gms.cast.metadata.DISC_NUMBER"

    const-string v18, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    .line 11
    filled-new-array/range {v11 .. v18}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string v4, "com.google.android.gms.cast.metadata.SERIES_TITLE"

    const-string v5, "com.google.android.gms.cast.metadata.SEASON_NUMBER"

    const-string v11, "com.google.android.gms.cast.metadata.EPISODE_NUMBER"

    const-string v13, "com.google.android.gms.cast.metadata.BROADCAST_DATE"

    .line 12
    filled-new-array {v12, v4, v5, v11, v13}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const-string v4, "com.google.android.gms.cast.metadata.STUDIO"

    .line 13
    filled-new-array {v12, v4, v11, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    const-string v4, "com.google.android.gms.cast.metadata.ARTIST"

    .line 14
    filled-new-array {v12, v4, v11, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :goto_1
    const-string v4, "com.google.android.gms.cast.metadata.SECTION_DURATION"

    const-string v5, "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_MEDIA"

    const-string v11, "com.google.android.gms.cast.metadata.SECTION_START_ABSOLUTE_TIME"

    const-string v12, "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_CONTAINER"

    const-string v13, "com.google.android.gms.cast.metadata.QUEUE_ITEM_ID"

    .line 15
    filled-new-array {v4, v5, v11, v12, v13}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 16
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 17
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 18
    :catch_1
    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 19
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 20
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 21
    sget-object v11, Lcom/shabakaty/downloader/ip2;->v:Lcom/shabakaty/downloader/ip2$a;

    .line 22
    iget-object v12, v11, Lcom/shabakaty/downloader/ip2$a;->b:Ljava/util/Map;

    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_e

    .line 23
    invoke-virtual {v4, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v13, :cond_7

    .line 24
    :try_start_2
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_8

    goto :goto_2

    .line 25
    :cond_8
    invoke-virtual {v11, v12}, Lcom/shabakaty/downloader/ip2$a;->c(Ljava/lang/String;)I

    move-result v11

    if-eq v11, v10, :cond_d

    if-eq v11, v9, :cond_c

    if-eq v11, v8, :cond_b

    if-eq v11, v7, :cond_a

    if-eq v11, v6, :cond_9

    goto :goto_2

    .line 26
    :cond_9
    iget-object v11, v0, Lcom/shabakaty/downloader/ip2;->s:Landroid/os/Bundle;

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v13

    long-to-double v13, v13

    invoke-static {v13, v14}, Lcom/shabakaty/downloader/yw;->c(D)J

    move-result-wide v13

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_2

    .line 27
    :cond_a
    instance-of v5, v13, Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 28
    move-object v5, v13

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/shabakaty/downloader/fe5;->b(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 29
    iget-object v5, v0, Lcom/shabakaty/downloader/ip2;->s:Landroid/os/Bundle;

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v5, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 30
    :cond_b
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v13

    .line 31
    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_7

    .line 32
    iget-object v5, v0, Lcom/shabakaty/downloader/ip2;->s:Landroid/os/Bundle;

    invoke-virtual {v5, v12, v13, v14}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_2

    .line 33
    :cond_c
    instance-of v5, v13, Ljava/lang/Integer;

    if-eqz v5, :cond_7

    .line 34
    iget-object v5, v0, Lcom/shabakaty/downloader/ip2;->s:Landroid/os/Bundle;

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v5, v12, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 35
    :cond_d
    instance-of v5, v13, Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 36
    iget-object v5, v0, Lcom/shabakaty/downloader/ip2;->s:Landroid/os/Bundle;

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v5, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 37
    :cond_e
    :try_start_3
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 38
    instance-of v12, v11, Ljava/lang/String;

    if-eqz v12, :cond_f

    .line 39
    iget-object v12, v0, Lcom/shabakaty/downloader/ip2;->s:Landroid/os/Bundle;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v5, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 40
    :cond_f
    instance-of v12, v11, Ljava/lang/Integer;

    if-eqz v12, :cond_10

    .line 41
    iget-object v12, v0, Lcom/shabakaty/downloader/ip2;->s:Landroid/os/Bundle;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v12, v5, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 42
    :cond_10
    instance-of v12, v11, Ljava/lang/Double;

    if-eqz v12, :cond_7

    .line 43
    iget-object v12, v0, Lcom/shabakaty/downloader/ip2;->s:Landroid/os/Bundle;

    check-cast v11, Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-virtual {v12, v5, v13, v14}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    :catch_2
    :cond_11
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/ip2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/ip2;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/ip2;->s:Landroid/os/Bundle;

    iget-object v3, p1, Lcom/shabakaty/downloader/ip2;->s:Landroid/os/Bundle;

    invoke-virtual {p0, v1, v3}, Lcom/shabakaty/downloader/ip2;->H1(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/ip2;->r:Ljava/util/List;

    iget-object p1, p1, Lcom/shabakaty/downloader/ip2;->r:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ip2;->s:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/16 v1, 0x11

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v3, p0, Lcom/shabakaty/downloader/ip2;->s:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/ip2;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public o1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/ip2;->F1(Ljava/lang/String;I)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ip2;->s:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    .line 1
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/vw3;->n(Landroid/os/Parcel;I)I

    move-result p2

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ip2;->r:Ljava/util/List;

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v1, v0, v2}, Lcom/shabakaty/downloader/vw3;->m(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/ip2;->s:Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-static {p1, v1, v0, v2}, Lcom/shabakaty/downloader/vw3;->b(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 5
    iget v0, p0, Lcom/shabakaty/downloader/ip2;->t:I

    const/4 v1, 0x4

    .line 6
    invoke-static {p1, v1, v1}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
