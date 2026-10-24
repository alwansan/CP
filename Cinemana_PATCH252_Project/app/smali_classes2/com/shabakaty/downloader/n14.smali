.class public abstract Lcom/shabakaty/downloader/n14;
.super Ljava/lang/Object;
.source "ServiceMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lcom/shabakaty/downloader/lt3;Ljava/lang/reflect/Method;)Lcom/shabakaty/downloader/n14;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/lt3;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/shabakaty/downloader/n14<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v2, Lcom/shabakaty/downloader/fs3$a;

    invoke-direct {v2, v0, v1}, Lcom/shabakaty/downloader/fs3$a;-><init>(Lcom/shabakaty/downloader/lt3;Ljava/lang/reflect/Method;)V

    .line 2
    iget-object v3, v2, Lcom/shabakaty/downloader/fs3$a;->c:[Ljava/lang/annotation/Annotation;

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const-string v7, "HEAD"

    const/4 v8, 0x1

    if-ge v6, v4, :cond_11

    aget-object v9, v3, v6

    .line 3
    instance-of v10, v9, Lcom/shabakaty/downloader/mh0;

    if-eqz v10, :cond_0

    .line 4
    check-cast v9, Lcom/shabakaty/downloader/mh0;

    invoke-interface {v9}, Lcom/shabakaty/downloader/mh0;->value()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DELETE"

    invoke-virtual {v2, v8, v7, v5}, Lcom/shabakaty/downloader/fs3$a;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 5
    :cond_0
    instance-of v10, v9, Lcom/shabakaty/downloader/lo1;

    if-eqz v10, :cond_1

    .line 6
    check-cast v9, Lcom/shabakaty/downloader/lo1;

    invoke-interface {v9}, Lcom/shabakaty/downloader/lo1;->value()Ljava/lang/String;

    move-result-object v7

    const-string v8, "GET"

    invoke-virtual {v2, v8, v7, v5}, Lcom/shabakaty/downloader/fs3$a;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 7
    :cond_1
    instance-of v10, v9, Lcom/shabakaty/downloader/wr1;

    if-eqz v10, :cond_2

    .line 8
    check-cast v9, Lcom/shabakaty/downloader/wr1;

    invoke-interface {v9}, Lcom/shabakaty/downloader/wr1;->value()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8, v5}, Lcom/shabakaty/downloader/fs3$a;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 9
    :cond_2
    instance-of v7, v9, Lcom/shabakaty/downloader/e93;

    if-eqz v7, :cond_3

    .line 10
    check-cast v9, Lcom/shabakaty/downloader/e93;

    invoke-interface {v9}, Lcom/shabakaty/downloader/e93;->value()Ljava/lang/String;

    move-result-object v7

    const-string v9, "PATCH"

    invoke-virtual {v2, v9, v7, v8}, Lcom/shabakaty/downloader/fs3$a;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 11
    :cond_3
    instance-of v7, v9, Lcom/shabakaty/downloader/i93;

    if-eqz v7, :cond_4

    .line 12
    check-cast v9, Lcom/shabakaty/downloader/i93;

    invoke-interface {v9}, Lcom/shabakaty/downloader/i93;->value()Ljava/lang/String;

    move-result-object v7

    const-string v9, "POST"

    invoke-virtual {v2, v9, v7, v8}, Lcom/shabakaty/downloader/fs3$a;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 13
    :cond_4
    instance-of v7, v9, Lcom/shabakaty/downloader/j93;

    if-eqz v7, :cond_5

    .line 14
    check-cast v9, Lcom/shabakaty/downloader/j93;

    invoke-interface {v9}, Lcom/shabakaty/downloader/j93;->value()Ljava/lang/String;

    move-result-object v7

    const-string v9, "PUT"

    invoke-virtual {v2, v9, v7, v8}, Lcom/shabakaty/downloader/fs3$a;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 15
    :cond_5
    instance-of v7, v9, Lcom/shabakaty/downloader/z13;

    if-eqz v7, :cond_6

    .line 16
    check-cast v9, Lcom/shabakaty/downloader/z13;

    invoke-interface {v9}, Lcom/shabakaty/downloader/z13;->value()Ljava/lang/String;

    move-result-object v7

    const-string v8, "OPTIONS"

    invoke-virtual {v2, v8, v7, v5}, Lcom/shabakaty/downloader/fs3$a;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 17
    :cond_6
    instance-of v7, v9, Lcom/shabakaty/downloader/xr1;

    if-eqz v7, :cond_7

    .line 18
    check-cast v9, Lcom/shabakaty/downloader/xr1;

    .line 19
    invoke-interface {v9}, Lcom/shabakaty/downloader/xr1;->method()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v9}, Lcom/shabakaty/downloader/xr1;->path()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9}, Lcom/shabakaty/downloader/xr1;->hasBody()Z

    move-result v9

    invoke-virtual {v2, v7, v8, v9}, Lcom/shabakaty/downloader/fs3$a;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 20
    :cond_7
    instance-of v7, v9, Lcom/shabakaty/downloader/us1;

    if-eqz v7, :cond_c

    .line 21
    check-cast v9, Lcom/shabakaty/downloader/us1;

    invoke-interface {v9}, Lcom/shabakaty/downloader/us1;->value()[Ljava/lang/String;

    move-result-object v7

    .line 22
    array-length v9, v7

    if-eqz v9, :cond_b

    .line 23
    new-instance v9, Lcom/shabakaty/downloader/ts1$a;

    invoke-direct {v9}, Lcom/shabakaty/downloader/ts1$a;-><init>()V

    .line 24
    array-length v10, v7

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_a

    aget-object v12, v7, v11

    const/16 v13, 0x3a

    .line 25
    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_9

    if-eqz v13, :cond_9

    .line 26
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v8

    if-eq v13, v14, :cond_9

    .line 27
    invoke-virtual {v12, v5, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    .line 28
    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Content-Type"

    .line 29
    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 30
    :try_start_0
    invoke-static {v12}, Lcom/shabakaty/downloader/fr2;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/fr2;

    move-result-object v13

    iput-object v13, v2, Lcom/shabakaty/downloader/fs3$a;->t:Lcom/shabakaty/downloader/fr2;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 31
    iget-object v1, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v12, v2, v5

    const-string v3, "Malformed content type: %s"

    invoke-static {v1, v0, v3, v2}, Lcom/shabakaty/downloader/bz4;->k(Ljava/lang/reflect/Method;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 32
    :cond_8
    invoke-virtual {v9, v14, v12}, Lcom/shabakaty/downloader/ts1$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/ts1$a;

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 33
    :cond_9
    iget-object v0, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v12, v1, v5

    const-string v2, "@Headers value must be in the form \"Name: Value\". Found: \"%s\""

    invoke-static {v0, v2, v1}, Lcom/shabakaty/downloader/bz4;->j(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 34
    :cond_a
    invoke-virtual {v9}, Lcom/shabakaty/downloader/ts1$a;->d()Lcom/shabakaty/downloader/ts1;

    move-result-object v7

    .line 35
    iput-object v7, v2, Lcom/shabakaty/downloader/fs3$a;->s:Lcom/shabakaty/downloader/ts1;

    goto :goto_3

    .line 36
    :cond_b
    iget-object v0, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "@Headers annotation is empty."

    invoke-static {v0, v2, v1}, Lcom/shabakaty/downloader/bz4;->j(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 37
    :cond_c
    instance-of v7, v9, Lcom/shabakaty/downloader/rv2;

    const-string v10, "Only one encoding annotation is allowed."

    if-eqz v7, :cond_e

    .line 38
    iget-boolean v7, v2, Lcom/shabakaty/downloader/fs3$a;->p:Z

    if-nez v7, :cond_d

    .line 39
    iput-boolean v8, v2, Lcom/shabakaty/downloader/fs3$a;->q:Z

    goto :goto_3

    .line 40
    :cond_d
    iget-object v0, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v10, v1}, Lcom/shabakaty/downloader/bz4;->j(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 41
    :cond_e
    instance-of v7, v9, Lcom/shabakaty/downloader/vh1;

    if-eqz v7, :cond_10

    .line 42
    iget-boolean v7, v2, Lcom/shabakaty/downloader/fs3$a;->q:Z

    if-nez v7, :cond_f

    .line 43
    iput-boolean v8, v2, Lcom/shabakaty/downloader/fs3$a;->p:Z

    goto :goto_3

    .line 44
    :cond_f
    iget-object v0, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v10, v1}, Lcom/shabakaty/downloader/bz4;->j(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_10
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 45
    :cond_11
    iget-object v3, v2, Lcom/shabakaty/downloader/fs3$a;->n:Ljava/lang/String;

    if-eqz v3, :cond_7d

    .line 46
    iget-boolean v3, v2, Lcom/shabakaty/downloader/fs3$a;->o:Z

    if-nez v3, :cond_14

    .line 47
    iget-boolean v3, v2, Lcom/shabakaty/downloader/fs3$a;->q:Z

    if-nez v3, :cond_13

    .line 48
    iget-boolean v3, v2, Lcom/shabakaty/downloader/fs3$a;->p:Z

    if-nez v3, :cond_12

    goto :goto_4

    .line 49
    :cond_12
    iget-object v0, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST)."

    invoke-static {v0, v2, v1}, Lcom/shabakaty/downloader/bz4;->j(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 50
    :cond_13
    iget-object v0, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "Multipart can only be specified on HTTP methods with request body (e.g., @POST)."

    invoke-static {v0, v2, v1}, Lcom/shabakaty/downloader/bz4;->j(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 51
    :cond_14
    :goto_4
    iget-object v3, v2, Lcom/shabakaty/downloader/fs3$a;->d:[[Ljava/lang/annotation/Annotation;

    array-length v3, v3

    .line 52
    new-array v4, v3, [Lcom/shabakaty/downloader/da3;

    iput-object v4, v2, Lcom/shabakaty/downloader/fs3$a;->v:[Lcom/shabakaty/downloader/da3;

    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v3, :cond_68

    .line 53
    iget-object v6, v2, Lcom/shabakaty/downloader/fs3$a;->v:[Lcom/shabakaty/downloader/da3;

    iget-object v8, v2, Lcom/shabakaty/downloader/fs3$a;->e:[Ljava/lang/reflect/Type;

    aget-object v14, v8, v5

    iget-object v8, v2, Lcom/shabakaty/downloader/fs3$a;->d:[[Ljava/lang/annotation/Annotation;

    aget-object v15, v8, v5

    if-ne v5, v4, :cond_15

    const/4 v8, 0x1

    const/16 v16, 0x1

    goto :goto_6

    :cond_15
    const/4 v8, 0x0

    const/16 v16, 0x0

    :goto_6
    if-eqz v15, :cond_65

    .line 54
    array-length v13, v15

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v17, v9

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v13, :cond_64

    aget-object v8, v15, v12

    .line 55
    const-class v9, Ljava/lang/String;

    const-class v10, Lcom/shabakaty/downloader/sv2$c;

    instance-of v11, v8, Lcom/shabakaty/downloader/ax4;

    move/from16 v18, v3

    const-string v3, "@Path parameters may not be used with @Url."

    if-eqz v11, :cond_1e

    .line 56
    invoke-virtual {v2, v5, v14}, Lcom/shabakaty/downloader/fs3$a;->c(ILjava/lang/reflect/Type;)V

    .line 57
    iget-boolean v8, v2, Lcom/shabakaty/downloader/fs3$a;->m:Z

    if-nez v8, :cond_1d

    .line 58
    iget-boolean v8, v2, Lcom/shabakaty/downloader/fs3$a;->i:Z

    if-nez v8, :cond_1c

    .line 59
    iget-boolean v3, v2, Lcom/shabakaty/downloader/fs3$a;->j:Z

    if-nez v3, :cond_1b

    .line 60
    iget-boolean v3, v2, Lcom/shabakaty/downloader/fs3$a;->k:Z

    if-nez v3, :cond_1a

    .line 61
    iget-boolean v3, v2, Lcom/shabakaty/downloader/fs3$a;->l:Z

    if-nez v3, :cond_19

    .line 62
    iget-object v3, v2, Lcom/shabakaty/downloader/fs3$a;->r:Ljava/lang/String;

    if-nez v3, :cond_18

    const/4 v3, 0x1

    .line 63
    iput-boolean v3, v2, Lcom/shabakaty/downloader/fs3$a;->m:Z

    .line 64
    const-class v3, Lcom/shabakaty/downloader/qw1;

    if-eq v14, v3, :cond_17

    if-eq v14, v9, :cond_17

    const-class v3, Ljava/net/URI;

    if-eq v14, v3, :cond_17

    instance-of v3, v14, Ljava/lang/Class;

    if-eqz v3, :cond_16

    const-string v3, "android.net.Uri"

    move-object v8, v14

    check-cast v8, Ljava/lang/Class;

    .line 65
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_8

    .line 66
    :cond_16
    iget-object v0, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type."

    invoke-static {v0, v5, v2, v1}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 67
    :cond_17
    :goto_8
    new-instance v3, Lcom/shabakaty/downloader/da3$n;

    iget-object v8, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    invoke-direct {v3, v8, v5}, Lcom/shabakaty/downloader/da3$n;-><init>(Ljava/lang/reflect/Method;I)V

    move/from16 v19, v4

    move/from16 v21, v12

    move/from16 v20, v13

    goto/16 :goto_10

    .line 68
    :cond_18
    iget-object v0, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v2, Lcom/shabakaty/downloader/fs3$a;->n:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "@Url cannot be used with @%s URL"

    invoke-static {v0, v5, v2, v1}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_19
    const/4 v0, 0x0

    .line 69
    iget-object v1, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "A @Url parameter must not come after a @QueryMap."

    invoke-static {v1, v5, v2, v0}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1a
    const/4 v0, 0x0

    .line 70
    iget-object v1, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "A @Url parameter must not come after a @QueryName."

    invoke-static {v1, v5, v2, v0}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1b
    const/4 v0, 0x0

    .line 71
    iget-object v1, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "A @Url parameter must not come after a @Query."

    invoke-static {v1, v5, v2, v0}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1c
    const/4 v0, 0x0

    .line 72
    iget-object v1, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v5, v3, v0}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1d
    const/4 v0, 0x0

    .line 73
    iget-object v1, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Multiple @Url method annotations found."

    invoke-static {v1, v5, v2, v0}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 74
    :cond_1e
    instance-of v11, v8, Lcom/shabakaty/downloader/va3;

    move/from16 v19, v4

    const/4 v4, 0x2

    if-eqz v11, :cond_26

    .line 75
    invoke-virtual {v2, v5, v14}, Lcom/shabakaty/downloader/fs3$a;->c(ILjava/lang/reflect/Type;)V

    .line 76
    iget-boolean v9, v2, Lcom/shabakaty/downloader/fs3$a;->j:Z

    if-nez v9, :cond_25

    .line 77
    iget-boolean v9, v2, Lcom/shabakaty/downloader/fs3$a;->k:Z

    if-nez v9, :cond_24

    .line 78
    iget-boolean v9, v2, Lcom/shabakaty/downloader/fs3$a;->l:Z

    if-nez v9, :cond_23

    .line 79
    iget-boolean v9, v2, Lcom/shabakaty/downloader/fs3$a;->m:Z

    if-nez v9, :cond_22

    .line 80
    iget-object v3, v2, Lcom/shabakaty/downloader/fs3$a;->r:Ljava/lang/String;

    if-eqz v3, :cond_21

    const/4 v3, 0x1

    .line 81
    iput-boolean v3, v2, Lcom/shabakaty/downloader/fs3$a;->i:Z

    .line 82
    check-cast v8, Lcom/shabakaty/downloader/va3;

    .line 83
    invoke-interface {v8}, Lcom/shabakaty/downloader/va3;->value()Ljava/lang/String;

    move-result-object v11

    .line 84
    sget-object v3, Lcom/shabakaty/downloader/fs3$a;->y:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 85
    iget-object v3, v2, Lcom/shabakaty/downloader/fs3$a;->u:Ljava/util/Set;

    invoke-interface {v3, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 86
    iget-object v3, v2, Lcom/shabakaty/downloader/fs3$a;->a:Lcom/shabakaty/downloader/lt3;

    invoke-virtual {v3, v14, v15}, Lcom/shabakaty/downloader/lt3;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/shabakaty/downloader/de0;

    sget-object v3, Lcom/shabakaty/downloader/ho$d;->r:Lcom/shabakaty/downloader/ho$d;

    .line 87
    new-instance v4, Lcom/shabakaty/downloader/da3$i;

    iget-object v9, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    invoke-interface {v8}, Lcom/shabakaty/downloader/va3;->encoded()Z

    move-result v20

    move-object v8, v4

    move v10, v5

    move/from16 v21, v12

    move-object v12, v3

    move v3, v13

    move/from16 v13, v20

    invoke-direct/range {v8 .. v13}, Lcom/shabakaty/downloader/da3$i;-><init>(Ljava/lang/reflect/Method;ILjava/lang/String;Lcom/shabakaty/downloader/de0;Z)V

    goto/16 :goto_c

    .line 88
    :cond_1f
    iget-object v0, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, v2, Lcom/shabakaty/downloader/fs3$a;->r:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v11, v1, v2

    const-string v2, "URL \"%s\" does not contain \"{%s}\"."

    invoke-static {v0, v5, v2, v1}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_20
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 89
    iget-object v2, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-array v3, v4, [Ljava/lang/Object;

    sget-object v4, Lcom/shabakaty/downloader/fs3$a;->x:Ljava/util/regex/Pattern;

    .line 90
    invoke-virtual {v4}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    aput-object v11, v3, v1

    const-string v0, "@Path parameter name must match %s. Found: %s"

    .line 91
    invoke-static {v2, v5, v0, v3}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_21
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 92
    iget-object v3, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v2, Lcom/shabakaty/downloader/fs3$a;->n:Ljava/lang/String;

    aput-object v2, v1, v0

    const-string v0, "@Path can only be used with relative url on @%s"

    invoke-static {v3, v5, v0, v1}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_22
    const/4 v0, 0x0

    .line 93
    iget-object v1, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v5, v3, v0}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_23
    const/4 v0, 0x0

    .line 94
    iget-object v1, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "A @Path parameter must not come after a @QueryMap."

    invoke-static {v1, v5, v2, v0}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_24
    const/4 v0, 0x0

    .line 95
    iget-object v1, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "A @Path parameter must not come after a @QueryName."

    invoke-static {v1, v5, v2, v0}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_25
    const/4 v0, 0x0

    .line 96
    iget-object v1, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "A @Path parameter must not come after a @Query."

    invoke-static {v1, v5, v2, v0}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_26
    move/from16 v21, v12

    move v3, v13

    .line 97
    instance-of v4, v8, Lcom/shabakaty/downloader/ok3;

    const-string v11, "<String>)"

    const-string v12, " must include generic type (e.g., "

    if-eqz v4, :cond_2a

    .line 98
    invoke-virtual {v2, v5, v14}, Lcom/shabakaty/downloader/fs3$a;->c(ILjava/lang/reflect/Type;)V

    .line 99
    check-cast v8, Lcom/shabakaty/downloader/ok3;

    .line 100
    invoke-interface {v8}, Lcom/shabakaty/downloader/ok3;->value()Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-interface {v8}, Lcom/shabakaty/downloader/ok3;->encoded()Z

    move-result v8

    .line 102
    invoke-static {v14}, Lcom/shabakaty/downloader/bz4;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v9

    const/4 v10, 0x1

    .line 103
    iput-boolean v10, v2, Lcom/shabakaty/downloader/fs3$a;->j:Z

    .line 104
    const-class v10, Ljava/lang/Iterable;

    invoke-virtual {v10, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_28

    .line 105
    instance-of v10, v14, Ljava/lang/reflect/ParameterizedType;

    if-eqz v10, :cond_27

    .line 106
    move-object v9, v14

    check-cast v9, Ljava/lang/reflect/ParameterizedType;

    const/4 v10, 0x0

    .line 107
    invoke-static {v10, v9}, Lcom/shabakaty/downloader/bz4;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v9

    .line 108
    iget-object v10, v2, Lcom/shabakaty/downloader/fs3$a;->a:Lcom/shabakaty/downloader/lt3;

    invoke-virtual {v10, v9, v15}, Lcom/shabakaty/downloader/lt3;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/shabakaty/downloader/de0;

    sget-object v9, Lcom/shabakaty/downloader/ho$d;->r:Lcom/shabakaty/downloader/ho$d;

    .line 109
    new-instance v10, Lcom/shabakaty/downloader/da3$j;

    invoke-direct {v10, v4, v9, v8}, Lcom/shabakaty/downloader/da3$j;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/de0;Z)V

    .line 110
    new-instance v4, Lcom/shabakaty/downloader/ba3;

    invoke-direct {v4, v10}, Lcom/shabakaty/downloader/ba3;-><init>(Lcom/shabakaty/downloader/da3;)V

    goto/16 :goto_c

    .line 111
    :cond_27
    iget-object v0, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    invoke-static {v9, v1, v12, v11}, Lcom/shabakaty/downloader/ds3;->a(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 113
    invoke-static {v0, v5, v1, v2}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 114
    :cond_28
    invoke-virtual {v9}, Ljava/lang/Class;->isArray()Z

    move-result v10

    if-eqz v10, :cond_29

    .line 115
    invoke-virtual {v9}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lcom/shabakaty/downloader/fs3$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v9

    .line 116
    iget-object v10, v2, Lcom/shabakaty/downloader/fs3$a;->a:Lcom/shabakaty/downloader/lt3;

    .line 117
    invoke-virtual {v10, v9, v15}, Lcom/shabakaty/downloader/lt3;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/shabakaty/downloader/de0;

    sget-object v9, Lcom/shabakaty/downloader/ho$d;->r:Lcom/shabakaty/downloader/ho$d;

    .line 118
    new-instance v10, Lcom/shabakaty/downloader/da3$j;

    invoke-direct {v10, v4, v9, v8}, Lcom/shabakaty/downloader/da3$j;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/de0;Z)V

    .line 119
    new-instance v4, Lcom/shabakaty/downloader/ca3;

    invoke-direct {v4, v10}, Lcom/shabakaty/downloader/ca3;-><init>(Lcom/shabakaty/downloader/da3;)V

    goto/16 :goto_c

    .line 120
    :cond_29
    iget-object v9, v2, Lcom/shabakaty/downloader/fs3$a;->a:Lcom/shabakaty/downloader/lt3;

    invoke-virtual {v9, v14, v15}, Lcom/shabakaty/downloader/lt3;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/shabakaty/downloader/de0;

    sget-object v9, Lcom/shabakaty/downloader/ho$d;->r:Lcom/shabakaty/downloader/ho$d;

    .line 121
    new-instance v10, Lcom/shabakaty/downloader/da3$j;

    invoke-direct {v10, v4, v9, v8}, Lcom/shabakaty/downloader/da3$j;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/de0;Z)V

    goto/16 :goto_a

    .line 122
    :cond_2a
    instance-of v4, v8, Lcom/shabakaty/downloader/sk3;

    if-eqz v4, :cond_2e

    .line 123
    invoke-virtual {v2, v5, v14}, Lcom/shabakaty/downloader/fs3$a;->c(ILjava/lang/reflect/Type;)V

    .line 124
    check-cast v8, Lcom/shabakaty/downloader/sk3;

    .line 125
    invoke-interface {v8}, Lcom/shabakaty/downloader/sk3;->encoded()Z

    move-result v4

    .line 126
    invoke-static {v14}, Lcom/shabakaty/downloader/bz4;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v8

    const/4 v9, 0x1

    .line 127
    iput-boolean v9, v2, Lcom/shabakaty/downloader/fs3$a;->k:Z

    .line 128
    const-class v9, Ljava/lang/Iterable;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 129
    instance-of v9, v14, Ljava/lang/reflect/ParameterizedType;

    if-eqz v9, :cond_2b

    .line 130
    move-object v8, v14

    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    const/4 v9, 0x0

    .line 131
    invoke-static {v9, v8}, Lcom/shabakaty/downloader/bz4;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v8

    .line 132
    iget-object v9, v2, Lcom/shabakaty/downloader/fs3$a;->a:Lcom/shabakaty/downloader/lt3;

    invoke-virtual {v9, v8, v15}, Lcom/shabakaty/downloader/lt3;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/shabakaty/downloader/de0;

    sget-object v8, Lcom/shabakaty/downloader/ho$d;->r:Lcom/shabakaty/downloader/ho$d;

    .line 133
    new-instance v9, Lcom/shabakaty/downloader/da3$l;

    invoke-direct {v9, v8, v4}, Lcom/shabakaty/downloader/da3$l;-><init>(Lcom/shabakaty/downloader/de0;Z)V

    .line 134
    new-instance v4, Lcom/shabakaty/downloader/ba3;

    invoke-direct {v4, v9}, Lcom/shabakaty/downloader/ba3;-><init>(Lcom/shabakaty/downloader/da3;)V

    goto/16 :goto_c

    .line 135
    :cond_2b
    iget-object v0, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    invoke-static {v8, v1, v12, v11}, Lcom/shabakaty/downloader/ds3;->a(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 137
    invoke-static {v0, v5, v1, v2}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 138
    :cond_2c
    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result v9

    if-eqz v9, :cond_2d

    .line 139
    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lcom/shabakaty/downloader/fs3$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v8

    .line 140
    iget-object v9, v2, Lcom/shabakaty/downloader/fs3$a;->a:Lcom/shabakaty/downloader/lt3;

    .line 141
    invoke-virtual {v9, v8, v15}, Lcom/shabakaty/downloader/lt3;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/shabakaty/downloader/de0;

    sget-object v8, Lcom/shabakaty/downloader/ho$d;->r:Lcom/shabakaty/downloader/ho$d;

    .line 142
    new-instance v9, Lcom/shabakaty/downloader/da3$l;

    invoke-direct {v9, v8, v4}, Lcom/shabakaty/downloader/da3$l;-><init>(Lcom/shabakaty/downloader/de0;Z)V

    .line 143
    new-instance v4, Lcom/shabakaty/downloader/ca3;

    invoke-direct {v4, v9}, Lcom/shabakaty/downloader/ca3;-><init>(Lcom/shabakaty/downloader/da3;)V

    goto/16 :goto_c

    .line 144
    :cond_2d
    iget-object v8, v2, Lcom/shabakaty/downloader/fs3$a;->a:Lcom/shabakaty/downloader/lt3;

    invoke-virtual {v8, v14, v15}, Lcom/shabakaty/downloader/lt3;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/shabakaty/downloader/de0;

    sget-object v8, Lcom/shabakaty/downloader/ho$d;->r:Lcom/shabakaty/downloader/ho$d;

    .line 145
    new-instance v9, Lcom/shabakaty/downloader/da3$l;

    invoke-direct {v9, v8, v4}, Lcom/shabakaty/downloader/da3$l;-><init>(Lcom/shabakaty/downloader/de0;Z)V

    :goto_9
    move/from16 v20, v3

    move-object v3, v9

    goto/16 :goto_10

    .line 146
    :cond_2e
    instance-of v4, v8, Lcom/shabakaty/downloader/rk3;

    const-string v13, "Map must include generic types (e.g., Map<String, String>)"

    if-eqz v4, :cond_32

    .line 147
    invoke-virtual {v2, v5, v14}, Lcom/shabakaty/downloader/fs3$a;->c(ILjava/lang/reflect/Type;)V

    .line 148
    invoke-static {v14}, Lcom/shabakaty/downloader/bz4;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    const/4 v10, 0x1

    .line 149
    iput-boolean v10, v2, Lcom/shabakaty/downloader/fs3$a;->l:Z

    .line 150
    const-class v11, Ljava/util/Map;

    invoke-virtual {v11, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_31

    .line 151
    const-class v11, Ljava/util/Map;

    invoke-static {v14, v4, v11}, Lcom/shabakaty/downloader/bz4;->g(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 152
    instance-of v11, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v11, :cond_30

    .line 153
    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    const/4 v11, 0x0

    .line 154
    invoke-static {v11, v4}, Lcom/shabakaty/downloader/bz4;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v11

    if-ne v9, v11, :cond_2f

    .line 155
    invoke-static {v10, v4}, Lcom/shabakaty/downloader/bz4;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 156
    iget-object v9, v2, Lcom/shabakaty/downloader/fs3$a;->a:Lcom/shabakaty/downloader/lt3;

    invoke-virtual {v9, v4, v15}, Lcom/shabakaty/downloader/lt3;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/shabakaty/downloader/de0;

    sget-object v4, Lcom/shabakaty/downloader/ho$d;->r:Lcom/shabakaty/downloader/ho$d;

    .line 157
    new-instance v9, Lcom/shabakaty/downloader/da3$k;

    iget-object v10, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    check-cast v8, Lcom/shabakaty/downloader/rk3;

    .line 158
    invoke-interface {v8}, Lcom/shabakaty/downloader/rk3;->encoded()Z

    move-result v8

    invoke-direct {v9, v10, v5, v4, v8}, Lcom/shabakaty/downloader/da3$k;-><init>(Ljava/lang/reflect/Method;ILcom/shabakaty/downloader/de0;Z)V

    goto :goto_9

    .line 159
    :cond_2f
    iget-object v0, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    const-string v1, "@QueryMap keys must be of type String: "

    invoke-static {v1, v11}, Lcom/shabakaty/downloader/es3;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v5, v1, v2}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_30
    const/4 v0, 0x0

    .line 160
    iget-object v1, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v5, v13, v0}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_31
    const/4 v0, 0x0

    .line 161
    iget-object v1, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "@QueryMap parameter type must be Map."

    invoke-static {v1, v5, v2, v0}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 162
    :cond_32
    instance-of v4, v8, Lcom/shabakaty/downloader/os1;

    if-eqz v4, :cond_36

    .line 163
    invoke-virtual {v2, v5, v14}, Lcom/shabakaty/downloader/fs3$a;->c(ILjava/lang/reflect/Type;)V

    .line 164
    check-cast v8, Lcom/shabakaty/downloader/os1;

    .line 165
    invoke-interface {v8}, Lcom/shabakaty/downloader/os1;->value()Ljava/lang/String;

    move-result-object v4

    .line 166
    invoke-static {v14}, Lcom/shabakaty/downloader/bz4;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v8

    .line 167
    const-class v9, Ljava/lang/Iterable;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_34

    .line 168
    instance-of v9, v14, Ljava/lang/reflect/ParameterizedType;

    if-eqz v9, :cond_33

    .line 169
    move-object v8, v14

    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    const/4 v9, 0x0

    .line 170
    invoke-static {v9, v8}, Lcom/shabakaty/downloader/bz4;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v8

    .line 171
    iget-object v9, v2, Lcom/shabakaty/downloader/fs3$a;->a:Lcom/shabakaty/downloader/lt3;

    invoke-virtual {v9, v8, v15}, Lcom/shabakaty/downloader/lt3;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/shabakaty/downloader/de0;

    sget-object v8, Lcom/shabakaty/downloader/ho$d;->r:Lcom/shabakaty/downloader/ho$d;

    .line 172
    new-instance v9, Lcom/shabakaty/downloader/da3$d;

    invoke-direct {v9, v4, v8}, Lcom/shabakaty/downloader/da3$d;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/de0;)V

    .line 173
    new-instance v4, Lcom/shabakaty/downloader/ba3;

    invoke-direct {v4, v9}, Lcom/shabakaty/downloader/ba3;-><init>(Lcom/shabakaty/downloader/da3;)V

    goto/16 :goto_c

    .line 174
    :cond_33
    iget-object v0, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    invoke-static {v8, v1, v12, v11}, Lcom/shabakaty/downloader/ds3;->a(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 176
    invoke-static {v0, v5, v1, v2}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 177
    :cond_34
    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result v9

    if-eqz v9, :cond_35

    .line 178
    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lcom/shabakaty/downloader/fs3$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v8

    .line 179
    iget-object v9, v2, Lcom/shabakaty/downloader/fs3$a;->a:Lcom/shabakaty/downloader/lt3;

    .line 180
    invoke-virtual {v9, v8, v15}, Lcom/shabakaty/downloader/lt3;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/shabakaty/downloader/de0;

    sget-object v8, Lcom/shabakaty/downloader/ho$d;->r:Lcom/shabakaty/downloader/ho$d;

    .line 181
    new-instance v9, Lcom/shabakaty/downloader/da3$d;

    invoke-direct {v9, v4, v8}, Lcom/shabakaty/downloader/da3$d;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/de0;)V

    .line 182
    new-instance v4, Lcom/shabakaty/downloader/ca3;

    invoke-direct {v4, v9}, Lcom/shabakaty/downloader/ca3;-><init>(Lcom/shabakaty/downloader/da3;)V

    goto/16 :goto_c

    .line 183
    :cond_35
    iget-object v8, v2, Lcom/shabakaty/downloader/fs3$a;->a:Lcom/shabakaty/downloader/lt3;

    invoke-virtual {v8, v14, v15}, Lcom/shabakaty/downloader/lt3;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/shabakaty/downloader/de0;

    sget-object v8, Lcom/shabakaty/downloader/ho$d;->r:Lcom/shabakaty/downloader/ho$d;

    .line 184
    new-instance v9, Lcom/shabakaty/downloader/da3$d;

    invoke-direct {v9, v4, v8}, Lcom/shabakaty/downloader/da3$d;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/de0;)V

    goto/16 :goto_9

    .line 185
    :cond_36
    instance-of v4, v8, Lcom/shabakaty/downloader/rs1;

    if-eqz v4, :cond_3b

    .line 186
    const-class v4, Lcom/shabakaty/downloader/ts1;

    if-ne v14, v4, :cond_37

    .line 187
    new-instance v4, Lcom/shabakaty/downloader/da3$f;

    iget-object v8, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    invoke-direct {v4, v8, v5}, Lcom/shabakaty/downloader/da3$f;-><init>(Ljava/lang/reflect/Method;I)V

    goto/16 :goto_c

    .line 188
    :cond_37
    invoke-virtual {v2, v5, v14}, Lcom/shabakaty/downloader/fs3$a;->c(ILjava/lang/reflect/Type;)V

    .line 189
    invoke-static {v14}, Lcom/shabakaty/downloader/bz4;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    .line 190
    const-class v8, Ljava/util/Map;

    invoke-virtual {v8, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_3a

    .line 191
    const-class v8, Ljava/util/Map;

    invoke-static {v14, v4, v8}, Lcom/shabakaty/downloader/bz4;->g(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 192
    instance-of v8, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v8, :cond_39

    .line 193
    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    const/4 v8, 0x0

    .line 194
    invoke-static {v8, v4}, Lcom/shabakaty/downloader/bz4;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v8

    if-ne v9, v8, :cond_38

    const/4 v8, 0x1

    .line 195
    invoke-static {v8, v4}, Lcom/shabakaty/downloader/bz4;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 196
    iget-object v8, v2, Lcom/shabakaty/downloader/fs3$a;->a:Lcom/shabakaty/downloader/lt3;

    invoke-virtual {v8, v4, v15}, Lcom/shabakaty/downloader/lt3;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/shabakaty/downloader/de0;

    sget-object v4, Lcom/shabakaty/downloader/ho$d;->r:Lcom/shabakaty/downloader/ho$d;

    .line 197
    new-instance v8, Lcom/shabakaty/downloader/da3$e;

    iget-object v9, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    invoke-direct {v8, v9, v5, v4}, Lcom/shabakaty/downloader/da3$e;-><init>(Ljava/lang/reflect/Method;ILcom/shabakaty/downloader/de0;)V

    goto/16 :goto_b

    .line 198
    :cond_38
    iget-object v0, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    const-string v1, "@HeaderMap keys must be of type String: "

    invoke-static {v1, v8}, Lcom/shabakaty/downloader/es3;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v5, v1, v2}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_39
    const/4 v0, 0x0

    .line 199
    iget-object v1, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v5, v13, v0}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_3a
    const/4 v0, 0x0

    .line 200
    iget-object v1, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "@HeaderMap parameter type must be Map."

    invoke-static {v1, v5, v2, v0}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 201
    :cond_3b
    instance-of v4, v8, Lcom/shabakaty/downloader/la1;

    if-eqz v4, :cond_40

    .line 202
    invoke-virtual {v2, v5, v14}, Lcom/shabakaty/downloader/fs3$a;->c(ILjava/lang/reflect/Type;)V

    .line 203
    iget-boolean v4, v2, Lcom/shabakaty/downloader/fs3$a;->p:Z

    if-eqz v4, :cond_3f

    .line 204
    check-cast v8, Lcom/shabakaty/downloader/la1;

    .line 205
    invoke-interface {v8}, Lcom/shabakaty/downloader/la1;->value()Ljava/lang/String;

    move-result-object v4

    .line 206
    invoke-interface {v8}, Lcom/shabakaty/downloader/la1;->encoded()Z

    move-result v8

    const/4 v9, 0x1

    .line 207
    iput-boolean v9, v2, Lcom/shabakaty/downloader/fs3$a;->f:Z

    .line 208
    invoke-static {v14}, Lcom/shabakaty/downloader/bz4;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v9

    .line 209
    const-class v10, Ljava/lang/Iterable;

    invoke-virtual {v10, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_3d

    .line 210
    instance-of v10, v14, Ljava/lang/reflect/ParameterizedType;

    if-eqz v10, :cond_3c

    .line 211
    move-object v9, v14

    check-cast v9, Ljava/lang/reflect/ParameterizedType;

    const/4 v10, 0x0

    .line 212
    invoke-static {v10, v9}, Lcom/shabakaty/downloader/bz4;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v9

    .line 213
    iget-object v10, v2, Lcom/shabakaty/downloader/fs3$a;->a:Lcom/shabakaty/downloader/lt3;

    invoke-virtual {v10, v9, v15}, Lcom/shabakaty/downloader/lt3;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/shabakaty/downloader/de0;

    sget-object v9, Lcom/shabakaty/downloader/ho$d;->r:Lcom/shabakaty/downloader/ho$d;

    .line 214
    new-instance v10, Lcom/shabakaty/downloader/da3$b;

    invoke-direct {v10, v4, v9, v8}, Lcom/shabakaty/downloader/da3$b;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/de0;Z)V

    .line 215
    new-instance v4, Lcom/shabakaty/downloader/ba3;

    invoke-direct {v4, v10}, Lcom/shabakaty/downloader/ba3;-><init>(Lcom/shabakaty/downloader/da3;)V

    goto/16 :goto_c

    .line 216
    :cond_3c
    iget-object v0, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    invoke-static {v9, v1, v12, v11}, Lcom/shabakaty/downloader/ds3;->a(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 218
    invoke-static {v0, v5, v1, v2}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 219
    :cond_3d
    invoke-virtual {v9}, Ljava/lang/Class;->isArray()Z

    move-result v10

    if-eqz v10, :cond_3e

    .line 220
    invoke-virtual {v9}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lcom/shabakaty/downloader/fs3$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v9

    .line 221
    iget-object v10, v2, Lcom/shabakaty/downloader/fs3$a;->a:Lcom/shabakaty/downloader/lt3;

    .line 222
    invoke-virtual {v10, v9, v15}, Lcom/shabakaty/downloader/lt3;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/shabakaty/downloader/de0;

    sget-object v9, Lcom/shabakaty/downloader/ho$d;->r:Lcom/shabakaty/downloader/ho$d;

    .line 223
    new-instance v10, Lcom/shabakaty/downloader/da3$b;

    invoke-direct {v10, v4, v9, v8}, Lcom/shabakaty/downloader/da3$b;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/de0;Z)V

    .line 224
    new-instance v4, Lcom/shabakaty/downloader/ca3;

    invoke-direct {v4, v10}, Lcom/shabakaty/downloader/ca3;-><init>(Lcom/shabakaty/downloader/da3;)V

    goto/16 :goto_c

    .line 225
    :cond_3e
    iget-object v9, v2, Lcom/shabakaty/downloader/fs3$a;->a:Lcom/shabakaty/downloader/lt3;

    invoke-virtual {v9, v14, v15}, Lcom/shabakaty/downloader/lt3;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/shabakaty/downloader/de0;

    sget-object v9, Lcom/shabakaty/downloader/ho$d;->r:Lcom/shabakaty/downloader/ho$d;

    .line 226
    new-instance v10, Lcom/shabakaty/downloader/da3$b;

    invoke-direct {v10, v4, v9, v8}, Lcom/shabakaty/downloader/da3$b;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/de0;Z)V

    :goto_a
    move/from16 v20, v3

    move-object v3, v10

    goto/16 :goto_10

    .line 227
    :cond_3f
    iget-object v0, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "@Field parameters can only be used with form encoding."

    invoke-static {v0, v5, v2, v1}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 228
    :cond_40
    instance-of v4, v8, Lcom/shabakaty/downloader/pa1;

    if-eqz v4, :cond_45

    .line 229
    invoke-virtual {v2, v5, v14}, Lcom/shabakaty/downloader/fs3$a;->c(ILjava/lang/reflect/Type;)V

    .line 230
    iget-boolean v4, v2, Lcom/shabakaty/downloader/fs3$a;->p:Z

    if-eqz v4, :cond_44

    .line 231
    invoke-static {v14}, Lcom/shabakaty/downloader/bz4;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    .line 232
    const-class v10, Ljava/util/Map;

    invoke-virtual {v10, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_43

    .line 233
    const-class v10, Ljava/util/Map;

    invoke-static {v14, v4, v10}, Lcom/shabakaty/downloader/bz4;->g(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 234
    instance-of v10, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v10, :cond_42

    .line 235
    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    const/4 v10, 0x0

    .line 236
    invoke-static {v10, v4}, Lcom/shabakaty/downloader/bz4;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v10

    if-ne v9, v10, :cond_41

    const/4 v9, 0x1

    .line 237
    invoke-static {v9, v4}, Lcom/shabakaty/downloader/bz4;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 238
    iget-object v10, v2, Lcom/shabakaty/downloader/fs3$a;->a:Lcom/shabakaty/downloader/lt3;

    invoke-virtual {v10, v4, v15}, Lcom/shabakaty/downloader/lt3;->f(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/shabakaty/downloader/de0;

    sget-object v4, Lcom/shabakaty/downloader/ho$d;->r:Lcom/shabakaty/downloader/ho$d;

    .line 239
    iput-boolean v9, v2, Lcom/shabakaty/downloader/fs3$a;->f:Z

    .line 240
    new-instance v9, Lcom/shabakaty/downloader/da3$c;

    iget-object v10, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    check-cast v8, Lcom/shabakaty/downloader/pa1;

    .line 241
    invoke-interface {v8}, Lcom/shabakaty/downloader/pa1;->encoded()Z

    move-result v8

    invoke-direct {v9, v10, v5, v4, v8}, Lcom/shabakaty/downloader/da3$c;-><init>(Ljava/lang/reflect/Method;ILcom/shabakaty/downloader/de0;Z)V

    goto/16 :goto_9

    .line 242
    :cond_41
    iget-object v0, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    const-string v1, "@FieldMap keys must be of type String: "

    invoke-static {v1, v10}, Lcom/shabakaty/downloader/es3;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v5, v1, v2}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_42
    const/4 v0, 0x0

    .line 243
    iget-object v1, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v5, v13, v0}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_43
    const/4 v0, 0x0

    .line 244
    iget-object v1, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "@FieldMap parameter type must be Map."

    invoke-static {v1, v5, v2, v0}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_44
    const/4 v0, 0x0

    .line 245
    iget-object v1, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "@FieldMap parameters can only be used with form encoding."

    invoke-static {v1, v5, v2, v0}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 246
    :cond_45
    instance-of v4, v8, Lcom/shabakaty/downloader/sa3;

    if-eqz v4, :cond_54

    .line 247
    invoke-virtual {v2, v5, v14}, Lcom/shabakaty/downloader/fs3$a;->c(ILjava/lang/reflect/Type;)V

    .line 248
    iget-boolean v4, v2, Lcom/shabakaty/downloader/fs3$a;->q:Z

    if-eqz v4, :cond_53

    .line 249
    check-cast v8, Lcom/shabakaty/downloader/sa3;

    const/4 v4, 0x1

    .line 250
    iput-boolean v4, v2, Lcom/shabakaty/downloader/fs3$a;->g:Z

    .line 251
    invoke-interface {v8}, Lcom/shabakaty/downloader/sa3;->value()Ljava/lang/String;

    move-result-object v4

    .line 252
    invoke-static {v14}, Lcom/shabakaty/downloader/bz4;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v9

    .line 253
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_4c

    .line 254
    const-class v4, Ljava/lang/Iterable;

    invoke-virtual {v4, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    const-string v8, "@Part annotation must supply a name or use MultipartBody.Part parameter type."

    if-eqz v4, :cond_48

    .line 255
    instance-of v4, v14, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_47

    .line 256
    move-object v4, v14

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    const/4 v9, 0x0

    .line 257
    invoke-static {v9, v4}, Lcom/shabakaty/downloader/bz4;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 258
    invoke-static {v4}, Lcom/shabakaty/downloader/bz4;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 259
    sget-object v4, Lcom/shabakaty/downloader/da3$m;->a:Lcom/shabakaty/downloader/da3$m;

    .line 260
    new-instance v8, Lcom/shabakaty/downloader/ba3;

    invoke-direct {v8, v4}, Lcom/shabakaty/downloader/ba3;-><init>(Lcom/shabakaty/downloader/da3;)V

    :goto_b
    move/from16 v20, v3

    move-object v3, v8

    goto/16 :goto_10

    .line 261
    :cond_46
    iget-object v0, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v0, v5, v8, v1}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 262
    :cond_47
    iget-object v0, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    invoke-static {v9, v1, v12, v11}, Lcom/shabakaty/downloader/ds3;->a(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 264
    invoke-static {v0, v5, v1, v2}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 265
    :cond_48
    invoke-virtual {v9}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 266
    invoke-virtual {v9}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    .line 267
    invoke-virtual {v10, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 268
    sget-object v4, Lcom/shabakaty/downloader/da3$m;->a:Lcom/shabakaty/downloader/da3$m;

    .line 269
    new-instance v8, Lcom/shabakaty/downloader/ca3;

    invoke-direct {v8, v4}, Lcom/shabakaty/downloader/ca3;-><init>(Lcom/shabakaty/downloader/da3;)V

    goto :goto_b

    .line 270
    :cond_49
    iget-object v0, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v5, v8, v1}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_4a
    const/4 v4, 0x0

    .line 271
    invoke-virtual {v10, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_4b

    .line 272
    sget-object v4, Lcom/shabakaty/downloader/da3$m;->a:Lcom/shabakaty/downloader/da3$m;

    :goto_c
    move/from16 v20, v3

    :goto_d
    move-object v3, v4

    goto/16 :goto_10

    .line 273
    :cond_4b
    iget-object v0, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v5, v8, v1}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_4c
    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/String;

    const-string v22, "Content-Disposition"

    const/16 v20, 0x0

    aput-object v22, v13, v20

    move/from16 v20, v3

    const-string v3, "form-data; name=\""

    const-string v1, "\""

    .line 274
    invoke-static {v3, v4, v1}, Lcom/shabakaty/downloader/jp2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v13, v3

    const-string v1, "Content-Transfer-Encoding"

    const/4 v3, 0x2

    aput-object v1, v13, v3

    const/4 v1, 0x3

    .line 275
    invoke-interface {v8}, Lcom/shabakaty/downloader/sa3;->encoding()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v13, v1

    .line 276
    sget-object v1, Lcom/shabakaty/downloader/ts1;->s:Lcom/shabakaty/downloader/ts1$b;

    invoke-virtual {v1, v13}, Lcom/shabakaty/downloader/ts1$b;->c([Ljava/lang/String;)Lcom/shabakaty/downloader/ts1;

    move-result-object v1

    .line 277
    const-class v3, Ljava/lang/Iterable;

    invoke-virtual {v3, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    const-string v4, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation."

    if-eqz v3, :cond_4f

    .line 278
    instance-of v3, v14, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_4e

    .line 279
    move-object v3, v14

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    const/4 v8, 0x0

    .line 280
    invoke-static {v8, v3}, Lcom/shabakaty/downloader/bz4;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 281
    invoke-static {v3}, Lcom/shabakaty/downloader/bz4;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_4d

    .line 282
    iget-object v4, v2, Lcom/shabakaty/downloader/fs3$a;->a:Lcom/shabakaty/downloader/lt3;

    iget-object v8, v2, Lcom/shabakaty/downloader/fs3$a;->c:[Ljava/lang/annotation/Annotation;

    .line 283
    invoke-virtual {v4, v3, v15, v8}, Lcom/shabakaty/downloader/lt3;->d(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lcom/shabakaty/downloader/de0;

    move-result-object v3

    .line 284
    new-instance v4, Lcom/shabakaty/downloader/da3$g;

    iget-object v8, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    invoke-direct {v4, v8, v5, v1, v3}, Lcom/shabakaty/downloader/da3$g;-><init>(Ljava/lang/reflect/Method;ILcom/shabakaty/downloader/ts1;Lcom/shabakaty/downloader/de0;)V

    .line 285
    new-instance v3, Lcom/shabakaty/downloader/ba3;

    invoke-direct {v3, v4}, Lcom/shabakaty/downloader/ba3;-><init>(Lcom/shabakaty/downloader/da3;)V

    goto/16 :goto_10

    .line 286
    :cond_4d
    iget-object v0, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v5, v4, v1}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 287
    :cond_4e
    iget-object v0, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    invoke-static {v9, v1, v12, v11}, Lcom/shabakaty/downloader/ds3;->a(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 289
    invoke-static {v0, v5, v1, v2}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 290
    :cond_4f
    invoke-virtual {v9}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 291
    invoke-virtual {v9}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/shabakaty/downloader/fs3$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    .line 292
    invoke-virtual {v10, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_50

    .line 293
    iget-object v4, v2, Lcom/shabakaty/downloader/fs3$a;->a:Lcom/shabakaty/downloader/lt3;

    iget-object v8, v2, Lcom/shabakaty/downloader/fs3$a;->c:[Ljava/lang/annotation/Annotation;

    .line 294
    invoke-virtual {v4, v3, v15, v8}, Lcom/shabakaty/downloader/lt3;->d(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lcom/shabakaty/downloader/de0;

    move-result-object v3

    .line 295
    new-instance v4, Lcom/shabakaty/downloader/da3$g;

    iget-object v8, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    invoke-direct {v4, v8, v5, v1, v3}, Lcom/shabakaty/downloader/da3$g;-><init>(Ljava/lang/reflect/Method;ILcom/shabakaty/downloader/ts1;Lcom/shabakaty/downloader/de0;)V

    .line 296
    new-instance v3, Lcom/shabakaty/downloader/ca3;

    invoke-direct {v3, v4}, Lcom/shabakaty/downloader/ca3;-><init>(Lcom/shabakaty/downloader/da3;)V

    goto/16 :goto_10

    .line 297
    :cond_50
    iget-object v0, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v5, v4, v1}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 298
    :cond_51
    invoke-virtual {v10, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_52

    .line 299
    iget-object v3, v2, Lcom/shabakaty/downloader/fs3$a;->a:Lcom/shabakaty/downloader/lt3;

    iget-object v4, v2, Lcom/shabakaty/downloader/fs3$a;->c:[Ljava/lang/annotation/Annotation;

    .line 300
    invoke-virtual {v3, v14, v15, v4}, Lcom/shabakaty/downloader/lt3;->d(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lcom/shabakaty/downloader/de0;

    move-result-object v3

    .line 301
    new-instance v4, Lcom/shabakaty/downloader/da3$g;

    iget-object v8, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    invoke-direct {v4, v8, v5, v1, v3}, Lcom/shabakaty/downloader/da3$g;-><init>(Ljava/lang/reflect/Method;ILcom/shabakaty/downloader/ts1;Lcom/shabakaty/downloader/de0;)V

    goto/16 :goto_d

    .line 302
    :cond_52
    iget-object v0, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v5, v4, v1}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_53
    const/4 v0, 0x0

    .line 303
    iget-object v1, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "@Part parameters can only be used with multipart encoding."

    invoke-static {v1, v5, v2, v0}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_54
    move/from16 v20, v3

    .line 304
    instance-of v1, v8, Lcom/shabakaty/downloader/ta3;

    if-eqz v1, :cond_5a

    .line 305
    invoke-virtual {v2, v5, v14}, Lcom/shabakaty/downloader/fs3$a;->c(ILjava/lang/reflect/Type;)V

    .line 306
    iget-boolean v1, v2, Lcom/shabakaty/downloader/fs3$a;->q:Z

    if-eqz v1, :cond_59

    const/4 v1, 0x1

    .line 307
    iput-boolean v1, v2, Lcom/shabakaty/downloader/fs3$a;->g:Z

    .line 308
    invoke-static {v14}, Lcom/shabakaty/downloader/bz4;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 309
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 310
    const-class v3, Ljava/util/Map;

    invoke-static {v14, v1, v3}, Lcom/shabakaty/downloader/bz4;->g(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 311
    instance-of v3, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_57

    .line 312
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    const/4 v3, 0x0

    .line 313
    invoke-static {v3, v1}, Lcom/shabakaty/downloader/bz4;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v3

    if-ne v9, v3, :cond_56

    const/4 v3, 0x1

    .line 314
    invoke-static {v3, v1}, Lcom/shabakaty/downloader/bz4;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 315
    invoke-static {v1}, Lcom/shabakaty/downloader/bz4;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_55

    .line 316
    iget-object v3, v2, Lcom/shabakaty/downloader/fs3$a;->a:Lcom/shabakaty/downloader/lt3;

    iget-object v4, v2, Lcom/shabakaty/downloader/fs3$a;->c:[Ljava/lang/annotation/Annotation;

    .line 317
    invoke-virtual {v3, v1, v15, v4}, Lcom/shabakaty/downloader/lt3;->d(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lcom/shabakaty/downloader/de0;

    move-result-object v1

    .line 318
    check-cast v8, Lcom/shabakaty/downloader/ta3;

    .line 319
    new-instance v3, Lcom/shabakaty/downloader/da3$h;

    iget-object v4, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    invoke-interface {v8}, Lcom/shabakaty/downloader/ta3;->encoding()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v4, v5, v1, v8}, Lcom/shabakaty/downloader/da3$h;-><init>(Ljava/lang/reflect/Method;ILcom/shabakaty/downloader/de0;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 320
    :cond_55
    iget-object v0, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead."

    invoke-static {v0, v5, v2, v1}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_56
    const/4 v0, 0x0

    .line 321
    iget-object v1, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    const-string v2, "@PartMap keys must be of type String: "

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/es3;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v5, v2, v0}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_57
    const/4 v0, 0x0

    .line 322
    iget-object v1, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v5, v13, v0}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_58
    const/4 v0, 0x0

    .line 323
    iget-object v1, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "@PartMap parameter type must be Map."

    invoke-static {v1, v5, v2, v0}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_59
    const/4 v0, 0x0

    .line 324
    iget-object v1, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "@PartMap parameters can only be used with multipart encoding."

    invoke-static {v1, v5, v2, v0}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 325
    :cond_5a
    instance-of v1, v8, Lcom/shabakaty/downloader/sm;

    if-eqz v1, :cond_5d

    .line 326
    invoke-virtual {v2, v5, v14}, Lcom/shabakaty/downloader/fs3$a;->c(ILjava/lang/reflect/Type;)V

    .line 327
    iget-boolean v1, v2, Lcom/shabakaty/downloader/fs3$a;->p:Z

    if-nez v1, :cond_5c

    iget-boolean v1, v2, Lcom/shabakaty/downloader/fs3$a;->q:Z

    if-nez v1, :cond_5c

    .line 328
    iget-boolean v1, v2, Lcom/shabakaty/downloader/fs3$a;->h:Z

    if-nez v1, :cond_5b

    .line 329
    :try_start_1
    iget-object v1, v2, Lcom/shabakaty/downloader/fs3$a;->a:Lcom/shabakaty/downloader/lt3;

    iget-object v3, v2, Lcom/shabakaty/downloader/fs3$a;->c:[Ljava/lang/annotation/Annotation;

    invoke-virtual {v1, v14, v15, v3}, Lcom/shabakaty/downloader/lt3;->d(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lcom/shabakaty/downloader/de0;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, 0x1

    .line 330
    iput-boolean v3, v2, Lcom/shabakaty/downloader/fs3$a;->h:Z

    .line 331
    new-instance v3, Lcom/shabakaty/downloader/da3$a;

    iget-object v4, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    invoke-direct {v3, v4, v5, v1}, Lcom/shabakaty/downloader/da3$a;-><init>(Ljava/lang/reflect/Method;ILcom/shabakaty/downloader/de0;)V

    goto/16 :goto_10

    :catch_1
    move-exception v0

    .line 332
    iget-object v1, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v14, v2, v3

    const-string v3, "Unable to create @Body converter for %s"

    invoke-static {v1, v0, v5, v3, v2}, Lcom/shabakaty/downloader/bz4;->m(Ljava/lang/reflect/Method;Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_5b
    const/4 v0, 0x0

    .line 333
    iget-object v1, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Multiple @Body method annotations found."

    invoke-static {v1, v5, v2, v0}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_5c
    const/4 v0, 0x0

    .line 334
    iget-object v1, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "@Body parameters cannot be used with form or multi-part encoding."

    invoke-static {v1, v5, v2, v0}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 335
    :cond_5d
    instance-of v1, v8, Lcom/shabakaty/downloader/jk4;

    if-eqz v1, :cond_61

    .line 336
    invoke-virtual {v2, v5, v14}, Lcom/shabakaty/downloader/fs3$a;->c(ILjava/lang/reflect/Type;)V

    .line 337
    invoke-static {v14}, Lcom/shabakaty/downloader/bz4;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    add-int/lit8 v3, v5, -0x1

    :goto_e
    if-ltz v3, :cond_60

    .line 338
    iget-object v4, v2, Lcom/shabakaty/downloader/fs3$a;->v:[Lcom/shabakaty/downloader/da3;

    aget-object v4, v4, v3

    .line 339
    instance-of v8, v4, Lcom/shabakaty/downloader/da3$o;

    if-eqz v8, :cond_5f

    check-cast v4, Lcom/shabakaty/downloader/da3$o;

    iget-object v4, v4, Lcom/shabakaty/downloader/da3$o;->a:Ljava/lang/Class;

    .line 340
    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5e

    goto :goto_f

    .line 341
    :cond_5e
    iget-object v0, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    const-string v2, "@Tag type "

    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 342
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is duplicate of parameter #"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and would always overwrite its value."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 343
    invoke-static {v0, v5, v1, v2}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_5f
    :goto_f
    add-int/lit8 v3, v3, -0x1

    goto :goto_e

    .line 344
    :cond_60
    new-instance v3, Lcom/shabakaty/downloader/da3$o;

    invoke-direct {v3, v1}, Lcom/shabakaty/downloader/da3$o;-><init>(Ljava/lang/Class;)V

    goto :goto_10

    :cond_61
    const/4 v3, 0x0

    :goto_10
    if-nez v3, :cond_62

    goto :goto_11

    :cond_62
    if-nez v17, :cond_63

    move-object/from16 v17, v3

    :goto_11
    add-int/lit8 v12, v21, 0x1

    move-object/from16 v1, p1

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v13, v20

    goto/16 :goto_7

    .line 345
    :cond_63
    iget-object v0, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Multiple Retrofit annotations found, only one allowed."

    invoke-static {v0, v5, v2, v1}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_64
    move/from16 v18, v3

    move/from16 v19, v4

    goto :goto_12

    :cond_65
    move/from16 v18, v3

    move/from16 v19, v4

    const/16 v17, 0x0

    :goto_12
    if-nez v17, :cond_67

    if-eqz v16, :cond_66

    .line 346
    :try_start_2
    invoke-static {v14}, Lcom/shabakaty/downloader/bz4;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lcom/shabakaty/downloader/ud0;

    if-ne v1, v3, :cond_66

    const/4 v1, 0x1

    .line 347
    iput-boolean v1, v2, Lcom/shabakaty/downloader/fs3$a;->w:Z
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v17, 0x0

    goto :goto_13

    .line 348
    :catch_2
    :cond_66
    iget-object v0, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "No Retrofit annotation found."

    invoke-static {v0, v5, v2, v1}, Lcom/shabakaty/downloader/bz4;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 349
    :cond_67
    :goto_13
    aput-object v17, v6, v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    move/from16 v3, v18

    move/from16 v4, v19

    goto/16 :goto_5

    .line 350
    :cond_68
    iget-object v1, v2, Lcom/shabakaty/downloader/fs3$a;->r:Ljava/lang/String;

    if-nez v1, :cond_6a

    iget-boolean v1, v2, Lcom/shabakaty/downloader/fs3$a;->m:Z

    if-eqz v1, :cond_69

    goto :goto_14

    .line 351
    :cond_69
    iget-object v0, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v2, Lcom/shabakaty/downloader/fs3$a;->n:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Missing either @%s URL or @Url parameter."

    invoke-static {v0, v2, v1}, Lcom/shabakaty/downloader/bz4;->j(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 352
    :cond_6a
    :goto_14
    iget-boolean v1, v2, Lcom/shabakaty/downloader/fs3$a;->p:Z

    if-nez v1, :cond_6c

    iget-boolean v3, v2, Lcom/shabakaty/downloader/fs3$a;->q:Z

    if-nez v3, :cond_6c

    iget-boolean v3, v2, Lcom/shabakaty/downloader/fs3$a;->o:Z

    if-nez v3, :cond_6c

    iget-boolean v3, v2, Lcom/shabakaty/downloader/fs3$a;->h:Z

    if-nez v3, :cond_6b

    goto :goto_15

    .line 353
    :cond_6b
    iget-object v0, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Non-body HTTP method cannot contain @Body."

    invoke-static {v0, v2, v1}, Lcom/shabakaty/downloader/bz4;->j(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_6c
    :goto_15
    if-eqz v1, :cond_6e

    .line 354
    iget-boolean v1, v2, Lcom/shabakaty/downloader/fs3$a;->f:Z

    if-eqz v1, :cond_6d

    goto :goto_16

    .line 355
    :cond_6d
    iget-object v0, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Form-encoded method must contain at least one @Field."

    invoke-static {v0, v2, v1}, Lcom/shabakaty/downloader/bz4;->j(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_6e
    :goto_16
    const/4 v1, 0x0

    .line 356
    iget-boolean v3, v2, Lcom/shabakaty/downloader/fs3$a;->q:Z

    if-eqz v3, :cond_70

    iget-boolean v3, v2, Lcom/shabakaty/downloader/fs3$a;->g:Z

    if-eqz v3, :cond_6f

    goto :goto_17

    .line 357
    :cond_6f
    iget-object v0, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Multipart method must contain at least one @Part."

    invoke-static {v0, v2, v1}, Lcom/shabakaty/downloader/bz4;->j(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 358
    :cond_70
    :goto_17
    new-instance v3, Lcom/shabakaty/downloader/fs3;

    invoke-direct {v3, v2}, Lcom/shabakaty/downloader/fs3;-><init>(Lcom/shabakaty/downloader/fs3$a;)V

    .line 359
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 360
    invoke-static {v1}, Lcom/shabakaty/downloader/bz4;->h(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-nez v2, :cond_7c

    .line 361
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_7b

    .line 362
    const-class v1, Lcom/shabakaty/downloader/xs3;

    iget-boolean v2, v3, Lcom/shabakaty/downloader/fs3;->k:Z

    .line 363
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-eqz v2, :cond_74

    .line 364
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 365
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    .line 366
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    .line 367
    instance-of v8, v5, Ljava/lang/reflect/WildcardType;

    if-eqz v8, :cond_71

    .line 368
    check-cast v5, Ljava/lang/reflect/WildcardType;

    invoke-interface {v5}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v5

    aget-object v5, v5, v6

    .line 369
    :cond_71
    invoke-static {v5}, Lcom/shabakaty/downloader/bz4;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v8

    if-ne v8, v1, :cond_72

    instance-of v8, v5, Ljava/lang/reflect/ParameterizedType;

    if-eqz v8, :cond_72

    .line 370
    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v6, v5}, Lcom/shabakaty/downloader/bz4;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v5

    const/4 v8, 0x1

    goto :goto_18

    :cond_72
    const/4 v8, 0x0

    .line 371
    :goto_18
    new-instance v9, Lcom/shabakaty/downloader/bz4$b;

    const-class v10, Lcom/shabakaty/downloader/nq;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/reflect/Type;

    aput-object v5, v12, v6

    const/4 v5, 0x0

    invoke-direct {v9, v5, v10, v12}, Lcom/shabakaty/downloader/bz4$b;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    .line 372
    const-class v5, Lcom/shabakaty/downloader/m84;

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/bz4;->i([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_73

    goto :goto_19

    .line 373
    :cond_73
    array-length v5, v4

    add-int/2addr v5, v11

    new-array v5, v5, [Ljava/lang/annotation/Annotation;

    .line 374
    sget-object v10, Lcom/shabakaty/downloader/n84;->a:Lcom/shabakaty/downloader/m84;

    aput-object v10, v5, v6

    .line 375
    array-length v10, v4

    invoke-static {v4, v6, v5, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v5

    goto :goto_19

    .line 376
    :cond_74
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v9

    const/4 v8, 0x0

    .line 377
    :goto_19
    :try_start_3
    invoke-virtual {v0, v9, v4}, Lcom/shabakaty/downloader/lt3;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/shabakaty/downloader/oq;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    .line 378
    invoke-interface {v5}, Lcom/shabakaty/downloader/oq;->a()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 379
    const-class v6, Lcom/shabakaty/downloader/ws3;

    if-eq v4, v6, :cond_7a

    if-eq v4, v1, :cond_79

    .line 380
    iget-object v1, v3, Lcom/shabakaty/downloader/fs3;->c:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    const-class v1, Ljava/lang/Void;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    goto :goto_1a

    :cond_75
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "HEAD method must use Void as response type."

    move-object/from16 v6, p1

    .line 381
    invoke-static {v6, v1, v0}, Lcom/shabakaty/downloader/bz4;->j(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_76
    :goto_1a
    move-object/from16 v6, p1

    .line 382
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 383
    :try_start_4
    invoke-virtual {v0, v4, v1}, Lcom/shabakaty/downloader/lt3;->e(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/shabakaty/downloader/de0;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    .line 384
    iget-object v0, v0, Lcom/shabakaty/downloader/lt3;->b:Lcom/shabakaty/downloader/mq$a;

    if-nez v2, :cond_77

    .line 385
    new-instance v1, Lcom/shabakaty/downloader/ow1$a;

    invoke-direct {v1, v3, v0, v4, v5}, Lcom/shabakaty/downloader/ow1$a;-><init>(Lcom/shabakaty/downloader/fs3;Lcom/shabakaty/downloader/mq$a;Lcom/shabakaty/downloader/de0;Lcom/shabakaty/downloader/oq;)V

    goto :goto_1b

    :cond_77
    if-eqz v8, :cond_78

    .line 386
    new-instance v1, Lcom/shabakaty/downloader/ow1$c;

    invoke-direct {v1, v3, v0, v4, v5}, Lcom/shabakaty/downloader/ow1$c;-><init>(Lcom/shabakaty/downloader/fs3;Lcom/shabakaty/downloader/mq$a;Lcom/shabakaty/downloader/de0;Lcom/shabakaty/downloader/oq;)V

    goto :goto_1b

    .line 387
    :cond_78
    new-instance v7, Lcom/shabakaty/downloader/ow1$b;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, v3

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/ow1$b;-><init>(Lcom/shabakaty/downloader/fs3;Lcom/shabakaty/downloader/mq$a;Lcom/shabakaty/downloader/de0;Lcom/shabakaty/downloader/oq;Z)V

    :goto_1b
    return-object v1

    :catch_3
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v4, v0, v2

    const-string v2, "Unable to create converter for %s"

    .line 388
    invoke-static {v6, v1, v2, v0}, Lcom/shabakaty/downloader/bz4;->k(Ljava/lang/reflect/Method;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_79
    move-object/from16 v6, p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Response must include generic type (e.g., Response<String>)"

    .line 389
    invoke-static {v6, v1, v0}, Lcom/shabakaty/downloader/bz4;->j(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_7a
    move-object/from16 v6, p1

    const-string v0, "\'"

    .line 390
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 391
    invoke-static {v4}, Lcom/shabakaty/downloader/bz4;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' is not a valid response body type. Did you mean ResponseBody?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 392
    invoke-static {v6, v0, v1}, Lcom/shabakaty/downloader/bz4;->j(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :catch_4
    move-exception v0

    move-object/from16 v6, p1

    move-object v1, v0

    const/4 v0, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v9, v2, v0

    const-string v0, "Unable to create call adapter for %s"

    .line 393
    invoke-static {v6, v1, v0, v2}, Lcom/shabakaty/downloader/bz4;->k(Ljava/lang/reflect/Method;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_7b
    move-object/from16 v6, p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Service methods cannot return void."

    .line 394
    invoke-static {v6, v1, v0}, Lcom/shabakaty/downloader/bz4;->j(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_7c
    move-object/from16 v6, p1

    const/4 v0, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const-string v0, "Method return type must not include a type variable or wildcard: %s"

    .line 395
    invoke-static {v6, v0, v2}, Lcom/shabakaty/downloader/bz4;->j(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_7d
    const/4 v0, 0x0

    .line 396
    iget-object v1, v2, Lcom/shabakaty/downloader/fs3$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "HTTP method annotation is required (e.g., @GET, @POST, etc.)."

    invoke-static {v1, v2, v0}, Lcom/shabakaty/downloader/bz4;->j(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public abstract a([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method
