.class public final Lcom/shabakaty/downloader/pi3;
.super Lcom/shabakaty/downloader/pp1;
.source "ProtoBuf.java"

# interfaces
.implements Lcom/shabakaty/downloader/fs2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/pi3$b;,
        Lcom/shabakaty/downloader/pi3$c;
    }
.end annotation


# static fields
.field public static final C:Lcom/shabakaty/downloader/pi3;

.field public static D:Lcom/shabakaty/downloader/na3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/na3<",
            "Lcom/shabakaty/downloader/pi3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:B

.field public B:I

.field public final r:Lcom/shabakaty/downloader/ep;

.field public s:I

.field public t:I

.field public u:I

.field public v:Lcom/shabakaty/downloader/pi3$c;

.field public w:Lcom/shabakaty/downloader/yi3;

.field public x:I

.field public y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/pi3;",
            ">;"
        }
    .end annotation
.end field

.field public z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/pi3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pi3$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/pi3$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/pi3;->D:Lcom/shabakaty/downloader/na3;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/pi3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/pi3;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/pi3;->C:Lcom/shabakaty/downloader/pi3;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/pi3;->i()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/shabakaty/downloader/pi3;->A:B

    .line 8
    iput v0, p0, Lcom/shabakaty/downloader/pi3;->B:I

    .line 9
    sget-object v0, Lcom/shabakaty/downloader/ep;->r:Lcom/shabakaty/downloader/ep;

    iput-object v0, p0, Lcom/shabakaty/downloader/pi3;->r:Lcom/shabakaty/downloader/ep;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/pp1$b;Lcom/shabakaty/downloader/md0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/pp1;-><init>(Lcom/shabakaty/downloader/pp1$b;)V

    const/4 p2, -0x1

    .line 2
    iput-byte p2, p0, Lcom/shabakaty/downloader/pi3;->A:B

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/pi3;->B:I

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/pi3;->r:Lcom/shabakaty/downloader/ep;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;Lcom/shabakaty/downloader/md0;)V
    .locals 10

    .line 10
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1;-><init>()V

    const/4 p3, -0x1

    .line 11
    iput-byte p3, p0, Lcom/shabakaty/downloader/pi3;->A:B

    .line 12
    iput p3, p0, Lcom/shabakaty/downloader/pi3;->B:I

    .line 13
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pi3;->i()V

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
    const/16 v4, 0x40

    const/16 v5, 0x20

    if-nez v2, :cond_10

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->o()I

    move-result v6

    if-eqz v6, :cond_d

    const/16 v7, 0x8

    if-eq v6, v7, :cond_c

    const/16 v8, 0x10

    if-eq v6, v8, :cond_b

    const/16 v9, 0x18

    if-eq v6, v9, :cond_9

    const/16 v9, 0x22

    if-eq v6, v9, :cond_6

    const/16 v7, 0x28

    if-eq v6, v7, :cond_5

    const/16 v7, 0x32

    if-eq v6, v7, :cond_3

    const/16 v7, 0x3a

    if-eq v6, v7, :cond_1

    .line 17
    invoke-virtual {p1, v6, v1}, Lcom/shabakaty/downloader/u40;->r(ILcom/shabakaty/downloader/w40;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_2

    :cond_1
    and-int/lit8 v6, v3, 0x40

    if-eq v6, v4, :cond_2

    .line 18
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/shabakaty/downloader/pi3;->z:Ljava/util/List;

    or-int/lit8 v3, v3, 0x40

    .line 19
    :cond_2
    iget-object v6, p0, Lcom/shabakaty/downloader/pi3;->z:Ljava/util/List;

    sget-object v7, Lcom/shabakaty/downloader/pi3;->D:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v7, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    and-int/lit8 v6, v3, 0x20

    if-eq v6, v5, :cond_4

    .line 20
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/shabakaty/downloader/pi3;->y:Ljava/util/List;

    or-int/lit8 v3, v3, 0x20

    .line 21
    :cond_4
    iget-object v6, p0, Lcom/shabakaty/downloader/pi3;->y:Ljava/util/List;

    sget-object v7, Lcom/shabakaty/downloader/pi3;->D:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v7, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 22
    :cond_5
    iget v6, p0, Lcom/shabakaty/downloader/pi3;->s:I

    or-int/2addr v6, v8

    iput v6, p0, Lcom/shabakaty/downloader/pi3;->s:I

    .line 23
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v6

    .line 24
    iput v6, p0, Lcom/shabakaty/downloader/pi3;->x:I

    goto :goto_0

    :cond_6
    const/4 v6, 0x0

    .line 25
    iget v8, p0, Lcom/shabakaty/downloader/pi3;->s:I

    and-int/2addr v8, v7

    if-ne v8, v7, :cond_7

    .line 26
    iget-object v6, p0, Lcom/shabakaty/downloader/pi3;->w:Lcom/shabakaty/downloader/yi3;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {v6}, Lcom/shabakaty/downloader/yi3;->w(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3$c;

    move-result-object v6

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    .line 28
    :cond_7
    :goto_1
    sget-object v8, Lcom/shabakaty/downloader/yi3;->L:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v8, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/downloader/yi3;

    iput-object v8, p0, Lcom/shabakaty/downloader/pi3;->w:Lcom/shabakaty/downloader/yi3;

    if-eqz v6, :cond_8

    .line 29
    invoke-virtual {v6, v8}, Lcom/shabakaty/downloader/yi3$c;->o(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3$c;

    .line 30
    invoke-virtual {v6}, Lcom/shabakaty/downloader/yi3$c;->m()Lcom/shabakaty/downloader/yi3;

    move-result-object v6

    iput-object v6, p0, Lcom/shabakaty/downloader/pi3;->w:Lcom/shabakaty/downloader/yi3;

    .line 31
    :cond_8
    iget v6, p0, Lcom/shabakaty/downloader/pi3;->s:I

    or-int/2addr v6, v7

    iput v6, p0, Lcom/shabakaty/downloader/pi3;->s:I

    goto/16 :goto_0

    .line 32
    :cond_9
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v7

    .line 33
    invoke-static {v7}, Lcom/shabakaty/downloader/pi3$c;->f(I)Lcom/shabakaty/downloader/pi3$c;

    move-result-object v8

    if-nez v8, :cond_a

    .line 34
    invoke-virtual {v1, v6}, Lcom/shabakaty/downloader/w40;->y(I)V

    .line 35
    invoke-virtual {v1, v7}, Lcom/shabakaty/downloader/w40;->y(I)V

    goto/16 :goto_0

    .line 36
    :cond_a
    iget v6, p0, Lcom/shabakaty/downloader/pi3;->s:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/shabakaty/downloader/pi3;->s:I

    .line 37
    iput-object v8, p0, Lcom/shabakaty/downloader/pi3;->v:Lcom/shabakaty/downloader/pi3$c;

    goto/16 :goto_0

    .line 38
    :cond_b
    iget v6, p0, Lcom/shabakaty/downloader/pi3;->s:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/shabakaty/downloader/pi3;->s:I

    .line 39
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v6

    .line 40
    iput v6, p0, Lcom/shabakaty/downloader/pi3;->u:I

    goto/16 :goto_0

    .line 41
    :cond_c
    iget v6, p0, Lcom/shabakaty/downloader/pi3;->s:I

    or-int/2addr v6, v0

    iput v6, p0, Lcom/shabakaty/downloader/pi3;->s:I

    .line 42
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v6

    .line 43
    iput v6, p0, Lcom/shabakaty/downloader/pi3;->t:I
    :try_end_0
    .catch Lcom/shabakaty/downloader/s32; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_d
    :goto_2
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 44
    :goto_3
    :try_start_1
    new-instance p2, Lcom/shabakaty/downloader/s32;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/s32;-><init>(Ljava/lang/String;)V

    .line 45
    iput-object p0, p2, Lcom/shabakaty/downloader/s32;->r:Lcom/shabakaty/downloader/es2;

    .line 46
    throw p2

    :catch_1
    move-exception p1

    .line 47
    iput-object p0, p1, Lcom/shabakaty/downloader/s32;->r:Lcom/shabakaty/downloader/es2;

    .line 48
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit8 p2, v3, 0x20

    if-ne p2, v5, :cond_e

    .line 49
    iget-object p2, p0, Lcom/shabakaty/downloader/pi3;->y:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/pi3;->y:Ljava/util/List;

    :cond_e
    and-int/lit8 p2, v3, 0x40

    if-ne p2, v4, :cond_f

    .line 50
    iget-object p2, p0, Lcom/shabakaty/downloader/pi3;->z:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/pi3;->z:Ljava/util/List;

    .line 51
    :cond_f
    :try_start_2
    invoke-virtual {v1}, Lcom/shabakaty/downloader/w40;->j()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    .line 52
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/pi3;->r:Lcom/shabakaty/downloader/ep;

    throw p1

    :catch_2
    :goto_5
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/pi3;->r:Lcom/shabakaty/downloader/ep;

    .line 53
    throw p1

    :cond_10
    and-int/lit8 p1, v3, 0x20

    if-ne p1, v5, :cond_11

    .line 54
    iget-object p1, p0, Lcom/shabakaty/downloader/pi3;->y:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/pi3;->y:Ljava/util/List;

    :cond_11
    and-int/lit8 p1, v3, 0x40

    if-ne p1, v4, :cond_12

    .line 55
    iget-object p1, p0, Lcom/shabakaty/downloader/pi3;->z:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/pi3;->z:Ljava/util/List;

    .line 56
    :cond_12
    :try_start_3
    invoke-virtual {v1}, Lcom/shabakaty/downloader/w40;->j()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p1

    .line 57
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/pi3;->r:Lcom/shabakaty/downloader/ep;

    throw p1

    :catch_3
    :goto_6
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/pi3;->r:Lcom/shabakaty/downloader/ep;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .line 1
    iget-byte v0, p0, Lcom/shabakaty/downloader/pi3;->A:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 2
    :cond_1
    iget v0, p0, Lcom/shabakaty/downloader/pi3;->s:I

    const/16 v3, 0x8

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/pi3;->w:Lcom/shabakaty/downloader/yi3;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yi3;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    iput-byte v2, p0, Lcom/shabakaty/downloader/pi3;->A:B

    return v2

    :cond_3
    const/4 v0, 0x0

    .line 6
    :goto_1
    iget-object v3, p0, Lcom/shabakaty/downloader/pi3;->y:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 7
    iget-object v3, p0, Lcom/shabakaty/downloader/pi3;->y:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/pi3;

    .line 8
    invoke-virtual {v3}, Lcom/shabakaty/downloader/pi3;->a()Z

    move-result v3

    if-nez v3, :cond_4

    .line 9
    iput-byte v2, p0, Lcom/shabakaty/downloader/pi3;->A:B

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 10
    :goto_2
    iget-object v3, p0, Lcom/shabakaty/downloader/pi3;->z:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 11
    iget-object v3, p0, Lcom/shabakaty/downloader/pi3;->z:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/pi3;

    .line 12
    invoke-virtual {v3}, Lcom/shabakaty/downloader/pi3;->a()Z

    move-result v3

    if-nez v3, :cond_6

    .line 13
    iput-byte v2, p0, Lcom/shabakaty/downloader/pi3;->A:B

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 14
    :cond_7
    iput-byte v1, p0, Lcom/shabakaty/downloader/pi3;->A:B

    return v1
.end method

.method public c()Lcom/shabakaty/downloader/es2$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pi3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/pi3$b;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/pi3$b;->n(Lcom/shabakaty/downloader/pi3;)Lcom/shabakaty/downloader/pi3$b;

    return-object v0
.end method

.method public e()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/pi3;->B:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/pi3;->s:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/pi3;->t:I

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget v1, p0, Lcom/shabakaty/downloader/pi3;->s:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 5
    iget v1, p0, Lcom/shabakaty/downloader/pi3;->u:I

    invoke-static {v3, v1}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget v1, p0, Lcom/shabakaty/downloader/pi3;->s:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    .line 7
    iget-object v4, p0, Lcom/shabakaty/downloader/pi3;->v:Lcom/shabakaty/downloader/pi3$c;

    .line 8
    iget v4, v4, Lcom/shabakaty/downloader/pi3$c;->r:I

    .line 9
    invoke-static {v1, v4}, Lcom/shabakaty/downloader/w40;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_3
    iget v1, p0, Lcom/shabakaty/downloader/pi3;->s:I

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_4

    .line 11
    iget-object v1, p0, Lcom/shabakaty/downloader/pi3;->w:Lcom/shabakaty/downloader/yi3;

    invoke-static {v3, v1}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_4
    iget v1, p0, Lcom/shabakaty/downloader/pi3;->s:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    const/4 v1, 0x5

    .line 13
    iget v3, p0, Lcom/shabakaty/downloader/pi3;->x:I

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    const/4 v1, 0x0

    .line 14
    :goto_1
    iget-object v3, p0, Lcom/shabakaty/downloader/pi3;->y:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    const/4 v3, 0x6

    .line 15
    iget-object v4, p0, Lcom/shabakaty/downloader/pi3;->y:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/es2;

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 16
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/shabakaty/downloader/pi3;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_7

    const/4 v1, 0x7

    .line 17
    iget-object v3, p0, Lcom/shabakaty/downloader/pi3;->z:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/es2;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 18
    :cond_7
    iget-object v1, p0, Lcom/shabakaty/downloader/pi3;->r:Lcom/shabakaty/downloader/ep;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ep;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 19
    iput v1, p0, Lcom/shabakaty/downloader/pi3;->B:I

    return v1
.end method

.method public f(Lcom/shabakaty/downloader/w40;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pi3;->e()I

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/pi3;->s:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/pi3;->t:I

    invoke-virtual {p1, v1, v0}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 4
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/pi3;->s:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 5
    iget v0, p0, Lcom/shabakaty/downloader/pi3;->u:I

    invoke-virtual {p1, v1, v0}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 6
    :cond_1
    iget v0, p0, Lcom/shabakaty/downloader/pi3;->s:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 7
    iget-object v2, p0, Lcom/shabakaty/downloader/pi3;->v:Lcom/shabakaty/downloader/pi3$c;

    .line 8
    iget v2, v2, Lcom/shabakaty/downloader/pi3$c;->r:I

    .line 9
    invoke-virtual {p1, v0, v2}, Lcom/shabakaty/downloader/w40;->n(II)V

    .line 10
    :cond_2
    iget v0, p0, Lcom/shabakaty/downloader/pi3;->s:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/pi3;->w:Lcom/shabakaty/downloader/yi3;

    invoke-virtual {p1, v1, v0}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    .line 12
    :cond_3
    iget v0, p0, Lcom/shabakaty/downloader/pi3;->s:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 13
    iget v1, p0, Lcom/shabakaty/downloader/pi3;->x:I

    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/w40;->p(II)V

    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 14
    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/pi3;->y:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    const/4 v2, 0x6

    .line 15
    iget-object v3, p0, Lcom/shabakaty/downloader/pi3;->y:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/es2;

    invoke-virtual {p1, v2, v3}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/shabakaty/downloader/pi3;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    const/4 v1, 0x7

    .line 17
    iget-object v2, p0, Lcom/shabakaty/downloader/pi3;->z:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/es2;

    invoke-virtual {p1, v1, v2}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 18
    :cond_6
    iget-object v0, p0, Lcom/shabakaty/downloader/pi3;->r:Lcom/shabakaty/downloader/ep;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/w40;->u(Lcom/shabakaty/downloader/ep;)V

    return-void
.end method

.method public g()Lcom/shabakaty/downloader/es2$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pi3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/pi3$b;-><init>()V

    return-object v0
.end method

.method public final i()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/shabakaty/downloader/pi3;->t:I

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/pi3;->u:I

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/pi3$c;->s:Lcom/shabakaty/downloader/pi3$c;

    iput-object v1, p0, Lcom/shabakaty/downloader/pi3;->v:Lcom/shabakaty/downloader/pi3$c;

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/yi3;->K:Lcom/shabakaty/downloader/yi3;

    .line 5
    iput-object v1, p0, Lcom/shabakaty/downloader/pi3;->w:Lcom/shabakaty/downloader/yi3;

    .line 6
    iput v0, p0, Lcom/shabakaty/downloader/pi3;->x:I

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/pi3;->y:Ljava/util/List;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/pi3;->z:Ljava/util/List;

    return-void
.end method
