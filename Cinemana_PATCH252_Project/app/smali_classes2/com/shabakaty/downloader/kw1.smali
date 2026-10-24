.class public final Lcom/shabakaty/downloader/kw1;
.super Ljava/lang/Object;
.source "HttpLoggingInterceptor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/w22;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/kw1$a;,
        Lcom/shabakaty/downloader/kw1$b;
    }
.end annotation


# instance fields
.field public volatile a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public volatile b:Lcom/shabakaty/downloader/kw1$a;

.field public final c:Lcom/shabakaty/downloader/kw1$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/shabakaty/downloader/kw1;-><init>(Lcom/shabakaty/downloader/kw1$b;I)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/kw1$b;I)V
    .locals 0

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/kw1$b;->a:Lcom/shabakaty/downloader/kw1$b;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "logger"

    .line 2
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/kw1;->c:Lcom/shabakaty/downloader/kw1$b;

    .line 4
    sget-object p1, Lcom/shabakaty/downloader/c31;->r:Lcom/shabakaty/downloader/c31;

    iput-object p1, p0, Lcom/shabakaty/downloader/kw1;->a:Ljava/util/Set;

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/kw1$a;->r:Lcom/shabakaty/downloader/kw1$a;

    iput-object p1, p0, Lcom/shabakaty/downloader/kw1;->b:Lcom/shabakaty/downloader/kw1$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/ts1;)Z
    .locals 3

    const-string v0, "Content-Encoding"

    .line 1
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ts1;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "identity"

    const/4 v2, 0x1

    .line 2
    invoke-static {p1, v1, v2}, Lcom/shabakaty/downloader/ne4;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "gzip"

    .line 3
    invoke-static {p1, v1, v2}, Lcom/shabakaty/downloader/ne4;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final b(Lcom/shabakaty/downloader/ts1;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kw1;->a:Ljava/util/Set;

    .line 2
    iget-object v1, p1, Lcom/shabakaty/downloader/ts1;->r:[Ljava/lang/String;

    mul-int/lit8 p2, p2, 0x2

    aget-object v1, v1, p2

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u2588\u2588"

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/shabakaty/downloader/ts1;->r:[Ljava/lang/String;

    add-int/lit8 v1, p2, 0x1

    aget-object v0, v0, v1

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/kw1;->c:Lcom/shabakaty/downloader/kw1$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/ts1;->r:[Ljava/lang/String;

    aget-object p1, p1, p2

    .line 7
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/kw1$b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public intercept(Lcom/shabakaty/downloader/w22$a;)Lcom/shabakaty/downloader/ws3;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "chain"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v1, Lcom/shabakaty/downloader/kw1;->b:Lcom/shabakaty/downloader/kw1$a;

    .line 2
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/w22$a;->d()Lcom/shabakaty/downloader/vr3;

    move-result-object v3

    .line 3
    sget-object v4, Lcom/shabakaty/downloader/kw1$a;->r:Lcom/shabakaty/downloader/kw1$a;

    if-ne v2, v4, :cond_0

    .line 4
    invoke-interface {v0, v3}, Lcom/shabakaty/downloader/w22$a;->a(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/ws3;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    sget-object v4, Lcom/shabakaty/downloader/kw1$a;->u:Lcom/shabakaty/downloader/kw1$a;

    if-ne v2, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_3

    .line 6
    sget-object v5, Lcom/shabakaty/downloader/kw1$a;->t:Lcom/shabakaty/downloader/kw1$a;

    if-ne v2, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    .line 7
    :goto_2
    iget-object v5, v3, Lcom/shabakaty/downloader/vr3;->e:Lcom/shabakaty/downloader/yr3;

    .line 8
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/w22$a;->b()Lcom/shabakaty/downloader/eb0;

    move-result-object v6

    const-string v7, "--> "

    .line 9
    invoke-static {v7}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 10
    iget-object v8, v3, Lcom/shabakaty/downloader/vr3;->c:Ljava/lang/String;

    .line 11
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    iget-object v8, v3, Lcom/shabakaty/downloader/vr3;->b:Lcom/shabakaty/downloader/qw1;

    .line 13
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ""

    if-eqz v6, :cond_4

    const-string v9, " "

    invoke-static {v9}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v6}, Lcom/shabakaty/downloader/eb0;->a()Lcom/shabakaty/downloader/mj3;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_4
    move-object v6, v8

    :goto_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "-byte body)"

    const-string v9, " ("

    if-nez v2, :cond_5

    if-eqz v5, :cond_5

    .line 14
    invoke-static {v6, v9}, Lcom/shabakaty/downloader/vf3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/shabakaty/downloader/yr3;->a()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 15
    :cond_5
    iget-object v10, v1, Lcom/shabakaty/downloader/kw1;->c:Lcom/shabakaty/downloader/kw1$b;

    invoke-interface {v10, v6}, Lcom/shabakaty/downloader/kw1$b;->a(Ljava/lang/String;)V

    const-string v6, "-byte body omitted)"

    const-string v10, "UTF_8"

    if-eqz v2, :cond_e

    .line 16
    iget-object v11, v3, Lcom/shabakaty/downloader/vr3;->d:Lcom/shabakaty/downloader/ts1;

    if-eqz v5, :cond_7

    .line 17
    invoke-virtual {v5}, Lcom/shabakaty/downloader/yr3;->b()Lcom/shabakaty/downloader/fr2;

    move-result-object v12

    if-eqz v12, :cond_6

    const-string v13, "Content-Type"

    .line 18
    invoke-virtual {v11, v13}, Lcom/shabakaty/downloader/ts1;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_6

    .line 19
    iget-object v13, v1, Lcom/shabakaty/downloader/kw1;->c:Lcom/shabakaty/downloader/kw1$b;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Content-Type: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v13, v12}, Lcom/shabakaty/downloader/kw1$b;->a(Ljava/lang/String;)V

    .line 20
    :cond_6
    invoke-virtual {v5}, Lcom/shabakaty/downloader/yr3;->a()J

    move-result-wide v12

    const-wide/16 v14, -0x1

    cmp-long v16, v12, v14

    if-eqz v16, :cond_7

    const-string v12, "Content-Length"

    .line 21
    invoke-virtual {v11, v12}, Lcom/shabakaty/downloader/ts1;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_7

    .line 22
    iget-object v12, v1, Lcom/shabakaty/downloader/kw1;->c:Lcom/shabakaty/downloader/kw1$b;

    const-string v13, "Content-Length: "

    invoke-static {v13}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Lcom/shabakaty/downloader/yr3;->a()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/shabakaty/downloader/kw1$b;->a(Ljava/lang/String;)V

    .line 23
    :cond_7
    invoke-virtual {v11}, Lcom/shabakaty/downloader/ts1;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v12, :cond_8

    .line 24
    invoke-virtual {v1, v11, v13}, Lcom/shabakaty/downloader/kw1;->b(Lcom/shabakaty/downloader/ts1;I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_8
    const-string v11, "--> END "

    if-eqz v4, :cond_d

    if-nez v5, :cond_9

    goto/16 :goto_6

    .line 25
    :cond_9
    iget-object v12, v3, Lcom/shabakaty/downloader/vr3;->d:Lcom/shabakaty/downloader/ts1;

    .line 26
    invoke-virtual {v1, v12}, Lcom/shabakaty/downloader/kw1;->a(Lcom/shabakaty/downloader/ts1;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 27
    iget-object v5, v1, Lcom/shabakaty/downloader/kw1;->c:Lcom/shabakaty/downloader/kw1$b;

    invoke-static {v11}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 28
    iget-object v12, v3, Lcom/shabakaty/downloader/vr3;->c:Ljava/lang/String;

    .line 29
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " (encoded body omitted)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v11}, Lcom/shabakaty/downloader/kw1$b;->a(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 30
    :cond_a
    new-instance v12, Lcom/shabakaty/downloader/zn;

    invoke-direct {v12}, Lcom/shabakaty/downloader/zn;-><init>()V

    .line 31
    invoke-virtual {v5, v12}, Lcom/shabakaty/downloader/yr3;->e(Lcom/shabakaty/downloader/do;)V

    .line 32
    invoke-virtual {v5}, Lcom/shabakaty/downloader/yr3;->b()Lcom/shabakaty/downloader/fr2;

    move-result-object v13

    if-eqz v13, :cond_b

    .line 33
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v13, v14}, Lcom/shabakaty/downloader/fr2;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v13

    if-eqz v13, :cond_b

    goto :goto_5

    :cond_b
    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v13, v10}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    :goto_5
    iget-object v14, v1, Lcom/shabakaty/downloader/kw1;->c:Lcom/shabakaty/downloader/kw1$b;

    invoke-interface {v14, v8}, Lcom/shabakaty/downloader/kw1$b;->a(Ljava/lang/String;)V

    .line 35
    invoke-static {v12}, Lcom/shabakaty/downloader/c12;->a(Lcom/shabakaty/downloader/zn;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 36
    iget-object v14, v1, Lcom/shabakaty/downloader/kw1;->c:Lcom/shabakaty/downloader/kw1$b;

    invoke-virtual {v12, v13}, Lcom/shabakaty/downloader/zn;->z0(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v14, v12}, Lcom/shabakaty/downloader/kw1$b;->a(Ljava/lang/String;)V

    .line 37
    iget-object v12, v1, Lcom/shabakaty/downloader/kw1;->c:Lcom/shabakaty/downloader/kw1$b;

    invoke-static {v11}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 38
    iget-object v13, v3, Lcom/shabakaty/downloader/vr3;->c:Ljava/lang/String;

    .line 39
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/yr3;->a()J

    move-result-wide v13

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v12, v5}, Lcom/shabakaty/downloader/kw1$b;->a(Ljava/lang/String;)V

    goto :goto_7

    .line 40
    :cond_c
    iget-object v12, v1, Lcom/shabakaty/downloader/kw1;->c:Lcom/shabakaty/downloader/kw1$b;

    .line 41
    invoke-static {v11}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 42
    iget-object v13, v3, Lcom/shabakaty/downloader/vr3;->c:Ljava/lang/String;

    .line 43
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " (binary "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/yr3;->a()J

    move-result-wide v13

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 44
    invoke-interface {v12, v5}, Lcom/shabakaty/downloader/kw1$b;->a(Ljava/lang/String;)V

    goto :goto_7

    .line 45
    :cond_d
    :goto_6
    iget-object v5, v1, Lcom/shabakaty/downloader/kw1;->c:Lcom/shabakaty/downloader/kw1$b;

    invoke-static {v11}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 46
    iget-object v12, v3, Lcom/shabakaty/downloader/vr3;->c:Ljava/lang/String;

    .line 47
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v11}, Lcom/shabakaty/downloader/kw1$b;->a(Ljava/lang/String;)V

    .line 48
    :cond_e
    :goto_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    .line 49
    :try_start_0
    invoke-interface {v0, v3}, Lcom/shabakaty/downloader/w22$a;->a(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/ws3;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    sub-long/2addr v13, v11

    invoke-virtual {v3, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    .line 51
    iget-object v3, v0, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    .line 52
    invoke-static {v3}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 53
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ys3;->c()J

    move-result-wide v13

    const-wide/16 v15, -0x1

    cmp-long v5, v13, v15

    if-eqz v5, :cond_f

    .line 54
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, "-byte"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :cond_f
    const-string v5, "unknown-length"

    .line 55
    :goto_8
    iget-object v15, v1, Lcom/shabakaty/downloader/kw1;->c:Lcom/shabakaty/downloader/kw1$b;

    const-string v16, "<-- "

    move-object/from16 v17, v7

    .line 56
    invoke-static/range {v16 .. v16}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v18, v13

    .line 57
    iget v13, v0, Lcom/shabakaty/downloader/ws3;->v:I

    .line 58
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    iget-object v13, v0, Lcom/shabakaty/downloader/ws3;->u:Ljava/lang/String;

    .line 60
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-nez v13, :cond_10

    const/4 v13, 0x1

    goto :goto_9

    :cond_10
    const/4 v13, 0x0

    :goto_9
    if-eqz v13, :cond_11

    move-object/from16 v20, v6

    move-object v6, v8

    goto :goto_a

    .line 61
    :cond_11
    iget-object v13, v0, Lcom/shabakaty/downloader/ws3;->u:Ljava/lang/String;

    .line 62
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x20

    move-object/from16 v20, v6

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_a
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    iget-object v6, v0, Lcom/shabakaty/downloader/ws3;->s:Lcom/shabakaty/downloader/vr3;

    .line 64
    iget-object v6, v6, Lcom/shabakaty/downloader/vr3;->b:Lcom/shabakaty/downloader/qw1;

    .line 65
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "ms"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_12

    const-string v6, ", "

    const-string v9, " body"

    invoke-static {v6, v5, v9}, Lcom/shabakaty/downloader/jp2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    :cond_12
    move-object v5, v8

    :goto_b
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 66
    invoke-interface {v15, v5}, Lcom/shabakaty/downloader/kw1$b;->a(Ljava/lang/String;)V

    if-eqz v2, :cond_1c

    .line 67
    iget-object v2, v0, Lcom/shabakaty/downloader/ws3;->x:Lcom/shabakaty/downloader/ts1;

    .line 68
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ts1;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v5, :cond_13

    .line 69
    invoke-virtual {v1, v2, v6}, Lcom/shabakaty/downloader/kw1;->b(Lcom/shabakaty/downloader/ts1;I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_13
    if-eqz v4, :cond_1b

    .line 70
    invoke-static {v0}, Lcom/shabakaty/downloader/jw1;->a(Lcom/shabakaty/downloader/ws3;)Z

    move-result v4

    if-nez v4, :cond_14

    goto/16 :goto_f

    .line 71
    :cond_14
    iget-object v4, v0, Lcom/shabakaty/downloader/ws3;->x:Lcom/shabakaty/downloader/ts1;

    .line 72
    invoke-virtual {v1, v4}, Lcom/shabakaty/downloader/kw1;->a(Lcom/shabakaty/downloader/ts1;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 73
    iget-object v2, v1, Lcom/shabakaty/downloader/kw1;->c:Lcom/shabakaty/downloader/kw1$b;

    const-string v3, "<-- END HTTP (encoded body omitted)"

    invoke-interface {v2, v3}, Lcom/shabakaty/downloader/kw1$b;->a(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 74
    :cond_15
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ys3;->f()Lcom/shabakaty/downloader/eo;

    move-result-object v4

    const-wide v5, 0x7fffffffffffffffL

    .line 75
    invoke-interface {v4, v5, v6}, Lcom/shabakaty/downloader/eo;->u(J)Z

    .line 76
    invoke-interface {v4}, Lcom/shabakaty/downloader/eo;->i()Lcom/shabakaty/downloader/zn;

    move-result-object v4

    const-string v5, "Content-Encoding"

    .line 77
    invoke-virtual {v2, v5}, Lcom/shabakaty/downloader/ts1;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "gzip"

    const/4 v6, 0x1

    invoke-static {v5, v2, v6}, Lcom/shabakaty/downloader/ne4;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_16

    .line 78
    iget-wide v6, v4, Lcom/shabakaty/downloader/zn;->s:J

    .line 79
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 80
    new-instance v6, Lcom/shabakaty/downloader/rr1;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/zn;->a()Lcom/shabakaty/downloader/zn;

    move-result-object v4

    invoke-direct {v6, v4}, Lcom/shabakaty/downloader/rr1;-><init>(Lcom/shabakaty/downloader/r94;)V

    .line 81
    :try_start_1
    new-instance v4, Lcom/shabakaty/downloader/zn;

    invoke-direct {v4}, Lcom/shabakaty/downloader/zn;-><init>()V

    .line 82
    invoke-virtual {v4, v6}, Lcom/shabakaty/downloader/zn;->s0(Lcom/shabakaty/downloader/r94;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    invoke-static {v6, v5}, Lcom/shabakaty/downloader/he0;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v5, v2

    goto :goto_d

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v6, v2}, Lcom/shabakaty/downloader/he0;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    .line 84
    :cond_16
    :goto_d
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ys3;->d()Lcom/shabakaty/downloader/fr2;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 85
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/fr2;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v2

    if-eqz v2, :cond_17

    goto :goto_e

    :cond_17
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v2, v10}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    :goto_e
    invoke-static {v4}, Lcom/shabakaty/downloader/c12;->a(Lcom/shabakaty/downloader/zn;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 87
    iget-object v2, v1, Lcom/shabakaty/downloader/kw1;->c:Lcom/shabakaty/downloader/kw1$b;

    invoke-interface {v2, v8}, Lcom/shabakaty/downloader/kw1$b;->a(Ljava/lang/String;)V

    .line 88
    iget-object v2, v1, Lcom/shabakaty/downloader/kw1;->c:Lcom/shabakaty/downloader/kw1$b;

    const-string v3, "<-- END HTTP (binary "

    invoke-static {v3}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 89
    iget-wide v4, v4, Lcom/shabakaty/downloader/zn;->s:J

    .line 90
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v4, v20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/shabakaty/downloader/kw1$b;->a(Ljava/lang/String;)V

    return-object v0

    :cond_18
    const-wide/16 v6, 0x0

    cmp-long v3, v18, v6

    if-eqz v3, :cond_19

    .line 91
    iget-object v3, v1, Lcom/shabakaty/downloader/kw1;->c:Lcom/shabakaty/downloader/kw1$b;

    invoke-interface {v3, v8}, Lcom/shabakaty/downloader/kw1$b;->a(Ljava/lang/String;)V

    .line 92
    iget-object v3, v1, Lcom/shabakaty/downloader/kw1;->c:Lcom/shabakaty/downloader/kw1$b;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/zn;->a()Lcom/shabakaty/downloader/zn;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/shabakaty/downloader/zn;->z0(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/shabakaty/downloader/kw1$b;->a(Ljava/lang/String;)V

    :cond_19
    const-string v2, "<-- END HTTP ("

    if-eqz v5, :cond_1a

    .line 93
    iget-object v3, v1, Lcom/shabakaty/downloader/kw1;->c:Lcom/shabakaty/downloader/kw1$b;

    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 94
    iget-wide v6, v4, Lcom/shabakaty/downloader/zn;->s:J

    .line 95
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "-byte, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "-gzipped-byte body)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/shabakaty/downloader/kw1$b;->a(Ljava/lang/String;)V

    goto :goto_10

    .line 96
    :cond_1a
    iget-object v3, v1, Lcom/shabakaty/downloader/kw1;->c:Lcom/shabakaty/downloader/kw1$b;

    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 97
    iget-wide v4, v4, Lcom/shabakaty/downloader/zn;->s:J

    .line 98
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v4, v17

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/shabakaty/downloader/kw1$b;->a(Ljava/lang/String;)V

    goto :goto_10

    .line 99
    :cond_1b
    :goto_f
    iget-object v2, v1, Lcom/shabakaty/downloader/kw1;->c:Lcom/shabakaty/downloader/kw1$b;

    const-string v3, "<-- END HTTP"

    invoke-interface {v2, v3}, Lcom/shabakaty/downloader/kw1$b;->a(Ljava/lang/String;)V

    :cond_1c
    :goto_10
    return-object v0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 100
    iget-object v0, v1, Lcom/shabakaty/downloader/kw1;->c:Lcom/shabakaty/downloader/kw1$b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<-- HTTP FAILED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/shabakaty/downloader/kw1$b;->a(Ljava/lang/String;)V

    .line 101
    throw v2
.end method
