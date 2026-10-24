.class public final Lcom/shabakaty/downloader/jw1;
.super Ljava/lang/Object;
.source "HttpHeaders.kt"


# static fields
.field public static final a:Lcom/shabakaty/downloader/fp;

.field public static final b:Lcom/shabakaty/downloader/fp;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/fp;->v:Lcom/shabakaty/downloader/fp$a;

    const-string v1, "\"\\"

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/fp$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fp;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/jw1;->a:Lcom/shabakaty/downloader/fp;

    const-string v1, "\t ,="

    .line 2
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/fp$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fp;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/jw1;->b:Lcom/shabakaty/downloader/fp;

    return-void
.end method

.method public static final a(Lcom/shabakaty/downloader/ws3;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ws3;->s:Lcom/shabakaty/downloader/vr3;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/vr3;->c:Ljava/lang/String;

    const-string v1, "HEAD"

    .line 3
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/ws3;->v:I

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_2

    :cond_1
    const/16 v2, 0xcc

    if-eq v0, v2, :cond_2

    const/16 v2, 0x130

    if-eq v0, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-static {p0}, Lcom/shabakaty/downloader/ry4;->k(Lcom/shabakaty/downloader/ws3;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const/4 v2, 0x2

    const-string v4, "Transfer-Encoding"

    .line 6
    invoke-static {p0, v4, v0, v2}, Lcom/shabakaty/downloader/ws3;->b(Lcom/shabakaty/downloader/ws3;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "chunked"

    invoke-static {v0, p0, v3}, Lcom/shabakaty/downloader/ne4;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v3
.end method

.method public static final b(Lcom/shabakaty/downloader/ge0;Lcom/shabakaty/downloader/qw1;Lcom/shabakaty/downloader/ts1;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "$this$receiveHeaders"

    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "url"

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "headers"

    invoke-static {v2, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v5, Lcom/shabakaty/downloader/ge0;->a:Lcom/shabakaty/downloader/ge0;

    if-ne v0, v5, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v5, Lcom/shabakaty/downloader/ee0;->n:Lcom/shabakaty/downloader/ee0;

    .line 3
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "Set-Cookie"

    .line 4
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/ts1;->p(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v4, :cond_1f

    .line 6
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 7
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "setCookie"

    invoke-static {v8, v9}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 9
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v9}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v9, Lcom/shabakaty/downloader/ry4;->a:[B

    .line 11
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v12, 0x3b

    invoke-static {v8, v12, v5, v9}, Lcom/shabakaty/downloader/ry4;->f(Ljava/lang/String;CII)I

    move-result v9

    const/16 v13, 0x3d

    .line 12
    invoke-static {v8, v13, v5, v9}, Lcom/shabakaty/downloader/ry4;->f(Ljava/lang/String;CII)I

    move-result v13

    if-ne v13, v9, :cond_1

    move-object/from16 p2, v2

    goto/16 :goto_11

    .line 13
    :cond_1
    invoke-static {v8, v5, v13}, Lcom/shabakaty/downloader/ry4;->A(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v15

    .line 14
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_1c

    invoke-static {v15}, Lcom/shabakaty/downloader/ry4;->m(Ljava/lang/String;)I

    move-result v5

    const/4 v14, -0x1

    if-eq v5, v14, :cond_3

    goto/16 :goto_f

    :cond_3
    add-int/lit8 v13, v13, 0x1

    .line 15
    invoke-static {v8, v13, v9}, Lcom/shabakaty/downloader/ry4;->A(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v16

    .line 16
    invoke-static/range {v16 .. v16}, Lcom/shabakaty/downloader/ry4;->m(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v14, :cond_4

    goto/16 :goto_f

    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 17
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    const-wide/16 v17, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v26, v19

    move-object/from16 v27, v24

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const-wide v28, 0xe677d21fdbffL

    move-wide/from16 v19, v17

    :goto_2
    if-ge v9, v5, :cond_e

    .line 18
    invoke-static {v8, v12, v9, v5}, Lcom/shabakaty/downloader/ry4;->f(Ljava/lang/String;CII)I

    move-result v12

    const/16 v13, 0x3d

    .line 19
    invoke-static {v8, v13, v9, v12}, Lcom/shabakaty/downloader/ry4;->f(Ljava/lang/String;CII)I

    move-result v13

    .line 20
    invoke-static {v8, v9, v13}, Lcom/shabakaty/downloader/ry4;->A(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    if-ge v13, v12, :cond_5

    add-int/lit8 v13, v13, 0x1

    .line 21
    invoke-static {v8, v13, v12}, Lcom/shabakaty/downloader/ry4;->A(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    :cond_5
    const-string v13, ""

    :goto_3
    const-string v14, "expires"

    move-object/from16 p2, v2

    const/4 v2, 0x1

    .line 22
    invoke-static {v9, v14, v2}, Lcom/shabakaty/downloader/ne4;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 23
    :try_start_0
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v9, 0x0

    invoke-static {v13, v9, v2}, Lcom/shabakaty/downloader/ee0;->b(Ljava/lang/String;II)J

    move-result-wide v28
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_6
    const-string v14, "max-age"

    .line 24
    invoke-static {v9, v14, v2}, Lcom/shabakaty/downloader/ne4;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 25
    :try_start_1
    invoke-static {v13}, Lcom/shabakaty/downloader/ee0;->c(Ljava/lang/String;)J

    move-result-wide v19
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    const/16 v23, 0x1

    goto :goto_5

    :cond_7
    const-string v14, "domain"

    .line 26
    invoke-static {v9, v14, v2}, Lcom/shabakaty/downloader/ne4;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    :try_start_2
    const-string v2, "."

    const/4 v9, 0x0

    const/4 v14, 0x2

    .line 27
    invoke-static {v13, v2, v9, v14}, Lcom/shabakaty/downloader/ne4;->B(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_9

    .line 28
    invoke-static {v13, v2}, Lcom/shabakaty/downloader/re4;->a0(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/downloader/md0;->R(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    const/16 v24, 0x0

    move-object/from16 v26, v2

    goto :goto_5

    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 29
    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v9, "Failed requirement."

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_a
    const-string v2, "path"

    const/4 v14, 0x1

    .line 30
    invoke-static {v9, v2, v14}, Lcom/shabakaty/downloader/ne4;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v27, v13

    goto :goto_5

    :cond_b
    const-string v2, "secure"

    .line 31
    invoke-static {v9, v2, v14}, Lcom/shabakaty/downloader/ne4;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v21, 0x1

    goto :goto_5

    :cond_c
    const-string v2, "httponly"

    .line 32
    invoke-static {v9, v2, v14}, Lcom/shabakaty/downloader/ne4;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v22, 0x1

    :catch_0
    :cond_d
    :goto_5
    add-int/lit8 v9, v12, 0x1

    const/16 v12, 0x3b

    move-object/from16 v2, p2

    goto/16 :goto_2

    :cond_e
    move-object/from16 p2, v2

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v2, v19, v8

    if-nez v2, :cond_f

    goto :goto_7

    :cond_f
    cmp-long v2, v19, v17

    if-eqz v2, :cond_13

    const-wide v8, 0x20c49ba5e353f7L

    cmp-long v2, v19, v8

    if-gtz v2, :cond_10

    const/16 v2, 0x3e8

    int-to-long v8, v2

    mul-long v19, v19, v8

    goto :goto_6

    :cond_10
    const-wide v19, 0x7fffffffffffffffL

    :goto_6
    add-long v8, v10, v19

    cmp-long v2, v8, v10

    const-wide v10, 0xe677d21fdbffL

    if-ltz v2, :cond_12

    cmp-long v2, v8, v10

    if-lez v2, :cond_11

    goto :goto_8

    :cond_11
    :goto_7
    move-wide/from16 v17, v8

    goto :goto_9

    :cond_12
    :goto_8
    move-wide/from16 v17, v10

    goto :goto_9

    :cond_13
    move-wide/from16 v17, v28

    .line 33
    :goto_9
    iget-object v2, v1, Lcom/shabakaty/downloader/qw1;->e:Ljava/lang/String;

    move-object/from16 v5, v26

    if-nez v5, :cond_14

    move-object v5, v2

    goto :goto_c

    .line 34
    :cond_14
    invoke-static {v2, v5}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    goto :goto_a

    :cond_15
    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 35
    invoke-static {v2, v5, v9, v8}, Lcom/shabakaty/downloader/ne4;->B(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 36
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_16

    .line 37
    sget-object v8, Lcom/shabakaty/downloader/ry4;->a:[B

    const-string v8, "$this$canParseAsIpAddress"

    .line 38
    invoke-static {v2, v8}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v8, Lcom/shabakaty/downloader/ry4;->f:Lcom/shabakaty/downloader/mq3;

    invoke-virtual {v8, v2}, Lcom/shabakaty/downloader/mq3;->a(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_16

    :goto_a
    const/4 v8, 0x1

    goto :goto_b

    :cond_16
    const/4 v8, 0x0

    :goto_b
    if-nez v8, :cond_17

    goto :goto_10

    .line 40
    :cond_17
    :goto_c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v2, v8, :cond_18

    sget-object v2, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->h:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$a;

    .line 41
    sget-object v2, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->g:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    .line 42
    invoke-virtual {v2, v5}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_18

    goto :goto_10

    :cond_18
    const-string v2, "/"

    move-object/from16 v8, v27

    if-eqz v8, :cond_1a

    const/4 v9, 0x2

    const/4 v10, 0x0

    .line 43
    invoke-static {v8, v2, v10, v9}, Lcom/shabakaty/downloader/ne4;->L(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v9

    if-nez v9, :cond_19

    goto :goto_d

    :cond_19
    move-object/from16 v20, v8

    goto :goto_e

    :cond_1a
    const/4 v10, 0x0

    .line 44
    :goto_d
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/qw1;->b()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2f

    const/4 v11, 0x6

    .line 45
    invoke-static {v8, v9, v10, v10, v11}, Lcom/shabakaty/downloader/re4;->V(Ljava/lang/CharSequence;CIZI)I

    move-result v9

    if-eqz v9, :cond_1b

    .line 46
    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v8, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1b
    move-object/from16 v20, v2

    .line 47
    :goto_e
    new-instance v2, Lcom/shabakaty/downloader/ee0;

    const/16 v25, 0x0

    move-object v14, v2

    move-object/from16 v19, v5

    invoke-direct/range {v14 .. v25}, Lcom/shabakaty/downloader/ee0;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZLcom/shabakaty/downloader/nn0;)V

    move v5, v10

    goto :goto_12

    :cond_1c
    :goto_f
    move-object/from16 p2, v2

    :goto_10
    const/4 v5, 0x0

    :goto_11
    const/4 v2, 0x0

    :goto_12
    if-eqz v2, :cond_1e

    if-nez v7, :cond_1d

    .line 48
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 49
    :cond_1d
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, p2

    goto/16 :goto_0

    :cond_1f
    if-eqz v7, :cond_20

    .line 50
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const-string v3, "Collections.unmodifiableList(cookies)"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_13

    .line 51
    :cond_20
    sget-object v2, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    .line 52
    :goto_13
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_21

    return-void

    .line 53
    :cond_21
    invoke-interface {v0, v1, v2}, Lcom/shabakaty/downloader/ge0;->b(Lcom/shabakaty/downloader/qw1;Ljava/util/List;)V

    return-void
.end method
