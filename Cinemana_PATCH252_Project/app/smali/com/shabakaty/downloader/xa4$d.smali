.class public Lcom/shabakaty/downloader/xa4$d;
.super Lcom/shabakaty/downloader/xa4$a;
.source "SsManifestParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/xa4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public e:Lcom/shabakaty/downloader/wh1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xa4$a;Ljava/lang/String;)V
    .locals 1

    const-string v0, "QualityLevel"

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/shabakaty/downloader/xa4$a;-><init>(Lcom/shabakaty/downloader/xa4$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static m(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 3
    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    mul-int/lit8 v5, v4, 0x2

    .line 5
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    add-int/lit8 v5, v5, 0x1

    .line 6
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/s40;->c([BI)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_5

    .line 8
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 9
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object v5, Lcom/shabakaty/downloader/s40;->a:[B

    array-length v6, v5

    add-int/2addr v4, v6

    .line 11
    array-length v5, v5

    sub-int v5, v1, v5

    :goto_1
    const/4 v6, -0x1

    if-gt v4, v5, :cond_4

    .line 12
    invoke-static {v2, v4}, Lcom/shabakaty/downloader/s40;->c([BI)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, -0x1

    :goto_2
    if-ne v4, v6, :cond_2

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [[B

    const/4 v5, 0x0

    .line 14
    :goto_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_6

    .line 15
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 16
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v8, v6

    if-ge v5, v8, :cond_5

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_4

    :cond_5
    move v8, v1

    :goto_4
    sub-int/2addr v8, v7

    .line 17
    new-array v9, v8, [B

    .line 18
    invoke-static {v2, v7, v9, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    aput-object v9, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    move-object p0, v4

    :goto_5
    if-nez p0, :cond_7

    .line 20
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 21
    :cond_7
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_8
    :goto_6
    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xa4$d;->e:Lcom/shabakaty/downloader/wh1;

    return-object v0
.end method

.method public k(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    const-string v1, "FourCC"

    .line 2
    invoke-virtual {p0, p1, v1}, Lcom/shabakaty/downloader/xa4$a;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "H264"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "audio/mp4a-latm"

    const/4 v4, 0x0

    if-nez v2, :cond_e

    const-string v2, "X264"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "AVC1"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "DAVC"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v2, "AAC"

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "AACL"

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "AACH"

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "AACP"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_4

    :cond_1
    const-string v2, "TTML"

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "DFXP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string v2, "ac-3"

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "dac3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const-string v2, "ec-3"

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "dec3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const-string v2, "dtsc"

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v1, "audio/vnd.dts"

    goto :goto_6

    :cond_5
    const-string v2, "dtsh"

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "dtsl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    :cond_6
    const-string v2, "dtse"

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v1, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_6

    :cond_7
    const-string v2, "opus"

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "audio/opus"

    goto :goto_6

    :cond_8
    move-object v1, v4

    goto :goto_6

    :cond_9
    :goto_0
    const-string v1, "audio/vnd.dts.hd"

    goto :goto_6

    :cond_a
    :goto_1
    const-string v1, "audio/eac3"

    goto :goto_6

    :cond_b
    :goto_2
    const-string v1, "audio/ac3"

    goto :goto_6

    :cond_c
    :goto_3
    const-string v1, "application/ttml+xml"

    goto :goto_6

    :cond_d
    :goto_4
    move-object v1, v3

    goto :goto_6

    :cond_e
    :goto_5
    const-string v1, "video/avc"

    :goto_6
    const-string v2, "Type"

    .line 18
    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/xa4$a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x2

    const-string v6, "CodecPrivateData"

    if-ne v2, v5, :cond_f

    .line 19
    invoke-interface {p1, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/downloader/xa4$d;->m(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const-string v3, "video/mp4"

    .line 20
    iput-object v3, v0, Lcom/shabakaty/downloader/wh1$b;->j:Ljava/lang/String;

    const-string v3, "MaxWidth"

    .line 21
    invoke-virtual {p0, p1, v3}, Lcom/shabakaty/downloader/xa4$a;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    .line 22
    iput v3, v0, Lcom/shabakaty/downloader/wh1$b;->p:I

    const-string v3, "MaxHeight"

    .line 23
    invoke-virtual {p0, p1, v3}, Lcom/shabakaty/downloader/xa4$a;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    .line 24
    iput v3, v0, Lcom/shabakaty/downloader/wh1$b;->q:I

    .line 25
    iput-object v2, v0, Lcom/shabakaty/downloader/wh1$b;->m:Ljava/util/List;

    goto :goto_8

    :cond_f
    const/4 v5, 0x1

    if-ne v2, v5, :cond_12

    if-nez v1, :cond_10

    move-object v1, v3

    :cond_10
    const-string v2, "Channels"

    .line 26
    invoke-virtual {p0, p1, v2}, Lcom/shabakaty/downloader/xa4$a;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    const-string v5, "SamplingRate"

    .line 27
    invoke-virtual {p0, p1, v5}, Lcom/shabakaty/downloader/xa4$a;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    .line 28
    invoke-interface {p1, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/shabakaty/downloader/xa4$d;->m(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 29
    move-object v7, v6

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 30
    invoke-static {v5, v2}, Lcom/shabakaty/downloader/c;->a(II)[B

    move-result-object v3

    .line 31
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    :cond_11
    const-string v3, "audio/mp4"

    .line 32
    iput-object v3, v0, Lcom/shabakaty/downloader/wh1$b;->j:Ljava/lang/String;

    .line 33
    iput v2, v0, Lcom/shabakaty/downloader/wh1$b;->x:I

    .line 34
    iput v5, v0, Lcom/shabakaty/downloader/wh1$b;->y:I

    .line 35
    iput-object v6, v0, Lcom/shabakaty/downloader/wh1$b;->m:Ljava/util/List;

    goto :goto_8

    :cond_12
    const/4 v3, 0x3

    const-string v5, "application/mp4"

    if-ne v2, v3, :cond_16

    const/4 v2, 0x0

    const-string v3, "Subtype"

    .line 36
    invoke-virtual {p0, v3}, Lcom/shabakaty/downloader/xa4$a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_15

    const-string v6, "CAPT"

    .line 37
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    const-string v6, "DESC"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto :goto_7

    :cond_13
    const/16 v2, 0x400

    goto :goto_7

    :cond_14
    const/16 v2, 0x40

    .line 38
    :cond_15
    :goto_7
    iput-object v5, v0, Lcom/shabakaty/downloader/wh1$b;->j:Ljava/lang/String;

    .line 39
    iput v2, v0, Lcom/shabakaty/downloader/wh1$b;->e:I

    goto :goto_8

    .line 40
    :cond_16
    iput-object v5, v0, Lcom/shabakaty/downloader/wh1$b;->j:Ljava/lang/String;

    :goto_8
    const-string v2, "Index"

    .line 41
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    iput-object v2, v0, Lcom/shabakaty/downloader/wh1$b;->a:Ljava/lang/String;

    const-string v2, "Name"

    .line 43
    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/xa4$a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 44
    iput-object v2, v0, Lcom/shabakaty/downloader/wh1$b;->b:Ljava/lang/String;

    .line 45
    iput-object v1, v0, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    const-string v1, "Bitrate"

    .line 46
    invoke-virtual {p0, p1, v1}, Lcom/shabakaty/downloader/xa4$a;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result p1

    .line 47
    iput p1, v0, Lcom/shabakaty/downloader/wh1$b;->f:I

    const-string p1, "Language"

    .line 48
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xa4$a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 49
    iput-object p1, v0, Lcom/shabakaty/downloader/wh1$b;->c:Ljava/lang/String;

    .line 50
    invoke-virtual {v0}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/xa4$d;->e:Lcom/shabakaty/downloader/wh1;

    return-void
.end method
