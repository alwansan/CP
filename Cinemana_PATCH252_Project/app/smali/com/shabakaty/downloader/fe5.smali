.class public final Lcom/shabakaty/downloader/fe5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# static fields
.field public static final a:Lcom/shabakaty/downloader/pk2;

.field public static final b:[Ljava/lang/String;

.field public static final c:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pk2;

    const-string v1, "MetadataUtils"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/pk2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/fe5;->a:Lcom/shabakaty/downloader/pk2;

    const-string v0, "Z"

    const-string v1, "+hh"

    const-string v2, "+hhmm"

    const-string v3, "+hh:mm"

    .line 2
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/fe5;->b:[Ljava/lang/String;

    const-string v1, "yyyyMMdd\'T\'HHmmss"

    const/4 v2, 0x0

    .line 3
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    sput-object v0, Lcom/shabakaty/downloader/fe5;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/util/List;Lorg/json/JSONArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/s55;",
            ">;",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    new-instance v2, Lcom/shabakaty/downloader/s55;

    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/s55;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_1
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 8

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Input string is empty or null"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/shabakaty/downloader/fe5;->a:Lcom/shabakaty/downloader/pk2;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v0}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    .line 3
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/fe5;->a:Lcom/shabakaty/downloader/pk2;

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v6}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    :try_start_0
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 6
    sget-object v2, Lcom/shabakaty/downloader/fe5;->a:Lcom/shabakaty/downloader/pk2;

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    .line 7
    iget-object v0, v2, Lcom/shabakaty/downloader/pk2;->a:Ljava/lang/String;

    const-string v7, "Error extracting the date: %s"

    invoke-virtual {v2, v7, v6}, Lcom/shabakaty/downloader/pk2;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v0, v3

    .line 8
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    sget-object p0, Lcom/shabakaty/downloader/fe5;->a:Lcom/shabakaty/downloader/pk2;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Invalid date format"

    invoke-virtual {p0, v1, v0}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    .line 10
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v6, 0x6

    if-eqz v2, :cond_3

    .line 11
    sget-object p0, Lcom/shabakaty/downloader/fe5;->a:Lcom/shabakaty/downloader/pk2;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v4, "string is empty or null"

    invoke-virtual {p0, v4, v2}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    const/16 v2, 0x54

    .line 12
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v7, v2, 0x1

    if-eq v2, v4, :cond_4

    .line 13
    sget-object p0, Lcom/shabakaty/downloader/fe5;->a:Lcom/shabakaty/downloader/pk2;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v4, "T delimeter is not found"

    invoke-virtual {p0, v4, v2}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 14
    :cond_4
    :try_start_1
    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v6, :cond_5

    goto/16 :goto_5

    .line 16
    :cond_5
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2b

    if-eq v2, v4, :cond_7

    const/16 v4, 0x2d

    if-eq v2, v4, :cond_7

    const/16 v4, 0x5a

    if-eq v2, v4, :cond_6

    goto :goto_4

    .line 17
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 18
    sget-object v4, Lcom/shabakaty/downloader/fe5;->b:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v6

    if-ne v2, v4, :cond_a

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "+0000"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    .line 20
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 21
    sget-object v4, Lcom/shabakaty/downloader/fe5;->b:[Ljava/lang/String;

    aget-object v7, v4, v5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v6

    if-eq v2, v7, :cond_9

    const/4 v7, 0x2

    aget-object v7, v4, v7

    .line 22
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v6

    if-eq v2, v7, :cond_9

    const/4 v7, 0x3

    aget-object v4, v4, v7

    .line 23
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v6

    if-ne v2, v4, :cond_8

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    goto :goto_3

    :cond_9
    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_a

    const-string v2, "([\\+\\-]\\d\\d):(\\d\\d)"

    const-string v4, "$1$2"

    .line 24
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :catch_1
    move-exception p0

    .line 25
    sget-object v2, Lcom/shabakaty/downloader/fe5;->a:Lcom/shabakaty/downloader/pk2;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v1

    const-string p0, "Error extracting the time substring: %s"

    invoke-virtual {v2, p0, v4}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    :goto_4
    move-object p0, v3

    .line 26
    :goto_5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 27
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v5

    invoke-static {p0, v2}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "T"

    invoke-static {v2, v0, v4, p0}, Lcom/shabakaty/downloader/bc0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ne p0, v6, :cond_b

    const-string p0, "yyyyMMdd\'T\'HHmmss"

    goto :goto_6

    .line 29
    :cond_b
    sget-object p0, Lcom/shabakaty/downloader/fe5;->c:Ljava/lang/String;

    goto :goto_6

    :cond_c
    const-string p0, "yyyyMMdd"

    .line 30
    :goto_6
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 31
    :try_start_2
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-direct {v4, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    .line 32
    invoke-virtual {v2, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object v2

    :catch_2
    move-exception p0

    .line 33
    sget-object v0, Lcom/shabakaty/downloader/fe5;->a:Lcom/shabakaty/downloader/pk2;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "Error parsing string: %s"

    invoke-virtual {v0, p0, v2}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3
.end method

.method public static c(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/s55;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/s55;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "url"

    .line 6
    iget-object v4, v1, Lcom/shabakaty/downloader/s55;->s:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "width"

    .line 7
    iget v4, v1, Lcom/shabakaty/downloader/s55;->t:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "height"

    .line 8
    iget v1, v1, Lcom/shabakaty/downloader/s55;->u:I

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    return-object v0
.end method
