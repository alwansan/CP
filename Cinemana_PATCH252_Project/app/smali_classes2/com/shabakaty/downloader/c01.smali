.class public Lcom/shabakaty/downloader/c01;
.super Lcom/shabakaty/downloader/b01;
.source "Draft_6455.java"


# instance fields
.field public c:Lcom/shabakaty/downloader/yw1;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/yw1;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/shabakaty/downloader/hx1;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/hx1;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lcom/shabakaty/downloader/rl1;

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/nio/ByteBuffer;

.field public final j:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/lj3;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/lj3;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/shabakaty/downloader/c01;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/yw1;",
            ">;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/hx1;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/shabakaty/downloader/b01;-><init>()V

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/bo0;

    invoke-direct {v0}, Lcom/shabakaty/downloader/bo0;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/c01;->c:Lcom/shabakaty/downloader/yw1;

    .line 5
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/c01;->j:Ljava/util/Random;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/c01;->d:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/c01;->f:Ljava/util/List;

    const/4 v0, 0x0

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shabakaty/downloader/c01;->h:Ljava/util/List;

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/yw1;

    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/shabakaty/downloader/bo0;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/c01;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-nez v0, :cond_2

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/c01;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/downloader/c01;->c:Lcom/shabakaty/downloader/yw1;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/c01;->f:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/q30;Lcom/shabakaty/downloader/e14;)I
    .locals 5

    const-string v0, "Upgrade"

    .line 1
    invoke-interface {p2, v0}, Lcom/shabakaty/downloader/ls1;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "websocket"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "Connection"

    invoke-interface {p2, v0}, Lcom/shabakaty/downloader/ls1;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "upgrade"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x2

    if-nez v0, :cond_1

    return v2

    :cond_1
    const-string v0, "Sec-WebSocket-Key"

    .line 2
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ls1;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "Sec-WebSocket-Accept"

    invoke-interface {p2, v3}, Lcom/shabakaty/downloader/ls1;->g(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_3

    .line 3
    :cond_2
    invoke-interface {p2, v3}, Lcom/shabakaty/downloader/ls1;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ls1;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/c01;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    const-string p1, "Sec-WebSocket-Extensions"

    .line 7
    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/ls1;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/c01;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/yw1;

    .line 9
    invoke-interface {v3, p1}, Lcom/shabakaty/downloader/yw1;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 10
    iput-object v3, p0, Lcom/shabakaty/downloader/c01;->c:Lcom/shabakaty/downloader/yw1;

    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x2

    :goto_1
    const-string v0, "Sec-WebSocket-Protocol"

    .line 11
    invoke-interface {p2, v0}, Lcom/shabakaty/downloader/ls1;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 12
    iget-object v0, p0, Lcom/shabakaty/downloader/c01;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/hx1;

    .line 13
    invoke-interface {v3, p2}, Lcom/shabakaty/downloader/hx1;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 14
    iput-object v3, p0, Lcom/shabakaty/downloader/c01;->e:Lcom/shabakaty/downloader/hx1;

    const/4 p2, 0x1

    goto :goto_2

    :cond_7
    const/4 p2, 0x2

    :goto_2
    if-ne p2, v1, :cond_8

    if-ne p1, v1, :cond_8

    return v1

    :cond_8
    :goto_3
    return v2
.end method

.method public b(Lcom/shabakaty/downloader/q30;)I
    .locals 6

    const-string v0, "Sec-WebSocket-Version"

    .line 1
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ls1;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/16 v1, 0xd

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    const-string v0, "Sec-WebSocket-Extensions"

    .line 4
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ls1;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/c01;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/yw1;

    .line 6
    invoke-interface {v3, v0}, Lcom/shabakaty/downloader/yw1;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 7
    iput-object v3, p0, Lcom/shabakaty/downloader/c01;->c:Lcom/shabakaty/downloader/yw1;

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    :goto_1
    const-string v1, "Sec-WebSocket-Protocol"

    .line 8
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ls1;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/c01;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/hx1;

    .line 10
    invoke-interface {v3, p1}, Lcom/shabakaty/downloader/hx1;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 11
    iput-object v3, p0, Lcom/shabakaty/downloader/c01;->e:Lcom/shabakaty/downloader/hx1;

    const/4 p1, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x2

    :goto_2
    if-ne p1, v4, :cond_6

    if-ne v0, v4, :cond_6

    return v4

    :cond_6
    return v2
.end method

.method public d()Lcom/shabakaty/downloader/b01;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/c01;->d:Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/yw1;

    .line 4
    invoke-interface {v2}, Lcom/shabakaty/downloader/yw1;->a()Lcom/shabakaty/downloader/yw1;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/c01;->f:Ljava/util/List;

    .line 7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/hx1;

    .line 8
    invoke-interface {v3}, Lcom/shabakaty/downloader/hx1;->a()Lcom/shabakaty/downloader/hx1;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_1
    new-instance v2, Lcom/shabakaty/downloader/c01;

    invoke-direct {v2, v0, v1}, Lcom/shabakaty/downloader/c01;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v2
.end method

.method public e(Lcom/shabakaty/downloader/rl1;)Ljava/nio/ByteBuffer;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/c01;->c:Lcom/shabakaty/downloader/yw1;

    move-object/from16 v2, p1

    .line 2
    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/yw1;->b(Lcom/shabakaty/downloader/rl1;)V

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/x55;->F:Ljava/lang/Object;

    .line 4
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/rl1;->c()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 5
    iget v3, v0, Lcom/shabakaty/downloader/b01;->a:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 6
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    const/16 v7, 0x7d

    const/4 v8, 0x2

    if-gt v6, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    const v7, 0xffff

    if-gt v6, v7, :cond_2

    const/4 v6, 0x2

    goto :goto_1

    :cond_2
    const/16 v6, 0x8

    :goto_1
    if-le v6, v4, :cond_3

    add-int/lit8 v7, v6, 0x1

    goto :goto_2

    :cond_3
    move v7, v6

    :goto_2
    add-int/2addr v7, v4

    if-eqz v3, :cond_4

    const/4 v10, 0x4

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    :goto_3
    add-int/2addr v7, v10

    .line 7
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    add-int/2addr v10, v7

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 8
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/rl1;->a()Lcom/shabakaty/downloader/rl1$a;

    move-result-object v10

    .line 9
    sget-object v11, Lcom/shabakaty/downloader/rl1$a;->r:Lcom/shabakaty/downloader/rl1$a;

    if-ne v10, v11, :cond_5

    const/4 v10, 0x0

    goto :goto_4

    .line 10
    :cond_5
    sget-object v11, Lcom/shabakaty/downloader/rl1$a;->s:Lcom/shabakaty/downloader/rl1$a;

    if-ne v10, v11, :cond_6

    const/4 v10, 0x1

    goto :goto_4

    .line 11
    :cond_6
    sget-object v11, Lcom/shabakaty/downloader/rl1$a;->t:Lcom/shabakaty/downloader/rl1$a;

    if-ne v10, v11, :cond_7

    const/4 v10, 0x2

    goto :goto_4

    .line 12
    :cond_7
    sget-object v11, Lcom/shabakaty/downloader/rl1$a;->w:Lcom/shabakaty/downloader/rl1$a;

    if-ne v10, v11, :cond_8

    const/16 v10, 0x8

    goto :goto_4

    .line 13
    :cond_8
    sget-object v11, Lcom/shabakaty/downloader/rl1$a;->u:Lcom/shabakaty/downloader/rl1$a;

    if-ne v10, v11, :cond_9

    const/16 v10, 0x9

    goto :goto_4

    .line 14
    :cond_9
    sget-object v11, Lcom/shabakaty/downloader/rl1$a;->v:Lcom/shabakaty/downloader/rl1$a;

    if-ne v10, v11, :cond_14

    const/16 v10, 0xa

    .line 15
    :goto_4
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/rl1;->b()Z

    move-result v2

    const/16 v11, -0x80

    if-eqz v2, :cond_a

    const/16 v2, -0x80

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    :goto_5
    int-to-byte v2, v2

    or-int/2addr v2, v10

    int-to-byte v2, v2

    .line 16
    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 17
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v12, v2

    .line 18
    new-array v2, v6, [B

    mul-int/lit8 v10, v6, 0x8

    add-int/lit8 v10, v10, -0x8

    const/4 v14, 0x0

    :goto_6
    if-ge v14, v6, :cond_b

    mul-int/lit8 v15, v14, 0x8

    sub-int v15, v10, v15

    move/from16 p1, v10

    ushr-long v9, v12, v15

    long-to-int v10, v9

    int-to-byte v9, v10

    .line 19
    aput-byte v9, v2, v14

    add-int/lit8 v14, v14, 0x1

    move/from16 v10, p1

    goto :goto_6

    :cond_b
    if-ne v6, v4, :cond_d

    .line 20
    aget-byte v2, v2, v5

    if-eqz v3, :cond_c

    goto :goto_7

    :cond_c
    const/4 v11, 0x0

    :goto_7
    or-int/2addr v2, v11

    int-to-byte v2, v2

    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_a

    :cond_d
    if-ne v6, v8, :cond_f

    if-eqz v3, :cond_e

    goto :goto_8

    :cond_e
    const/4 v11, 0x0

    :goto_8
    or-int/lit8 v6, v11, 0x7e

    int-to-byte v6, v6

    .line 21
    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 22
    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_a

    :cond_f
    const/16 v8, 0x8

    if-ne v6, v8, :cond_13

    if-eqz v3, :cond_10

    goto :goto_9

    :cond_10
    const/4 v11, 0x0

    :goto_9
    or-int/lit8 v6, v11, 0x7f

    int-to-byte v6, v6

    .line 23
    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 24
    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_a
    if-eqz v3, :cond_11

    const/4 v2, 0x4

    .line 25
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 26
    iget-object v3, v0, Lcom/shabakaty/downloader/c01;->j:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 27
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 28
    :goto_b
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 29
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    rem-int/lit8 v6, v5, 0x4

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    xor-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/2addr v5, v4

    goto :goto_b

    .line 30
    :cond_11
    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 31
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 32
    :cond_12
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v7

    .line 33
    :cond_13
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Size representation not supported/specified"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 34
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Don\'t know how to handle "

    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 1
    const-class v2, Lcom/shabakaty/downloader/c01;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/c01;

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/c01;->c:Lcom/shabakaty/downloader/yw1;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/shabakaty/downloader/c01;->c:Lcom/shabakaty/downloader/yw1;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/shabakaty/downloader/c01;->c:Lcom/shabakaty/downloader/yw1;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 4
    :cond_3
    iget-object v2, p0, Lcom/shabakaty/downloader/c01;->e:Lcom/shabakaty/downloader/hx1;

    iget-object p1, p1, Lcom/shabakaty/downloader/c01;->e:Lcom/shabakaty/downloader/hx1;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public f(Ljava/lang/String;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/rl1;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/xl4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/xl4;-><init>()V

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/gz;->a:Ljava/nio/charset/CodingErrorAction;

    :try_start_0
    const-string v1, "UTF8"

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 5
    iput-object p1, v0, Lcom/shabakaty/downloader/sl1;->c:Ljava/nio/ByteBuffer;

    .line 6
    iput-boolean p2, v0, Lcom/shabakaty/downloader/sl1;->d:Z

    .line 7
    :try_start_1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xl4;->d()V
    :try_end_1
    .catch Lcom/shabakaty/downloader/l32; {:try_start_1 .. :try_end_1} :catch_0

    .line 8
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 9
    new-instance p2, Lcom/shabakaty/downloader/da2;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lcom/shabakaty/downloader/da2;-><init>(Ljava/lang/Throwable;I)V

    throw p2

    :catch_1
    move-exception p1

    .line 10
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public g(Ljava/nio/ByteBuffer;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/rl1;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/cm;

    invoke-direct {v0}, Lcom/shabakaty/downloader/cm;-><init>()V

    .line 2
    iput-object p1, v0, Lcom/shabakaty/downloader/sl1;->c:Ljava/nio/ByteBuffer;

    .line 3
    iput-boolean p2, v0, Lcom/shabakaty/downloader/sl1;->d:Z

    .line 4
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c01;->c:Lcom/shabakaty/downloader/yw1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/c01;->e:Lcom/shabakaty/downloader/hx1;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public i()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public j(Lcom/shabakaty/downloader/js1;)Lcom/shabakaty/downloader/js1;
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast v0, Ljava/util/TreeMap;

    const-string v1, "Upgrade"

    const-string v2, "websocket"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast v0, Ljava/util/TreeMap;

    const-string v2, "Connection"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/c01;->j:Ljava/util/Random;

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextBytes([B)V

    const/4 v2, 0x0

    .line 4
    :try_start_0
    invoke-static {v1, v2, v0, v2}, Lcom/shabakaty/downloader/vi;->b([BIII)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p1, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast v1, Ljava/util/TreeMap;

    const-string v2, "Sec-WebSocket-Key"

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p1, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast v0, Ljava/util/TreeMap;

    const-string v1, "Sec-WebSocket-Version"

    const-string v2, "13"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/c01;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ", "

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/yw1;

    .line 9
    invoke-interface {v2}, Lcom/shabakaty/downloader/yw1;->f()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Lcom/shabakaty/downloader/yw1;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_1
    invoke-interface {v2}, Lcom/shabakaty/downloader/yw1;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    iget-object v1, p1, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast v1, Ljava/util/TreeMap;

    const-string v2, "Sec-WebSocket-Extensions"

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    iget-object v1, p0, Lcom/shabakaty/downloader/c01;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/hx1;

    .line 18
    invoke-interface {v2}, Lcom/shabakaty/downloader/hx1;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 20
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    :cond_5
    invoke-interface {v2}, Lcom/shabakaty/downloader/hx1;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 22
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_7

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    iget-object v1, p1, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast v1, Ljava/util/TreeMap;

    const-string v2, "Sec-WebSocket-Protocol"

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-object p1
.end method

.method public k(Lcom/shabakaty/downloader/x55;Lcom/shabakaty/downloader/rl1;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/rl1$a;->t:Lcom/shabakaty/downloader/rl1$a;

    sget-object v1, Lcom/shabakaty/downloader/rl1$a;->s:Lcom/shabakaty/downloader/rl1$a;

    sget-object v2, Lcom/shabakaty/downloader/rl1$a;->r:Lcom/shabakaty/downloader/rl1$a;

    invoke-interface {p2}, Lcom/shabakaty/downloader/rl1;->a()Lcom/shabakaty/downloader/rl1$a;

    move-result-object v3

    .line 2
    sget-object v4, Lcom/shabakaty/downloader/rl1$a;->w:Lcom/shabakaty/downloader/rl1$a;

    if-ne v3, v4, :cond_2

    const/16 v0, 0x3ed

    .line 3
    instance-of v1, p2, Lcom/shabakaty/downloader/b40;

    if-eqz v1, :cond_0

    .line 4
    check-cast p2, Lcom/shabakaty/downloader/b40;

    .line 5
    iget v0, p2, Lcom/shabakaty/downloader/b40;->h:I

    .line 6
    iget-object p2, p2, Lcom/shabakaty/downloader/b40;->i:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 7
    :goto_0
    iget-object v1, p1, Lcom/shabakaty/downloader/x55;->u:Lcom/shabakaty/downloader/u55$a;

    .line 8
    sget-object v2, Lcom/shabakaty/downloader/u55$a;->u:Lcom/shabakaty/downloader/u55$a;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 9
    invoke-virtual {p1, v0, p2, v3}, Lcom/shabakaty/downloader/x55;->b(ILjava/lang/String;Z)V

    goto/16 :goto_5

    .line 10
    :cond_1
    invoke-virtual {p1, v0, p2, v3}, Lcom/shabakaty/downloader/x55;->a(ILjava/lang/String;Z)V

    goto/16 :goto_5

    .line 11
    :cond_2
    sget-object v4, Lcom/shabakaty/downloader/rl1$a;->u:Lcom/shabakaty/downloader/rl1$a;

    if-ne v3, v4, :cond_3

    .line 12
    iget-object v0, p1, Lcom/shabakaty/downloader/x55;->s:Lcom/shabakaty/downloader/v55;

    .line 13
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/v55;->onWebsocketPing(Lcom/shabakaty/downloader/u55;Lcom/shabakaty/downloader/rl1;)V

    goto/16 :goto_5

    .line 14
    :cond_3
    sget-object v4, Lcom/shabakaty/downloader/rl1$a;->v:Lcom/shabakaty/downloader/rl1$a;

    if-ne v3, v4, :cond_4

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/shabakaty/downloader/x55;->C:J

    .line 16
    iget-object v0, p1, Lcom/shabakaty/downloader/x55;->s:Lcom/shabakaty/downloader/v55;

    .line 17
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/v55;->onWebsocketPong(Lcom/shabakaty/downloader/u55;Lcom/shabakaty/downloader/rl1;)V

    goto/16 :goto_5

    .line 18
    :cond_4
    invoke-interface {p2}, Lcom/shabakaty/downloader/rl1;->b()Z

    move-result v4

    const/16 v5, 0x3ea

    if-eqz v4, :cond_9

    if-ne v3, v2, :cond_5

    goto :goto_1

    .line 19
    :cond_5
    iget-object v2, p0, Lcom/shabakaty/downloader/c01;->g:Lcom/shabakaty/downloader/rl1;

    if-nez v2, :cond_8

    if-ne v3, v1, :cond_6

    .line 20
    :try_start_0
    iget-object v0, p1, Lcom/shabakaty/downloader/x55;->s:Lcom/shabakaty/downloader/v55;

    .line 21
    invoke-interface {p2}, Lcom/shabakaty/downloader/rl1;->c()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {p2}, Lcom/shabakaty/downloader/gz;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/v55;->onWebsocketMessage(Lcom/shabakaty/downloader/u55;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception p2

    .line 22
    iget-object v0, p1, Lcom/shabakaty/downloader/x55;->s:Lcom/shabakaty/downloader/v55;

    .line 23
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/v55;->onWebsocketError(Lcom/shabakaty/downloader/u55;Ljava/lang/Exception;)V

    goto/16 :goto_5

    :cond_6
    if-ne v3, v0, :cond_7

    .line 24
    :try_start_1
    iget-object v0, p1, Lcom/shabakaty/downloader/x55;->s:Lcom/shabakaty/downloader/v55;

    .line 25
    invoke-interface {p2}, Lcom/shabakaty/downloader/rl1;->c()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/v55;->onWebsocketMessage(Lcom/shabakaty/downloader/u55;Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_5

    :catch_1
    move-exception p2

    .line 26
    iget-object v0, p1, Lcom/shabakaty/downloader/x55;->s:Lcom/shabakaty/downloader/v55;

    .line 27
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/v55;->onWebsocketError(Lcom/shabakaty/downloader/u55;Ljava/lang/Exception;)V

    goto/16 :goto_5

    .line 28
    :cond_7
    new-instance p1, Lcom/shabakaty/downloader/l32;

    const-string p2, "non control or continious frame expected"

    invoke-direct {p1, v5, p2}, Lcom/shabakaty/downloader/l32;-><init>(ILjava/lang/String;)V

    throw p1

    .line 29
    :cond_8
    new-instance p1, Lcom/shabakaty/downloader/l32;

    const-string p2, "Continuous frame sequence not completed."

    invoke-direct {p1, v5, p2}, Lcom/shabakaty/downloader/l32;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_9
    :goto_1
    if-eq v3, v2, :cond_b

    .line 30
    iget-object p1, p0, Lcom/shabakaty/downloader/c01;->g:Lcom/shabakaty/downloader/rl1;

    if-nez p1, :cond_a

    .line 31
    iput-object p2, p0, Lcom/shabakaty/downloader/c01;->g:Lcom/shabakaty/downloader/rl1;

    .line 32
    iget-object p1, p0, Lcom/shabakaty/downloader/c01;->h:Ljava/util/List;

    invoke-interface {p2}, Lcom/shabakaty/downloader/rl1;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 33
    :cond_a
    new-instance p1, Lcom/shabakaty/downloader/l32;

    const-string p2, "Previous continuous frame sequence not completed."

    invoke-direct {p1, v5, p2}, Lcom/shabakaty/downloader/l32;-><init>(ILjava/lang/String;)V

    throw p1

    .line 34
    :cond_b
    invoke-interface {p2}, Lcom/shabakaty/downloader/rl1;->b()Z

    move-result v4

    const-string v6, "Continuous frame sequence was not started."

    if-eqz v4, :cond_f

    .line 35
    iget-object v4, p0, Lcom/shabakaty/downloader/c01;->g:Lcom/shabakaty/downloader/rl1;

    if-eqz v4, :cond_e

    .line 36
    iget-object v4, p0, Lcom/shabakaty/downloader/c01;->h:Ljava/util/List;

    invoke-interface {p2}, Lcom/shabakaty/downloader/rl1;->c()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v4, p0, Lcom/shabakaty/downloader/c01;->g:Lcom/shabakaty/downloader/rl1;

    invoke-interface {v4}, Lcom/shabakaty/downloader/rl1;->a()Lcom/shabakaty/downloader/rl1$a;

    move-result-object v4

    if-ne v4, v1, :cond_c

    .line 38
    iget-object v0, p0, Lcom/shabakaty/downloader/c01;->g:Lcom/shabakaty/downloader/rl1;

    check-cast v0, Lcom/shabakaty/downloader/sl1;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/c01;->q()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/sl1;->e(Ljava/nio/ByteBuffer;)V

    .line 39
    iget-object v0, p0, Lcom/shabakaty/downloader/c01;->g:Lcom/shabakaty/downloader/rl1;

    check-cast v0, Lcom/shabakaty/downloader/sl1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/sl1;->d()V

    .line 40
    :try_start_2
    iget-object v0, p1, Lcom/shabakaty/downloader/x55;->s:Lcom/shabakaty/downloader/v55;

    .line 41
    iget-object v4, p0, Lcom/shabakaty/downloader/c01;->g:Lcom/shabakaty/downloader/rl1;

    invoke-interface {v4}, Lcom/shabakaty/downloader/rl1;->c()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v4}, Lcom/shabakaty/downloader/gz;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Lcom/shabakaty/downloader/v55;->onWebsocketMessage(Lcom/shabakaty/downloader/u55;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 42
    iget-object v4, p1, Lcom/shabakaty/downloader/x55;->s:Lcom/shabakaty/downloader/v55;

    .line 43
    invoke-virtual {v4, p1, v0}, Lcom/shabakaty/downloader/v55;->onWebsocketError(Lcom/shabakaty/downloader/u55;Ljava/lang/Exception;)V

    goto :goto_2

    .line 44
    :cond_c
    iget-object v4, p0, Lcom/shabakaty/downloader/c01;->g:Lcom/shabakaty/downloader/rl1;

    invoke-interface {v4}, Lcom/shabakaty/downloader/rl1;->a()Lcom/shabakaty/downloader/rl1$a;

    move-result-object v4

    if-ne v4, v0, :cond_d

    .line 45
    iget-object v0, p0, Lcom/shabakaty/downloader/c01;->g:Lcom/shabakaty/downloader/rl1;

    check-cast v0, Lcom/shabakaty/downloader/sl1;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/c01;->q()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/sl1;->e(Ljava/nio/ByteBuffer;)V

    .line 46
    iget-object v0, p0, Lcom/shabakaty/downloader/c01;->g:Lcom/shabakaty/downloader/rl1;

    check-cast v0, Lcom/shabakaty/downloader/sl1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/sl1;->d()V

    .line 47
    :try_start_3
    iget-object v0, p1, Lcom/shabakaty/downloader/x55;->s:Lcom/shabakaty/downloader/v55;

    .line 48
    iget-object v4, p0, Lcom/shabakaty/downloader/c01;->g:Lcom/shabakaty/downloader/rl1;

    invoke-interface {v4}, Lcom/shabakaty/downloader/rl1;->c()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Lcom/shabakaty/downloader/v55;->onWebsocketMessage(Lcom/shabakaty/downloader/u55;Ljava/nio/ByteBuffer;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    .line 49
    iget-object v4, p1, Lcom/shabakaty/downloader/x55;->s:Lcom/shabakaty/downloader/v55;

    .line 50
    invoke-virtual {v4, p1, v0}, Lcom/shabakaty/downloader/v55;->onWebsocketError(Lcom/shabakaty/downloader/u55;Ljava/lang/Exception;)V

    :cond_d
    :goto_2
    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/shabakaty/downloader/c01;->g:Lcom/shabakaty/downloader/rl1;

    .line 52
    iget-object p1, p0, Lcom/shabakaty/downloader/c01;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_3

    .line 53
    :cond_e
    new-instance p1, Lcom/shabakaty/downloader/l32;

    invoke-direct {p1, v5, v6}, Lcom/shabakaty/downloader/l32;-><init>(ILjava/lang/String;)V

    throw p1

    .line 54
    :cond_f
    iget-object p1, p0, Lcom/shabakaty/downloader/c01;->g:Lcom/shabakaty/downloader/rl1;

    if-eqz p1, :cond_13

    :goto_3
    if-ne v3, v1, :cond_11

    .line 55
    invoke-interface {p2}, Lcom/shabakaty/downloader/rl1;->c()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/gz;->a(Ljava/nio/ByteBuffer;)Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_4

    .line 56
    :cond_10
    new-instance p1, Lcom/shabakaty/downloader/l32;

    const/16 p2, 0x3ef

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/l32;-><init>(I)V

    throw p1

    :cond_11
    :goto_4
    if-ne v3, v2, :cond_12

    .line 57
    iget-object p1, p0, Lcom/shabakaty/downloader/c01;->g:Lcom/shabakaty/downloader/rl1;

    if-eqz p1, :cond_12

    .line 58
    iget-object p1, p0, Lcom/shabakaty/downloader/c01;->h:Ljava/util/List;

    invoke-interface {p2}, Lcom/shabakaty/downloader/rl1;->c()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    :goto_5
    return-void

    .line 59
    :cond_13
    new-instance p1, Lcom/shabakaty/downloader/l32;

    invoke-direct {p1, v5, v6}, Lcom/shabakaty/downloader/l32;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public m()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/shabakaty/downloader/c01;->i:Ljava/nio/ByteBuffer;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/c01;->c:Lcom/shabakaty/downloader/yw1;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Lcom/shabakaty/downloader/yw1;->reset()V

    .line 4
    :cond_0
    new-instance v1, Lcom/shabakaty/downloader/bo0;

    invoke-direct {v1}, Lcom/shabakaty/downloader/bo0;-><init>()V

    iput-object v1, p0, Lcom/shabakaty/downloader/c01;->c:Lcom/shabakaty/downloader/yw1;

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/c01;->e:Lcom/shabakaty/downloader/hx1;

    return-void
.end method

.method public n(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/rl1;",
            ">;"
        }
    .end annotation

    .line 1
    :goto_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/c01;->i:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/c01;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/c01;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/c01;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v1, v3, v4, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 10
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 11
    iget-object v1, p0, Lcom/shabakaty/downloader/c01;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/c01;->r(Ljava/nio/ByteBuffer;)Lcom/shabakaty/downloader/rl1;

    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Lcom/shabakaty/downloader/c01;->i:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Lcom/shabakaty/downloader/i02; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 14
    iget v0, v0, Lcom/shabakaty/downloader/i02;->r:I

    .line 15
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/b01;->c(I)I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/shabakaty/downloader/c01;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 17
    iget-object v1, p0, Lcom/shabakaty/downloader/c01;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 18
    iput-object v0, p0, Lcom/shabakaty/downloader/c01;->i:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 19
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 20
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 21
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/c01;->r(Ljava/nio/ByteBuffer;)Lcom/shabakaty/downloader/rl1;

    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/shabakaty/downloader/i02; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 23
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 24
    iget v1, v1, Lcom/shabakaty/downloader/i02;->r:I

    .line 25
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/b01;->c(I)I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/c01;->i:Ljava/nio/ByteBuffer;

    .line 26
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_2
    return-object v0
.end method

.method public final p(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    const-string v0, "SHA1"

    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 5
    :try_start_1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lcom/shabakaty/downloader/vi;->b([BIII)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1

    :catch_1
    move-exception p1

    .line 6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final q()Ljava/nio/ByteBuffer;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c01;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    const-wide/32 v3, 0x7fffffff

    cmp-long v0, v1, v3

    if-gtz v0, :cond_2

    long-to-int v0, v1

    .line 3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/c01;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0

    .line 7
    :cond_2
    new-instance v0, Lcom/shabakaty/downloader/vh2;

    const-string v1, "Payloadsize is to big..."

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/vh2;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public r(Ljava/nio/ByteBuffer;)Lcom/shabakaty/downloader/rl1;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-object v2, Lcom/shabakaty/downloader/rl1$a;->v:Lcom/shabakaty/downloader/rl1$a;

    sget-object v3, Lcom/shabakaty/downloader/rl1$a;->u:Lcom/shabakaty/downloader/rl1$a;

    sget-object v4, Lcom/shabakaty/downloader/rl1$a;->w:Lcom/shabakaty/downloader/rl1$a;

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_1a

    .line 2
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    shr-int/lit8 v8, v7, 0x8

    const/4 v9, 0x1

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    and-int/lit8 v10, v7, 0x40

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    and-int/lit8 v11, v7, 0x20

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    :goto_2
    and-int/lit8 v12, v7, 0x10

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    .line 3
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit8 v14, v13, -0x80

    if-eqz v14, :cond_4

    const/4 v14, 0x1

    goto :goto_4

    :cond_4
    const/4 v14, 0x0

    :goto_4
    and-int/lit8 v13, v13, 0x7f

    int-to-byte v13, v13

    and-int/lit8 v7, v7, 0xf

    int-to-byte v7, v7

    if-eqz v7, :cond_7

    if-eq v7, v9, :cond_6

    if-eq v7, v6, :cond_5

    packed-switch v7, :pswitch_data_0

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/m32;

    const-string v2, "Unknown opcode "

    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-short v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/m32;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    move-object v6, v2

    goto :goto_5

    :pswitch_1
    move-object v6, v3

    goto :goto_5

    :pswitch_2
    move-object v6, v4

    goto :goto_5

    .line 5
    :cond_5
    sget-object v6, Lcom/shabakaty/downloader/rl1$a;->t:Lcom/shabakaty/downloader/rl1$a;

    goto :goto_5

    .line 6
    :cond_6
    sget-object v6, Lcom/shabakaty/downloader/rl1$a;->s:Lcom/shabakaty/downloader/rl1$a;

    goto :goto_5

    .line 7
    :cond_7
    sget-object v6, Lcom/shabakaty/downloader/rl1$a;->r:Lcom/shabakaty/downloader/rl1$a;

    :goto_5
    const/4 v7, 0x3

    const/4 v9, 0x4

    if-ltz v13, :cond_9

    const/16 v15, 0x7d

    if-le v13, v15, :cond_8

    goto :goto_6

    :cond_8
    const/4 v2, 0x2

    goto :goto_8

    :cond_9
    :goto_6
    if-eq v6, v3, :cond_19

    if-eq v6, v2, :cond_19

    if-eq v6, v4, :cond_19

    const/16 v2, 0x7e

    if-ne v13, v2, :cond_b

    if-lt v5, v9, :cond_a

    new-array v2, v7, [B

    .line 8
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    .line 9
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    const/4 v4, 0x2

    aput-byte v3, v2, v4

    .line 10
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v13

    const/4 v2, 0x4

    goto :goto_8

    .line 11
    :cond_a
    new-instance v1, Lcom/shabakaty/downloader/i02;

    invoke-direct {v1, v9}, Lcom/shabakaty/downloader/i02;-><init>(I)V

    throw v1

    :cond_b
    const/16 v2, 0xa

    if-lt v5, v2, :cond_18

    const/16 v3, 0x8

    new-array v4, v3, [B

    const/4 v13, 0x0

    :goto_7
    if-ge v13, v3, :cond_c

    .line 12
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v15

    aput-byte v15, v4, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 13
    :cond_c
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    const-wide/32 v15, 0x7fffffff

    cmp-long v13, v3, v15

    if-gtz v13, :cond_17

    long-to-int v13, v3

    :goto_8
    if-eqz v14, :cond_d

    const/4 v3, 0x4

    goto :goto_9

    :cond_d
    const/4 v3, 0x0

    :goto_9
    add-int/2addr v2, v3

    add-int/2addr v2, v13

    if-lt v5, v2, :cond_16

    .line 14
    invoke-virtual {v0, v13}, Lcom/shabakaty/downloader/b01;->c(I)I

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v14, :cond_e

    new-array v3, v9, [B

    .line 15
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v13, :cond_f

    .line 16
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    rem-int/lit8 v14, v4, 0x4

    aget-byte v14, v3, v14

    xor-int/2addr v5, v14

    int-to-byte v5, v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 17
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 18
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 19
    :cond_f
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_15

    const/4 v3, 0x1

    if-eq v1, v3, :cond_14

    const/4 v3, 0x2

    if-eq v1, v3, :cond_13

    if-eq v1, v7, :cond_12

    if-eq v1, v9, :cond_11

    const/4 v3, 0x5

    if-ne v1, v3, :cond_10

    .line 20
    new-instance v1, Lcom/shabakaty/downloader/b40;

    invoke-direct {v1}, Lcom/shabakaty/downloader/b40;-><init>()V

    goto :goto_b

    .line 21
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Supplied opcode is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_11
    new-instance v1, Lcom/shabakaty/downloader/yd3;

    invoke-direct {v1}, Lcom/shabakaty/downloader/yd3;-><init>()V

    goto :goto_b

    .line 23
    :cond_12
    new-instance v1, Lcom/shabakaty/downloader/jc3;

    invoke-direct {v1}, Lcom/shabakaty/downloader/jc3;-><init>()V

    goto :goto_b

    .line 24
    :cond_13
    new-instance v1, Lcom/shabakaty/downloader/cm;

    invoke-direct {v1}, Lcom/shabakaty/downloader/cm;-><init>()V

    goto :goto_b

    .line 25
    :cond_14
    new-instance v1, Lcom/shabakaty/downloader/xl4;

    invoke-direct {v1}, Lcom/shabakaty/downloader/xl4;-><init>()V

    goto :goto_b

    .line 26
    :cond_15
    new-instance v1, Lcom/shabakaty/downloader/zd0;

    invoke-direct {v1}, Lcom/shabakaty/downloader/zd0;-><init>()V

    .line 27
    :goto_b
    iput-boolean v8, v1, Lcom/shabakaty/downloader/sl1;->a:Z

    .line 28
    iput-boolean v10, v1, Lcom/shabakaty/downloader/sl1;->e:Z

    .line 29
    iput-boolean v11, v1, Lcom/shabakaty/downloader/sl1;->f:Z

    .line 30
    iput-boolean v12, v1, Lcom/shabakaty/downloader/sl1;->g:Z

    .line 31
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 32
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/sl1;->e(Ljava/nio/ByteBuffer;)V

    .line 33
    iget-object v2, v0, Lcom/shabakaty/downloader/c01;->c:Lcom/shabakaty/downloader/yw1;

    .line 34
    invoke-interface {v2, v1}, Lcom/shabakaty/downloader/yw1;->e(Lcom/shabakaty/downloader/rl1;)V

    .line 35
    iget-object v2, v0, Lcom/shabakaty/downloader/c01;->c:Lcom/shabakaty/downloader/yw1;

    .line 36
    invoke-interface {v2, v1}, Lcom/shabakaty/downloader/yw1;->g(Lcom/shabakaty/downloader/rl1;)V

    .line 37
    sget-object v2, Lcom/shabakaty/downloader/x55;->F:Ljava/lang/Object;

    .line 38
    invoke-virtual {v1}, Lcom/shabakaty/downloader/sl1;->d()V

    return-object v1

    .line 39
    :cond_16
    new-instance v1, Lcom/shabakaty/downloader/i02;

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/i02;-><init>(I)V

    throw v1

    .line 40
    :cond_17
    new-instance v1, Lcom/shabakaty/downloader/vh2;

    const-string v2, "Payloadsize is to big..."

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/vh2;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_18
    new-instance v1, Lcom/shabakaty/downloader/i02;

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/i02;-><init>(I)V

    throw v1

    .line 42
    :cond_19
    new-instance v1, Lcom/shabakaty/downloader/m32;

    const-string v2, "more than 125 octets"

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/m32;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_1a
    new-instance v1, Lcom/shabakaty/downloader/i02;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/i02;-><init>(I)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/b01;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/c01;->c:Lcom/shabakaty/downloader/yw1;

    if-eqz v1, :cond_0

    const-string v1, " extension: "

    .line 3
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/vf3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/c01;->c:Lcom/shabakaty/downloader/yw1;

    .line 5
    invoke-interface {v1}, Lcom/shabakaty/downloader/yw1;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/c01;->e:Lcom/shabakaty/downloader/hx1;

    if-eqz v1, :cond_1

    const-string v1, " protocol: "

    .line 7
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/vf3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/c01;->e:Lcom/shabakaty/downloader/hx1;

    .line 9
    invoke-interface {v1}, Lcom/shabakaty/downloader/hx1;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method
