.class public final Lcom/shabakaty/downloader/ti3;
.super Lcom/shabakaty/downloader/pp1$d;
.source "ProtoBuf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ti3$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/pp1$d<",
        "Lcom/shabakaty/downloader/ti3;",
        ">;"
    }
.end annotation


# static fields
.field public static final B:Lcom/shabakaty/downloader/ti3;

.field public static C:Lcom/shabakaty/downloader/na3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/na3<",
            "Lcom/shabakaty/downloader/ti3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:I

.field public final s:Lcom/shabakaty/downloader/ep;

.field public t:I

.field public u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/qi3;",
            ">;"
        }
    .end annotation
.end field

.field public v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/vi3;",
            ">;"
        }
    .end annotation
.end field

.field public w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/zi3;",
            ">;"
        }
    .end annotation
.end field

.field public x:Lcom/shabakaty/downloader/bj3;

.field public y:Lcom/shabakaty/downloader/ej3;

.field public z:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ti3$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ti3$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ti3;->C:Lcom/shabakaty/downloader/na3;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ti3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ti3;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ti3;->B:Lcom/shabakaty/downloader/ti3;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ti3;->q()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1$d;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/shabakaty/downloader/ti3;->z:B

    .line 8
    iput v0, p0, Lcom/shabakaty/downloader/ti3;->A:I

    .line 9
    sget-object v0, Lcom/shabakaty/downloader/ep;->r:Lcom/shabakaty/downloader/ep;

    iput-object v0, p0, Lcom/shabakaty/downloader/ti3;->s:Lcom/shabakaty/downloader/ep;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/pp1$c;Lcom/shabakaty/downloader/md0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/pp1$d;-><init>(Lcom/shabakaty/downloader/pp1$c;)V

    const/4 p2, -0x1

    .line 2
    iput-byte p2, p0, Lcom/shabakaty/downloader/ti3;->z:B

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/ti3;->A:I

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/ti3;->s:Lcom/shabakaty/downloader/ep;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;Lcom/shabakaty/downloader/md0;)V
    .locals 9

    .line 10
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1$d;-><init>()V

    const/4 p3, -0x1

    .line 11
    iput-byte p3, p0, Lcom/shabakaty/downloader/ti3;->z:B

    .line 12
    iput p3, p0, Lcom/shabakaty/downloader/ti3;->A:I

    .line 13
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ti3;->q()V

    .line 14
    invoke-static {}, Lcom/shabakaty/downloader/ep;->u()Lcom/shabakaty/downloader/ep$b;

    move-result-object p3

    const/4 v0, 0x1

    .line 15
    invoke-static {p3, v0}, Lcom/shabakaty/downloader/w40;->k(Ljava/io/OutputStream;I)Lcom/shabakaty/downloader/w40;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    const/4 v4, 0x4

    const/4 v5, 0x2

    if-nez v2, :cond_11

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->o()I

    move-result v6

    if-eqz v6, :cond_d

    const/16 v7, 0x1a

    if-eq v6, v7, :cond_b

    const/16 v7, 0x22

    if-eq v6, v7, :cond_9

    const/16 v7, 0x2a

    if-eq v6, v7, :cond_7

    const/16 v7, 0xf2

    const/4 v8, 0x0

    if-eq v6, v7, :cond_4

    const/16 v7, 0x102

    if-eq v6, v7, :cond_1

    .line 17
    invoke-virtual {p0, p1, v1, p2, v6}, Lcom/shabakaty/downloader/pp1$d;->o(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/w40;Lcom/shabakaty/downloader/t81;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 18
    :cond_1
    iget v6, p0, Lcom/shabakaty/downloader/ti3;->t:I

    and-int/2addr v6, v5

    if-ne v6, v5, :cond_2

    .line 19
    iget-object v6, p0, Lcom/shabakaty/downloader/ti3;->y:Lcom/shabakaty/downloader/ej3;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {v6}, Lcom/shabakaty/downloader/ej3;->i(Lcom/shabakaty/downloader/ej3;)Lcom/shabakaty/downloader/ej3$b;

    move-result-object v8

    .line 21
    :cond_2
    sget-object v6, Lcom/shabakaty/downloader/ej3;->w:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v6, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/ej3;

    iput-object v6, p0, Lcom/shabakaty/downloader/ti3;->y:Lcom/shabakaty/downloader/ej3;

    if-eqz v8, :cond_3

    .line 22
    invoke-virtual {v8, v6}, Lcom/shabakaty/downloader/ej3$b;->n(Lcom/shabakaty/downloader/ej3;)Lcom/shabakaty/downloader/ej3$b;

    .line 23
    invoke-virtual {v8}, Lcom/shabakaty/downloader/ej3$b;->l()Lcom/shabakaty/downloader/ej3;

    move-result-object v6

    iput-object v6, p0, Lcom/shabakaty/downloader/ti3;->y:Lcom/shabakaty/downloader/ej3;

    .line 24
    :cond_3
    iget v6, p0, Lcom/shabakaty/downloader/ti3;->t:I

    or-int/2addr v6, v5

    iput v6, p0, Lcom/shabakaty/downloader/ti3;->t:I

    goto :goto_0

    .line 25
    :cond_4
    iget v6, p0, Lcom/shabakaty/downloader/ti3;->t:I

    and-int/2addr v6, v0

    if-ne v6, v0, :cond_5

    .line 26
    iget-object v6, p0, Lcom/shabakaty/downloader/ti3;->x:Lcom/shabakaty/downloader/bj3;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {v6}, Lcom/shabakaty/downloader/bj3;->i(Lcom/shabakaty/downloader/bj3;)Lcom/shabakaty/downloader/bj3$b;

    move-result-object v8

    .line 28
    :cond_5
    sget-object v6, Lcom/shabakaty/downloader/bj3;->y:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v6, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/bj3;

    iput-object v6, p0, Lcom/shabakaty/downloader/ti3;->x:Lcom/shabakaty/downloader/bj3;

    if-eqz v8, :cond_6

    .line 29
    invoke-virtual {v8, v6}, Lcom/shabakaty/downloader/bj3$b;->n(Lcom/shabakaty/downloader/bj3;)Lcom/shabakaty/downloader/bj3$b;

    .line 30
    invoke-virtual {v8}, Lcom/shabakaty/downloader/bj3$b;->l()Lcom/shabakaty/downloader/bj3;

    move-result-object v6

    iput-object v6, p0, Lcom/shabakaty/downloader/ti3;->x:Lcom/shabakaty/downloader/bj3;

    .line 31
    :cond_6
    iget v6, p0, Lcom/shabakaty/downloader/ti3;->t:I

    or-int/2addr v6, v0

    iput v6, p0, Lcom/shabakaty/downloader/ti3;->t:I

    goto :goto_0

    :cond_7
    and-int/lit8 v6, v3, 0x4

    if-eq v6, v4, :cond_8

    .line 32
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/shabakaty/downloader/ti3;->w:Ljava/util/List;

    or-int/lit8 v3, v3, 0x4

    .line 33
    :cond_8
    iget-object v6, p0, Lcom/shabakaty/downloader/ti3;->w:Ljava/util/List;

    sget-object v7, Lcom/shabakaty/downloader/zi3;->G:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v7, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    and-int/lit8 v6, v3, 0x2

    if-eq v6, v5, :cond_a

    .line 34
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/shabakaty/downloader/ti3;->v:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    .line 35
    :cond_a
    iget-object v6, p0, Lcom/shabakaty/downloader/ti3;->v:Ljava/util/List;

    sget-object v7, Lcom/shabakaty/downloader/vi3;->J:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v7, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    and-int/lit8 v6, v3, 0x1

    if-eq v6, v0, :cond_c

    .line 36
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/shabakaty/downloader/ti3;->u:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    .line 37
    :cond_c
    iget-object v6, p0, Lcom/shabakaty/downloader/ti3;->u:Ljava/util/List;

    sget-object v7, Lcom/shabakaty/downloader/qi3;->J:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v7, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/shabakaty/downloader/s32; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_d
    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 38
    :try_start_1
    new-instance p2, Lcom/shabakaty/downloader/s32;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/s32;-><init>(Ljava/lang/String;)V

    .line 39
    iput-object p0, p2, Lcom/shabakaty/downloader/s32;->r:Lcom/shabakaty/downloader/es2;

    .line 40
    throw p2

    :catch_1
    move-exception p1

    .line 41
    iput-object p0, p1, Lcom/shabakaty/downloader/s32;->r:Lcom/shabakaty/downloader/es2;

    .line 42
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v3, 0x1

    if-ne p2, v0, :cond_e

    .line 43
    iget-object p2, p0, Lcom/shabakaty/downloader/ti3;->u:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/ti3;->u:Ljava/util/List;

    :cond_e
    and-int/lit8 p2, v3, 0x2

    if-ne p2, v5, :cond_f

    .line 44
    iget-object p2, p0, Lcom/shabakaty/downloader/ti3;->v:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/ti3;->v:Ljava/util/List;

    :cond_f
    and-int/lit8 p2, v3, 0x4

    if-ne p2, v4, :cond_10

    .line 45
    iget-object p2, p0, Lcom/shabakaty/downloader/ti3;->w:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/ti3;->w:Ljava/util/List;

    .line 46
    :cond_10
    :try_start_2
    invoke-virtual {v1}, Lcom/shabakaty/downloader/w40;->j()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 47
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/ti3;->s:Lcom/shabakaty/downloader/ep;

    throw p1

    :catch_2
    :goto_3
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/ti3;->s:Lcom/shabakaty/downloader/ep;

    .line 48
    iget-object p2, p0, Lcom/shabakaty/downloader/pp1$d;->r:Lcom/shabakaty/downloader/ua1;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ua1;->i()V

    .line 49
    throw p1

    :cond_11
    and-int/lit8 p1, v3, 0x1

    if-ne p1, v0, :cond_12

    .line 50
    iget-object p1, p0, Lcom/shabakaty/downloader/ti3;->u:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ti3;->u:Ljava/util/List;

    :cond_12
    and-int/lit8 p1, v3, 0x2

    if-ne p1, v5, :cond_13

    .line 51
    iget-object p1, p0, Lcom/shabakaty/downloader/ti3;->v:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ti3;->v:Ljava/util/List;

    :cond_13
    and-int/lit8 p1, v3, 0x4

    if-ne p1, v4, :cond_14

    .line 52
    iget-object p1, p0, Lcom/shabakaty/downloader/ti3;->w:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ti3;->w:Ljava/util/List;

    .line 53
    :cond_14
    :try_start_3
    invoke-virtual {v1}, Lcom/shabakaty/downloader/w40;->j()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    .line 54
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/ti3;->s:Lcom/shabakaty/downloader/ep;

    throw p1

    :catch_3
    :goto_4
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ti3;->s:Lcom/shabakaty/downloader/ep;

    .line 55
    iget-object p1, p0, Lcom/shabakaty/downloader/pp1$d;->r:Lcom/shabakaty/downloader/ua1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ua1;->i()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .line 1
    iget-byte v0, p0, Lcom/shabakaty/downloader/ti3;->z:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/shabakaty/downloader/ti3;->u:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 3
    iget-object v3, p0, Lcom/shabakaty/downloader/ti3;->u:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/qi3;

    .line 4
    invoke-virtual {v3}, Lcom/shabakaty/downloader/qi3;->a()Z

    move-result v3

    if-nez v3, :cond_2

    .line 5
    iput-byte v2, p0, Lcom/shabakaty/downloader/ti3;->z:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 6
    :goto_1
    iget-object v3, p0, Lcom/shabakaty/downloader/ti3;->v:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 7
    iget-object v3, p0, Lcom/shabakaty/downloader/ti3;->v:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/vi3;

    .line 8
    invoke-virtual {v3}, Lcom/shabakaty/downloader/vi3;->a()Z

    move-result v3

    if-nez v3, :cond_4

    .line 9
    iput-byte v2, p0, Lcom/shabakaty/downloader/ti3;->z:B

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 10
    :goto_2
    iget-object v3, p0, Lcom/shabakaty/downloader/ti3;->w:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 11
    iget-object v3, p0, Lcom/shabakaty/downloader/ti3;->w:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/zi3;

    .line 12
    invoke-virtual {v3}, Lcom/shabakaty/downloader/zi3;->a()Z

    move-result v3

    if-nez v3, :cond_6

    .line 13
    iput-byte v2, p0, Lcom/shabakaty/downloader/ti3;->z:B

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 14
    :cond_7
    iget v0, p0, Lcom/shabakaty/downloader/ti3;->t:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_9

    .line 15
    iget-object v0, p0, Lcom/shabakaty/downloader/ti3;->x:Lcom/shabakaty/downloader/bj3;

    .line 16
    invoke-virtual {v0}, Lcom/shabakaty/downloader/bj3;->a()Z

    move-result v0

    if-nez v0, :cond_9

    .line 17
    iput-byte v2, p0, Lcom/shabakaty/downloader/ti3;->z:B

    return v2

    .line 18
    :cond_9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pp1$d;->i()Z

    move-result v0

    if-nez v0, :cond_a

    .line 19
    iput-byte v2, p0, Lcom/shabakaty/downloader/ti3;->z:B

    return v2

    .line 20
    :cond_a
    iput-byte v1, p0, Lcom/shabakaty/downloader/ti3;->z:B

    return v1
.end method

.method public b()Lcom/shabakaty/downloader/es2;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ti3;->B:Lcom/shabakaty/downloader/ti3;

    return-object v0
.end method

.method public c()Lcom/shabakaty/downloader/es2$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ti3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ti3$b;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/ti3$b;->o(Lcom/shabakaty/downloader/ti3;)Lcom/shabakaty/downloader/ti3$b;

    return-object v0
.end method

.method public e()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ti3;->A:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/shabakaty/downloader/ti3;->u:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    const/4 v3, 0x3

    .line 3
    iget-object v4, p0, Lcom/shabakaty/downloader/ti3;->u:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/es2;

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 4
    :goto_1
    iget-object v3, p0, Lcom/shabakaty/downloader/ti3;->v:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    const/4 v3, 0x4

    .line 5
    iget-object v4, p0, Lcom/shabakaty/downloader/ti3;->v:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/es2;

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/shabakaty/downloader/ti3;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/4 v1, 0x5

    .line 7
    iget-object v3, p0, Lcom/shabakaty/downloader/ti3;->w:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/es2;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v1

    add-int/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 8
    :cond_3
    iget v0, p0, Lcom/shabakaty/downloader/ti3;->t:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/16 v0, 0x1e

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/ti3;->x:Lcom/shabakaty/downloader/bj3;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v0

    add-int/2addr v2, v0

    .line 10
    :cond_4
    iget v0, p0, Lcom/shabakaty/downloader/ti3;->t:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/16 v0, 0x20

    .line 11
    iget-object v1, p0, Lcom/shabakaty/downloader/ti3;->y:Lcom/shabakaty/downloader/ej3;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v0

    add-int/2addr v2, v0

    .line 12
    :cond_5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pp1$d;->j()I

    move-result v0

    add-int/2addr v0, v2

    .line 13
    iget-object v1, p0, Lcom/shabakaty/downloader/ti3;->s:Lcom/shabakaty/downloader/ep;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ep;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 14
    iput v1, p0, Lcom/shabakaty/downloader/ti3;->A:I

    return v1
.end method

.method public f(Lcom/shabakaty/downloader/w40;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ti3;->e()I

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pp1$d;->n()Lcom/shabakaty/downloader/pp1$d$a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/shabakaty/downloader/ti3;->u:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    const/4 v3, 0x3

    .line 4
    iget-object v4, p0, Lcom/shabakaty/downloader/ti3;->u:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/es2;

    invoke-virtual {p1, v3, v4}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 5
    :goto_1
    iget-object v3, p0, Lcom/shabakaty/downloader/ti3;->v:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    const/4 v3, 0x4

    .line 6
    iget-object v4, p0, Lcom/shabakaty/downloader/ti3;->v:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/es2;

    invoke-virtual {p1, v3, v4}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/shabakaty/downloader/ti3;->w:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x5

    .line 8
    iget-object v3, p0, Lcom/shabakaty/downloader/ti3;->w:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/es2;

    invoke-virtual {p1, v2, v3}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 9
    :cond_2
    iget v1, p0, Lcom/shabakaty/downloader/ti3;->t:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/16 v1, 0x1e

    .line 10
    iget-object v2, p0, Lcom/shabakaty/downloader/ti3;->x:Lcom/shabakaty/downloader/bj3;

    invoke-virtual {p1, v1, v2}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    .line 11
    :cond_3
    iget v1, p0, Lcom/shabakaty/downloader/ti3;->t:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    const/16 v1, 0x20

    .line 12
    iget-object v2, p0, Lcom/shabakaty/downloader/ti3;->y:Lcom/shabakaty/downloader/ej3;

    invoke-virtual {p1, v1, v2}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    :cond_4
    const/16 v1, 0xc8

    .line 13
    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/pp1$d$a;->a(ILcom/shabakaty/downloader/w40;)V

    .line 14
    iget-object v0, p0, Lcom/shabakaty/downloader/ti3;->s:Lcom/shabakaty/downloader/ep;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/w40;->u(Lcom/shabakaty/downloader/ep;)V

    return-void
.end method

.method public g()Lcom/shabakaty/downloader/es2$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ti3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ti3$b;-><init>()V

    return-object v0
.end method

.method public final q()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ti3;->u:Ljava/util/List;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ti3;->v:Ljava/util/List;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ti3;->w:Ljava/util/List;

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/bj3;->x:Lcom/shabakaty/downloader/bj3;

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/ti3;->x:Lcom/shabakaty/downloader/bj3;

    .line 6
    sget-object v0, Lcom/shabakaty/downloader/ej3;->v:Lcom/shabakaty/downloader/ej3;

    .line 7
    iput-object v0, p0, Lcom/shabakaty/downloader/ti3;->y:Lcom/shabakaty/downloader/ej3;

    return-void
.end method
