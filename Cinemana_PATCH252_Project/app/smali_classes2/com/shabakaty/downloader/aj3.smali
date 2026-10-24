.class public final Lcom/shabakaty/downloader/aj3;
.super Lcom/shabakaty/downloader/pp1$d;
.source "ProtoBuf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/aj3$b;,
        Lcom/shabakaty/downloader/aj3$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/pp1$d<",
        "Lcom/shabakaty/downloader/aj3;",
        ">;"
    }
.end annotation


# static fields
.field public static final D:Lcom/shabakaty/downloader/aj3;

.field public static E:Lcom/shabakaty/downloader/na3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/na3<",
            "Lcom/shabakaty/downloader/aj3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:I

.field public B:B

.field public C:I

.field public final s:Lcom/shabakaty/downloader/ep;

.field public t:I

.field public u:I

.field public v:I

.field public w:Z

.field public x:Lcom/shabakaty/downloader/aj3$c;

.field public y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/yi3;",
            ">;"
        }
    .end annotation
.end field

.field public z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/aj3$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/aj3$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/aj3;->E:Lcom/shabakaty/downloader/na3;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/aj3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/aj3;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/aj3;->D:Lcom/shabakaty/downloader/aj3;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/aj3;->q()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1$d;-><init>()V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/shabakaty/downloader/aj3;->A:I

    .line 9
    iput-byte v0, p0, Lcom/shabakaty/downloader/aj3;->B:B

    .line 10
    iput v0, p0, Lcom/shabakaty/downloader/aj3;->C:I

    .line 11
    sget-object v0, Lcom/shabakaty/downloader/ep;->r:Lcom/shabakaty/downloader/ep;

    iput-object v0, p0, Lcom/shabakaty/downloader/aj3;->s:Lcom/shabakaty/downloader/ep;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/pp1$c;Lcom/shabakaty/downloader/md0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/pp1$d;-><init>(Lcom/shabakaty/downloader/pp1$c;)V

    const/4 p2, -0x1

    .line 2
    iput p2, p0, Lcom/shabakaty/downloader/aj3;->A:I

    .line 3
    iput-byte p2, p0, Lcom/shabakaty/downloader/aj3;->B:B

    .line 4
    iput p2, p0, Lcom/shabakaty/downloader/aj3;->C:I

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    .line 6
    iput-object p1, p0, Lcom/shabakaty/downloader/aj3;->s:Lcom/shabakaty/downloader/ep;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;Lcom/shabakaty/downloader/md0;)V
    .locals 10

    .line 12
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1$d;-><init>()V

    const/4 p3, -0x1

    .line 13
    iput p3, p0, Lcom/shabakaty/downloader/aj3;->A:I

    .line 14
    iput-byte p3, p0, Lcom/shabakaty/downloader/aj3;->B:B

    .line 15
    iput p3, p0, Lcom/shabakaty/downloader/aj3;->C:I

    .line 16
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj3;->q()V

    .line 17
    invoke-static {}, Lcom/shabakaty/downloader/ep;->u()Lcom/shabakaty/downloader/ep$b;

    move-result-object p3

    const/4 v0, 0x1

    .line 18
    invoke-static {p3, v0}, Lcom/shabakaty/downloader/w40;->k(Ljava/io/OutputStream;I)Lcom/shabakaty/downloader/w40;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    const/16 v4, 0x10

    const/16 v5, 0x20

    if-nez v2, :cond_10

    .line 19
    :try_start_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->o()I

    move-result v6

    if-eqz v6, :cond_d

    const/16 v7, 0x8

    if-eq v6, v7, :cond_c

    if-eq v6, v4, :cond_b

    const/16 v8, 0x18

    if-eq v6, v8, :cond_a

    if-eq v6, v5, :cond_8

    const/16 v7, 0x2a

    if-eq v6, v7, :cond_6

    const/16 v7, 0x30

    if-eq v6, v7, :cond_4

    const/16 v7, 0x32

    if-eq v6, v7, :cond_1

    .line 20
    invoke-virtual {p0, p1, v1, p2, v6}, Lcom/shabakaty/downloader/pp1$d;->o(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/w40;Lcom/shabakaty/downloader/t81;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_2

    .line 21
    :cond_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v6

    .line 22
    invoke-virtual {p1, v6}, Lcom/shabakaty/downloader/u40;->d(I)I

    move-result v6

    and-int/lit8 v7, v3, 0x20

    if-eq v7, v5, :cond_2

    .line 23
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->b()I

    move-result v7

    if-lez v7, :cond_2

    .line 24
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/shabakaty/downloader/aj3;->z:Ljava/util/List;

    or-int/lit8 v3, v3, 0x20

    .line 25
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->b()I

    move-result v7

    if-lez v7, :cond_3

    .line 26
    iget-object v7, p0, Lcom/shabakaty/downloader/aj3;->z:Ljava/util/List;

    .line 27
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v8

    .line 28
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 29
    :cond_3
    iput v6, p1, Lcom/shabakaty/downloader/u40;->i:I

    .line 30
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->p()V

    goto :goto_0

    :cond_4
    and-int/lit8 v6, v3, 0x20

    if-eq v6, v5, :cond_5

    .line 31
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/shabakaty/downloader/aj3;->z:Ljava/util/List;

    or-int/lit8 v3, v3, 0x20

    .line 32
    :cond_5
    iget-object v6, p0, Lcom/shabakaty/downloader/aj3;->z:Ljava/util/List;

    .line 33
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v7

    .line 34
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    and-int/lit8 v6, v3, 0x10

    if-eq v6, v4, :cond_7

    .line 35
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/shabakaty/downloader/aj3;->y:Ljava/util/List;

    or-int/lit8 v3, v3, 0x10

    .line 36
    :cond_7
    iget-object v6, p0, Lcom/shabakaty/downloader/aj3;->y:Ljava/util/List;

    sget-object v7, Lcom/shabakaty/downloader/yi3;->L:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v7, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 37
    :cond_8
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v8

    .line 38
    invoke-static {v8}, Lcom/shabakaty/downloader/aj3$c;->f(I)Lcom/shabakaty/downloader/aj3$c;

    move-result-object v9

    if-nez v9, :cond_9

    .line 39
    invoke-virtual {v1, v6}, Lcom/shabakaty/downloader/w40;->y(I)V

    .line 40
    invoke-virtual {v1, v8}, Lcom/shabakaty/downloader/w40;->y(I)V

    goto/16 :goto_0

    .line 41
    :cond_9
    iget v6, p0, Lcom/shabakaty/downloader/aj3;->t:I

    or-int/2addr v6, v7

    iput v6, p0, Lcom/shabakaty/downloader/aj3;->t:I

    .line 42
    iput-object v9, p0, Lcom/shabakaty/downloader/aj3;->x:Lcom/shabakaty/downloader/aj3$c;

    goto/16 :goto_0

    .line 43
    :cond_a
    iget v6, p0, Lcom/shabakaty/downloader/aj3;->t:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/shabakaty/downloader/aj3;->t:I

    .line 44
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->e()Z

    move-result v6

    iput-boolean v6, p0, Lcom/shabakaty/downloader/aj3;->w:Z

    goto/16 :goto_0

    .line 45
    :cond_b
    iget v6, p0, Lcom/shabakaty/downloader/aj3;->t:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/shabakaty/downloader/aj3;->t:I

    .line 46
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v6

    .line 47
    iput v6, p0, Lcom/shabakaty/downloader/aj3;->v:I

    goto/16 :goto_0

    .line 48
    :cond_c
    iget v6, p0, Lcom/shabakaty/downloader/aj3;->t:I

    or-int/2addr v6, v0

    iput v6, p0, Lcom/shabakaty/downloader/aj3;->t:I

    .line 49
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v6

    .line 50
    iput v6, p0, Lcom/shabakaty/downloader/aj3;->u:I
    :try_end_0
    .catch Lcom/shabakaty/downloader/s32; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_d
    :goto_2
    const/4 v2, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 51
    :try_start_1
    new-instance p2, Lcom/shabakaty/downloader/s32;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/s32;-><init>(Ljava/lang/String;)V

    .line 52
    iput-object p0, p2, Lcom/shabakaty/downloader/s32;->r:Lcom/shabakaty/downloader/es2;

    .line 53
    throw p2

    :catch_1
    move-exception p1

    .line 54
    iput-object p0, p1, Lcom/shabakaty/downloader/s32;->r:Lcom/shabakaty/downloader/es2;

    .line 55
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v3, 0x10

    if-ne p2, v4, :cond_e

    .line 56
    iget-object p2, p0, Lcom/shabakaty/downloader/aj3;->y:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/aj3;->y:Ljava/util/List;

    :cond_e
    and-int/lit8 p2, v3, 0x20

    if-ne p2, v5, :cond_f

    .line 57
    iget-object p2, p0, Lcom/shabakaty/downloader/aj3;->z:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/aj3;->z:Ljava/util/List;

    .line 58
    :cond_f
    :try_start_2
    invoke-virtual {v1}, Lcom/shabakaty/downloader/w40;->j()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    .line 59
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/aj3;->s:Lcom/shabakaty/downloader/ep;

    throw p1

    :catch_2
    :goto_4
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/aj3;->s:Lcom/shabakaty/downloader/ep;

    .line 60
    iget-object p2, p0, Lcom/shabakaty/downloader/pp1$d;->r:Lcom/shabakaty/downloader/ua1;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ua1;->i()V

    .line 61
    throw p1

    :cond_10
    and-int/lit8 p1, v3, 0x10

    if-ne p1, v4, :cond_11

    .line 62
    iget-object p1, p0, Lcom/shabakaty/downloader/aj3;->y:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/aj3;->y:Ljava/util/List;

    :cond_11
    and-int/lit8 p1, v3, 0x20

    if-ne p1, v5, :cond_12

    .line 63
    iget-object p1, p0, Lcom/shabakaty/downloader/aj3;->z:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/aj3;->z:Ljava/util/List;

    .line 64
    :cond_12
    :try_start_3
    invoke-virtual {v1}, Lcom/shabakaty/downloader/w40;->j()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception p1

    .line 65
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/aj3;->s:Lcom/shabakaty/downloader/ep;

    throw p1

    :catch_3
    :goto_5
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/aj3;->s:Lcom/shabakaty/downloader/ep;

    .line 66
    iget-object p1, p0, Lcom/shabakaty/downloader/pp1$d;->r:Lcom/shabakaty/downloader/ua1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ua1;->i()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .line 1
    iget-byte v0, p0, Lcom/shabakaty/downloader/aj3;->B:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 2
    :cond_1
    iget v0, p0, Lcom/shabakaty/downloader/aj3;->t:I

    and-int/lit8 v3, v0, 0x1

    if-ne v3, v1, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    .line 3
    iput-byte v2, p0, Lcom/shabakaty/downloader/aj3;->B:B

    return v2

    :cond_3
    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_5

    .line 4
    iput-byte v2, p0, Lcom/shabakaty/downloader/aj3;->B:B

    return v2

    :cond_5
    const/4 v0, 0x0

    .line 5
    :goto_2
    iget-object v3, p0, Lcom/shabakaty/downloader/aj3;->y:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 6
    iget-object v3, p0, Lcom/shabakaty/downloader/aj3;->y:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/yi3;

    .line 7
    invoke-virtual {v3}, Lcom/shabakaty/downloader/yi3;->a()Z

    move-result v3

    if-nez v3, :cond_6

    .line 8
    iput-byte v2, p0, Lcom/shabakaty/downloader/aj3;->B:B

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 9
    :cond_7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pp1$d;->i()Z

    move-result v0

    if-nez v0, :cond_8

    .line 10
    iput-byte v2, p0, Lcom/shabakaty/downloader/aj3;->B:B

    return v2

    .line 11
    :cond_8
    iput-byte v1, p0, Lcom/shabakaty/downloader/aj3;->B:B

    return v1
.end method

.method public b()Lcom/shabakaty/downloader/es2;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/aj3;->D:Lcom/shabakaty/downloader/aj3;

    return-object v0
.end method

.method public c()Lcom/shabakaty/downloader/es2$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/aj3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/aj3$b;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/aj3$b;->o(Lcom/shabakaty/downloader/aj3;)Lcom/shabakaty/downloader/aj3$b;

    return-object v0
.end method

.method public e()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/aj3;->C:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/aj3;->t:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/aj3;->u:I

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget v3, p0, Lcom/shabakaty/downloader/aj3;->t:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    .line 5
    iget v3, p0, Lcom/shabakaty/downloader/aj3;->v:I

    invoke-static {v4, v3}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 6
    :cond_2
    iget v3, p0, Lcom/shabakaty/downloader/aj3;->t:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x3

    .line 7
    invoke-static {v3}, Lcom/shabakaty/downloader/w40;->i(I)I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v0, v3

    .line 8
    :cond_3
    iget v1, p0, Lcom/shabakaty/downloader/aj3;->t:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/aj3;->x:Lcom/shabakaty/downloader/aj3$c;

    .line 10
    iget v1, v1, Lcom/shabakaty/downloader/aj3$c;->r:I

    .line 11
    invoke-static {v4, v1}, Lcom/shabakaty/downloader/w40;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    const/4 v1, 0x0

    .line 12
    :goto_1
    iget-object v3, p0, Lcom/shabakaty/downloader/aj3;->y:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    const/4 v3, 0x5

    .line 13
    iget-object v4, p0, Lcom/shabakaty/downloader/aj3;->y:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/es2;

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    .line 14
    :goto_2
    iget-object v3, p0, Lcom/shabakaty/downloader/aj3;->z:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 15
    iget-object v3, p0, Lcom/shabakaty/downloader/aj3;->z:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/shabakaty/downloader/w40;->d(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    add-int/2addr v0, v1

    .line 16
    iget-object v2, p0, Lcom/shabakaty/downloader/aj3;->z:Ljava/util/List;

    .line 17
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    add-int/lit8 v0, v0, 0x1

    .line 18
    invoke-static {v1}, Lcom/shabakaty/downloader/w40;->d(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 19
    :cond_7
    iput v1, p0, Lcom/shabakaty/downloader/aj3;->A:I

    .line 20
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pp1$d;->j()I

    move-result v1

    add-int/2addr v1, v0

    .line 21
    iget-object v0, p0, Lcom/shabakaty/downloader/aj3;->s:Lcom/shabakaty/downloader/ep;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ep;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 22
    iput v0, p0, Lcom/shabakaty/downloader/aj3;->C:I

    return v0
.end method

.method public f(Lcom/shabakaty/downloader/w40;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj3;->e()I

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pp1$d;->n()Lcom/shabakaty/downloader/pp1$d$a;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/shabakaty/downloader/aj3;->t:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 4
    iget v1, p0, Lcom/shabakaty/downloader/aj3;->u:I

    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 5
    :cond_0
    iget v1, p0, Lcom/shabakaty/downloader/aj3;->t:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 6
    iget v1, p0, Lcom/shabakaty/downloader/aj3;->v:I

    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 7
    :cond_1
    iget v1, p0, Lcom/shabakaty/downloader/aj3;->t:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 8
    iget-boolean v1, p0, Lcom/shabakaty/downloader/aj3;->w:Z

    const/16 v3, 0x18

    .line 9
    invoke-virtual {p1, v3}, Lcom/shabakaty/downloader/w40;->y(I)V

    .line 10
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/w40;->t(I)V

    .line 11
    :cond_2
    iget v1, p0, Lcom/shabakaty/downloader/aj3;->t:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    .line 12
    iget-object v1, p0, Lcom/shabakaty/downloader/aj3;->x:Lcom/shabakaty/downloader/aj3$c;

    .line 13
    iget v1, v1, Lcom/shabakaty/downloader/aj3$c;->r:I

    .line 14
    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/w40;->n(II)V

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 15
    :goto_0
    iget-object v3, p0, Lcom/shabakaty/downloader/aj3;->y:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    const/4 v3, 0x5

    .line 16
    iget-object v4, p0, Lcom/shabakaty/downloader/aj3;->y:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/es2;

    invoke-virtual {p1, v3, v4}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 17
    :cond_4
    iget-object v2, p0, Lcom/shabakaty/downloader/aj3;->z:Ljava/util/List;

    .line 18
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    const/16 v2, 0x32

    .line 19
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/w40;->y(I)V

    .line 20
    iget v2, p0, Lcom/shabakaty/downloader/aj3;->A:I

    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/w40;->y(I)V

    .line 21
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/shabakaty/downloader/aj3;->z:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 22
    iget-object v2, p0, Lcom/shabakaty/downloader/aj3;->z:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/w40;->q(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    const/16 v1, 0x3e8

    .line 23
    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/pp1$d$a;->a(ILcom/shabakaty/downloader/w40;)V

    .line 24
    iget-object v0, p0, Lcom/shabakaty/downloader/aj3;->s:Lcom/shabakaty/downloader/ep;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/w40;->u(Lcom/shabakaty/downloader/ep;)V

    return-void
.end method

.method public g()Lcom/shabakaty/downloader/es2$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/aj3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/aj3$b;-><init>()V

    return-object v0
.end method

.method public final q()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/shabakaty/downloader/aj3;->u:I

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/aj3;->v:I

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/aj3;->w:Z

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/aj3$c;->u:Lcom/shabakaty/downloader/aj3$c;

    iput-object v0, p0, Lcom/shabakaty/downloader/aj3;->x:Lcom/shabakaty/downloader/aj3$c;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/aj3;->y:Ljava/util/List;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/aj3;->z:Ljava/util/List;

    return-void
.end method
