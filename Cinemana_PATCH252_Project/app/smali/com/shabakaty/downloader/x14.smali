.class public final Lcom/shabakaty/downloader/x14;
.super Ljava/lang/Object;
.source "SessionDescriptionParser.java"


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "([a-z])=\\s?(.+)"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/x14;->a:Ljava/util/regex/Pattern;

    const-string v0, "([0-9A-Za-z-]+)(?::(.*))?"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/x14;->b:Ljava/util/regex/Pattern;

    const-string v0, "(\\S+)\\s(\\S+)\\s(\\S+)\\s(\\S+)"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/x14;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Lcom/shabakaty/downloader/w14$b;Lcom/shabakaty/downloader/zo2$b;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zo2$b;->a()Lcom/shabakaty/downloader/zo2;

    move-result-object p1

    .line 2
    iget-object p0, p0, Lcom/shabakaty/downloader/w14$b;->b:Lcom/google/common/collect/p$a;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/p$a;->b(Ljava/lang/Object;)Lcom/google/common/collect/p$a;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    const/4 p1, 0x0

    .line 3
    invoke-static {p1, p0}, Lcom/shabakaty/downloader/pa3;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object p0

    throw p0
.end method

.method public static b(Ljava/lang/String;)Lcom/shabakaty/downloader/w14;
    .locals 15

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/w14$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/w14$b;-><init>()V

    .line 2
    sget-object v1, Lcom/google/android/exoplayer2/source/rtsp/h;->h:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/exoplayer2/source/rtsp/h;->g:Ljava/lang/String;

    :goto_0
    sget v2, Lcom/shabakaty/downloader/sy4;->a:I

    const/4 v2, -0x1

    .line 3
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 4
    array-length v1, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_12

    aget-object v7, p0, v5

    const-string v8, ""

    .line 5
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto/16 :goto_9

    .line 6
    :cond_1
    sget-object v8, Lcom/shabakaty/downloader/x14;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 7
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-nez v9, :cond_3

    const-string p0, "Malformed SDP line: "

    .line 8
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    :goto_2
    invoke-static {p0, v4}, Lcom/shabakaty/downloader/pa3;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object p0

    throw p0

    :cond_3
    const/4 v9, 0x1

    .line 9
    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 10
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x2

    .line 11
    invoke-virtual {v8, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 12
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    const/4 v13, 0x4

    const/4 v14, 0x3

    packed-switch v12, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    :pswitch_1
    const-string v12, "z"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0xe

    goto/16 :goto_4

    :pswitch_2
    const-string v12, "v"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x0

    goto/16 :goto_4

    :pswitch_3
    const-string v12, "u"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x4

    goto/16 :goto_4

    :pswitch_4
    const-string v12, "t"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x9

    goto/16 :goto_4

    :pswitch_5
    const-string v12, "s"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x2

    goto/16 :goto_4

    :pswitch_6
    const-string v12, "r"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0xd

    goto :goto_4

    :pswitch_7
    const-string v12, "p"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x6

    goto :goto_4

    :pswitch_8
    const-string v12, "o"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    goto :goto_4

    :pswitch_9
    const-string v12, "m"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0xc

    goto :goto_4

    :pswitch_a
    const-string v12, "k"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0xa

    goto :goto_4

    :pswitch_b
    const-string v12, "i"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x3

    goto :goto_4

    :pswitch_c
    const-string v12, "e"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x5

    goto :goto_4

    :pswitch_d
    const-string v12, "c"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x7

    goto :goto_4

    :pswitch_e
    const-string v12, "b"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x8

    goto :goto_4

    :pswitch_f
    const-string v12, "a"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0xb

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v10, -0x1

    :goto_4
    packed-switch v10, :pswitch_data_1

    goto/16 :goto_9

    :pswitch_10
    if-eqz v6, :cond_5

    .line 14
    invoke-static {v0, v6}, Lcom/shabakaty/downloader/x14;->a(Lcom/shabakaty/downloader/w14$b;Lcom/shabakaty/downloader/zo2$b;)V

    .line 15
    :cond_5
    sget-object v6, Lcom/shabakaty/downloader/x14;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 16
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    const-string v10, "Malformed SDP media description line: "

    if-nez v7, :cond_7

    .line 17
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v10, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_6
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-static {p0, v4}, Lcom/shabakaty/downloader/pa3;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object p0

    throw p0

    .line 18
    :cond_7
    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 19
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 21
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-virtual {v6, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 23
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-virtual {v6, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 25
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :try_start_0
    new-instance v12, Lcom/shabakaty/downloader/zo2$b;

    .line 27
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 28
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v12, v7, v9, v11, v6}, Lcom/shabakaty/downloader/zo2$b;-><init>(Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v12

    goto/16 :goto_9

    :catch_0
    move-exception p0

    .line 29
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v10, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-static {v0, p0}, Lcom/shabakaty/downloader/pa3;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object p0

    throw p0

    .line 30
    :pswitch_11
    sget-object v10, Lcom/shabakaty/downloader/x14;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 31
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-nez v10, :cond_a

    const-string p0, "Malformed Attribute line: "

    .line 32
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :cond_9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    :goto_7
    invoke-static {p0, v4}, Lcom/shabakaty/downloader/pa3;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object p0

    throw p0

    .line 33
    :cond_a
    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 34
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual {v8, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/shabakaty/downloader/he4;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v6, :cond_b

    .line 36
    iget-object v9, v0, Lcom/shabakaty/downloader/w14$b;->a:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 37
    :cond_b
    iget-object v9, v6, Lcom/shabakaty/downloader/zo2$b;->e:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    :pswitch_12
    if-nez v6, :cond_c

    .line 38
    iput-object v8, v0, Lcom/shabakaty/downloader/w14$b;->i:Ljava/lang/String;

    goto/16 :goto_9

    .line 39
    :cond_c
    iput-object v8, v6, Lcom/shabakaty/downloader/zo2$b;->i:Ljava/lang/String;

    goto/16 :goto_9

    .line 40
    :pswitch_13
    iput-object v8, v0, Lcom/shabakaty/downloader/w14$b;->f:Ljava/lang/String;

    goto :goto_9

    :pswitch_14
    const-string v7, ":\\s?"

    .line 41
    invoke-virtual {v8, v7, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 42
    array-length v8, v7

    if-ne v8, v11, :cond_d

    const/4 v8, 0x1

    goto :goto_8

    :cond_d
    const/4 v8, 0x0

    :goto_8
    invoke-static {v8}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 43
    aget-object v7, v7, v9

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-nez v6, :cond_e

    mul-int/lit16 v7, v7, 0x3e8

    .line 44
    iput v7, v0, Lcom/shabakaty/downloader/w14$b;->c:I

    goto :goto_9

    :cond_e
    mul-int/lit16 v7, v7, 0x3e8

    .line 45
    iput v7, v6, Lcom/shabakaty/downloader/zo2$b;->f:I

    goto :goto_9

    :pswitch_15
    if-nez v6, :cond_f

    .line 46
    iput-object v8, v0, Lcom/shabakaty/downloader/w14$b;->h:Ljava/lang/String;

    goto :goto_9

    .line 47
    :cond_f
    iput-object v8, v6, Lcom/shabakaty/downloader/zo2$b;->h:Ljava/lang/String;

    goto :goto_9

    .line 48
    :pswitch_16
    iput-object v8, v0, Lcom/shabakaty/downloader/w14$b;->l:Ljava/lang/String;

    goto :goto_9

    .line 49
    :pswitch_17
    iput-object v8, v0, Lcom/shabakaty/downloader/w14$b;->k:Ljava/lang/String;

    goto :goto_9

    .line 50
    :pswitch_18
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 51
    iput-object v7, v0, Lcom/shabakaty/downloader/w14$b;->g:Landroid/net/Uri;

    goto :goto_9

    :pswitch_19
    if-nez v6, :cond_10

    .line 52
    iput-object v8, v0, Lcom/shabakaty/downloader/w14$b;->j:Ljava/lang/String;

    goto :goto_9

    .line 53
    :cond_10
    iput-object v8, v6, Lcom/shabakaty/downloader/zo2$b;->g:Ljava/lang/String;

    goto :goto_9

    .line 54
    :pswitch_1a
    iput-object v8, v0, Lcom/shabakaty/downloader/w14$b;->d:Ljava/lang/String;

    goto :goto_9

    .line 55
    :pswitch_1b
    iput-object v8, v0, Lcom/shabakaty/downloader/w14$b;->e:Ljava/lang/String;

    goto :goto_9

    :pswitch_1c
    const-string v7, "0"

    .line 56
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    goto :goto_9

    :cond_11
    new-array p0, v9, [Ljava/lang/Object;

    aput-object v8, p0, v3

    const-string v0, "SDP version %s is not supported."

    .line 57
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 58
    invoke-static {p0, v4}, Lcom/shabakaty/downloader/pa3;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object p0

    throw p0

    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_12
    if-eqz v6, :cond_13

    .line 59
    invoke-static {v0, v6}, Lcom/shabakaty/downloader/x14;->a(Lcom/shabakaty/downloader/w14$b;Lcom/shabakaty/downloader/zo2$b;)V

    .line 60
    :cond_13
    :try_start_1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/w14$b;->a()Lcom/shabakaty/downloader/w14;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    goto :goto_a

    :catch_2
    move-exception p0

    .line 61
    :goto_a
    invoke-static {v4, p0}, Lcom/shabakaty/downloader/pa3;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
