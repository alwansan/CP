.class public final Lcom/shabakaty/downloader/ui3;
.super Lcom/shabakaty/downloader/pp1$d;
.source "ProtoBuf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ui3$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/pp1$d<",
        "Lcom/shabakaty/downloader/ui3;",
        ">;"
    }
.end annotation


# static fields
.field public static final A:Lcom/shabakaty/downloader/ui3;

.field public static B:Lcom/shabakaty/downloader/na3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/na3<",
            "Lcom/shabakaty/downloader/ui3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final s:Lcom/shabakaty/downloader/ep;

.field public t:I

.field public u:Lcom/shabakaty/downloader/xi3;

.field public v:Lcom/shabakaty/downloader/wi3;

.field public w:Lcom/shabakaty/downloader/ti3;

.field public x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ji3;",
            ">;"
        }
    .end annotation
.end field

.field public y:B

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ui3$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ui3$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ui3;->B:Lcom/shabakaty/downloader/na3;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ui3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ui3;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ui3;->A:Lcom/shabakaty/downloader/ui3;

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/xi3;->v:Lcom/shabakaty/downloader/xi3;

    .line 4
    iput-object v1, v0, Lcom/shabakaty/downloader/ui3;->u:Lcom/shabakaty/downloader/xi3;

    .line 5
    sget-object v1, Lcom/shabakaty/downloader/wi3;->v:Lcom/shabakaty/downloader/wi3;

    .line 6
    iput-object v1, v0, Lcom/shabakaty/downloader/ui3;->v:Lcom/shabakaty/downloader/wi3;

    .line 7
    sget-object v1, Lcom/shabakaty/downloader/ti3;->B:Lcom/shabakaty/downloader/ti3;

    .line 8
    iput-object v1, v0, Lcom/shabakaty/downloader/ui3;->w:Lcom/shabakaty/downloader/ti3;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/ui3;->x:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1$d;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/shabakaty/downloader/ui3;->y:B

    .line 8
    iput v0, p0, Lcom/shabakaty/downloader/ui3;->z:I

    .line 9
    sget-object v0, Lcom/shabakaty/downloader/ep;->r:Lcom/shabakaty/downloader/ep;

    iput-object v0, p0, Lcom/shabakaty/downloader/ui3;->s:Lcom/shabakaty/downloader/ep;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/pp1$c;Lcom/shabakaty/downloader/md0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/pp1$d;-><init>(Lcom/shabakaty/downloader/pp1$c;)V

    const/4 p2, -0x1

    .line 2
    iput-byte p2, p0, Lcom/shabakaty/downloader/ui3;->y:B

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/ui3;->z:I

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/ui3;->s:Lcom/shabakaty/downloader/ep;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;Lcom/shabakaty/downloader/md0;)V
    .locals 8

    .line 10
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1$d;-><init>()V

    const/4 p3, -0x1

    .line 11
    iput-byte p3, p0, Lcom/shabakaty/downloader/ui3;->y:B

    .line 12
    iput p3, p0, Lcom/shabakaty/downloader/ui3;->z:I

    .line 13
    sget-object p3, Lcom/shabakaty/downloader/xi3;->v:Lcom/shabakaty/downloader/xi3;

    .line 14
    iput-object p3, p0, Lcom/shabakaty/downloader/ui3;->u:Lcom/shabakaty/downloader/xi3;

    .line 15
    sget-object p3, Lcom/shabakaty/downloader/wi3;->v:Lcom/shabakaty/downloader/wi3;

    .line 16
    iput-object p3, p0, Lcom/shabakaty/downloader/ui3;->v:Lcom/shabakaty/downloader/wi3;

    .line 17
    sget-object p3, Lcom/shabakaty/downloader/ti3;->B:Lcom/shabakaty/downloader/ti3;

    .line 18
    iput-object p3, p0, Lcom/shabakaty/downloader/ui3;->w:Lcom/shabakaty/downloader/ti3;

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/shabakaty/downloader/ui3;->x:Ljava/util/List;

    .line 20
    invoke-static {}, Lcom/shabakaty/downloader/ep;->u()Lcom/shabakaty/downloader/ep$b;

    move-result-object p3

    const/4 v0, 0x1

    .line 21
    invoke-static {p3, v0}, Lcom/shabakaty/downloader/w40;->k(Ljava/io/OutputStream;I)Lcom/shabakaty/downloader/w40;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    const/16 v4, 0x8

    if-nez v2, :cond_e

    .line 22
    :try_start_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->o()I

    move-result v5

    if-eqz v5, :cond_c

    const/16 v6, 0xa

    const/4 v7, 0x0

    if-eq v5, v6, :cond_9

    const/16 v6, 0x12

    if-eq v5, v6, :cond_6

    const/16 v6, 0x1a

    if-eq v5, v6, :cond_3

    const/16 v6, 0x22

    if-eq v5, v6, :cond_1

    .line 23
    invoke-virtual {p0, p1, v1, p2, v5}, Lcom/shabakaty/downloader/pp1$d;->o(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/w40;Lcom/shabakaty/downloader/t81;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    :cond_1
    and-int/lit8 v5, v3, 0x8

    if-eq v5, v4, :cond_2

    .line 24
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/shabakaty/downloader/ui3;->x:Ljava/util/List;

    or-int/lit8 v3, v3, 0x8

    .line 25
    :cond_2
    iget-object v5, p0, Lcom/shabakaty/downloader/ui3;->x:Ljava/util/List;

    sget-object v6, Lcom/shabakaty/downloader/ji3;->T:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v6, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26
    :cond_3
    iget v5, p0, Lcom/shabakaty/downloader/ui3;->t:I

    const/4 v6, 0x4

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_4

    .line 27
    iget-object v5, p0, Lcom/shabakaty/downloader/ui3;->w:Lcom/shabakaty/downloader/ti3;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v7, Lcom/shabakaty/downloader/ti3$b;

    invoke-direct {v7}, Lcom/shabakaty/downloader/ti3$b;-><init>()V

    .line 29
    invoke-virtual {v7, v5}, Lcom/shabakaty/downloader/ti3$b;->o(Lcom/shabakaty/downloader/ti3;)Lcom/shabakaty/downloader/ti3$b;

    .line 30
    :cond_4
    sget-object v5, Lcom/shabakaty/downloader/ti3;->C:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v5, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/ti3;

    iput-object v5, p0, Lcom/shabakaty/downloader/ui3;->w:Lcom/shabakaty/downloader/ti3;

    if-eqz v7, :cond_5

    .line 31
    invoke-virtual {v7, v5}, Lcom/shabakaty/downloader/ti3$b;->o(Lcom/shabakaty/downloader/ti3;)Lcom/shabakaty/downloader/ti3$b;

    .line 32
    invoke-virtual {v7}, Lcom/shabakaty/downloader/ti3$b;->m()Lcom/shabakaty/downloader/ti3;

    move-result-object v5

    iput-object v5, p0, Lcom/shabakaty/downloader/ui3;->w:Lcom/shabakaty/downloader/ti3;

    .line 33
    :cond_5
    iget v5, p0, Lcom/shabakaty/downloader/ui3;->t:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/shabakaty/downloader/ui3;->t:I

    goto :goto_0

    .line 34
    :cond_6
    iget v5, p0, Lcom/shabakaty/downloader/ui3;->t:I

    const/4 v6, 0x2

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_7

    .line 35
    iget-object v5, p0, Lcom/shabakaty/downloader/ui3;->v:Lcom/shabakaty/downloader/wi3;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v7, Lcom/shabakaty/downloader/wi3$b;

    invoke-direct {v7}, Lcom/shabakaty/downloader/wi3$b;-><init>()V

    .line 37
    invoke-virtual {v7, v5}, Lcom/shabakaty/downloader/wi3$b;->n(Lcom/shabakaty/downloader/wi3;)Lcom/shabakaty/downloader/wi3$b;

    .line 38
    :cond_7
    sget-object v5, Lcom/shabakaty/downloader/wi3;->w:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v5, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/wi3;

    iput-object v5, p0, Lcom/shabakaty/downloader/ui3;->v:Lcom/shabakaty/downloader/wi3;

    if-eqz v7, :cond_8

    .line 39
    invoke-virtual {v7, v5}, Lcom/shabakaty/downloader/wi3$b;->n(Lcom/shabakaty/downloader/wi3;)Lcom/shabakaty/downloader/wi3$b;

    .line 40
    invoke-virtual {v7}, Lcom/shabakaty/downloader/wi3$b;->l()Lcom/shabakaty/downloader/wi3;

    move-result-object v5

    iput-object v5, p0, Lcom/shabakaty/downloader/ui3;->v:Lcom/shabakaty/downloader/wi3;

    .line 41
    :cond_8
    iget v5, p0, Lcom/shabakaty/downloader/ui3;->t:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/shabakaty/downloader/ui3;->t:I

    goto/16 :goto_0

    .line 42
    :cond_9
    iget v5, p0, Lcom/shabakaty/downloader/ui3;->t:I

    and-int/2addr v5, v0

    if-ne v5, v0, :cond_a

    .line 43
    iget-object v5, p0, Lcom/shabakaty/downloader/ui3;->u:Lcom/shabakaty/downloader/xi3;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v7, Lcom/shabakaty/downloader/xi3$b;

    invoke-direct {v7}, Lcom/shabakaty/downloader/xi3$b;-><init>()V

    .line 45
    invoke-virtual {v7, v5}, Lcom/shabakaty/downloader/xi3$b;->n(Lcom/shabakaty/downloader/xi3;)Lcom/shabakaty/downloader/xi3$b;

    .line 46
    :cond_a
    sget-object v5, Lcom/shabakaty/downloader/xi3;->w:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v5, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/xi3;

    iput-object v5, p0, Lcom/shabakaty/downloader/ui3;->u:Lcom/shabakaty/downloader/xi3;

    if-eqz v7, :cond_b

    .line 47
    invoke-virtual {v7, v5}, Lcom/shabakaty/downloader/xi3$b;->n(Lcom/shabakaty/downloader/xi3;)Lcom/shabakaty/downloader/xi3$b;

    .line 48
    invoke-virtual {v7}, Lcom/shabakaty/downloader/xi3$b;->l()Lcom/shabakaty/downloader/xi3;

    move-result-object v5

    iput-object v5, p0, Lcom/shabakaty/downloader/ui3;->u:Lcom/shabakaty/downloader/xi3;

    .line 49
    :cond_b
    iget v5, p0, Lcom/shabakaty/downloader/ui3;->t:I

    or-int/2addr v5, v0

    iput v5, p0, Lcom/shabakaty/downloader/ui3;->t:I
    :try_end_0
    .catch Lcom/shabakaty/downloader/s32; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_c
    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 50
    :try_start_1
    new-instance p2, Lcom/shabakaty/downloader/s32;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/s32;-><init>(Ljava/lang/String;)V

    .line 51
    iput-object p0, p2, Lcom/shabakaty/downloader/s32;->r:Lcom/shabakaty/downloader/es2;

    .line 52
    throw p2

    :catch_1
    move-exception p1

    .line 53
    iput-object p0, p1, Lcom/shabakaty/downloader/s32;->r:Lcom/shabakaty/downloader/es2;

    .line 54
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v3, 0x8

    if-ne p2, v4, :cond_d

    .line 55
    iget-object p2, p0, Lcom/shabakaty/downloader/ui3;->x:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/ui3;->x:Ljava/util/List;

    .line 56
    :cond_d
    :try_start_2
    invoke-virtual {v1}, Lcom/shabakaty/downloader/w40;->j()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 57
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/ui3;->s:Lcom/shabakaty/downloader/ep;

    throw p1

    :catch_2
    :goto_3
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/ui3;->s:Lcom/shabakaty/downloader/ep;

    .line 58
    iget-object p2, p0, Lcom/shabakaty/downloader/pp1$d;->r:Lcom/shabakaty/downloader/ua1;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ua1;->i()V

    .line 59
    throw p1

    :cond_e
    and-int/lit8 p1, v3, 0x8

    if-ne p1, v4, :cond_f

    .line 60
    iget-object p1, p0, Lcom/shabakaty/downloader/ui3;->x:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ui3;->x:Ljava/util/List;

    .line 61
    :cond_f
    :try_start_3
    invoke-virtual {v1}, Lcom/shabakaty/downloader/w40;->j()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    .line 62
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/ui3;->s:Lcom/shabakaty/downloader/ep;

    throw p1

    :catch_3
    :goto_4
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ui3;->s:Lcom/shabakaty/downloader/ep;

    .line 63
    iget-object p1, p0, Lcom/shabakaty/downloader/pp1$d;->r:Lcom/shabakaty/downloader/ua1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ua1;->i()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .line 1
    iget-byte v0, p0, Lcom/shabakaty/downloader/ui3;->y:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 2
    :cond_1
    iget v0, p0, Lcom/shabakaty/downloader/ui3;->t:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ui3;->v:Lcom/shabakaty/downloader/wi3;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/wi3;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    iput-byte v2, p0, Lcom/shabakaty/downloader/ui3;->y:B

    return v2

    .line 6
    :cond_3
    iget v0, p0, Lcom/shabakaty/downloader/ui3;->t:I

    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/ui3;->w:Lcom/shabakaty/downloader/ti3;

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ti3;->a()Z

    move-result v0

    if-nez v0, :cond_5

    .line 9
    iput-byte v2, p0, Lcom/shabakaty/downloader/ui3;->y:B

    return v2

    :cond_5
    const/4 v0, 0x0

    .line 10
    :goto_2
    iget-object v3, p0, Lcom/shabakaty/downloader/ui3;->x:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 11
    iget-object v3, p0, Lcom/shabakaty/downloader/ui3;->x:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/ji3;

    .line 12
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ji3;->a()Z

    move-result v3

    if-nez v3, :cond_6

    .line 13
    iput-byte v2, p0, Lcom/shabakaty/downloader/ui3;->y:B

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 14
    :cond_7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pp1$d;->i()Z

    move-result v0

    if-nez v0, :cond_8

    .line 15
    iput-byte v2, p0, Lcom/shabakaty/downloader/ui3;->y:B

    return v2

    .line 16
    :cond_8
    iput-byte v1, p0, Lcom/shabakaty/downloader/ui3;->y:B

    return v1
.end method

.method public b()Lcom/shabakaty/downloader/es2;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ui3;->A:Lcom/shabakaty/downloader/ui3;

    return-object v0
.end method

.method public c()Lcom/shabakaty/downloader/es2$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ui3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ui3$b;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/ui3$b;->o(Lcom/shabakaty/downloader/ui3;)Lcom/shabakaty/downloader/ui3$b;

    return-object v0
.end method

.method public e()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ui3;->z:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/ui3;->t:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ui3;->u:Lcom/shabakaty/downloader/xi3;

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget v1, p0, Lcom/shabakaty/downloader/ui3;->t:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/ui3;->v:Lcom/shabakaty/downloader/wi3;

    invoke-static {v3, v1}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget v1, p0, Lcom/shabakaty/downloader/ui3;->t:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    .line 7
    iget-object v4, p0, Lcom/shabakaty/downloader/ui3;->w:Lcom/shabakaty/downloader/ti3;

    invoke-static {v1, v4}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/shabakaty/downloader/ui3;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/ui3;->x:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/es2;

    invoke-static {v3, v1}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10
    :cond_4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pp1$d;->j()I

    move-result v1

    add-int/2addr v1, v0

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/ui3;->s:Lcom/shabakaty/downloader/ep;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ep;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 12
    iput v0, p0, Lcom/shabakaty/downloader/ui3;->z:I

    return v0
.end method

.method public f(Lcom/shabakaty/downloader/w40;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ui3;->e()I

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pp1$d;->n()Lcom/shabakaty/downloader/pp1$d$a;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/shabakaty/downloader/ui3;->t:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/ui3;->u:Lcom/shabakaty/downloader/xi3;

    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    .line 5
    :cond_0
    iget v1, p0, Lcom/shabakaty/downloader/ui3;->t:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/ui3;->v:Lcom/shabakaty/downloader/wi3;

    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    .line 7
    :cond_1
    iget v1, p0, Lcom/shabakaty/downloader/ui3;->t:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    .line 8
    iget-object v3, p0, Lcom/shabakaty/downloader/ui3;->w:Lcom/shabakaty/downloader/ti3;

    invoke-virtual {p1, v1, v3}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    :cond_2
    const/4 v1, 0x0

    .line 9
    :goto_0
    iget-object v3, p0, Lcom/shabakaty/downloader/ui3;->x:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 10
    iget-object v3, p0, Lcom/shabakaty/downloader/ui3;->x:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/es2;

    invoke-virtual {p1, v2, v3}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/16 v1, 0xc8

    .line 11
    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/pp1$d$a;->a(ILcom/shabakaty/downloader/w40;)V

    .line 12
    iget-object v0, p0, Lcom/shabakaty/downloader/ui3;->s:Lcom/shabakaty/downloader/ep;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/w40;->u(Lcom/shabakaty/downloader/ep;)V

    return-void
.end method

.method public g()Lcom/shabakaty/downloader/es2$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ui3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ui3$b;-><init>()V

    return-object v0
.end method
