.class public Lcom/shabakaty/downloader/al0;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "DashManifestParser.java"

# interfaces
.implements Lcom/shabakaty/downloader/ra3$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/al0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xml/sax/helpers/DefaultHandler;",
        "Lcom/shabakaty/downloader/ra3$a<",
        "Lcom/shabakaty/downloader/zk0;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:Ljava/util/regex/Pattern;

.field public static final e:[I


# instance fields
.field public final a:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\d+)(?:/(\\d+))?"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/al0;->b:Ljava/util/regex/Pattern;

    const-string v0, "CC([1-4])=.*"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/al0;->c:Ljava/util/regex/Pattern;

    const-string v0, "([1-9]|[1-5][0-9]|6[0-3])=.*"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/al0;->d:Ljava/util/regex/Pattern;

    const/16 v0, 0x15

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_0

    sput-object v0, Lcom/shabakaty/downloader/al0;->e:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        0x2
        0x3
        0x4
        0x7
        0x8
        0x18
        0x8
        0xc
        0xa
        0xc
        0xe
        0xc
        0xe
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 2
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/al0;->a:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static c(II)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return p1

    :cond_0
    if-ne p1, v0, :cond_1

    return p0

    :cond_1
    if-ne p0, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-static {p1}, Lcom/shabakaty/downloader/md;->e(Z)V

    return p0
.end method

.method public static d(JJ)J
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide p0, p2

    :goto_0
    const-wide p2, 0x7fffffffffffffffL

    cmp-long v2, p0, p2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-wide v0, p0

    :goto_1
    return-wide v0
.end method

.method public static e(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/cl3;->k(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    if-eqz v1, :cond_4

    .line 2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 3
    invoke-static {p0}, Lcom/shabakaty/downloader/cl3;->k(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/shabakaty/downloader/oq0;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "schemeIdUri"

    .line 1
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    const-string v2, "value"

    .line 2
    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v0

    :cond_1
    const-string v3, "id"

    .line 3
    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v3

    .line 4
    :cond_3
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 5
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/cl3;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6
    new-instance p0, Lcom/shabakaty/downloader/oq0;

    invoke-direct {p0, v1, v2, v0}, Lcom/shabakaty/downloader/oq0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 10

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p2

    .line 2
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/sy4;->h:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    const-wide v0, 0x408f400000000000L    # 1000.0

    const-wide v2, 0x40ac200000000000L    # 3600.0

    if-eqz p2, :cond_7

    const/4 p0, 0x1

    .line 4
    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/2addr p0, p2

    const/4 p2, 0x3

    .line 5
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    const-wide/16 v4, 0x0

    if-eqz p2, :cond_1

    .line 6
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p2

    const-wide v6, 0x417e1852c0000000L    # 3.1556908E7

    mul-double p2, p2, v6

    goto :goto_0

    :cond_1
    move-wide p2, v4

    :goto_0
    const/4 v6, 0x5

    .line 7
    invoke-virtual {p1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 8
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide v8, 0x4144103580000000L    # 2629739.0

    mul-double v6, v6, v8

    goto :goto_1

    :cond_2
    move-wide v6, v4

    :goto_1
    add-double/2addr p2, v6

    const/4 v6, 0x7

    .line 9
    invoke-virtual {p1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 10
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide v8, 0x40f5180000000000L    # 86400.0

    mul-double v6, v6, v8

    goto :goto_2

    :cond_3
    move-wide v6, v4

    :goto_2
    add-double/2addr p2, v6

    const/16 v6, 0xa

    .line 11
    invoke-virtual {p1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 12
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    mul-double v6, v6, v2

    goto :goto_3

    :cond_4
    move-wide v6, v4

    :goto_3
    add-double/2addr p2, v6

    const/16 v2, 0xc

    .line 13
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 14
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    mul-double v2, v2, v6

    goto :goto_4

    :cond_5
    move-wide v2, v4

    :goto_4
    add-double/2addr p2, v2

    const/16 v2, 0xe

    .line 15
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 16
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    :cond_6
    add-double/2addr p2, v4

    mul-double p2, p2, v0

    double-to-long p1, p2

    if-eqz p0, :cond_8

    neg-long p1, p1

    goto :goto_5

    .line 17
    :cond_7
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    mul-double p0, p0, v2

    mul-double p0, p0, v0

    double-to-long p1, p0

    :cond_8
    :goto_5
    return-wide p1
.end method

.method public static m(Lorg/xmlpull/v1/XmlPullParser;F)F
    .locals 2

    const/4 v0, 0x0

    const-string v1, "frameRate"

    .line 1
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/al0;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    .line 5
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    int-to-float p1, p1

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    :cond_1
    :goto_0
    return p1
.end method

.method public static n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    :goto_0
    return p2
.end method

.method public static o(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    :goto_0
    return-wide p2
.end method

.method public static x(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 1
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/shabakaty/downloader/al0;->e(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5
    :goto_0
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/cl3;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/al0;->a:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 2
    invoke-interface {v1, p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    const-string p2, "MPD"

    .line 4
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    new-instance p2, Lcom/shabakaty/downloader/nk;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/nk;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, p2}, Lcom/shabakaty/downloader/al0;->p(Lorg/xmlpull/v1/XmlPullParser;Lcom/shabakaty/downloader/nk;)Lcom/shabakaty/downloader/zk0;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "inputStream does not contain a valid media presentation description"

    .line 6
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/pa3;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 7
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/pa3;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object p1

    throw p1
.end method

.method public final b(Ljava/util/List;JJIJ)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/b04$d;",
            ">;JJIJ)J"
        }
    .end annotation

    if-ltz p6, :cond_0

    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_0
    sub-long/2addr p7, p2

    .line 1
    sget p6, Lcom/shabakaty/downloader/sy4;->a:I

    add-long/2addr p7, p4

    const-wide/16 v0, 0x1

    sub-long/2addr p7, v0

    .line 2
    div-long/2addr p7, p4

    long-to-int p6, p7

    :goto_0
    const/4 p7, 0x0

    :goto_1
    if-ge p7, p6, :cond_1

    .line 3
    new-instance p8, Lcom/shabakaty/downloader/b04$d;

    invoke-direct {p8, p2, p3, p4, p5}, Lcom/shabakaty/downloader/b04$d;-><init>(JJ)V

    .line 4
    invoke-interface {p1, p8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long/2addr p2, p4

    add-int/lit8 p7, p7, 0x1

    goto :goto_1

    :cond_1
    return-wide p2
.end method

.method public f(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 8

    const/4 v0, 0x0

    const-string v1, "schemeIdUri"

    .line 1
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v0

    .line 2
    :cond_0
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "urn:dolby:dash:audio_channel_configuration:2011"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v2, "urn:mpeg:mpegB:cicp:ChannelConfiguration"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v2, "tag:dolby.com,2014:dash:audio_channel_configuration:2011"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_3
    const-string v2, "urn:mpeg:dash:23003:3:audio_channel_configuration:2011"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v2, "value"

    if-eqz v1, :cond_10

    if-eq v1, v7, :cond_6

    if-eq v1, v5, :cond_5

    if-eq v1, v6, :cond_6

    goto/16 :goto_4

    .line 3
    :cond_5
    invoke-static {p1, v2, v4}, Lcom/shabakaty/downloader/al0;->n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_11

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/al0;->e:[I

    array-length v2, v1

    if-ge v0, v2, :cond_11

    .line 5
    aget v4, v1, v0

    goto :goto_4

    .line 6
    :cond_6
    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_4

    .line 7
    :cond_7
    invoke-static {v0}, Lcom/shabakaty/downloader/j96;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    goto :goto_2

    :sswitch_4
    const-string v1, "fa01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    const/4 v3, 0x3

    goto :goto_3

    :sswitch_5
    const-string v1, "f801"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2

    :cond_9
    const/4 v3, 0x2

    goto :goto_3

    :sswitch_6
    const-string v1, "a000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_2

    :cond_a
    const/4 v3, 0x1

    goto :goto_3

    :sswitch_7
    const-string v1, "4000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :goto_2
    const/4 v3, -0x1

    :cond_b
    :goto_3
    if-eqz v3, :cond_f

    if-eq v3, v7, :cond_e

    if-eq v3, v5, :cond_d

    if-eq v3, v6, :cond_c

    goto :goto_4

    :cond_c
    const/16 v0, 0x8

    const/16 v4, 0x8

    goto :goto_4

    :cond_d
    const/4 v0, 0x6

    const/4 v4, 0x6

    goto :goto_4

    :cond_e
    const/4 v4, 0x2

    goto :goto_4

    :cond_f
    const/4 v4, 0x1

    goto :goto_4

    .line 8
    :cond_10
    invoke-static {p1, v2, v4}, Lcom/shabakaty/downloader/al0;->n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    .line 9
    :cond_11
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v0, "AudioChannelConfiguration"

    .line 10
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/cl3;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    return v4

    :sswitch_data_0
    .sparse-switch
        -0x50a2db6e -> :sswitch_3
        -0x43d6a909 -> :sswitch_2
        -0x3aced4cf -> :sswitch_1
        0x79657164 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x185d7c -> :sswitch_7
        0x2cd22f -> :sswitch_6
        0x2f3613 -> :sswitch_5
        0x2fcffc -> :sswitch_4
    .end sparse-switch
.end method

.method public g(Lorg/xmlpull/v1/XmlPullParser;J)J
    .locals 2

    const/4 v0, 0x0

    const-string v1, "availabilityTimeOffset"

    .line 1
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-wide p2

    :cond_0
    const-string p2, "INF"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-wide p1, 0x7fffffffffffffffL

    return-wide p1

    .line 3
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const p2, 0x49742400    # 1000000.0f

    mul-float p1, p1, p2

    float-to-long p1, p1

    return-wide p1
.end method

.method public h(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/nk;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/nk;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "dvb:priority"

    .line 1
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const-string v3, "dvb:weight"

    .line 3
    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :goto_1
    const-string v4, "serviceLocation"

    .line 5
    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "BaseURL"

    .line 6
    invoke-static {p1, v4}, Lcom/shabakaty/downloader/al0;->x(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez v0, :cond_2

    move-object v0, p1

    :cond_2
    const/4 v4, 0x0

    if-eqz p1, :cond_3

    .line 7
    invoke-static {p1}, Lcom/shabakaty/downloader/zw4;->a(Ljava/lang/String;)[I

    move-result-object v5

    aget v5, v5, v4

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_4

    new-array p2, v2, [Lcom/shabakaty/downloader/nk;

    .line 8
    new-instance v2, Lcom/shabakaty/downloader/nk;

    invoke-direct {v2, p1, v0, v1, v3}, Lcom/shabakaty/downloader/nk;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, p2, v4

    invoke-static {p2}, Lcom/shabakaty/downloader/vi2;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 9
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_5

    .line 11
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/nk;

    .line 12
    iget v2, v1, Lcom/shabakaty/downloader/nk;->c:I

    .line 13
    iget v3, v1, Lcom/shabakaty/downloader/nk;->d:I

    .line 14
    iget-object v5, v1, Lcom/shabakaty/downloader/nk;->b:Ljava/lang/String;

    .line 15
    new-instance v6, Lcom/shabakaty/downloader/nk;

    iget-object v1, v1, Lcom/shabakaty/downloader/nk;->a:Ljava/lang/String;

    .line 16
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/zw4;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1, v5, v2, v3}, Lcom/shabakaty/downloader/nk;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 17
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    return-object v0
.end method

.method public i(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/o01$b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "schemeIdUri"

    .line 1
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x3a

    if-eqz v1, :cond_d

    .line 2
    invoke-static {v1}, Lcom/shabakaty/downloader/j96;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x1d2c5beb

    const/4 v8, 0x2

    if-eq v6, v7, :cond_4

    const v7, 0x2d06c692

    if-eq v6, v7, :cond_2

    const v7, 0x6c0c9d2a

    if-eq v6, v7, :cond_0

    goto :goto_0

    :cond_0
    const-string v6, "urn:mpeg:dash:mp4protection:2011"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    const-string v6, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const-string v6, "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_0
    const/4 v1, -0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_c

    if-eq v1, v4, :cond_b

    if-eq v1, v8, :cond_6

    goto/16 :goto_7

    :cond_6
    const-string v1, "value"

    .line 3
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_9

    .line 5
    invoke-interface {p1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    .line 6
    invoke-virtual {v8, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ne v9, v2, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v9, v9, 0x1

    .line 7
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :goto_3
    const-string v9, "default_KID"

    .line 8
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 9
    invoke-interface {p1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_9
    move-object v6, v0

    .line 10
    :goto_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string v7, "00000000-0000-0000-0000-000000000000"

    .line 11
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string v7, "\\s+"

    .line 12
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 13
    array-length v7, v6

    new-array v7, v7, [Ljava/util/UUID;

    const/4 v8, 0x0

    .line 14
    :goto_5
    array-length v9, v6

    if-ge v8, v9, :cond_a

    .line 15
    aget-object v9, v6, v8

    invoke-static {v9}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v9

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 16
    :cond_a
    sget-object v6, Lcom/shabakaty/downloader/jp;->b:Ljava/util/UUID;

    invoke-static {v6, v7, v0}, Lcom/shabakaty/downloader/uj3;->b(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    move-result-object v7

    move-object v8, v0

    goto :goto_9

    .line 17
    :cond_b
    sget-object v1, Lcom/shabakaty/downloader/jp;->d:Ljava/util/UUID;

    goto :goto_6

    .line 18
    :cond_c
    sget-object v1, Lcom/shabakaty/downloader/jp;->e:Ljava/util/UUID;

    :goto_6
    move-object v6, v1

    move-object v1, v0

    goto :goto_8

    :cond_d
    :goto_7
    move-object v1, v0

    :cond_e
    move-object v6, v0

    :goto_8
    move-object v7, v0

    move-object v8, v7

    .line 19
    :cond_f
    :goto_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v9, "ms:laurl"

    .line 20
    invoke-static {p1, v9}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    const-string v8, "licenseUrl"

    .line 21
    invoke-interface {p1, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_d

    :cond_10
    const/4 v9, 0x4

    if-nez v7, :cond_15

    .line 22
    invoke-static {p1}, Lcom/shabakaty/downloader/cl3;->k(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 23
    invoke-virtual {v10, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-ne v11, v2, :cond_11

    goto :goto_a

    :cond_11
    add-int/lit8 v11, v11, 0x1

    .line 24
    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    :goto_a
    const-string v11, "pssh"

    .line 25
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    const/4 v10, 0x1

    goto :goto_b

    :cond_12
    const/4 v10, 0x0

    :goto_b
    if-eqz v10, :cond_15

    .line 26
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    if-ne v10, v9, :cond_15

    .line 27
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    .line 28
    invoke-static {v6}, Lcom/shabakaty/downloader/uj3;->c([B)Lcom/shabakaty/downloader/uj3$a;

    move-result-object v7

    if-nez v7, :cond_13

    move-object v7, v0

    goto :goto_c

    .line 29
    :cond_13
    iget-object v7, v7, Lcom/shabakaty/downloader/uj3$a;->a:Ljava/util/UUID;

    :goto_c
    if-nez v7, :cond_14

    const-string v6, "MpdParser"

    const-string v9, "Skipping malformed cenc:pssh data"

    .line 30
    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    move-object v7, v0

    goto :goto_d

    :cond_14
    move-object v12, v7

    move-object v7, v6

    move-object v6, v12

    goto :goto_d

    :cond_15
    if-nez v7, :cond_16

    .line 31
    sget-object v10, Lcom/shabakaty/downloader/jp;->e:Ljava/util/UUID;

    .line 32
    invoke-virtual {v10, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    const-string v11, "mspr:pro"

    .line 33
    invoke-static {p1, v11}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 34
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    if-ne v11, v9, :cond_16

    .line 35
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    .line 36
    invoke-static {v10, v7}, Lcom/shabakaty/downloader/uj3;->a(Ljava/util/UUID;[B)[B

    move-result-object v7

    goto :goto_d

    .line 37
    :cond_16
    invoke-static {p1}, Lcom/shabakaty/downloader/al0;->e(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_d
    const-string v9, "ContentProtection"

    .line 38
    invoke-static {p1, v9}, Lcom/shabakaty/downloader/cl3;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    if-eqz v6, :cond_17

    .line 39
    new-instance v0, Lcom/shabakaty/downloader/o01$b;

    const-string p1, "video/mp4"

    invoke-direct {v0, v6, v8, p1, v7}, Lcom/shabakaty/downloader/o01$b;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 40
    :cond_17
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public j(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2

    const/4 v0, 0x0

    const-string v1, "contentType"

    .line 1
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "audio"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "video"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    goto :goto_1

    :cond_2
    const-string v0, "text"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    return p1
.end method

.method public p(Lorg/xmlpull/v1/XmlPullParser;Lcom/shabakaty/downloader/nk;)Lcom/shabakaty/downloader/zk0;
    .locals 145

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    const/4 v13, 0x0

    const-string v0, "availabilityStartTime"

    .line 1
    invoke-interface {v15, v13, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    move-wide/from16 v16, v11

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/shabakaty/downloader/sy4;->K(Ljava/lang/String;)J

    move-result-wide v0

    move-wide/from16 v16, v0

    :goto_0
    const-string v0, "mediaPresentationDuration"

    .line 3
    invoke-static {v15, v0, v11, v12}, Lcom/shabakaty/downloader/al0;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v18

    const-string v0, "minBufferTime"

    .line 4
    invoke-static {v15, v0, v11, v12}, Lcom/shabakaty/downloader/al0;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v20

    const-string v0, "type"

    .line 5
    invoke-interface {v15, v13, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dynamic"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    const-string v0, "minimumUpdatePeriod"

    .line 7
    invoke-static {v15, v0, v11, v12}, Lcom/shabakaty/downloader/al0;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v0

    move-wide/from16 v23, v0

    goto :goto_1

    :cond_1
    move-wide/from16 v23, v11

    :goto_1
    if-eqz v22, :cond_2

    const-string v0, "timeShiftBufferDepth"

    .line 8
    invoke-static {v15, v0, v11, v12}, Lcom/shabakaty/downloader/al0;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v0

    move-wide/from16 v25, v0

    goto :goto_2

    :cond_2
    move-wide/from16 v25, v11

    :goto_2
    if-eqz v22, :cond_3

    const-string v0, "suggestedPresentationDelay"

    .line 9
    invoke-static {v15, v0, v11, v12}, Lcom/shabakaty/downloader/al0;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v0

    move-wide/from16 v27, v0

    goto :goto_3

    :cond_3
    move-wide/from16 v27, v11

    :goto_3
    const-string v0, "publishTime"

    .line 10
    invoke-interface {v15, v13, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    move-wide/from16 v29, v11

    goto :goto_4

    .line 11
    :cond_4
    invoke-static {v0}, Lcom/shabakaty/downloader/sy4;->K(Ljava/lang/String;)J

    move-result-wide v0

    move-wide/from16 v29, v0

    :goto_4
    if-eqz v22, :cond_5

    const-wide/16 v0, 0x0

    goto :goto_5

    :cond_5
    move-wide v0, v11

    :goto_5
    const/4 v7, 0x1

    new-array v2, v7, [Lcom/shabakaty/downloader/nk;

    const/4 v8, 0x0

    aput-object p2, v2, v8

    .line 12
    invoke-static {v2}, Lcom/shabakaty/downloader/vi2;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    .line 13
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 14
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v22, :cond_6

    move-wide/from16 v31, v11

    goto :goto_6

    :cond_6
    const-wide/16 v31, 0x0

    :goto_6
    move-wide v1, v0

    move-object/from16 v33, v13

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v38, v35

    move-wide/from16 v36, v31

    const/16 v31, 0x0

    const/16 v32, 0x0

    .line 15
    :goto_7
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v4, "BaseURL"

    .line 16
    invoke-static {v15, v4}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez v31, :cond_7

    .line 17
    invoke-virtual {v14, v15, v1, v2}, Lcom/shabakaty/downloader/al0;->g(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v1

    const/16 v31, 0x1

    .line 18
    :cond_7
    invoke-virtual {v14, v15, v5}, Lcom/shabakaty/downloader/al0;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v80, v3

    move-object/from16 v78, v5

    move-object v4, v6

    move-wide/from16 v65, v11

    move-object v3, v13

    move-object v15, v14

    const-wide/16 v57, 0x0

    :goto_8
    const/16 v68, 0x0

    const/16 v92, 0x1

    goto/16 :goto_60

    :cond_8
    const-string v0, "ProgramInformation"

    .line 19
    invoke-static {v15, v0}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v39

    const-string v11, "lang"

    if-eqz v39, :cond_f

    const-string v4, "moreInformationURL"

    .line 20
    invoke-interface {v15, v13, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    move-object/from16 v46, v13

    goto :goto_9

    :cond_9
    move-object/from16 v46, v4

    .line 21
    :goto_9
    invoke-interface {v15, v13, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    move-object/from16 v47, v13

    goto :goto_a

    :cond_a
    move-object/from16 v47, v4

    :goto_a
    move-object v4, v13

    move-object v11, v4

    move-object v12, v11

    .line 22
    :goto_b
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v7, "Title"

    .line 23
    invoke-static {v15, v7}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 24
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    :cond_b
    const-string v7, "Source"

    .line 25
    invoke-static {v15, v7}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 26
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    move-object v11, v7

    goto :goto_c

    :cond_c
    const-string v7, "Copyright"

    .line 27
    invoke-static {v15, v7}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 28
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    move-object v12, v7

    goto :goto_c

    .line 29
    :cond_d
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/al0;->e(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 30
    :goto_c
    invoke-static {v15, v0}, Lcom/shabakaty/downloader/cl3;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 31
    new-instance v0, Lcom/shabakaty/downloader/hh3;

    move-object/from16 v42, v0

    move-object/from16 v43, v4

    move-object/from16 v44, v11

    move-object/from16 v45, v12

    invoke-direct/range {v42 .. v47}, Lcom/shabakaty/downloader/hh3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v33, v0

    goto/16 :goto_10

    :cond_e
    const/4 v7, 0x1

    goto :goto_b

    :cond_f
    const-string v0, "UTCTiming"

    .line 32
    invoke-static {v15, v0}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    const-string v12, "value"

    const-string v7, "schemeIdUri"

    if-eqz v0, :cond_10

    .line 33
    invoke-interface {v15, v13, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-interface {v15, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 35
    new-instance v7, Lcom/shabakaty/downloader/qz2;

    invoke-direct {v7, v0, v4}, Lcom/shabakaty/downloader/qz2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v34, v7

    goto/16 :goto_10

    :cond_10
    const-string v0, "Location"

    .line 36
    invoke-static {v15, v0}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 37
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object/from16 v35, v0

    goto/16 :goto_10

    :cond_11
    const-string v0, "ServiceDescription"

    .line 38
    invoke-static {v15, v0}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_17

    const v42, -0x800001

    const v4, -0x800001

    const v7, -0x800001

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v43, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v45, -0x7fffffffffffffffL    # -4.9E-324

    .line 39
    :goto_d
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v8, "Latency"

    .line 40
    invoke-static {v15, v8}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    const-string v9, "max"

    const-string v10, "min"

    if-eqz v8, :cond_12

    const-string v8, "target"

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 41
    invoke-static {v15, v8, v11, v12}, Lcom/shabakaty/downloader/al0;->o(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v43

    .line 42
    invoke-static {v15, v10, v11, v12}, Lcom/shabakaty/downloader/al0;->o(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v45

    .line 43
    invoke-static {v15, v9, v11, v12}, Lcom/shabakaty/downloader/al0;->o(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    move/from16 v57, v4

    move/from16 v58, v7

    move-wide/from16 v55, v8

    move-wide/from16 v51, v43

    move-wide/from16 v53, v45

    goto :goto_f

    :cond_12
    const-string v8, "PlaybackRate"

    .line 44
    invoke-static {v15, v8}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 45
    invoke-interface {v15, v13, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_13

    const v4, -0x800001

    goto :goto_e

    .line 46
    :cond_13
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 47
    :goto_e
    invoke-interface {v15, v13, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_14

    move/from16 v57, v4

    move-wide/from16 v51, v11

    move-wide/from16 v53, v43

    move-wide/from16 v55, v45

    const v58, -0x800001

    goto :goto_f

    .line 48
    :cond_14
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    :cond_15
    move/from16 v57, v4

    move/from16 v58, v7

    move-wide/from16 v51, v11

    move-wide/from16 v53, v43

    move-wide/from16 v55, v45

    .line 49
    :goto_f
    invoke-static {v15, v0}, Lcom/shabakaty/downloader/cl3;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 50
    new-instance v0, Lcom/shabakaty/downloader/g14;

    move-object/from16 v50, v0

    invoke-direct/range {v50 .. v58}, Lcom/shabakaty/downloader/g14;-><init>(JJJFF)V

    move-object/from16 v38, v0

    :goto_10
    move-object/from16 v80, v3

    move-object/from16 v78, v5

    move-object v4, v6

    move-object v3, v13

    move-object v15, v14

    const-wide/16 v57, 0x0

    const-wide v65, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_8

    :cond_16
    move-wide/from16 v11, v51

    move-wide/from16 v43, v53

    move-wide/from16 v45, v55

    move/from16 v4, v57

    move/from16 v7, v58

    const/4 v8, 0x0

    goto/16 :goto_d

    :cond_17
    const-string v9, "Period"

    .line 51
    invoke-static {v15, v9}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8e

    if-nez v32, :cond_8e

    .line 52
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    move-object v10, v3

    goto :goto_11

    :cond_18
    move-object v10, v5

    :goto_11
    const-string v8, "id"

    .line 53
    invoke-interface {v15, v13, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    const-string v0, "start"

    move-wide/from16 v13, v36

    .line 54
    invoke-static {v15, v0, v13, v14}, Lcom/shabakaty/downloader/al0;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v52

    move-object/from16 p2, v12

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v16, v12

    if-eqz v0, :cond_19

    add-long v40, v16, v52

    goto :goto_12

    :cond_19
    move-wide/from16 v40, v12

    :goto_12
    const-string v14, "duration"

    .line 55
    invoke-static {v15, v14, v12, v13}, Lcom/shabakaty/downloader/al0;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v43

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v45, v14

    .line 57
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v46, v14

    .line 58
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-wide/from16 v56, v1

    move-wide/from16 v54, v12

    const/16 v50, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v12, v56

    move-object v2, v15

    .line 59
    :goto_13
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 60
    invoke-static {v2, v4}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v62

    if-eqz v62, :cond_1b

    if-nez v50, :cond_1a

    .line 61
    invoke-virtual {v1, v2, v12, v13}, Lcom/shabakaty/downloader/al0;->g(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v12

    move-wide/from16 v62, v36

    const/16 v50, 0x1

    goto :goto_14

    :cond_1a
    move-wide/from16 v62, v36

    :goto_14
    move-wide/from16 v36, v12

    move-object/from16 v13, p0

    .line 62
    invoke-virtual {v13, v15, v10}, Lcom/shabakaty/downloader/al0;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v138, p2

    move-object/from16 v130, v0

    move-object/from16 v80, v3

    move-object/from16 v83, v4

    move-object/from16 v78, v5

    move-object/from16 v49, v6

    move-object/from16 v133, v7

    move-object/from16 v39, v8

    move-object/from16 v136, v9

    move-object/from16 v76, v10

    move-object/from16 v59, v11

    move-object v11, v13

    move-object/from16 v64, v14

    move-object/from16 v13, v46

    move-wide/from16 v81, v56

    const/4 v9, 0x0

    const/16 v92, 0x1

    goto/16 :goto_59

    :cond_1b
    move-wide/from16 v62, v36

    move-wide/from16 v36, v12

    move-object/from16 v13, p0

    const-string v12, "AdaptationSet"

    .line 63
    invoke-static {v2, v12}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v64

    const-string v15, "SegmentTemplate"

    const-string v13, "SegmentList"

    move-object/from16 v65, v15

    const-string v15, "SegmentBase"

    move-object/from16 v66, v12

    if-eqz v64, :cond_7b

    .line 64
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v64

    if-nez v64, :cond_1c

    move-object/from16 v64, v14

    goto :goto_15

    :cond_1c
    move-object/from16 v64, v14

    move-object v14, v10

    :goto_15
    const/4 v12, -0x1

    .line 65
    invoke-static {v2, v8, v12}, Lcom/shabakaty/downloader/al0;->n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v69

    .line 66
    invoke-virtual/range {p0 .. p1}, Lcom/shabakaty/downloader/al0;->j(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v68

    const-string v12, "mimeType"

    move-object/from16 v71, v0

    const/4 v0, 0x0

    .line 67
    invoke-interface {v2, v0, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v72

    move-object/from16 v73, v9

    const-string v9, "codecs"

    .line 68
    invoke-interface {v2, v0, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v74

    const-string v0, "width"

    move-object/from16 v75, v1

    move-object/from16 v76, v10

    const/4 v1, -0x1

    .line 69
    invoke-static {v2, v0, v1}, Lcom/shabakaty/downloader/al0;->n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    move-object/from16 v77, v7

    const-string v7, "height"

    move-object/from16 v78, v5

    .line 70
    invoke-static {v2, v7, v1}, Lcom/shabakaty/downloader/al0;->n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    const/high16 v1, -0x40800000    # -1.0f

    .line 71
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/al0;->m(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v1

    move-object/from16 v79, v6

    const-string v6, "audioSamplingRate"

    move-object/from16 v80, v3

    move-object/from16 v81, v13

    const/4 v3, -0x1

    .line 72
    invoke-static {v2, v6, v3}, Lcom/shabakaty/downloader/al0;->n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v13

    const/4 v3, 0x0

    .line 73
    invoke-interface {v2, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v82

    move-object/from16 v83, v15

    const-string v15, "label"

    .line 74
    invoke-interface {v2, v3, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 75
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v84, v15

    .line 76
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v85, v15

    .line 77
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v86, v2

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v87, v6

    .line 79
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move/from16 v88, v13

    .line 80
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move/from16 v89, v1

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v90, v1

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v91, v0

    move-object/from16 v96, v8

    move-object/from16 v93, v9

    move/from16 v92, v10

    move-object/from16 v94, v12

    move-wide/from16 v8, v36

    move-wide/from16 v98, v54

    move-object/from16 v100, v60

    move/from16 v97, v68

    move-object/from16 v12, v82

    move-object/from16 v0, v86

    move-object v10, v0

    const/16 v68, 0x0

    const/16 v95, 0x0

    move-object/from16 v82, v7

    move-object/from16 v7, v75

    move-object/from16 v86, v84

    const/16 v84, -0x1

    move/from16 v75, v5

    move-object v5, v7

    .line 83
    :goto_16
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 84
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v101

    if-eqz v101, :cond_1e

    if-nez v95, :cond_1d

    .line 85
    invoke-virtual {v5, v0, v8, v9}, Lcom/shabakaty/downloader/al0;->g(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v8

    const/16 v95, 0x1

    .line 86
    :cond_1d
    invoke-virtual {v7, v10, v14}, Lcom/shabakaty/downloader/al0;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_18

    :cond_1e
    const-string v10, "ContentProtection"

    .line 87
    invoke-static {v0, v10}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 88
    invoke-virtual/range {p0 .. p1}, Lcom/shabakaty/downloader/al0;->i(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v7

    .line 89
    iget-object v10, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v10, :cond_1f

    .line 90
    move-object/from16 v68, v10

    check-cast v68, Ljava/lang/String;

    .line 91
    :cond_1f
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v7, :cond_25

    .line 92
    check-cast v7, Lcom/shabakaty/downloader/o01$b;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_20
    const-string v7, "ContentComponent"

    .line 93
    invoke-static {v0, v7}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_23

    const/4 v7, 0x0

    .line 94
    invoke-interface {v0, v7, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v12, :cond_21

    move-object v12, v10

    goto :goto_17

    :cond_21
    if-nez v10, :cond_22

    goto :goto_17

    .line 95
    :cond_22
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 96
    :goto_17
    invoke-virtual/range {p0 .. p1}, Lcom/shabakaty/downloader/al0;->j(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v7

    move/from16 v10, v97

    invoke-static {v10, v7}, Lcom/shabakaty/downloader/al0;->c(II)I

    move-result v7

    move/from16 v97, v7

    goto :goto_18

    :cond_23
    const-string v7, "Role"

    .line 97
    invoke-static {v0, v7}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v101

    if-eqz v101, :cond_24

    .line 98
    invoke-static {v0, v7}, Lcom/shabakaty/downloader/al0;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/shabakaty/downloader/oq0;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v101, v2

    goto/16 :goto_19

    :cond_24
    const-string v7, "AudioChannelConfiguration"

    .line 99
    invoke-static {v0, v7}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v101

    if-eqz v101, :cond_26

    .line 100
    invoke-virtual/range {p0 .. p1}, Lcom/shabakaty/downloader/al0;->f(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v84

    :cond_25
    :goto_18
    move-object/from16 v138, p2

    move-object/from16 v112, v2

    move-object/from16 v131, v3

    move-object/from16 v132, v6

    move-object/from16 v59, v11

    move-object/from16 v102, v14

    move-object/from16 v42, v15

    move-object/from16 v3, v66

    move-object/from16 v130, v71

    move-object/from16 v136, v73

    move-object/from16 v133, v77

    move-object/from16 v49, v79

    move-object/from16 v14, v81

    move-object/from16 v39, v82

    move-object/from16 v2, v86

    move-object/from16 v125, v87

    move/from16 v67, v88

    move-object/from16 v71, v91

    move-object/from16 v73, v93

    move-object/from16 v66, v94

    move-object/from16 v134, v96

    const/16 v58, -0x1

    move-object/from16 v15, p1

    move-object/from16 v91, v13

    move-wide/from16 v81, v56

    move/from16 v79, v75

    move-object/from16 v57, v83

    move/from16 v56, v89

    move-object/from16 v96, v90

    move/from16 v75, v92

    const/16 v92, 0x1

    move-object/from16 v90, v1

    move-object/from16 v83, v4

    move-object/from16 v1, v85

    goto/16 :goto_47

    :cond_26
    move-object/from16 v101, v2

    const-string v2, "Accessibility"

    .line 101
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v102

    if-eqz v102, :cond_27

    .line 102
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/al0;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/shabakaty/downloader/oq0;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_27
    const-string v2, "EssentialProperty"

    .line 103
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v102

    if-eqz v102, :cond_28

    .line 104
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/al0;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/shabakaty/downloader/oq0;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_19
    move-object/from16 v102, v14

    goto :goto_1a

    :cond_28
    move-object/from16 v102, v14

    const-string v14, "SupplementalProperty"

    .line 105
    invoke-static {v0, v14}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v103

    if-eqz v103, :cond_29

    .line 106
    invoke-static {v0, v14}, Lcom/shabakaty/downloader/al0;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/shabakaty/downloader/oq0;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1a
    move-object/from16 v138, p2

    move-object/from16 v131, v3

    move-object/from16 v47, v5

    move-object/from16 v132, v6

    move-wide/from16 v106, v8

    move-object/from16 v59, v11

    move-object/from16 v70, v12

    move-object/from16 v42, v15

    move-object/from16 v139, v66

    move-object/from16 v130, v71

    move-object/from16 v136, v73

    move-object/from16 v133, v77

    move-object/from16 v49, v79

    move-object/from16 v14, v81

    move-object/from16 v39, v82

    move-object/from16 v125, v87

    move/from16 v67, v88

    move-object/from16 v71, v91

    move-object/from16 v73, v93

    move-object/from16 v66, v94

    move-object/from16 v134, v96

    move/from16 v77, v97

    move-wide/from16 v6, v98

    move-object/from16 v112, v101

    const/16 v58, -0x1

    move-object/from16 v15, p1

    move-object/from16 v91, v13

    move-wide/from16 v81, v56

    move/from16 v79, v75

    move-object/from16 v57, v83

    move/from16 v56, v89

    move-object/from16 v96, v90

    move/from16 v75, v92

    const/16 v92, 0x1

    move-object/from16 v90, v1

    move-object/from16 v83, v4

    move-object/from16 v1, v85

    goto/16 :goto_45

    :cond_29
    move-object/from16 v103, v15

    const-string v15, "Representation"

    .line 107
    invoke-static {v0, v15}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v104

    move-object/from16 v105, v15

    const-string v15, "InbandEventStream"

    if-eqz v104, :cond_69

    .line 108
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v104

    move-wide/from16 v106, v8

    if-nez v104, :cond_2a

    move-object/from16 v104, v14

    move-object/from16 v42, v15

    move-object/from16 v8, v96

    const/4 v14, 0x0

    move-object v9, v1

    goto :goto_1b

    :cond_2a
    move-object/from16 v104, v14

    move-object/from16 v42, v15

    move-object/from16 v8, v96

    move-object/from16 v9, v102

    const/4 v14, 0x0

    .line 109
    :goto_1b
    invoke-interface {v0, v14, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v96, v1

    const-string v1, "bandwidth"

    move-object/from16 v108, v11

    const/4 v11, -0x1

    .line 110
    invoke-static {v0, v1, v11}, Lcom/shabakaty/downloader/al0;->n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v11, v94

    .line 111
    invoke-interface {v0, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v94

    if-nez v94, :cond_2b

    move-object/from16 v109, v72

    goto :goto_1c

    :cond_2b
    move-object/from16 v109, v94

    :goto_1c
    move-object/from16 v142, v93

    move-object/from16 v93, v10

    move-object/from16 v10, v142

    .line 112
    invoke-interface {v0, v14, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v94

    move-object/from16 v110, v15

    if-nez v94, :cond_2c

    move-object/from16 v94, v74

    :cond_2c
    move-object/from16 v14, v91

    move/from16 v142, v92

    move-object/from16 v92, v10

    move/from16 v10, v142

    .line 113
    invoke-static {v0, v14, v10}, Lcom/shabakaty/downloader/al0;->n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v15

    move-object/from16 v111, v8

    move-object/from16 v8, v82

    move-object/from16 v82, v14

    move/from16 v142, v75

    move/from16 v75, v10

    move/from16 v10, v142

    .line 114
    invoke-static {v0, v8, v10}, Lcom/shabakaty/downloader/al0;->n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v14

    move/from16 v112, v1

    move/from16 v1, v89

    move/from16 v89, v14

    .line 115
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/al0;->m(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v14

    move-object/from16 v113, v8

    move-object/from16 v8, v87

    move/from16 v87, v14

    move/from16 v14, v88

    move/from16 v88, v15

    .line 116
    invoke-static {v0, v8, v14}, Lcom/shabakaty/downloader/al0;->n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v15

    move/from16 v114, v14

    .line 117
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move/from16 v115, v15

    .line 118
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v120, v15

    .line 119
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v116, v15

    .line 120
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v117, v15

    .line 121
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move/from16 v125, v1

    move-object/from16 v124, v2

    move-object/from16 v121, v13

    move-object/from16 v122, v14

    move/from16 v126, v84

    move-wide/from16 v1, v98

    move-object/from16 v123, v100

    move-wide/from16 v13, v106

    const/16 v118, 0x0

    const/16 v119, 0x0

    move-object/from16 v142, v5

    move-object v5, v0

    move-object/from16 v0, v142

    .line 122
    :goto_1d
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 123
    invoke-static {v5, v4}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v127

    if-eqz v127, :cond_2e

    if-nez v119, :cond_2d

    .line 124
    invoke-virtual {v0, v5, v13, v14}, Lcom/shabakaty/downloader/al0;->g(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v13

    const/16 v119, 0x1

    .line 125
    :cond_2d
    invoke-virtual {v0, v5, v9}, Lcom/shabakaty/downloader/al0;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1e

    .line 126
    :cond_2e
    invoke-static {v5, v7}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v127

    if-eqz v127, :cond_2f

    .line 127
    invoke-virtual/range {p0 .. p1}, Lcom/shabakaty/downloader/al0;->f(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v126

    :goto_1e
    move-object/from16 v127, v15

    move-object/from16 v15, v83

    move-object/from16 v83, v3

    goto :goto_1f

    :cond_2f
    move-object/from16 v127, v15

    move-object/from16 v15, v83

    .line 128
    invoke-static {v5, v15}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v83

    if-eqz v83, :cond_30

    move-object/from16 v83, v3

    .line 129
    move-object/from16 v3, v123

    check-cast v3, Lcom/shabakaty/downloader/b04$e;

    invoke-virtual {v0, v5, v3}, Lcom/shabakaty/downloader/al0;->t(Lorg/xmlpull/v1/XmlPullParser;Lcom/shabakaty/downloader/b04$e;)Lcom/shabakaty/downloader/b04$e;

    move-result-object v123

    :goto_1f
    move-object/from16 v138, p2

    move-object/from16 v132, v6

    move-object/from16 v47, v7

    move-object/from16 v48, v9

    move-object/from16 v140, v12

    move-object/from16 v3, v42

    move-object/from16 v139, v66

    move-object/from16 v130, v71

    move-object/from16 v136, v73

    move-object/from16 v133, v77

    move-object/from16 v49, v79

    move-object/from16 v141, v81

    move-object/from16 v71, v82

    move-object/from16 v131, v83

    move-object/from16 v73, v92

    move-object/from16 v0, v93

    move/from16 v135, v97

    move-object/from16 v9, v104

    move-object/from16 v59, v108

    move-object/from16 v134, v111

    move-object/from16 v39, v113

    move/from16 v67, v114

    move-object/from16 v6, v120

    move-object/from16 v91, v121

    move-object/from16 v7, v124

    const/16 v58, -0x1

    move-object/from16 v83, v4

    move/from16 v79, v10

    move-object/from16 v66, v11

    move-wide/from16 v113, v13

    move-wide/from16 v81, v56

    move-object/from16 v11, v105

    move-object/from16 v10, v117

    move-object/from16 v4, v122

    move/from16 v56, v125

    move-object/from16 v14, p0

    move-object/from16 v125, v8

    move-object/from16 v57, v15

    move-object/from16 v8, v116

    move-object v15, v5

    move/from16 v5, v126

    move-object/from16 v142, v96

    move-object/from16 v96, v90

    move-object/from16 v90, v142

    move/from16 v143, v112

    move-object/from16 v112, v101

    move/from16 v101, v143

    goto/16 :goto_23

    :cond_30
    move-object/from16 v83, v3

    move-object/from16 v3, v81

    .line 130
    invoke-static {v5, v3}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v81

    if-eqz v81, :cond_31

    .line 131
    invoke-virtual {v0, v5, v1, v2}, Lcom/shabakaty/downloader/al0;->g(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v128

    .line 132
    move-object/from16 v2, v123

    check-cast v2, Lcom/shabakaty/downloader/b04$b;

    move-object/from16 v1, v71

    move-object/from16 v71, v82

    move-object/from16 v0, p0

    move-object/from16 v130, v1

    move-wide/from16 v81, v56

    move/from16 v56, v125

    move-object/from16 v57, v15

    move/from16 v15, v112

    move-object/from16 v142, v96

    move-object/from16 v96, v90

    move-object/from16 v90, v142

    move-object/from16 v1, p1

    move-object/from16 v112, v101

    move/from16 v101, v15

    move-object/from16 v15, v124

    move-object/from16 v124, v3

    move-object/from16 v131, v83

    move-object/from16 v83, v4

    move-wide/from16 v3, v40

    move-object/from16 v132, v6

    move-object/from16 v125, v8

    move-object v8, v5

    move-object/from16 v142, v79

    move/from16 v79, v10

    move-object/from16 v10, v142

    move-wide/from16 v5, v43

    move-object/from16 v47, v7

    move-object/from16 v133, v77

    move-object/from16 v134, v111

    move-object/from16 v39, v113

    move-object/from16 v77, v15

    move-object v15, v8

    move-wide v7, v13

    move-object/from16 v48, v9

    move-object/from16 v49, v10

    move-object/from16 v136, v73

    move-object/from16 v73, v92

    move-object/from16 v137, v93

    move/from16 v135, v97

    move-wide/from16 v9, v128

    move-object/from16 v138, p2

    move-object/from16 v140, v12

    move-object/from16 v139, v66

    move-object/from16 v59, v108

    const/16 v58, -0x1

    move-object/from16 v66, v11

    move-wide/from16 v11, v25

    .line 133
    invoke-virtual/range {v0 .. v12}, Lcom/shabakaty/downloader/al0;->u(Lorg/xmlpull/v1/XmlPullParser;Lcom/shabakaty/downloader/b04$b;JJJJJ)Lcom/shabakaty/downloader/b04$b;

    move-result-object v0

    move-object/from16 v123, v0

    move-object/from16 v3, v42

    move-object/from16 v7, v77

    move-object/from16 v9, v104

    move-object/from16 v11, v105

    move/from16 v67, v114

    move-object/from16 v8, v116

    move-object/from16 v10, v117

    move-object/from16 v6, v120

    move-object/from16 v91, v121

    move-object/from16 v4, v122

    move-object/from16 v141, v124

    move/from16 v5, v126

    move-wide/from16 v1, v128

    move-object/from16 v0, v137

    move-wide/from16 v113, v13

    move-object/from16 v14, p0

    goto/16 :goto_23

    :cond_31
    move-object/from16 v138, p2

    move-object/from16 v132, v6

    move-object/from16 v47, v7

    move-object/from16 v48, v9

    move-object/from16 v140, v12

    move-object/from16 v12, v65

    move-object/from16 v139, v66

    move-object/from16 v130, v71

    move-object/from16 v136, v73

    move-object/from16 v133, v77

    move-object/from16 v49, v79

    move-object/from16 v71, v82

    move-object/from16 v131, v83

    move-object/from16 v73, v92

    move-object/from16 v137, v93

    move/from16 v135, v97

    move-object/from16 v59, v108

    move-object/from16 v134, v111

    move-object/from16 v39, v113

    move-object/from16 v77, v124

    const/16 v58, -0x1

    move-object/from16 v124, v3

    move-object/from16 v83, v4

    move/from16 v79, v10

    move-object/from16 v66, v11

    move-wide/from16 v81, v56

    move/from16 v56, v125

    move-object/from16 v125, v8

    move-object/from16 v57, v15

    move-object v15, v5

    move-object/from16 v142, v96

    move-object/from16 v96, v90

    move-object/from16 v90, v142

    move/from16 v143, v112

    move-object/from16 v112, v101

    move/from16 v101, v143

    .line 134
    invoke-static {v15, v12}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 135
    invoke-virtual {v0, v15, v1, v2}, Lcom/shabakaty/downloader/al0;->g(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v92

    .line 136
    move-object/from16 v2, v123

    check-cast v2, Lcom/shabakaty/downloader/b04$c;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, v121

    move-wide/from16 v4, v40

    move-wide/from16 v6, v43

    move-wide v8, v13

    move-wide/from16 v10, v92

    move-object/from16 v65, v12

    move/from16 v67, v114

    move-object/from16 v91, v121

    move-object/from16 v141, v124

    move-wide/from16 v113, v13

    move-object/from16 v14, p0

    move-wide/from16 v12, v25

    .line 137
    invoke-virtual/range {v0 .. v13}, Lcom/shabakaty/downloader/al0;->v(Lorg/xmlpull/v1/XmlPullParser;Lcom/shabakaty/downloader/b04$c;Ljava/util/List;JJJJJ)Lcom/shabakaty/downloader/b04$c;

    move-result-object v123

    move-wide/from16 v1, v92

    move-object/from16 v4, v122

    move-object/from16 v0, v137

    goto :goto_20

    :cond_32
    move-object/from16 v65, v12

    move/from16 v67, v114

    move-object/from16 v91, v121

    move-object/from16 v141, v124

    move-object/from16 v0, v137

    move-wide/from16 v113, v13

    move-object/from16 v14, p0

    .line 138
    invoke-static {v15, v0}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 139
    invoke-virtual/range {p0 .. p1}, Lcom/shabakaty/downloader/al0;->i(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v3

    .line 140
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v4, :cond_33

    .line 141
    move-object/from16 v118, v4

    check-cast v118, Ljava/lang/String;

    .line 142
    :cond_33
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_34

    .line 143
    check-cast v3, Lcom/shabakaty/downloader/o01$b;

    move-object/from16 v4, v122

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_34
    move-object/from16 v4, v122

    :goto_20
    move-object/from16 v3, v42

    move-object/from16 v7, v77

    move-object/from16 v8, v116

    move-object/from16 v6, v120

    goto :goto_21

    :cond_35
    move-object/from16 v3, v42

    move-object/from16 v4, v122

    .line 144
    invoke-static {v15, v3}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 145
    invoke-static {v15, v3}, Lcom/shabakaty/downloader/al0;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/shabakaty/downloader/oq0;

    move-result-object v5

    move-object/from16 v6, v120

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, v77

    move-object/from16 v8, v116

    goto :goto_21

    :cond_36
    move-object/from16 v7, v77

    move-object/from16 v6, v120

    .line 146
    invoke-static {v15, v7}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 147
    invoke-static {v15, v7}, Lcom/shabakaty/downloader/al0;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/shabakaty/downloader/oq0;

    move-result-object v5

    move-object/from16 v8, v116

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_21
    move-object/from16 v9, v104

    move-object/from16 v10, v117

    goto :goto_22

    :cond_37
    move-object/from16 v9, v104

    move-object/from16 v8, v116

    .line 148
    invoke-static {v15, v9}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 149
    invoke-static {v15, v9}, Lcom/shabakaty/downloader/al0;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/shabakaty/downloader/oq0;

    move-result-object v5

    move-object/from16 v10, v117

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_38
    move-object/from16 v10, v117

    .line 150
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/al0;->e(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_22
    move-object/from16 v11, v105

    move/from16 v5, v126

    .line 151
    :goto_23
    invoke-static {v15, v11}, Lcom/shabakaty/downloader/cl3;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_68

    .line 152
    invoke-static/range {v109 .. v109}, Lcom/shabakaty/downloader/nt2;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 153
    invoke-static/range {v94 .. v94}, Lcom/shabakaty/downloader/nt2;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_24
    move-object v13, v0

    goto :goto_25

    .line 154
    :cond_39
    invoke-static/range {v109 .. v109}, Lcom/shabakaty/downloader/nt2;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 155
    invoke-static/range {v94 .. v94}, Lcom/shabakaty/downloader/nt2;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :goto_25
    move-object/from16 v12, v109

    goto :goto_28

    .line 156
    :cond_3a
    invoke-static/range {v109 .. v109}, Lcom/shabakaty/downloader/nt2;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "application/x-rawcc"

    move-object/from16 v12, v109

    .line 157
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    if-nez v94, :cond_3b

    goto :goto_27

    .line 158
    :cond_3b
    invoke-static/range {v94 .. v94}, Lcom/shabakaty/downloader/sy4;->R(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 159
    array-length v1, v0

    const/4 v2, 0x0

    :goto_26
    if-ge v2, v1, :cond_3f

    aget-object v3, v0, v2

    .line 160
    invoke-static {v3}, Lcom/shabakaty/downloader/nt2;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3c

    .line 161
    invoke-static {v13}, Lcom/shabakaty/downloader/nt2;->l(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    goto :goto_28

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_3d
    move-object v13, v12

    goto :goto_28

    :cond_3e
    move-object/from16 v12, v109

    const-string v0, "application/mp4"

    .line 162
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 163
    invoke-static/range {v94 .. v94}, Lcom/shabakaty/downloader/nt2;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v0, "text/vtt"

    .line 164
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const-string v13, "application/x-mp4-vtt"

    goto :goto_28

    :cond_3f
    :goto_27
    const/4 v13, 0x0

    :cond_40
    :goto_28
    const-string v0, "audio/eac3"

    .line 165
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "ec+3"

    if-eqz v1, :cond_45

    const/4 v1, 0x0

    .line 166
    :goto_29
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v7, "audio/eac3-joc"

    if-ge v1, v3, :cond_44

    .line 167
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/oq0;

    .line 168
    iget-object v9, v3, Lcom/shabakaty/downloader/oq0;->a:Ljava/lang/String;

    const-string v11, "tag:dolby.com,2018:dash:EC3_ExtensionType:2018"

    .line 169
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_41

    iget-object v11, v3, Lcom/shabakaty/downloader/oq0;->b:Ljava/lang/String;

    const-string v13, "JOC"

    .line 170
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_42

    :cond_41
    const-string v11, "tag:dolby.com,2014:dash:DolbyDigitalPlusExtensionType:2014"

    .line 171
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_43

    iget-object v3, v3, Lcom/shabakaty/downloader/oq0;->b:Ljava/lang/String;

    .line 172
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    :cond_42
    move-object v13, v7

    goto :goto_2a

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_44
    move-object v13, v0

    .line 173
    :goto_2a
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    goto :goto_2b

    :cond_45
    move-object/from16 v2, v94

    :goto_2b
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 174
    :goto_2c
    invoke-virtual/range {v112 .. v112}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v7, "urn:mpeg:dash:role:2011"

    if-ge v0, v3, :cond_4a

    move-object/from16 v15, v112

    .line 175
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/oq0;

    .line 176
    iget-object v11, v3, Lcom/shabakaty/downloader/oq0;->a:Ljava/lang/String;

    invoke-static {v7, v11}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_49

    .line 177
    iget-object v3, v3, Lcom/shabakaty/downloader/oq0;->b:Ljava/lang/String;

    if-nez v3, :cond_46

    goto :goto_2d

    :cond_46
    const-string v7, "forced_subtitle"

    .line 178
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_48

    const-string v7, "main"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    :goto_2d
    const/4 v7, 0x0

    goto :goto_2e

    :cond_47
    const/4 v7, 0x1

    goto :goto_2e

    :cond_48
    const/4 v7, 0x2

    :goto_2e
    or-int/2addr v1, v7

    :cond_49
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v112, v15

    goto :goto_2c

    :cond_4a
    move-object/from16 v15, v112

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 179
    :goto_2f
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v0, v11, :cond_4c

    .line 180
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shabakaty/downloader/oq0;

    .line 181
    iget-object v9, v11, Lcom/shabakaty/downloader/oq0;->a:Ljava/lang/String;

    invoke-static {v7, v9}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4b

    .line 182
    iget-object v9, v11, Lcom/shabakaty/downloader/oq0;->b:Ljava/lang/String;

    invoke-virtual {v14, v9}, Lcom/shabakaty/downloader/al0;->r(Ljava/lang/String;)I

    move-result v9

    or-int/2addr v3, v9

    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_4c
    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 183
    :goto_30
    invoke-virtual/range {v103 .. v103}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v0, v11, :cond_5a

    move-object/from16 v11, v103

    .line 184
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    move-object/from16 v112, v15

    move-object/from16 v15, v42

    check-cast v15, Lcom/shabakaty/downloader/oq0;

    move-object/from16 v120, v6

    .line 185
    iget-object v6, v15, Lcom/shabakaty/downloader/oq0;->a:Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 186
    iget-object v6, v15, Lcom/shabakaty/downloader/oq0;->b:Ljava/lang/String;

    invoke-virtual {v14, v6}, Lcom/shabakaty/downloader/al0;->r(Ljava/lang/String;)I

    move-result v6

    or-int/2addr v9, v6

    move-object/from16 v42, v7

    goto/16 :goto_35

    .line 187
    :cond_4d
    iget-object v6, v15, Lcom/shabakaty/downloader/oq0;->a:Ljava/lang/String;

    move-object/from16 v42, v7

    const-string v7, "urn:tva:metadata:cs:AudioPurposeCS:2007"

    invoke-static {v7, v6}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_59

    .line 188
    iget-object v6, v15, Lcom/shabakaty/downloader/oq0;->b:Ljava/lang/String;

    if-nez v6, :cond_4e

    const/4 v15, 0x2

    goto :goto_33

    .line 189
    :cond_4e
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v15

    const/4 v7, 0x3

    packed-switch v15, :pswitch_data_0

    :pswitch_0
    goto :goto_31

    :pswitch_1
    const-string v15, "6"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4f

    goto :goto_31

    :cond_4f
    const/4 v6, 0x4

    goto :goto_32

    :pswitch_2
    const-string v15, "4"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_50

    goto :goto_31

    :cond_50
    const/4 v6, 0x3

    goto :goto_32

    :pswitch_3
    const-string v15, "3"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_51

    goto :goto_31

    :cond_51
    const/4 v6, 0x2

    goto :goto_32

    :pswitch_4
    const-string v15, "2"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_52

    goto :goto_31

    :cond_52
    const/4 v6, 0x1

    goto :goto_32

    :pswitch_5
    const-string v15, "1"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_53

    goto :goto_31

    :cond_53
    const/4 v6, 0x0

    goto :goto_32

    :goto_31
    const/4 v6, -0x1

    :goto_32
    if-eqz v6, :cond_58

    const/4 v15, 0x1

    if-eq v6, v15, :cond_57

    const/4 v15, 0x2

    if-eq v6, v15, :cond_56

    if-eq v6, v7, :cond_55

    const/4 v7, 0x4

    if-eq v6, v7, :cond_54

    :goto_33
    const/4 v7, 0x0

    goto :goto_34

    :cond_54
    const/4 v7, 0x1

    goto :goto_34

    :cond_55
    const/16 v7, 0x8

    goto :goto_34

    :cond_56
    const/4 v7, 0x4

    goto :goto_34

    :cond_57
    const/4 v15, 0x2

    const/16 v7, 0x800

    goto :goto_34

    :cond_58
    const/4 v15, 0x2

    const/16 v7, 0x200

    :goto_34
    or-int v6, v7, v9

    move v9, v6

    goto :goto_36

    :cond_59
    :goto_35
    const/4 v15, 0x2

    :goto_36
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v103, v11

    move-object/from16 v7, v42

    move-object/from16 v15, v112

    move-object/from16 v6, v120

    goto/16 :goto_30

    :cond_5a
    move-object/from16 v120, v6

    move-object/from16 v112, v15

    move-object/from16 v11, v103

    or-int v0, v3, v9

    .line 190
    invoke-virtual {v14, v8}, Lcom/shabakaty/downloader/al0;->s(Ljava/util/List;)I

    move-result v3

    or-int/2addr v0, v3

    .line 191
    invoke-virtual {v14, v10}, Lcom/shabakaty/downloader/al0;->s(Ljava/util/List;)I

    move-result v3

    or-int/2addr v0, v3

    .line 192
    new-instance v3, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v3}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    move-object/from16 v6, v110

    .line 193
    iput-object v6, v3, Lcom/shabakaty/downloader/wh1$b;->a:Ljava/lang/String;

    .line 194
    iput-object v12, v3, Lcom/shabakaty/downloader/wh1$b;->j:Ljava/lang/String;

    .line 195
    iput-object v13, v3, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 196
    iput-object v2, v3, Lcom/shabakaty/downloader/wh1$b;->h:Ljava/lang/String;

    move/from16 v15, v101

    .line 197
    iput v15, v3, Lcom/shabakaty/downloader/wh1$b;->g:I

    .line 198
    iput v1, v3, Lcom/shabakaty/downloader/wh1$b;->d:I

    .line 199
    iput v0, v3, Lcom/shabakaty/downloader/wh1$b;->e:I

    move-object/from16 v0, v140

    .line 200
    iput-object v0, v3, Lcom/shabakaty/downloader/wh1$b;->c:Ljava/lang/String;

    .line 201
    invoke-static {v13}, Lcom/shabakaty/downloader/nt2;->m(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5c

    move/from16 v1, v88

    .line 202
    iput v1, v3, Lcom/shabakaty/downloader/wh1$b;->p:I

    move/from16 v13, v89

    .line 203
    iput v13, v3, Lcom/shabakaty/downloader/wh1$b;->q:I

    move/from16 v1, v87

    .line 204
    iput v1, v3, Lcom/shabakaty/downloader/wh1$b;->r:F

    :cond_5b
    :goto_37
    const/4 v6, 0x1

    goto/16 :goto_3e

    .line 205
    :cond_5c
    invoke-static {v13}, Lcom/shabakaty/downloader/nt2;->k(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 206
    iput v5, v3, Lcom/shabakaty/downloader/wh1$b;->x:I

    move/from16 v1, v115

    .line 207
    iput v1, v3, Lcom/shabakaty/downloader/wh1$b;->y:I

    goto :goto_37

    .line 208
    :cond_5d
    invoke-static {v13}, Lcom/shabakaty/downloader/nt2;->l(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5b

    const-string v1, "application/cea-608"

    .line 209
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "MpdParser"

    if-eqz v1, :cond_61

    const/4 v8, 0x0

    .line 210
    :goto_38
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_65

    .line 211
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/oq0;

    .line 212
    iget-object v5, v1, Lcom/shabakaty/downloader/oq0;->a:Ljava/lang/String;

    const-string v6, "urn:scte:dash:cc:cea-608:2015"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    iget-object v5, v1, Lcom/shabakaty/downloader/oq0;->b:Ljava/lang/String;

    if-eqz v5, :cond_60

    .line 213
    sget-object v6, Lcom/shabakaty/downloader/al0;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 214
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_5e

    const/4 v6, 0x1

    .line 215
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v12, v1

    const/4 v6, 0x1

    goto/16 :goto_3d

    :cond_5e
    const-string v5, "Unable to parse CEA-608 channel number from: "

    .line 216
    iget-object v1, v1, Lcom/shabakaty/downloader/oq0;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_5f

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_39

    :cond_5f
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 217
    :goto_39
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    add-int/lit8 v8, v8, 0x1

    goto :goto_38

    :cond_61
    const-string v1, "application/cea-708"

    .line 218
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    const/4 v8, 0x0

    .line 219
    :goto_3a
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_65

    .line 220
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/oq0;

    .line 221
    iget-object v5, v1, Lcom/shabakaty/downloader/oq0;->a:Ljava/lang/String;

    const-string v6, "urn:scte:dash:cc:cea-708:2015"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    iget-object v5, v1, Lcom/shabakaty/downloader/oq0;->b:Ljava/lang/String;

    if-eqz v5, :cond_64

    .line 222
    sget-object v6, Lcom/shabakaty/downloader/al0;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 223
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_62

    const/4 v6, 0x1

    .line 224
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v12, v1

    goto :goto_3d

    :cond_62
    const/4 v6, 0x1

    const-string v5, "Unable to parse CEA-708 service block number from: "

    .line 225
    iget-object v1, v1, Lcom/shabakaty/downloader/oq0;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_63

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3b

    :cond_63
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 226
    :goto_3b
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    :cond_64
    const/4 v6, 0x1

    :goto_3c
    add-int/lit8 v8, v8, 0x1

    goto :goto_3a

    :cond_65
    const/4 v6, 0x1

    const/4 v12, -0x1

    .line 227
    :goto_3d
    iput v12, v3, Lcom/shabakaty/downloader/wh1$b;->C:I

    .line 228
    :goto_3e
    invoke-virtual {v3}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v1

    if-eqz v123, :cond_66

    move-object/from16 v117, v123

    goto :goto_3f

    .line 229
    :cond_66
    new-instance v2, Lcom/shabakaty/downloader/b04$e;

    invoke-direct {v2}, Lcom/shabakaty/downloader/b04$e;-><init>()V

    move-object/from16 v117, v2

    .line 230
    :goto_3f
    new-instance v2, Lcom/shabakaty/downloader/al0$a;

    .line 231
    invoke-virtual/range {v127 .. v127}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_67

    move-object/from16 v116, v127

    goto :goto_40

    :cond_67
    move-object/from16 v116, v48

    :goto_40
    const-wide/16 v121, -0x1

    move-object/from16 v114, v2

    move-object/from16 v115, v1

    move-object/from16 v119, v4

    invoke-direct/range {v114 .. v122}, Lcom/shabakaty/downloader/al0$a;-><init>(Lcom/shabakaty/downloader/wh1;Ljava/util/List;Lcom/shabakaty/downloader/b04;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    .line 232
    iget-object v1, v1, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    .line 233
    invoke-static {v1}, Lcom/shabakaty/downloader/nt2;->i(Ljava/lang/String;)I

    move-result v1

    move/from16 v3, v135

    .line 234
    invoke-static {v3, v1}, Lcom/shabakaty/downloader/al0;->c(II)I

    move-result v1

    move-object/from16 v3, v96

    .line 235
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v15, p1

    move-object/from16 v70, v0

    move v9, v1

    move-object/from16 v42, v11

    move-object/from16 v13, v65

    const/16 v92, 0x1

    goto/16 :goto_42

    :cond_68
    move-object/from16 v120, v6

    move/from16 v142, v88

    move/from16 v88, v87

    move/from16 v87, v142

    move-object/from16 v93, v0

    move-object/from16 v42, v3

    move-object/from16 v122, v4

    move/from16 v126, v5

    move-object/from16 v124, v7

    move-object/from16 v116, v8

    move-object/from16 v104, v9

    move-object/from16 v117, v10

    move-object/from16 v105, v11

    move-object v0, v14

    move-object/from16 v7, v47

    move-object/from16 v9, v48

    move-object/from16 v108, v59

    move-object/from16 v11, v66

    move-object/from16 v92, v73

    move/from16 v10, v79

    move-object/from16 v4, v83

    move-object/from16 v121, v91

    move-wide/from16 v13, v113

    move-object/from16 v8, v125

    move-object/from16 v15, v127

    move-object/from16 v3, v131

    move-object/from16 v6, v132

    move-object/from16 v77, v133

    move-object/from16 v111, v134

    move/from16 v97, v135

    move-object/from16 v73, v136

    move-object/from16 p2, v138

    move-object/from16 v66, v139

    move-object/from16 v12, v140

    move-object/from16 v5, p1

    move-object/from16 v113, v39

    move-object/from16 v79, v49

    move/from16 v125, v56

    move-object/from16 v83, v57

    move/from16 v114, v67

    move-wide/from16 v56, v81

    move-object/from16 v81, v141

    move-object/from16 v82, v71

    move-object/from16 v71, v130

    move/from16 v142, v88

    move/from16 v88, v87

    move/from16 v87, v142

    move-object/from16 v143, v96

    move-object/from16 v96, v90

    move-object/from16 v90, v143

    move-object/from16 v144, v112

    move/from16 v112, v101

    move-object/from16 v101, v144

    goto/16 :goto_1d

    :cond_69
    move-object/from16 v14, p0

    move-object/from16 v2, p1

    move-object/from16 v138, p2

    move-object/from16 v131, v3

    move-object/from16 v132, v6

    move-wide/from16 v106, v8

    move-object/from16 v59, v11

    move-object/from16 v70, v12

    move-object v3, v15

    move-object/from16 v139, v66

    move-object/from16 v130, v71

    move-object/from16 v136, v73

    move-object/from16 v133, v77

    move-object/from16 v49, v79

    move-object/from16 v141, v81

    move-object/from16 v39, v82

    move-object/from16 v15, v83

    move-object/from16 v125, v87

    move/from16 v67, v88

    move-object/from16 v71, v91

    move-object/from16 v73, v93

    move-object/from16 v66, v94

    move-object/from16 v134, v96

    move/from16 v77, v97

    move-object/from16 v112, v101

    move-object/from16 v42, v103

    const/16 v58, -0x1

    move-object/from16 v83, v4

    move-object/from16 v91, v13

    move-wide/from16 v81, v56

    move/from16 v79, v75

    move/from16 v56, v89

    move-object/from16 v96, v90

    move/from16 v75, v92

    const/16 v92, 0x1

    move-object/from16 v90, v1

    move-object/from16 v1, v65

    .line 236
    invoke-static {v2, v15}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 237
    move-object/from16 v0, v100

    check-cast v0, Lcom/shabakaty/downloader/b04$e;

    invoke-virtual {v5, v2, v0}, Lcom/shabakaty/downloader/al0;->t(Lorg/xmlpull/v1/XmlPullParser;Lcom/shabakaty/downloader/b04$e;)Lcom/shabakaty/downloader/b04$e;

    move-result-object v0

    move-object/from16 v100, v0

    move-object v13, v1

    move-object v14, v5

    move-object/from16 v57, v15

    move-object v15, v2

    goto :goto_41

    :cond_6a
    move-object/from16 v13, v141

    .line 238
    invoke-static {v2, v13}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6b

    move-wide/from16 v6, v98

    .line 239
    invoke-virtual {v5, v2, v6, v7}, Lcom/shabakaty/downloader/al0;->g(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v98

    .line 240
    move-object/from16 v3, v100

    check-cast v3, Lcom/shabakaty/downloader/b04$b;

    move-object/from16 v0, p0

    move-object v11, v1

    move-object/from16 v1, p1

    move-object v12, v2

    move-object v2, v3

    move-wide/from16 v3, v40

    move-object v9, v5

    move-wide/from16 v5, v43

    move-wide/from16 v7, v106

    move-object v14, v9

    move-wide/from16 v9, v98

    move-object/from16 v141, v13

    move-object/from16 v57, v15

    move-object v13, v11

    move-object v15, v12

    move-wide/from16 v11, v25

    .line 241
    invoke-virtual/range {v0 .. v12}, Lcom/shabakaty/downloader/al0;->u(Lorg/xmlpull/v1/XmlPullParser;Lcom/shabakaty/downloader/b04$b;JJJJJ)Lcom/shabakaty/downloader/b04$b;

    move-result-object v0

    move-object/from16 v100, v0

    :goto_41
    move/from16 v9, v77

    :goto_42
    move-object/from16 v65, v13

    move-object v5, v14

    move-object/from16 v14, v141

    goto :goto_43

    :cond_6b
    move-object v14, v5

    move-object/from16 v141, v13

    move-object/from16 v57, v15

    move-wide/from16 v6, v98

    move-object v13, v1

    move-object v15, v2

    .line 242
    invoke-static {v15, v13}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 243
    invoke-virtual {v14, v15, v6, v7}, Lcom/shabakaty/downloader/al0;->g(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v98

    .line 244
    move-object/from16 v2, v100

    check-cast v2, Lcom/shabakaty/downloader/b04$c;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, v91

    move-wide/from16 v4, v40

    move-wide/from16 v6, v43

    move-wide/from16 v8, v106

    move-wide/from16 v10, v98

    move-object/from16 v65, v13

    move-object/from16 v47, v14

    move-object/from16 v14, v141

    move-wide/from16 v12, v25

    .line 245
    invoke-virtual/range {v0 .. v13}, Lcom/shabakaty/downloader/al0;->v(Lorg/xmlpull/v1/XmlPullParser;Lcom/shabakaty/downloader/b04$c;Ljava/util/List;JJJJJ)Lcom/shabakaty/downloader/b04$c;

    move-result-object v100

    move-object/from16 v5, v47

    move/from16 v9, v77

    :goto_43
    move-object v2, v15

    move-object/from16 v1, v85

    goto :goto_46

    :cond_6c
    move-object/from16 v65, v13

    move-object/from16 v47, v14

    move-object/from16 v14, v141

    .line 246
    invoke-static {v15, v3}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 247
    invoke-static {v15, v3}, Lcom/shabakaty/downloader/al0;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/shabakaty/downloader/oq0;

    move-result-object v0

    move-object/from16 v1, v85

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_44

    :cond_6d
    move-object/from16 v1, v85

    const-string v0, "Label"

    .line 248
    invoke-static {v15, v0}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 249
    invoke-static {v15, v0}, Lcom/shabakaty/downloader/al0;->x(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v86, v0

    goto :goto_44

    .line 250
    :cond_6e
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/cl3;->k(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 251
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/al0;->e(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_6f
    :goto_44
    move-object v0, v15

    :goto_45
    move-object v2, v0

    move-wide/from16 v98, v6

    move-object/from16 v5, v47

    move/from16 v9, v77

    :goto_46
    move-object v0, v2

    move/from16 v97, v9

    move-object/from16 v12, v70

    move-object/from16 v2, v86

    move-wide/from16 v8, v106

    move-object/from16 v3, v139

    .line 252
    :goto_47
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/cl3;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual/range {v96 .. v96}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v8, 0x0

    .line 254
    :goto_48
    invoke-virtual/range {v96 .. v96}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v8, v3, :cond_79

    move-object/from16 v4, v96

    .line 255
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/al0$a;

    .line 256
    iget-object v5, v3, Lcom/shabakaty/downloader/al0$a;->a:Lcom/shabakaty/downloader/wh1;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/wh1;->a()Lcom/shabakaty/downloader/wh1$b;

    move-result-object v5

    if-eqz v2, :cond_70

    .line 257
    iput-object v2, v5, Lcom/shabakaty/downloader/wh1$b;->b:Ljava/lang/String;

    .line 258
    :cond_70
    iget-object v6, v3, Lcom/shabakaty/downloader/al0$a;->d:Ljava/lang/String;

    if-nez v6, :cond_71

    move-object/from16 v6, v68

    .line 259
    :cond_71
    iget-object v7, v3, Lcom/shabakaty/downloader/al0$a;->e:Ljava/util/ArrayList;

    move-object/from16 v10, v131

    .line 260
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 261
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_76

    .line 262
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    :goto_49
    if-ltz v9, :cond_75

    .line 263
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shabakaty/downloader/o01$b;

    .line 264
    invoke-virtual {v11}, Lcom/shabakaty/downloader/o01$b;->a()Z

    move-result v12

    if-nez v12, :cond_74

    const/4 v12, 0x0

    .line 265
    :goto_4a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_74

    .line 266
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shabakaty/downloader/o01$b;

    .line 267
    invoke-virtual {v13}, Lcom/shabakaty/downloader/o01$b;->a()Z

    move-result v14

    if-eqz v14, :cond_72

    invoke-virtual {v11}, Lcom/shabakaty/downloader/o01$b;->a()Z

    move-result v14

    if-nez v14, :cond_72

    iget-object v14, v11, Lcom/shabakaty/downloader/o01$b;->s:Ljava/util/UUID;

    invoke-virtual {v13, v14}, Lcom/shabakaty/downloader/o01$b;->b(Ljava/util/UUID;)Z

    move-result v13

    if-eqz v13, :cond_72

    const/4 v13, 0x1

    goto :goto_4b

    :cond_72
    const/4 v13, 0x0

    :goto_4b
    if-eqz v13, :cond_73

    .line 268
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4c

    :cond_73
    add-int/lit8 v12, v12, 0x1

    goto :goto_4a

    :cond_74
    :goto_4c
    add-int/lit8 v9, v9, -0x1

    goto :goto_49

    .line 269
    :cond_75
    new-instance v9, Lcom/shabakaty/downloader/o01;

    const/4 v13, 0x0

    new-array v11, v13, [Lcom/shabakaty/downloader/o01$b;

    .line 270
    invoke-interface {v7, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/shabakaty/downloader/o01$b;

    invoke-direct {v9, v6, v13, v7}, Lcom/shabakaty/downloader/o01;-><init>(Ljava/lang/String;Z[Lcom/shabakaty/downloader/o01$b;)V

    .line 271
    iput-object v9, v5, Lcom/shabakaty/downloader/wh1$b;->n:Lcom/shabakaty/downloader/o01;

    goto :goto_4d

    :cond_76
    const/4 v13, 0x0

    .line 272
    :goto_4d
    iget-object v6, v3, Lcom/shabakaty/downloader/al0$a;->f:Ljava/util/ArrayList;

    .line 273
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 274
    iget-wide v11, v3, Lcom/shabakaty/downloader/al0$a;->g:J

    .line 275
    invoke-virtual {v5}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v87

    iget-object v5, v3, Lcom/shabakaty/downloader/al0$a;->b:Lcom/google/common/collect/p;

    iget-object v3, v3, Lcom/shabakaty/downloader/al0$a;->c:Lcom/shabakaty/downloader/b04;

    .line 276
    instance-of v7, v3, Lcom/shabakaty/downloader/b04$e;

    if-eqz v7, :cond_77

    .line 277
    new-instance v7, Lcom/shabakaty/downloader/ur3$c;

    move-object/from16 v103, v3

    check-cast v103, Lcom/shabakaty/downloader/b04$e;

    const-wide/16 v106, -0x1

    const/16 v105, 0x0

    move-object/from16 v98, v7

    move-wide/from16 v99, v11

    move-object/from16 v101, v87

    move-object/from16 v102, v5

    move-object/from16 v104, v6

    invoke-direct/range {v98 .. v107}, Lcom/shabakaty/downloader/ur3$c;-><init>(JLcom/shabakaty/downloader/wh1;Ljava/util/List;Lcom/shabakaty/downloader/b04$e;Ljava/util/List;Ljava/lang/String;J)V

    goto :goto_4e

    .line 278
    :cond_77
    instance-of v7, v3, Lcom/shabakaty/downloader/b04$a;

    if-eqz v7, :cond_78

    .line 279
    new-instance v7, Lcom/shabakaty/downloader/ur3$b;

    move-object/from16 v89, v3

    check-cast v89, Lcom/shabakaty/downloader/b04$a;

    move-object/from16 v84, v7

    move-wide/from16 v85, v11

    move-object/from16 v88, v5

    move-object/from16 v90, v6

    invoke-direct/range {v84 .. v90}, Lcom/shabakaty/downloader/ur3$b;-><init>(JLcom/shabakaty/downloader/wh1;Ljava/util/List;Lcom/shabakaty/downloader/b04$a;Ljava/util/List;)V

    .line 280
    :goto_4e
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v96, v4

    move-object/from16 v131, v10

    goto/16 :goto_48

    .line 281
    :cond_78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "segmentBase must be of type SingleSegmentBase or MultiSegmentBase"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_79
    const/4 v13, 0x0

    .line 282
    new-instance v1, Lcom/shabakaty/downloader/l4;

    move-object/from16 v68, v1

    move/from16 v70, v97

    move-object/from16 v71, v0

    move-object/from16 v72, v42

    move-object/from16 v73, v132

    move-object/from16 v74, v91

    invoke-direct/range {v68 .. v74}, Lcom/shabakaty/downloader/l4;-><init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v11, v130

    .line 283
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v15

    move-object/from16 v13, v46

    move-object/from16 v14, v134

    goto/16 :goto_58

    :cond_7a
    move-object/from16 v7, p0

    move-object/from16 v85, v1

    move-object/from16 v86, v2

    move-object v10, v15

    move-object/from16 v15, v42

    move/from16 v89, v56

    move-object/from16 v11, v59

    move-object/from16 v94, v66

    move/from16 v88, v67

    move-object/from16 v93, v73

    move/from16 v92, v75

    move/from16 v75, v79

    move-object/from16 v4, v83

    move-object/from16 v1, v90

    move-object/from16 v13, v91

    move-object/from16 v90, v96

    move-object/from16 v2, v112

    move-object/from16 v87, v125

    move-object/from16 v6, v132

    move-object/from16 v77, v133

    move-object/from16 v96, v134

    move-object/from16 v73, v136

    move-object/from16 p2, v138

    move-object/from16 v66, v3

    move-object/from16 v79, v49

    move-object/from16 v83, v57

    move-object/from16 v91, v71

    move-wide/from16 v56, v81

    move-object/from16 v71, v130

    move-object/from16 v3, v131

    move-object/from16 v81, v14

    move-object/from16 v82, v39

    move-object/from16 v14, v102

    goto/16 :goto_16

    :cond_7b
    move-object/from16 v138, p2

    move-object/from16 v86, v2

    move-object/from16 v80, v3

    move-object/from16 v83, v4

    move-object/from16 v78, v5

    move-object/from16 v49, v6

    move-object/from16 v133, v7

    move-object/from16 v134, v8

    move-object/from16 v136, v9

    move-object/from16 v76, v10

    move-object/from16 v59, v11

    move-object/from16 v64, v14

    move-wide/from16 v81, v56

    const/16 v92, 0x1

    move-object v11, v0

    move-object v14, v13

    move-object/from16 v57, v15

    const/4 v13, 0x0

    move-object/from16 v15, p1

    const-string v0, "EventStream"

    .line 284
    invoke-static {v2, v0}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_85

    move-object/from16 v12, v133

    const/4 v9, 0x0

    .line 285
    invoke-interface {v2, v9, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    if-nez v1, :cond_7c

    move-object v1, v3

    :cond_7c
    move-object/from16 v10, v138

    .line 286
    invoke-interface {v2, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7d

    goto :goto_4f

    :cond_7d
    move-object v3, v4

    :goto_4f
    const-wide/16 v4, 0x1

    const-string v6, "timescale"

    .line 287
    invoke-static {v2, v6, v4, v5}, Lcom/shabakaty/downloader/al0;->o(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 288
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 289
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    const/16 v8, 0x200

    invoke-direct {v7, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 290
    :goto_50
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v8, "Event"

    .line 291
    invoke-static {v2, v8}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_82

    move-object/from16 v138, v10

    move-object/from16 v14, v134

    const-wide/16 v9, 0x0

    .line 292
    invoke-static {v2, v14, v9, v10}, Lcom/shabakaty/downloader/al0;->o(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v47

    move-object/from16 v130, v11

    move-object/from16 v133, v12

    move-object/from16 v9, v45

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 293
    invoke-static {v2, v9, v11, v12}, Lcom/shabakaty/downloader/al0;->o(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v65

    const-string v10, "presentationTime"

    const-wide/16 v11, 0x0

    .line 294
    invoke-static {v2, v10, v11, v12}, Lcom/shabakaty/downloader/al0;->o(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v56

    const-wide/16 v67, 0x3e8

    move-wide/from16 v69, v4

    .line 295
    invoke-static/range {v65 .. v70}, Lcom/shabakaty/downloader/sy4;->N(JJJ)J

    move-result-wide v71

    const-wide/32 v67, 0xf4240

    move-wide/from16 v65, v56

    .line 296
    invoke-static/range {v65 .. v70}, Lcom/shabakaty/downloader/sy4;->N(JJJ)J

    move-result-wide v56

    const-string v10, "messageData"

    const/4 v11, 0x0

    .line 297
    invoke-interface {v2, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_7e

    const/4 v10, 0x0

    .line 298
    :cond_7e
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 299
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v11

    .line 300
    sget-object v12, Lcom/shabakaty/downloader/iz;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v12}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v7, v12}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 301
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    .line 302
    :goto_51
    invoke-static {v2, v8}, Lcom/shabakaty/downloader/cl3;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_80

    .line 303
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v12

    packed-switch v12, :pswitch_data_1

    goto :goto_52

    .line 304
    :pswitch_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->docdecl(Ljava/lang/String;)V

    goto :goto_52

    .line 305
    :pswitch_7
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    goto :goto_52

    .line 306
    :pswitch_8
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->processingInstruction(Ljava/lang/String;)V

    goto :goto_52

    .line 307
    :pswitch_9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->ignorableWhitespace(Ljava/lang/String;)V

    goto :goto_52

    .line 308
    :pswitch_a
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->entityRef(Ljava/lang/String;)V

    goto :goto_52

    .line 309
    :pswitch_b
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    goto :goto_52

    .line 310
    :pswitch_c
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_52

    .line 311
    :pswitch_d
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7f
    :goto_52
    move-object/from16 p2, v8

    move-object/from16 v45, v9

    goto :goto_54

    .line 312
    :pswitch_e
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v12, 0x0

    .line 313
    :goto_53
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v13

    if-ge v12, v13, :cond_7f

    .line 314
    invoke-interface {v2, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 p2, v8

    invoke-interface {v2, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v45, v9

    invoke-interface {v2, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    .line 315
    invoke-interface {v11, v13, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v8, p2

    move-object/from16 v9, v45

    goto :goto_53

    :pswitch_f
    move-object/from16 p2, v8

    move-object/from16 v45, v9

    .line 316
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    goto :goto_54

    :pswitch_10
    move-object/from16 p2, v8

    move-object/from16 v45, v9

    .line 317
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v9, 0x0

    invoke-interface {v11, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 318
    :goto_54
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-object/from16 v8, p2

    move-object/from16 v9, v45

    const/4 v13, 0x0

    goto/16 :goto_51

    :cond_80
    move-object/from16 v45, v9

    .line 319
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 320
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 321
    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    if-nez v10, :cond_81

    goto :goto_55

    .line 322
    :cond_81
    invoke-static {v10}, Lcom/shabakaty/downloader/sy4;->C(Ljava/lang/String;)[B

    move-result-object v8

    .line 323
    :goto_55
    new-instance v10, Lcom/shabakaty/downloader/u51;

    move-object/from16 v65, v10

    move-object/from16 v66, v1

    move-object/from16 v67, v3

    move-wide/from16 v68, v71

    move-wide/from16 v70, v47

    move-object/from16 v72, v8

    invoke-direct/range {v65 .. v72}, Lcom/shabakaty/downloader/u51;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    .line 324
    invoke-static {v9, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    .line 325
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_56

    :cond_82
    move-object/from16 v138, v10

    move-object/from16 v130, v11

    move-object/from16 v133, v12

    move-object/from16 v14, v134

    .line 326
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/al0;->e(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 327
    :goto_56
    invoke-static {v2, v0}, Lcom/shabakaty/downloader/cl3;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_84

    .line 328
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 329
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Lcom/shabakaty/downloader/u51;

    const/4 v8, 0x0

    .line 330
    :goto_57
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_83

    .line 331
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    .line 332
    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    aput-wide v10, v0, v8

    .line 333
    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lcom/shabakaty/downloader/u51;

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_57

    .line 334
    :cond_83
    new-instance v6, Lcom/shabakaty/downloader/c61;

    move-object/from16 v65, v6

    move-object/from16 v66, v1

    move-object/from16 v67, v3

    move-wide/from16 v68, v4

    move-object/from16 v70, v0

    move-object/from16 v71, v7

    invoke-direct/range {v65 .. v71}, Lcom/shabakaty/downloader/c61;-><init>(Ljava/lang/String;Ljava/lang/String;J[J[Lcom/shabakaty/downloader/u51;)V

    move-object/from16 v13, v46

    .line 335
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_58
    move-object/from16 v15, p0

    move-object/from16 v67, v13

    move-object/from16 v39, v14

    move-object/from16 v56, v130

    move-object/from16 v48, v133

    move-object/from16 v42, v138

    const-wide/16 v57, 0x0

    const-wide v65, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v68, 0x0

    goto/16 :goto_5b

    :cond_84
    move-object/from16 v134, v14

    move-object/from16 v11, v130

    move-object/from16 v12, v133

    move-object/from16 v10, v138

    const/4 v9, 0x0

    const/4 v13, 0x0

    goto/16 :goto_50

    :cond_85
    move-object/from16 v130, v11

    move-object/from16 v13, v46

    move-object/from16 v8, v57

    move-object/from16 v39, v134

    .line 336
    invoke-static {v2, v8}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_86

    move-object/from16 v11, p0

    const/4 v9, 0x0

    .line 337
    invoke-virtual {v11, v2, v9}, Lcom/shabakaty/downloader/al0;->t(Lorg/xmlpull/v1/XmlPullParser;Lcom/shabakaty/downloader/b04$e;)Lcom/shabakaty/downloader/b04$e;

    move-result-object v60

    move-object v1, v11

    :goto_59
    move-object v15, v11

    move-object/from16 v67, v13

    move-wide/from16 v12, v36

    move-object/from16 v56, v130

    move-object/from16 v48, v133

    move-object/from16 v0, v136

    move-object/from16 v42, v138

    const-wide/16 v57, 0x0

    const-wide v65, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v68, 0x0

    goto/16 :goto_5c

    :cond_86
    move-object/from16 v11, p0

    const/4 v9, 0x0

    .line 338
    invoke-static {v2, v14}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_87

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 339
    invoke-virtual {v11, v2, v7, v8}, Lcom/shabakaty/downloader/al0;->g(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v46

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v14, v2

    move-object v2, v3

    move-wide/from16 v3, v40

    move-wide/from16 v5, v43

    move-wide/from16 v54, v7

    move-wide/from16 v7, v36

    move-object v12, v9

    move-object/from16 v42, v138

    const-wide/16 v57, 0x0

    move-wide/from16 v9, v46

    move-object v15, v11

    move-object/from16 v56, v130

    move-object/from16 v48, v133

    move-wide/from16 v11, v25

    .line 340
    invoke-virtual/range {v0 .. v12}, Lcom/shabakaty/downloader/al0;->u(Lorg/xmlpull/v1/XmlPullParser;Lcom/shabakaty/downloader/b04$b;JJJJJ)Lcom/shabakaty/downloader/b04$b;

    move-result-object v0

    move-object/from16 v60, v0

    move-object/from16 v67, v13

    move-wide/from16 v54, v46

    const-wide v65, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v68, 0x0

    goto :goto_5a

    :cond_87
    move-object v14, v2

    move-object v15, v11

    move-object/from16 v0, v65

    move-object/from16 v56, v130

    move-object/from16 v48, v133

    move-object/from16 v42, v138

    const-wide/16 v57, 0x0

    .line 341
    invoke-static {v14, v0}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_88

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 342
    invoke-virtual {v15, v14, v10, v11}, Lcom/shabakaty/downloader/al0;->g(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v46

    const/4 v2, 0x0

    .line 343
    sget-object v0, Lcom/google/common/collect/p;->s:Lcom/shabakaty/downloader/c0;

    .line 344
    sget-object v3, Lcom/shabakaty/downloader/oq3;->v:Lcom/google/common/collect/p;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v4, v40

    move-wide/from16 v6, v43

    move-wide/from16 v8, v36

    move-wide/from16 v65, v10

    move-wide/from16 v10, v46

    move-object/from16 v67, v13

    const/16 v68, 0x0

    move-wide/from16 v12, v25

    .line 345
    invoke-virtual/range {v0 .. v13}, Lcom/shabakaty/downloader/al0;->v(Lorg/xmlpull/v1/XmlPullParser;Lcom/shabakaty/downloader/b04$c;Ljava/util/List;JJJJJ)Lcom/shabakaty/downloader/b04$c;

    move-result-object v0

    move-object/from16 v60, v0

    move-wide/from16 v54, v46

    goto :goto_5a

    :cond_88
    move-object/from16 v67, v13

    const-wide v65, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v68, 0x0

    const-string v0, "AssetIdentifier"

    .line 346
    invoke-static {v14, v0}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 347
    invoke-static {v14, v0}, Lcom/shabakaty/downloader/al0;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/shabakaty/downloader/oq0;

    move-result-object v61

    goto :goto_5a

    .line 348
    :cond_89
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/al0;->e(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_5a
    move-object v2, v14

    :goto_5b
    move-object v1, v15

    move-wide/from16 v12, v36

    move-object/from16 v0, v136

    .line 349
    :goto_5c
    invoke-static {v2, v0}, Lcom/shabakaty/downloader/cl3;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 350
    new-instance v0, Lcom/shabakaty/downloader/vb3;

    move-object/from16 v50, v0

    move-object/from16 v54, v56

    move-object/from16 v55, v67

    move-object/from16 v56, v61

    invoke-direct/range {v50 .. v56}, Lcom/shabakaty/downloader/vb3;-><init>(Ljava/lang/String;JLjava/util/List;Ljava/util/List;Lcom/shabakaty/downloader/oq0;)V

    .line 351
    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 352
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 353
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/vb3;

    .line 354
    iget-wide v2, v1, Lcom/shabakaty/downloader/vb3;->b:J

    cmp-long v4, v2, v65

    if-nez v4, :cond_8b

    if-eqz v22, :cond_8a

    move-object/from16 v4, v49

    move-wide/from16 v36, v62

    const/4 v3, 0x0

    const/4 v7, 0x1

    goto :goto_5e

    .line 355
    :cond_8a
    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unable to determine start of period "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 356
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/pa3;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v0

    throw v0

    :cond_8b
    const/4 v3, 0x0

    .line 357
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, v65

    if-nez v0, :cond_8c

    move-object/from16 v4, v49

    move-wide/from16 v11, v65

    goto :goto_5d

    .line 358
    :cond_8c
    iget-wide v6, v1, Lcom/shabakaty/downloader/vb3;->b:J

    add-long v11, v6, v4

    move-object/from16 v4, v49

    .line 359
    :goto_5d
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v36, v11

    move/from16 v7, v32

    :goto_5e
    move/from16 v32, v7

    goto :goto_5f

    :cond_8d
    move-object/from16 v15, p1

    move-object v9, v0

    move-object/from16 v8, v39

    move-object/from16 p2, v42

    move-object/from16 v7, v48

    move-object/from16 v6, v49

    move-object/from16 v0, v56

    move-object/from16 v11, v59

    move-wide/from16 v36, v62

    move-object/from16 v14, v64

    move-object/from16 v46, v67

    move-object/from16 v10, v76

    move-object/from16 v5, v78

    move-object/from16 v3, v80

    move-wide/from16 v56, v81

    move-object/from16 v4, v83

    goto/16 :goto_13

    :cond_8e
    move-wide/from16 v81, v1

    move-object/from16 v80, v3

    move-object/from16 v78, v5

    move-object v4, v6

    move-object v3, v13

    move-object v15, v14

    move-wide/from16 v62, v36

    const-wide/16 v57, 0x0

    const-wide v65, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v68, 0x0

    const/16 v92, 0x1

    .line 360
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/al0;->e(Lorg/xmlpull/v1/XmlPullParser;)V

    move-wide/from16 v36, v62

    :goto_5f
    move-wide/from16 v1, v81

    :goto_60
    const-string v0, "MPD"

    move-object/from16 v5, p1

    .line 361
    invoke-static {v5, v0}, Lcom/shabakaty/downloader/cl3;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_93

    cmp-long v0, v18, v65

    if-nez v0, :cond_91

    cmp-long v0, v36, v65

    if-eqz v0, :cond_8f

    move-wide/from16 v18, v36

    goto :goto_61

    :cond_8f
    if-eqz v22, :cond_90

    goto :goto_61

    :cond_90
    const-string v0, "Unable to determine duration of static manifest."

    .line 362
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/pa3;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v0

    throw v0

    .line 363
    :cond_91
    :goto_61
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_92

    .line 364
    new-instance v0, Lcom/shabakaty/downloader/zk0;

    move-object v15, v0

    move-object/from16 v31, v33

    move-object/from16 v32, v34

    move-object/from16 v33, v38

    move-object/from16 v34, v35

    move-object/from16 v35, v4

    invoke-direct/range {v15 .. v35}, Lcom/shabakaty/downloader/zk0;-><init>(JJJZJJJJLcom/shabakaty/downloader/hh3;Lcom/shabakaty/downloader/qz2;Lcom/shabakaty/downloader/g14;Landroid/net/Uri;Ljava/util/List;)V

    return-object v0

    :cond_92
    const-string v0, "No periods found."

    .line 365
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/pa3;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v0

    throw v0

    :cond_93
    move-object/from16 v14, p0

    move-object v13, v3

    move-object v6, v4

    move-object v15, v5

    move-wide/from16 v11, v65

    move-object/from16 v5, v78

    move-object/from16 v3, v80

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto/16 :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public q(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/qm3;
    .locals 7

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-interface {p1, v0, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "-"

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 4
    aget-object p2, p1, p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    .line 5
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 6
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sub-long/2addr v0, p2

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    goto :goto_0

    :cond_0
    const-wide/16 p2, 0x0

    :cond_1
    const-wide/16 v0, -0x1

    :goto_0
    move-wide v3, p2

    move-wide v5, v0

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/qm3;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/qm3;-><init>(Ljava/lang/String;JJ)V

    return-object p1
.end method

.method public r(Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "supplementary"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "emergency"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "commentary"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "caption"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "sign"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_5
    const-string v2, "main"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_6
    const-string v2, "dub"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_7
    const-string v2, "alternate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_8
    const-string v2, "forced_subtitle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_9
    const-string v2, "enhanced-audio-intelligibility"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_a
    const-string v2, "description"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_b
    const-string v2, "subtitle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    return v4

    :pswitch_1
    const/16 p1, 0x20

    return p1

    :pswitch_2
    return v3

    :pswitch_3
    const/16 p1, 0x40

    return p1

    :pswitch_4
    const/16 p1, 0x100

    return p1

    :pswitch_5
    return v6

    :pswitch_6
    const/16 p1, 0x10

    return p1

    :pswitch_7
    return v5

    :pswitch_8
    const/16 p1, 0x800

    return p1

    :pswitch_9
    const/16 p1, 0x200

    return p1

    :pswitch_a
    const/16 p1, 0x80

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ad0b3e8 -> :sswitch_b
        -0x66ca7c04 -> :sswitch_a
        -0x5e3a5c50 -> :sswitch_9
        -0x5dde3142 -> :sswitch_8
        -0x53ecbf86 -> :sswitch_7
        0x185f1 -> :sswitch_6
        0x3305b9 -> :sswitch_5
        0x35ddbd -> :sswitch_4
        0x20ef99e6 -> :sswitch_3
        0x3597fba9 -> :sswitch_2
        0x6118c591 -> :sswitch_1
        0x6e96bb0f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_a
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

.method public s(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/oq0;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/oq0;

    .line 3
    iget-object v2, v2, Lcom/shabakaty/downloader/oq0;->a:Ljava/lang/String;

    const-string v3, "http://dashif.org/guidelines/trickmode"

    invoke-static {v3, v2}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit16 v1, v1, 0x4000

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public t(Lorg/xmlpull/v1/XmlPullParser;Lcom/shabakaty/downloader/b04$e;)Lcom/shabakaty/downloader/b04$e;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_0

    .line 1
    iget-wide v4, v1, Lcom/shabakaty/downloader/b04;->b:J

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    const-string v6, "timescale"

    invoke-static {v0, v6, v4, v5}, Lcom/shabakaty/downloader/al0;->o(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_1

    .line 2
    iget-wide v6, v1, Lcom/shabakaty/downloader/b04;->c:J

    goto :goto_1

    :cond_1
    move-wide v6, v4

    :goto_1
    const-string v8, "presentationTimeOffset"

    .line 3
    invoke-static {v0, v8, v6, v7}, Lcom/shabakaty/downloader/al0;->o(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    if-eqz v1, :cond_2

    .line 4
    iget-wide v6, v1, Lcom/shabakaty/downloader/b04$e;->d:J

    goto :goto_2

    :cond_2
    move-wide v6, v4

    :goto_2
    if-eqz v1, :cond_3

    .line 5
    iget-wide v4, v1, Lcom/shabakaty/downloader/b04$e;->e:J

    :cond_3
    const/4 v8, 0x0

    const-string v13, "indexRange"

    .line 6
    invoke-interface {v0, v8, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4

    const-string v4, "-"

    .line 7
    invoke-virtual {v13, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 8
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const/4 v7, 0x1

    .line 9
    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    sub-long/2addr v13, v5

    add-long/2addr v13, v2

    move-wide v15, v13

    move-wide v13, v5

    goto :goto_3

    :cond_4
    move-wide v15, v4

    move-wide v13, v6

    :goto_3
    if-eqz v1, :cond_5

    .line 10
    iget-object v8, v1, Lcom/shabakaty/downloader/b04;->a:Lcom/shabakaty/downloader/qm3;

    .line 11
    :cond_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "Initialization"

    .line 12
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "sourceURL"

    const-string v2, "range"

    move-object/from16 v3, p0

    .line 13
    invoke-virtual {v3, v0, v1, v2}, Lcom/shabakaty/downloader/al0;->q(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/qm3;

    move-result-object v1

    move-object v8, v1

    goto :goto_4

    :cond_6
    move-object/from16 v3, p0

    .line 14
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/al0;->e(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_4
    const-string v1, "SegmentBase"

    .line 15
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/cl3;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 16
    new-instance v0, Lcom/shabakaty/downloader/b04$e;

    move-object v7, v0

    invoke-direct/range {v7 .. v16}, Lcom/shabakaty/downloader/b04$e;-><init>(Lcom/shabakaty/downloader/qm3;JJJJ)V

    return-object v0
.end method

.method public u(Lorg/xmlpull/v1/XmlPullParser;Lcom/shabakaty/downloader/b04$b;JJJJJ)Lcom/shabakaty/downloader/b04$b;
    .locals 25

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const-wide/16 v0, 0x1

    if-eqz v8, :cond_0

    .line 1
    iget-wide v2, v8, Lcom/shabakaty/downloader/b04;->b:J

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    const-string v4, "timescale"

    invoke-static {v7, v4, v2, v3}, Lcom/shabakaty/downloader/al0;->o(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    if-eqz v8, :cond_1

    .line 2
    iget-wide v2, v8, Lcom/shabakaty/downloader/b04;->c:J

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    :goto_1
    const-string v4, "presentationTimeOffset"

    .line 3
    invoke-static {v7, v4, v2, v3}, Lcom/shabakaty/downloader/al0;->o(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    if-eqz v8, :cond_2

    .line 4
    iget-wide v2, v8, Lcom/shabakaty/downloader/b04$a;->e:J

    goto :goto_2

    :cond_2
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    const-string v4, "duration"

    invoke-static {v7, v4, v2, v3}, Lcom/shabakaty/downloader/al0;->o(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v15

    if-eqz v8, :cond_3

    .line 5
    iget-wide v0, v8, Lcom/shabakaty/downloader/b04$a;->d:J

    :cond_3
    const-string v2, "startNumber"

    invoke-static {v7, v2, v0, v1}, Lcom/shabakaty/downloader/al0;->o(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v13

    .line 6
    invoke-static/range {p7 .. p10}, Lcom/shabakaty/downloader/al0;->d(JJ)J

    move-result-wide v18

    const/4 v0, 0x0

    move-object/from16 v17, v0

    move-object/from16 v20, v17

    .line 7
    :cond_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "Initialization"

    .line 8
    invoke-static {v7, v1}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "sourceURL"

    const-string v2, "range"

    .line 9
    invoke-virtual {v6, v7, v1, v2}, Lcom/shabakaty/downloader/al0;->q(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/qm3;

    move-result-object v1

    move-object/from16 v20, v1

    goto :goto_3

    :cond_5
    const-string v1, "SegmentTimeline"

    .line 10
    invoke-static {v7, v1}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v9

    move-wide/from16 v4, p5

    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/al0;->w(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/List;

    move-result-object v0

    goto :goto_3

    :cond_6
    const-string v1, "SegmentURL"

    .line 12
    invoke-static {v7, v1}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez v17, :cond_7

    .line 13
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    move-object/from16 v1, v17

    const-string v2, "media"

    const-string v3, "mediaRange"

    .line 14
    invoke-virtual {v6, v7, v2, v3}, Lcom/shabakaty/downloader/al0;->q(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/qm3;

    move-result-object v2

    .line 15
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v1

    goto :goto_3

    .line 16
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/al0;->e(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_3
    const-string v1, "SegmentList"

    .line 17
    invoke-static {v7, v1}, Lcom/shabakaty/downloader/cl3;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v8, :cond_c

    if-eqz v20, :cond_9

    goto :goto_4

    .line 18
    :cond_9
    iget-object v1, v8, Lcom/shabakaty/downloader/b04;->a:Lcom/shabakaty/downloader/qm3;

    move-object/from16 v20, v1

    :goto_4
    if-eqz v0, :cond_a

    goto :goto_5

    .line 19
    :cond_a
    iget-object v0, v8, Lcom/shabakaty/downloader/b04$a;->f:Ljava/util/List;

    :goto_5
    if-eqz v17, :cond_b

    goto :goto_6

    .line 20
    :cond_b
    iget-object v1, v8, Lcom/shabakaty/downloader/b04$b;->j:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v8, v20

    move-object/from16 v20, v1

    goto :goto_7

    :cond_c
    :goto_6
    move-object/from16 v8, v20

    move-object/from16 v20, v17

    move-object/from16 v17, v0

    .line 21
    :goto_7
    new-instance v0, Lcom/shabakaty/downloader/b04$b;

    move-object v7, v0

    .line 22
    invoke-static/range {p11 .. p12}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v21

    .line 23
    invoke-static/range {p3 .. p4}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v23

    invoke-direct/range {v7 .. v24}, Lcom/shabakaty/downloader/b04$b;-><init>(Lcom/shabakaty/downloader/qm3;JJJJLjava/util/List;JLjava/util/List;JJ)V

    return-object v0
.end method

.method public v(Lorg/xmlpull/v1/XmlPullParser;Lcom/shabakaty/downloader/b04$c;Ljava/util/List;JJJJJ)Lcom/shabakaty/downloader/b04$c;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/shabakaty/downloader/b04$c;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/oq0;",
            ">;JJJJJ)",
            "Lcom/shabakaty/downloader/b04$c;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const-wide/16 v0, 0x1

    if-eqz v8, :cond_0

    .line 1
    iget-wide v2, v8, Lcom/shabakaty/downloader/b04;->b:J

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    const-string v4, "timescale"

    invoke-static {v7, v4, v2, v3}, Lcom/shabakaty/downloader/al0;->o(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    if-eqz v8, :cond_1

    .line 2
    iget-wide v2, v8, Lcom/shabakaty/downloader/b04;->c:J

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    :goto_1
    const-string v4, "presentationTimeOffset"

    .line 3
    invoke-static {v7, v4, v2, v3}, Lcom/shabakaty/downloader/al0;->o(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    if-eqz v8, :cond_2

    .line 4
    iget-wide v2, v8, Lcom/shabakaty/downloader/b04$a;->e:J

    goto :goto_2

    :cond_2
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    const-string v4, "duration"

    invoke-static {v7, v4, v2, v3}, Lcom/shabakaty/downloader/al0;->o(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v17

    if-eqz v8, :cond_3

    .line 5
    iget-wide v0, v8, Lcom/shabakaty/downloader/b04$a;->d:J

    :cond_3
    const-string v2, "startNumber"

    invoke-static {v7, v2, v0, v1}, Lcom/shabakaty/downloader/al0;->o(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v13

    const/4 v0, 0x0

    .line 6
    :goto_3
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    move-object/from16 v1, p3

    .line 7
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/oq0;

    .line 8
    iget-object v3, v2, Lcom/shabakaty/downloader/oq0;->a:Ljava/lang/String;

    const-string v4, "http://dashif.org/guidelines/last-segment-number"

    invoke-static {v4, v3}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 9
    iget-object v0, v2, Lcom/shabakaty/downloader/oq0;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    const-wide/16 v0, -0x1

    :goto_4
    move-wide v15, v0

    .line 10
    invoke-static/range {p8 .. p11}, Lcom/shabakaty/downloader/al0;->d(JJ)J

    move-result-wide v20

    const/4 v0, 0x0

    if-eqz v8, :cond_6

    .line 11
    iget-object v1, v8, Lcom/shabakaty/downloader/b04$c;->k:Lcom/shabakaty/downloader/n56;

    goto :goto_5

    :cond_6
    move-object v1, v0

    :goto_5
    const-string v2, "media"

    invoke-virtual {v6, v7, v2, v1}, Lcom/shabakaty/downloader/al0;->y(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/shabakaty/downloader/n56;)Lcom/shabakaty/downloader/n56;

    move-result-object v23

    if-eqz v8, :cond_7

    .line 12
    iget-object v1, v8, Lcom/shabakaty/downloader/b04$c;->j:Lcom/shabakaty/downloader/n56;

    goto :goto_6

    :cond_7
    move-object v1, v0

    :goto_6
    const-string v2, "initialization"

    .line 13
    invoke-virtual {v6, v7, v2, v1}, Lcom/shabakaty/downloader/al0;->y(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/shabakaty/downloader/n56;)Lcom/shabakaty/downloader/n56;

    move-result-object v22

    move-object/from16 v19, v0

    .line 14
    :cond_8
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "Initialization"

    .line 15
    invoke-static {v7, v1}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "sourceURL"

    const-string v2, "range"

    .line 16
    invoke-virtual {v6, v7, v1, v2}, Lcom/shabakaty/downloader/al0;->q(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/qm3;

    move-result-object v1

    move-object/from16 v19, v1

    goto :goto_7

    :cond_9
    const-string v1, "SegmentTimeline"

    .line 17
    invoke-static {v7, v1}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v9

    move-wide/from16 v4, p6

    .line 18
    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/al0;->w(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/List;

    move-result-object v0

    goto :goto_7

    .line 19
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/al0;->e(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_7
    const-string v1, "SegmentTemplate"

    .line 20
    invoke-static {v7, v1}, Lcom/shabakaty/downloader/cl3;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v8, :cond_d

    if-eqz v19, :cond_b

    goto :goto_8

    .line 21
    :cond_b
    iget-object v1, v8, Lcom/shabakaty/downloader/b04;->a:Lcom/shabakaty/downloader/qm3;

    move-object/from16 v19, v1

    :goto_8
    if-eqz v0, :cond_c

    goto :goto_9

    .line 22
    :cond_c
    iget-object v0, v8, Lcom/shabakaty/downloader/b04$a;->f:Ljava/util/List;

    :cond_d
    :goto_9
    move-object/from16 v8, v19

    move-object/from16 v19, v0

    .line 23
    new-instance v0, Lcom/shabakaty/downloader/b04$c;

    move-object v7, v0

    .line 24
    invoke-static/range {p12 .. p13}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v24

    .line 25
    invoke-static/range {p4 .. p5}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v26

    invoke-direct/range {v7 .. v27}, Lcom/shabakaty/downloader/b04$c;-><init>(Lcom/shabakaty/downloader/qm3;JJJJJLjava/util/List;JLcom/shabakaty/downloader/n56;Lcom/shabakaty/downloader/n56;JJ)V

    return-object v0
.end method

.method public w(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "JJ)",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/b04$d;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v1, 0x0

    move-wide v3, v1

    move-wide v5, v12

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 2
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v2, "S"

    .line 3
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/cl3;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "t"

    .line 4
    invoke-static {v0, v2, v12, v13}, Lcom/shabakaty/downloader/al0;->o(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v14

    if-eqz v1, :cond_1

    move-object/from16 v1, p0

    move-object v2, v10

    move-wide v8, v14

    .line 5
    invoke-virtual/range {v1 .. v9}, Lcom/shabakaty/downloader/al0;->b(Ljava/util/List;JJIJ)J

    move-result-wide v3

    :cond_1
    cmp-long v1, v14, v12

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move-wide v14, v3

    :goto_0
    const-string v1, "d"

    .line 6
    invoke-static {v0, v1, v12, v13}, Lcom/shabakaty/downloader/al0;->o(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "r"

    .line 7
    invoke-static {v0, v3, v11}, Lcom/shabakaty/downloader/al0;->n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    move-wide v5, v1

    move v7, v3

    move-wide v3, v14

    const/4 v1, 0x1

    goto :goto_1

    .line 8
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/al0;->e(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_1
    const-string v2, "SegmentTimeline"

    .line 9
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/cl3;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_4

    const-wide/16 v18, 0x3e8

    move-wide/from16 v14, p4

    move-wide/from16 v16, p2

    .line 10
    invoke-static/range {v14 .. v19}, Lcom/shabakaty/downloader/sy4;->N(JJJ)J

    move-result-wide v8

    move-object/from16 v0, p0

    move-object v1, v10

    move-wide v2, v3

    move-wide v4, v5

    move v6, v7

    move-wide v7, v8

    .line 11
    invoke-virtual/range {v0 .. v8}, Lcom/shabakaty/downloader/al0;->b(Ljava/util/List;JJIJ)J

    :cond_4
    return-object v10
.end method

.method public y(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/shabakaty/downloader/n56;)Lcom/shabakaty/downloader/n56;
    .locals 16

    const/4 v0, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x4

    new-array v3, v2, [I

    new-array v4, v2, [Ljava/lang/String;

    const-string v5, ""

    const/4 v6, 0x0

    aput-object v5, v1, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_c

    const-string v9, "$"

    .line 3
    invoke-virtual {v0, v9, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    .line 4
    aget-object v9, v1, v8

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_0
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    aput-object v7, v1, v8

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    goto :goto_0

    :cond_1
    if-eq v10, v7, :cond_3

    .line 6
    aget-object v9, v1, v8

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_2
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    aput-object v7, v1, v8

    move v7, v10

    goto :goto_0

    :cond_3
    const-string v10, "$$"

    .line 7
    invoke-virtual {v0, v10, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 8
    aget-object v10, v1, v8

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v8

    add-int/lit8 v7, v7, 0x2

    goto :goto_0

    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 9
    invoke-virtual {v0, v9, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    .line 10
    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v10, "RepresentationID"

    .line 11
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v12, 0x1

    if-eqz v10, :cond_5

    .line 12
    aput v12, v3, v8

    goto/16 :goto_7

    :cond_5
    const-string v10, "%0"

    .line 13
    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v11, :cond_7

    .line 14
    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "d"

    .line 15
    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_6

    const-string v15, "x"

    invoke-virtual {v13, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 16
    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 17
    :cond_6
    invoke-virtual {v7, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_7
    const-string v13, "%01d"

    .line 18
    :goto_3
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/4 v14, 0x2

    sparse-switch v10, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v10, "Bandwidth"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_4

    :cond_8
    const/4 v11, 0x2

    goto :goto_4

    :sswitch_1
    const-string v10, "Time"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_4

    :cond_9
    const/4 v11, 0x1

    goto :goto_4

    :sswitch_2
    const-string v10, "Number"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    goto :goto_4

    :cond_a
    const/4 v11, 0x0

    :goto_4
    packed-switch v11, :pswitch_data_0

    .line 19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid template: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const/4 v7, 0x3

    .line 20
    aput v7, v3, v8

    goto :goto_6

    .line 21
    :pswitch_1
    aput v2, v3, v8

    goto :goto_6

    .line 22
    :pswitch_2
    aput v14, v3, v8

    .line 23
    :goto_6
    aput-object v13, v4, v8

    :goto_7
    add-int/lit8 v8, v8, 0x1

    .line 24
    aput-object v5, v1, v8

    add-int/lit8 v7, v9, 0x1

    goto/16 :goto_0

    .line 25
    :cond_c
    new-instance v0, Lcom/shabakaty/downloader/n56;

    invoke-direct {v0, v1, v3, v4, v8}, Lcom/shabakaty/downloader/n56;-><init>([Ljava/lang/String;[I[Ljava/lang/String;I)V

    return-object v0

    :cond_d
    return-object p3

    :sswitch_data_0
    .sparse-switch
        -0x74423897 -> :sswitch_2
        0x27c6ed -> :sswitch_1
        0x246e091 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
