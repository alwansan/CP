.class public final Lcom/shabakaty/downloader/h95;
.super Ljava/lang/Object;
.source "XmpMotionPhotoDescriptionParser.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "Camera:MotionPhoto"

    const-string v1, "GCamera:MotionPhoto"

    const-string v2, "Camera:MicroVideo"

    const-string v3, "GCamera:MicroVideo"

    .line 1
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/h95;->a:[Ljava/lang/String;

    const-string v0, "Camera:MotionPhotoPresentationTimestampUs"

    const-string v1, "GCamera:MotionPhotoPresentationTimestampUs"

    const-string v2, "Camera:MicroVideoPresentationTimestampUs"

    const-string v3, "GCamera:MicroVideoPresentationTimestampUs"

    .line 2
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/h95;->b:[Ljava/lang/String;

    const-string v0, "Camera:MicroVideoOffset"

    const-string v1, "GCamera:MicroVideoOffset"

    .line 3
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/h95;->c:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/shabakaty/downloader/wu2;
    .locals 23

    .line 1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/io/StringReader;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 4
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "x:xmpmeta"

    .line 5
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_d

    .line 6
    sget-object v2, Lcom/google/common/collect/p;->s:Lcom/shabakaty/downloader/c0;

    .line 7
    sget-object v2, Lcom/shabakaty/downloader/oq3;->v:Lcom/google/common/collect/p;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v6, v4

    .line 8
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v8, "rdf:Description"

    .line 9
    invoke-static {v0, v8}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 10
    sget-object v2, Lcom/shabakaty/downloader/h95;->a:[Ljava/lang/String;

    array-length v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_1

    aget-object v9, v2, v8

    .line 11
    invoke-static {v0, v9}, Lcom/shabakaty/downloader/cl3;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 12
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :goto_1
    if-nez v6, :cond_3

    return-object v3

    .line 13
    :cond_3
    sget-object v2, Lcom/shabakaty/downloader/h95;->b:[Ljava/lang/String;

    array-length v6, v2

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v6, :cond_4

    aget-object v9, v2, v8

    .line 14
    invoke-static {v0, v9}, Lcom/shabakaty/downloader/cl3;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 15
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v2, v8, v10

    if-nez v2, :cond_6

    :cond_4
    move-wide v8, v4

    goto :goto_3

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 16
    :cond_6
    :goto_3
    sget-object v2, Lcom/shabakaty/downloader/h95;->c:[Ljava/lang/String;

    array-length v6, v2

    :goto_4
    if-ge v7, v6, :cond_8

    aget-object v10, v2, v7

    .line 17
    invoke-static {v0, v10}, Lcom/shabakaty/downloader/cl3;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 18
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 19
    new-instance v2, Lcom/shabakaty/downloader/wu2$a;

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-string v17, "image/jpeg"

    const-string v18, "Primary"

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v22}, Lcom/shabakaty/downloader/wu2$a;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    new-instance v6, Lcom/shabakaty/downloader/wu2$a;

    const-wide/16 v16, 0x0

    const-string v12, "video/mp4"

    const-string v13, "MotionPhoto"

    move-object v11, v6

    invoke-direct/range {v11 .. v17}, Lcom/shabakaty/downloader/wu2$a;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-static {v2, v6}, Lcom/google/common/collect/p;->F(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/p;

    move-result-object v2

    goto :goto_5

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 20
    :cond_8
    sget-object v2, Lcom/google/common/collect/p;->s:Lcom/shabakaty/downloader/c0;

    .line 21
    sget-object v2, Lcom/shabakaty/downloader/oq3;->v:Lcom/google/common/collect/p;

    :goto_5
    move-wide v6, v8

    goto :goto_6

    :cond_9
    const-string v8, "Container:Directory"

    .line 22
    invoke-static {v0, v8}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string v2, "Container"

    const-string v8, "Item"

    .line 23
    invoke-static {v0, v2, v8}, Lcom/shabakaty/downloader/h95;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/collect/p;

    move-result-object v2

    goto :goto_6

    :cond_a
    const-string v8, "GContainer:Directory"

    .line 24
    invoke-static {v0, v8}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v2, "GContainer"

    const-string v8, "GContainerItem"

    .line 25
    invoke-static {v0, v2, v8}, Lcom/shabakaty/downloader/h95;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/collect/p;

    move-result-object v2

    .line 26
    :cond_b
    :goto_6
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/cl3;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 27
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    return-object v3

    .line 28
    :cond_c
    new-instance v0, Lcom/shabakaty/downloader/wu2;

    invoke-direct {v0, v6, v7, v2}, Lcom/shabakaty/downloader/wu2;-><init>(JLjava/util/List;)V

    return-object v0

    :cond_d
    const-string v0, "Couldn\'t find xmp metadata"

    .line 29
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v0

    throw v0
.end method

.method public static b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/collect/p;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/p<",
            "Lcom/shabakaty/downloader/wu2$a;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    sget-object v3, Lcom/google/common/collect/p;->s:Lcom/shabakaty/downloader/c0;

    const/4 v3, 0x4

    const-string v4, "initialCapacity"

    .line 2
    invoke-static {v3, v4}, Lcom/google/common/collect/f;->b(ILjava/lang/String;)I

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, ":Item"

    .line 3
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ":Directory"

    .line 4
    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    .line 5
    :cond_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 6
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, ":Mime"

    .line 7
    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ":Semantic"

    .line 8
    invoke-virtual {v2, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ":Length"

    .line 9
    invoke-virtual {v2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ":Padding"

    .line 10
    invoke-virtual {v2, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 11
    invoke-static {v0, v6}, Lcom/shabakaty/downloader/cl3;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 12
    invoke-static {v0, v7}, Lcom/shabakaty/downloader/cl3;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 13
    invoke-static {v0, v8}, Lcom/shabakaty/downloader/cl3;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 14
    invoke-static {v0, v9}, Lcom/shabakaty/downloader/cl3;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v11, :cond_5

    if-nez v12, :cond_1

    goto :goto_2

    .line 15
    :cond_1
    new-instance v8, Lcom/shabakaty/downloader/wu2$a;

    const-wide/16 v9, 0x0

    if-eqz v6, :cond_2

    .line 16
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    goto :goto_0

    :cond_2
    move-wide v13, v9

    :goto_0
    if-eqz v7, :cond_3

    .line 17
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-wide v15, v6

    goto :goto_1

    :cond_3
    move-wide v15, v9

    :goto_1
    move-object v10, v8

    invoke-direct/range {v10 .. v16}, Lcom/shabakaty/downloader/wu2$a;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    add-int/lit8 v6, v5, 0x1

    .line 18
    array-length v7, v3

    if-ge v7, v6, :cond_4

    .line 19
    array-length v7, v3

    .line 20
    invoke-static {v7, v6}, Lcom/google/common/collect/n$b;->a(II)I

    move-result v7

    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    .line 21
    :cond_4
    aput-object v8, v3, v5

    move v5, v6

    goto :goto_3

    .line 22
    :cond_5
    :goto_2
    sget-object v0, Lcom/shabakaty/downloader/oq3;->v:Lcom/google/common/collect/p;

    return-object v0

    .line 23
    :cond_6
    :goto_3
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/cl3;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 24
    invoke-static {v3, v5}, Lcom/google/common/collect/p;->s([Ljava/lang/Object;I)Lcom/google/common/collect/p;

    move-result-object v0

    return-object v0
.end method
