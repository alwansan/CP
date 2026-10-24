.class public final Lcom/shabakaty/downloader/yv1;
.super Ljava/lang/Object;
.source "Http2Reader.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/yv1$a;,
        Lcom/shabakaty/downloader/yv1$b;
    }
.end annotation


# static fields
.field public static final v:Ljava/util/logging/Logger;

.field public static final w:Lcom/shabakaty/downloader/yv1;


# instance fields
.field public final r:Lcom/shabakaty/downloader/yv1$a;

.field public final s:Lcom/shabakaty/downloader/kv1$a;

.field public final t:Lcom/shabakaty/downloader/eo;

.field public final u:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/shabakaty/downloader/pv1;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Logger.getLogger(Http2::class.java.name)"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/yv1;->v:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/eo;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/yv1;->t:Lcom/shabakaty/downloader/eo;

    iput-boolean p2, p0, Lcom/shabakaty/downloader/yv1;->u:Z

    .line 2
    new-instance p2, Lcom/shabakaty/downloader/yv1$a;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/yv1$a;-><init>(Lcom/shabakaty/downloader/eo;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/yv1;->r:Lcom/shabakaty/downloader/yv1$a;

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/kv1$a;

    const/16 v0, 0x1000

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/shabakaty/downloader/kv1$a;-><init>(Lcom/shabakaty/downloader/r94;III)V

    iput-object p1, p0, Lcom/shabakaty/downloader/yv1;->s:Lcom/shabakaty/downloader/kv1$a;

    return-void
.end method

.method public static final a(III)I
    .locals 2

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    if-gt p2, p0, :cond_1

    sub-int/2addr p0, p2

    return p0

    .line 1
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "PROTOCOL_ERROR padding "

    const-string v1, " > remaining length "

    invoke-static {v0, p2, v1, p0}, Lcom/shabakaty/downloader/xr;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final b(ZLcom/shabakaty/downloader/yv1$b;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 1
    :try_start_0
    iget-object v3, v0, Lcom/shabakaty/downloader/yv1;->t:Lcom/shabakaty/downloader/eo;

    const-wide/16 v4, 0x9

    invoke-interface {v3, v4, v5}, Lcom/shabakaty/downloader/eo;->s1(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v3, v0, Lcom/shabakaty/downloader/yv1;->t:Lcom/shabakaty/downloader/eo;

    invoke-static {v3}, Lcom/shabakaty/downloader/ry4;->t(Lcom/shabakaty/downloader/eo;)I

    move-result v3

    const/16 v10, 0x4000

    if-gt v3, v10, :cond_30

    .line 3
    iget-object v4, v0, Lcom/shabakaty/downloader/yv1;->t:Lcom/shabakaty/downloader/eo;

    invoke-interface {v4}, Lcom/shabakaty/downloader/eo;->readByte()B

    move-result v4

    and-int/lit16 v11, v4, 0xff

    .line 4
    iget-object v4, v0, Lcom/shabakaty/downloader/yv1;->t:Lcom/shabakaty/downloader/eo;

    invoke-interface {v4}, Lcom/shabakaty/downloader/eo;->readByte()B

    move-result v4

    and-int/lit16 v12, v4, 0xff

    .line 5
    iget-object v4, v0, Lcom/shabakaty/downloader/yv1;->t:Lcom/shabakaty/downloader/eo;

    invoke-interface {v4}, Lcom/shabakaty/downloader/eo;->readInt()I

    move-result v4

    const v13, 0x7fffffff

    and-int v14, v4, v13

    .line 6
    sget-object v15, Lcom/shabakaty/downloader/yv1;->v:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v15, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/shabakaty/downloader/pv1;->e:Lcom/shabakaty/downloader/pv1;

    const/4 v5, 0x1

    move v6, v14

    move v7, v3

    move v8, v11

    move v9, v12

    invoke-virtual/range {v4 .. v9}, Lcom/shabakaty/downloader/pv1;->b(ZIIII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    const/4 v4, 0x4

    if-eqz p1, :cond_2

    if-ne v11, v4, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Expected a SETTINGS frame but was "

    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/shabakaty/downloader/pv1;->e:Lcom/shabakaty/downloader/pv1;

    invoke-virtual {v3, v11}, Lcom/shabakaty/downloader/pv1;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x5

    const/16 v7, 0x8

    const/4 v8, 0x1

    packed-switch v11, :pswitch_data_0

    .line 8
    iget-object v1, v0, Lcom/shabakaty/downloader/yv1;->t:Lcom/shabakaty/downloader/eo;

    int-to-long v2, v3

    invoke-interface {v1, v2, v3}, Lcom/shabakaty/downloader/eo;->skip(J)V

    goto/16 :goto_c

    :pswitch_0
    if-ne v3, v4, :cond_4

    .line 9
    iget-object v2, v0, Lcom/shabakaty/downloader/yv1;->t:Lcom/shabakaty/downloader/eo;

    invoke-interface {v2}, Lcom/shabakaty/downloader/eo;->readInt()I

    move-result v2

    const-wide/32 v3, 0x7fffffff

    sget-object v5, Lcom/shabakaty/downloader/ry4;->a:[B

    int-to-long v5, v2

    and-long v2, v5, v3

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    .line 10
    invoke-interface {v1, v14, v2, v3}, Lcom/shabakaty/downloader/yv1$b;->f(IJ)V

    goto/16 :goto_c

    .line 11
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "windowSizeIncrement was 0"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_WINDOW_UPDATE length !=4: "

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/bl3;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    if-lt v3, v7, :cond_b

    if-nez v14, :cond_a

    .line 13
    iget-object v2, v0, Lcom/shabakaty/downloader/yv1;->t:Lcom/shabakaty/downloader/eo;

    invoke-interface {v2}, Lcom/shabakaty/downloader/eo;->readInt()I

    move-result v2

    .line 14
    iget-object v4, v0, Lcom/shabakaty/downloader/yv1;->t:Lcom/shabakaty/downloader/eo;

    invoke-interface {v4}, Lcom/shabakaty/downloader/eo;->readInt()I

    move-result v4

    sub-int/2addr v3, v7

    .line 15
    invoke-static {}, Lcom/shabakaty/downloader/s41;->values()[Lcom/shabakaty/downloader/s41;

    move-result-object v6

    array-length v7, v6

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v7, :cond_7

    aget-object v10, v6, v9

    .line 16
    iget v11, v10, Lcom/shabakaty/downloader/s41;->r:I

    if-ne v11, v4, :cond_5

    const/4 v11, 0x1

    goto :goto_2

    :cond_5
    const/4 v11, 0x0

    :goto_2
    if-eqz v11, :cond_6

    move-object v5, v10

    goto :goto_3

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    if-eqz v5, :cond_9

    .line 17
    sget-object v4, Lcom/shabakaty/downloader/fp;->u:Lcom/shabakaty/downloader/fp;

    if-lez v3, :cond_8

    .line 18
    iget-object v4, v0, Lcom/shabakaty/downloader/yv1;->t:Lcom/shabakaty/downloader/eo;

    int-to-long v6, v3

    invoke-interface {v4, v6, v7}, Lcom/shabakaty/downloader/eo;->G(J)Lcom/shabakaty/downloader/fp;

    move-result-object v4

    .line 19
    :cond_8
    invoke-interface {v1, v2, v5, v4}, Lcom/shabakaty/downloader/yv1$b;->a(ILcom/shabakaty/downloader/s41;Lcom/shabakaty/downloader/fp;)V

    goto/16 :goto_c

    .line 20
    :cond_9
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_GOAWAY unexpected error code: "

    .line 21
    invoke-static {v2, v4}, Lcom/shabakaty/downloader/bl3;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_a
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_GOAWAY streamId != 0"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_b
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_GOAWAY length < 8: "

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/bl3;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2
    if-ne v3, v7, :cond_e

    if-nez v14, :cond_d

    .line 25
    iget-object v3, v0, Lcom/shabakaty/downloader/yv1;->t:Lcom/shabakaty/downloader/eo;

    invoke-interface {v3}, Lcom/shabakaty/downloader/eo;->readInt()I

    move-result v3

    .line 26
    iget-object v4, v0, Lcom/shabakaty/downloader/yv1;->t:Lcom/shabakaty/downloader/eo;

    invoke-interface {v4}, Lcom/shabakaty/downloader/eo;->readInt()I

    move-result v4

    and-int/lit8 v5, v12, 0x1

    if-eqz v5, :cond_c

    const/4 v2, 0x1

    .line 27
    :cond_c
    invoke-interface {v1, v2, v3, v4}, Lcom/shabakaty/downloader/yv1$b;->h(ZII)V

    goto/16 :goto_c

    .line 28
    :cond_d
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_PING streamId != 0"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_e
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_PING length != 8: "

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/bl3;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_3
    if-eqz v14, :cond_10

    and-int/lit8 v4, v12, 0x8

    if-eqz v4, :cond_f

    .line 30
    iget-object v2, v0, Lcom/shabakaty/downloader/yv1;->t:Lcom/shabakaty/downloader/eo;

    invoke-interface {v2}, Lcom/shabakaty/downloader/eo;->readByte()B

    move-result v2

    sget-object v4, Lcom/shabakaty/downloader/ry4;->a:[B

    and-int/lit16 v2, v2, 0xff

    .line 31
    :cond_f
    iget-object v4, v0, Lcom/shabakaty/downloader/yv1;->t:Lcom/shabakaty/downloader/eo;

    invoke-interface {v4}, Lcom/shabakaty/downloader/eo;->readInt()I

    move-result v4

    and-int/2addr v4, v13

    add-int/lit8 v3, v3, -0x4

    .line 32
    invoke-static {v3, v12, v2}, Lcom/shabakaty/downloader/yv1;->a(III)I

    move-result v3

    .line 33
    invoke-virtual {v0, v3, v2, v12, v14}, Lcom/shabakaty/downloader/yv1;->d(IIII)Ljava/util/List;

    move-result-object v2

    .line 34
    invoke-interface {v1, v14, v4, v2}, Lcom/shabakaty/downloader/yv1$b;->j(IILjava/util/List;)V

    goto/16 :goto_c

    .line 35
    :cond_10
    new-instance v1, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_4
    if-nez v14, :cond_1e

    and-int/lit8 v5, v12, 0x1

    if-eqz v5, :cond_12

    if-nez v3, :cond_11

    .line 36
    invoke-interface/range {p2 .. p2}, Lcom/shabakaty/downloader/yv1$b;->b()V

    goto/16 :goto_c

    .line 37
    :cond_11
    new-instance v1, Ljava/io/IOException;

    const-string v2, "FRAME_SIZE_ERROR ack frame should be empty!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_12
    rem-int/lit8 v5, v3, 0x6

    if-nez v5, :cond_1d

    .line 39
    new-instance v5, Lcom/shabakaty/downloader/q24;

    invoke-direct {v5}, Lcom/shabakaty/downloader/q24;-><init>()V

    .line 40
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/rm3;->z(II)Lcom/shabakaty/downloader/n22;

    move-result-object v3

    const/4 v7, 0x6

    invoke-static {v3, v7}, Lcom/shabakaty/downloader/rm3;->t(Lcom/shabakaty/downloader/l22;I)Lcom/shabakaty/downloader/l22;

    move-result-object v3

    .line 41
    iget v7, v3, Lcom/shabakaty/downloader/l22;->r:I

    .line 42
    iget v9, v3, Lcom/shabakaty/downloader/l22;->s:I

    .line 43
    iget v3, v3, Lcom/shabakaty/downloader/l22;->t:I

    if-ltz v3, :cond_13

    if-gt v7, v9, :cond_1c

    goto :goto_4

    :cond_13
    if-lt v7, v9, :cond_1c

    .line 44
    :goto_4
    iget-object v11, v0, Lcom/shabakaty/downloader/yv1;->t:Lcom/shabakaty/downloader/eo;

    invoke-interface {v11}, Lcom/shabakaty/downloader/eo;->readShort()S

    move-result v11

    const v12, 0xffff

    sget-object v13, Lcom/shabakaty/downloader/ry4;->a:[B

    and-int/2addr v11, v12

    .line 45
    iget-object v12, v0, Lcom/shabakaty/downloader/yv1;->t:Lcom/shabakaty/downloader/eo;

    invoke-interface {v12}, Lcom/shabakaty/downloader/eo;->readInt()I

    move-result v12

    const/4 v13, 0x2

    if-eq v11, v13, :cond_19

    const/4 v13, 0x3

    if-eq v11, v13, :cond_18

    if-eq v11, v4, :cond_16

    if-eq v11, v6, :cond_14

    goto :goto_5

    :cond_14
    if-lt v12, v10, :cond_15

    const v13, 0xffffff

    if-gt v12, v13, :cond_15

    goto :goto_5

    .line 46
    :cond_15
    new-instance v1, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: "

    invoke-static {v2, v12}, Lcom/shabakaty/downloader/bl3;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    const/4 v11, 0x7

    if-ltz v12, :cond_17

    goto :goto_5

    .line 47
    :cond_17
    new-instance v1, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    const/4 v11, 0x4

    goto :goto_5

    :cond_19
    if-eqz v12, :cond_1b

    if-ne v12, v8, :cond_1a

    goto :goto_5

    .line 48
    :cond_1a
    new-instance v1, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_1b
    :goto_5
    invoke-virtual {v5, v11, v12}, Lcom/shabakaty/downloader/q24;->c(II)Lcom/shabakaty/downloader/q24;

    if-eq v7, v9, :cond_1c

    add-int/2addr v7, v3

    goto :goto_4

    .line 50
    :cond_1c
    invoke-interface {v1, v2, v5}, Lcom/shabakaty/downloader/yv1$b;->c(ZLcom/shabakaty/downloader/q24;)V

    goto/16 :goto_c

    .line 51
    :cond_1d
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_SETTINGS length % 6 != 0: "

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/bl3;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_1e
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_SETTINGS streamId != 0"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_5
    if-ne v3, v4, :cond_24

    if-eqz v14, :cond_23

    .line 53
    iget-object v2, v0, Lcom/shabakaty/downloader/yv1;->t:Lcom/shabakaty/downloader/eo;

    invoke-interface {v2}, Lcom/shabakaty/downloader/eo;->readInt()I

    move-result v2

    .line 54
    invoke-static {}, Lcom/shabakaty/downloader/s41;->values()[Lcom/shabakaty/downloader/s41;

    move-result-object v3

    array-length v4, v3

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v4, :cond_21

    aget-object v7, v3, v6

    .line 55
    iget v9, v7, Lcom/shabakaty/downloader/s41;->r:I

    if-ne v9, v2, :cond_1f

    const/4 v9, 0x1

    goto :goto_7

    :cond_1f
    const/4 v9, 0x0

    :goto_7
    if-eqz v9, :cond_20

    move-object v5, v7

    goto :goto_8

    :cond_20
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_21
    :goto_8
    if-eqz v5, :cond_22

    .line 56
    invoke-interface {v1, v14, v5}, Lcom/shabakaty/downloader/yv1$b;->l(ILcom/shabakaty/downloader/s41;)V

    goto/16 :goto_c

    .line 57
    :cond_22
    new-instance v1, Ljava/io/IOException;

    const-string v3, "TYPE_RST_STREAM unexpected error code: "

    .line 58
    invoke-static {v3, v2}, Lcom/shabakaty/downloader/bl3;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_23
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_RST_STREAM streamId == 0"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_24
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_RST_STREAM length: "

    const-string v4, " != 4"

    invoke-static {v2, v3, v4}, Lcom/shabakaty/downloader/qj2;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_6
    if-ne v3, v6, :cond_26

    if-eqz v14, :cond_25

    .line 62
    invoke-virtual {v0, v1, v14}, Lcom/shabakaty/downloader/yv1;->e(Lcom/shabakaty/downloader/yv1$b;I)V

    goto/16 :goto_c

    .line 63
    :cond_25
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_PRIORITY streamId == 0"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_26
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_PRIORITY length: "

    const-string v4, " != 5"

    invoke-static {v2, v3, v4}, Lcom/shabakaty/downloader/qj2;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_7
    if-eqz v14, :cond_2a

    and-int/lit8 v4, v12, 0x1

    if-eqz v4, :cond_27

    const/4 v4, 0x1

    goto :goto_9

    :cond_27
    const/4 v4, 0x0

    :goto_9
    and-int/lit8 v5, v12, 0x8

    if-eqz v5, :cond_28

    .line 65
    iget-object v2, v0, Lcom/shabakaty/downloader/yv1;->t:Lcom/shabakaty/downloader/eo;

    invoke-interface {v2}, Lcom/shabakaty/downloader/eo;->readByte()B

    move-result v2

    sget-object v5, Lcom/shabakaty/downloader/ry4;->a:[B

    and-int/lit16 v2, v2, 0xff

    :cond_28
    and-int/lit8 v5, v12, 0x20

    if-eqz v5, :cond_29

    .line 66
    invoke-virtual {v0, v1, v14}, Lcom/shabakaty/downloader/yv1;->e(Lcom/shabakaty/downloader/yv1$b;I)V

    add-int/lit8 v3, v3, -0x5

    .line 67
    :cond_29
    invoke-static {v3, v12, v2}, Lcom/shabakaty/downloader/yv1;->a(III)I

    move-result v3

    .line 68
    invoke-virtual {v0, v3, v2, v12, v14}, Lcom/shabakaty/downloader/yv1;->d(IIII)Ljava/util/List;

    move-result-object v2

    const/4 v3, -0x1

    .line 69
    invoke-interface {v1, v4, v14, v3, v2}, Lcom/shabakaty/downloader/yv1$b;->e(ZIILjava/util/List;)V

    goto :goto_c

    .line 70
    :cond_2a
    new-instance v1, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_8
    if-eqz v14, :cond_2f

    and-int/lit8 v4, v12, 0x1

    if-eqz v4, :cond_2b

    const/4 v4, 0x1

    goto :goto_a

    :cond_2b
    const/4 v4, 0x0

    :goto_a
    and-int/lit8 v5, v12, 0x20

    if-eqz v5, :cond_2c

    const/4 v5, 0x1

    goto :goto_b

    :cond_2c
    const/4 v5, 0x0

    :goto_b
    if-nez v5, :cond_2e

    and-int/lit8 v5, v12, 0x8

    if-eqz v5, :cond_2d

    .line 71
    iget-object v2, v0, Lcom/shabakaty/downloader/yv1;->t:Lcom/shabakaty/downloader/eo;

    invoke-interface {v2}, Lcom/shabakaty/downloader/eo;->readByte()B

    move-result v2

    sget-object v5, Lcom/shabakaty/downloader/ry4;->a:[B

    and-int/lit16 v2, v2, 0xff

    .line 72
    :cond_2d
    invoke-static {v3, v12, v2}, Lcom/shabakaty/downloader/yv1;->a(III)I

    move-result v3

    .line 73
    iget-object v5, v0, Lcom/shabakaty/downloader/yv1;->t:Lcom/shabakaty/downloader/eo;

    invoke-interface {v1, v4, v14, v5, v3}, Lcom/shabakaty/downloader/yv1$b;->g(ZILcom/shabakaty/downloader/eo;I)V

    .line 74
    iget-object v1, v0, Lcom/shabakaty/downloader/yv1;->t:Lcom/shabakaty/downloader/eo;

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lcom/shabakaty/downloader/eo;->skip(J)V

    goto :goto_c

    .line 75
    :cond_2e
    new-instance v1, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_2f
    new-instance v1, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_c
    return v8

    .line 77
    :cond_30
    new-instance v1, Ljava/io/IOException;

    const-string v2, "FRAME_SIZE_ERROR: "

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/bl3;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
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

.method public final c(Lcom/shabakaty/downloader/yv1$b;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/yv1;->u:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, v1, p1}, Lcom/shabakaty/downloader/yv1;->b(ZLcom/shabakaty/downloader/yv1$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Required SETTINGS preface not received"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/yv1;->t:Lcom/shabakaty/downloader/eo;

    sget-object v0, Lcom/shabakaty/downloader/pv1;->a:Lcom/shabakaty/downloader/fp;

    .line 5
    iget-object v2, v0, Lcom/shabakaty/downloader/fp;->t:[B

    .line 6
    array-length v2, v2

    int-to-long v2, v2

    .line 7
    invoke-interface {p1, v2, v3}, Lcom/shabakaty/downloader/eo;->G(J)Lcom/shabakaty/downloader/fp;

    move-result-object p1

    .line 8
    sget-object v2, Lcom/shabakaty/downloader/yv1;->v:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "<< CONNECTION "

    invoke-static {v3}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/shabakaty/downloader/fp;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/ry4;->i(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 9
    :cond_2
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_3

    :goto_0
    return-void

    .line 10
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Expected a connection header but was "

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/fp;->H()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yv1;->t:Lcom/shabakaty/downloader/eo;

    invoke-interface {v0}, Lcom/shabakaty/downloader/r94;->close()V

    return-void
.end method

.method public final d(IIII)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ps1;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yv1;->r:Lcom/shabakaty/downloader/yv1$a;

    .line 2
    iput p1, v0, Lcom/shabakaty/downloader/yv1$a;->u:I

    .line 3
    iput p1, v0, Lcom/shabakaty/downloader/yv1$a;->r:I

    .line 4
    iput p2, v0, Lcom/shabakaty/downloader/yv1$a;->v:I

    .line 5
    iput p3, v0, Lcom/shabakaty/downloader/yv1$a;->s:I

    .line 6
    iput p4, v0, Lcom/shabakaty/downloader/yv1$a;->t:I

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/yv1;->s:Lcom/shabakaty/downloader/kv1$a;

    .line 8
    :cond_0
    :goto_0
    iget-object p2, p1, Lcom/shabakaty/downloader/kv1$a;->b:Lcom/shabakaty/downloader/eo;

    invoke-interface {p2}, Lcom/shabakaty/downloader/eo;->W()Z

    move-result p2

    if-nez p2, :cond_d

    .line 9
    iget-object p2, p1, Lcom/shabakaty/downloader/kv1$a;->b:Lcom/shabakaty/downloader/eo;

    invoke-interface {p2}, Lcom/shabakaty/downloader/eo;->readByte()B

    move-result p2

    sget-object p3, Lcom/shabakaty/downloader/ry4;->a:[B

    and-int/lit16 p2, p2, 0xff

    const/16 p3, 0x80

    if-eq p2, p3, :cond_c

    and-int/lit16 p4, p2, 0x80

    if-ne p4, p3, :cond_4

    const/16 p3, 0x7f

    .line 10
    invoke-virtual {p1, p2, p3}, Lcom/shabakaty/downloader/kv1$a;->g(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_1

    .line 11
    sget-object p3, Lcom/shabakaty/downloader/kv1;->c:Lcom/shabakaty/downloader/kv1;

    .line 12
    sget-object p3, Lcom/shabakaty/downloader/kv1;->a:[Lcom/shabakaty/downloader/ps1;

    .line 13
    array-length p3, p3

    add-int/lit8 p3, p3, -0x1

    if-gt p2, p3, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    if-eqz p3, :cond_2

    .line 14
    sget-object p3, Lcom/shabakaty/downloader/kv1;->c:Lcom/shabakaty/downloader/kv1;

    .line 15
    sget-object p3, Lcom/shabakaty/downloader/kv1;->a:[Lcom/shabakaty/downloader/ps1;

    .line 16
    aget-object p2, p3, p2

    .line 17
    iget-object p3, p1, Lcom/shabakaty/downloader/kv1$a;->a:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_2
    sget-object p3, Lcom/shabakaty/downloader/kv1;->c:Lcom/shabakaty/downloader/kv1;

    .line 19
    sget-object p3, Lcom/shabakaty/downloader/kv1;->a:[Lcom/shabakaty/downloader/ps1;

    .line 20
    array-length p3, p3

    sub-int p3, p2, p3

    invoke-virtual {p1, p3}, Lcom/shabakaty/downloader/kv1$a;->b(I)I

    move-result p3

    if-ltz p3, :cond_3

    .line 21
    iget-object p4, p1, Lcom/shabakaty/downloader/kv1$a;->c:[Lcom/shabakaty/downloader/ps1;

    array-length v0, p4

    if-ge p3, v0, :cond_3

    .line 22
    iget-object p2, p1, Lcom/shabakaty/downloader/kv1$a;->a:Ljava/util/List;

    aget-object p3, p4, p3

    invoke-static {p3}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 23
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p3, "Header index too large "

    invoke-static {p3}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 p3, -0x1

    const/16 p4, 0x40

    if-ne p2, p4, :cond_5

    .line 24
    sget-object p2, Lcom/shabakaty/downloader/kv1;->c:Lcom/shabakaty/downloader/kv1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/kv1$a;->f()Lcom/shabakaty/downloader/fp;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/shabakaty/downloader/kv1;->a(Lcom/shabakaty/downloader/fp;)Lcom/shabakaty/downloader/fp;

    .line 25
    invoke-virtual {p1}, Lcom/shabakaty/downloader/kv1$a;->f()Lcom/shabakaty/downloader/fp;

    move-result-object p2

    .line 26
    new-instance v0, Lcom/shabakaty/downloader/ps1;

    invoke-direct {v0, p4, p2}, Lcom/shabakaty/downloader/ps1;-><init>(Lcom/shabakaty/downloader/fp;Lcom/shabakaty/downloader/fp;)V

    invoke-virtual {p1, p3, v0}, Lcom/shabakaty/downloader/kv1$a;->e(ILcom/shabakaty/downloader/ps1;)V

    goto/16 :goto_0

    :cond_5
    and-int/lit8 v0, p2, 0x40

    if-ne v0, p4, :cond_6

    const/16 p4, 0x3f

    .line 27
    invoke-virtual {p1, p2, p4}, Lcom/shabakaty/downloader/kv1$a;->g(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    .line 28
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/kv1$a;->d(I)Lcom/shabakaty/downloader/fp;

    move-result-object p2

    .line 29
    invoke-virtual {p1}, Lcom/shabakaty/downloader/kv1$a;->f()Lcom/shabakaty/downloader/fp;

    move-result-object p4

    .line 30
    new-instance v0, Lcom/shabakaty/downloader/ps1;

    invoke-direct {v0, p2, p4}, Lcom/shabakaty/downloader/ps1;-><init>(Lcom/shabakaty/downloader/fp;Lcom/shabakaty/downloader/fp;)V

    invoke-virtual {p1, p3, v0}, Lcom/shabakaty/downloader/kv1$a;->e(ILcom/shabakaty/downloader/ps1;)V

    goto/16 :goto_0

    :cond_6
    and-int/lit8 p3, p2, 0x20

    const/16 p4, 0x20

    if-ne p3, p4, :cond_9

    const/16 p3, 0x1f

    .line 31
    invoke-virtual {p1, p2, p3}, Lcom/shabakaty/downloader/kv1$a;->g(II)I

    move-result p2

    iput p2, p1, Lcom/shabakaty/downloader/kv1$a;->h:I

    if-ltz p2, :cond_8

    .line 32
    iget p3, p1, Lcom/shabakaty/downloader/kv1$a;->g:I

    if-gt p2, p3, :cond_8

    .line 33
    iget p3, p1, Lcom/shabakaty/downloader/kv1$a;->f:I

    if-ge p2, p3, :cond_0

    if-nez p2, :cond_7

    .line 34
    invoke-virtual {p1}, Lcom/shabakaty/downloader/kv1$a;->a()V

    goto/16 :goto_0

    :cond_7
    sub-int/2addr p3, p2

    .line 35
    invoke-virtual {p1, p3}, Lcom/shabakaty/downloader/kv1$a;->c(I)I

    goto/16 :goto_0

    .line 36
    :cond_8
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Invalid dynamic table size update "

    invoke-static {p3}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget p1, p1, Lcom/shabakaty/downloader/kv1$a;->h:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_9
    const/16 p3, 0x10

    if-eq p2, p3, :cond_b

    if-nez p2, :cond_a

    goto :goto_2

    :cond_a
    const/16 p3, 0xf

    .line 37
    invoke-virtual {p1, p2, p3}, Lcom/shabakaty/downloader/kv1$a;->g(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    .line 38
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/kv1$a;->d(I)Lcom/shabakaty/downloader/fp;

    move-result-object p2

    .line 39
    invoke-virtual {p1}, Lcom/shabakaty/downloader/kv1$a;->f()Lcom/shabakaty/downloader/fp;

    move-result-object p3

    .line 40
    iget-object p4, p1, Lcom/shabakaty/downloader/kv1$a;->a:Ljava/util/List;

    new-instance v0, Lcom/shabakaty/downloader/ps1;

    invoke-direct {v0, p2, p3}, Lcom/shabakaty/downloader/ps1;-><init>(Lcom/shabakaty/downloader/fp;Lcom/shabakaty/downloader/fp;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 41
    :cond_b
    :goto_2
    sget-object p2, Lcom/shabakaty/downloader/kv1;->c:Lcom/shabakaty/downloader/kv1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/kv1$a;->f()Lcom/shabakaty/downloader/fp;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/shabakaty/downloader/kv1;->a(Lcom/shabakaty/downloader/fp;)Lcom/shabakaty/downloader/fp;

    .line 42
    invoke-virtual {p1}, Lcom/shabakaty/downloader/kv1$a;->f()Lcom/shabakaty/downloader/fp;

    move-result-object p2

    .line 43
    iget-object p4, p1, Lcom/shabakaty/downloader/kv1$a;->a:Ljava/util/List;

    new-instance v0, Lcom/shabakaty/downloader/ps1;

    invoke-direct {v0, p3, p2}, Lcom/shabakaty/downloader/ps1;-><init>(Lcom/shabakaty/downloader/fp;Lcom/shabakaty/downloader/fp;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 44
    :cond_c
    new-instance p1, Ljava/io/IOException;

    const-string p2, "index == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_d
    iget-object p1, p0, Lcom/shabakaty/downloader/yv1;->s:Lcom/shabakaty/downloader/kv1$a;

    .line 46
    iget-object p2, p1, Lcom/shabakaty/downloader/kv1$a;->a:Ljava/util/List;

    invoke-static {p2}, Lcom/shabakaty/downloader/m50;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    .line 47
    iget-object p1, p1, Lcom/shabakaty/downloader/kv1$a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-object p2
.end method

.method public final e(Lcom/shabakaty/downloader/yv1$b;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yv1;->t:Lcom/shabakaty/downloader/eo;

    invoke-interface {v0}, Lcom/shabakaty/downloader/eo;->readInt()I

    move-result v0

    const-wide v1, 0x80000000L

    long-to-int v2, v1

    and-int v1, v0, v2

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v3, 0x7fffffff

    and-int/2addr v0, v3

    .line 2
    iget-object v3, p0, Lcom/shabakaty/downloader/yv1;->t:Lcom/shabakaty/downloader/eo;

    invoke-interface {v3}, Lcom/shabakaty/downloader/eo;->readByte()B

    move-result v3

    sget-object v4, Lcom/shabakaty/downloader/ry4;->a:[B

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v3, v2

    .line 3
    invoke-interface {p1, p2, v0, v3, v1}, Lcom/shabakaty/downloader/yv1$b;->i(IIIZ)V

    return-void
.end method
