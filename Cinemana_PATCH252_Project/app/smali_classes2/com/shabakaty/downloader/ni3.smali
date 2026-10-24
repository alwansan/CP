.class public final Lcom/shabakaty/downloader/ni3;
.super Lcom/shabakaty/downloader/pp1;
.source "ProtoBuf.java"

# interfaces
.implements Lcom/shabakaty/downloader/fs2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ni3$b;,
        Lcom/shabakaty/downloader/ni3$d;,
        Lcom/shabakaty/downloader/ni3$c;
    }
.end annotation


# static fields
.field public static A:Lcom/shabakaty/downloader/na3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/na3<",
            "Lcom/shabakaty/downloader/ni3;",
            ">;"
        }
    .end annotation
.end field

.field public static final z:Lcom/shabakaty/downloader/ni3;


# instance fields
.field public final r:Lcom/shabakaty/downloader/ep;

.field public s:I

.field public t:Lcom/shabakaty/downloader/ni3$c;

.field public u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/pi3;",
            ">;"
        }
    .end annotation
.end field

.field public v:Lcom/shabakaty/downloader/pi3;

.field public w:Lcom/shabakaty/downloader/ni3$d;

.field public x:B

.field public y:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ni3$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ni3$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ni3;->A:Lcom/shabakaty/downloader/na3;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ni3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ni3;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ni3;->z:Lcom/shabakaty/downloader/ni3;

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/ni3$c;->s:Lcom/shabakaty/downloader/ni3$c;

    iput-object v1, v0, Lcom/shabakaty/downloader/ni3;->t:Lcom/shabakaty/downloader/ni3$c;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/ni3;->u:Ljava/util/List;

    .line 5
    sget-object v1, Lcom/shabakaty/downloader/pi3;->C:Lcom/shabakaty/downloader/pi3;

    .line 6
    iput-object v1, v0, Lcom/shabakaty/downloader/ni3;->v:Lcom/shabakaty/downloader/pi3;

    .line 7
    sget-object v1, Lcom/shabakaty/downloader/ni3$d;->s:Lcom/shabakaty/downloader/ni3$d;

    iput-object v1, v0, Lcom/shabakaty/downloader/ni3;->w:Lcom/shabakaty/downloader/ni3$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/shabakaty/downloader/ni3;->x:B

    .line 8
    iput v0, p0, Lcom/shabakaty/downloader/ni3;->y:I

    .line 9
    sget-object v0, Lcom/shabakaty/downloader/ep;->r:Lcom/shabakaty/downloader/ep;

    iput-object v0, p0, Lcom/shabakaty/downloader/ni3;->r:Lcom/shabakaty/downloader/ep;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/pp1$b;Lcom/shabakaty/downloader/md0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/pp1;-><init>(Lcom/shabakaty/downloader/pp1$b;)V

    const/4 p2, -0x1

    .line 2
    iput-byte p2, p0, Lcom/shabakaty/downloader/ni3;->x:B

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/ni3;->y:I

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/ni3;->r:Lcom/shabakaty/downloader/ep;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;Lcom/shabakaty/downloader/md0;)V
    .locals 8

    .line 10
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1;-><init>()V

    const/4 p3, -0x1

    .line 11
    iput-byte p3, p0, Lcom/shabakaty/downloader/ni3;->x:B

    .line 12
    iput p3, p0, Lcom/shabakaty/downloader/ni3;->y:I

    .line 13
    sget-object p3, Lcom/shabakaty/downloader/ni3$c;->s:Lcom/shabakaty/downloader/ni3$c;

    iput-object p3, p0, Lcom/shabakaty/downloader/ni3;->t:Lcom/shabakaty/downloader/ni3$c;

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/shabakaty/downloader/ni3;->u:Ljava/util/List;

    .line 15
    sget-object p3, Lcom/shabakaty/downloader/pi3;->C:Lcom/shabakaty/downloader/pi3;

    .line 16
    iput-object p3, p0, Lcom/shabakaty/downloader/ni3;->v:Lcom/shabakaty/downloader/pi3;

    .line 17
    sget-object p3, Lcom/shabakaty/downloader/ni3$d;->s:Lcom/shabakaty/downloader/ni3$d;

    iput-object p3, p0, Lcom/shabakaty/downloader/ni3;->w:Lcom/shabakaty/downloader/ni3$d;

    .line 18
    invoke-static {}, Lcom/shabakaty/downloader/ep;->u()Lcom/shabakaty/downloader/ep$b;

    move-result-object p3

    const/4 v0, 0x1

    .line 19
    invoke-static {p3, v0}, Lcom/shabakaty/downloader/w40;->k(Ljava/io/OutputStream;I)Lcom/shabakaty/downloader/w40;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    const/4 v4, 0x2

    if-nez v2, :cond_c

    .line 20
    :try_start_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->o()I

    move-result v5

    if-eqz v5, :cond_a

    const/16 v6, 0x8

    if-eq v5, v6, :cond_8

    const/16 v6, 0x12

    if-eq v5, v6, :cond_6

    const/16 v6, 0x1a

    if-eq v5, v6, :cond_3

    const/16 v6, 0x20

    if-eq v5, v6, :cond_1

    .line 21
    invoke-virtual {p1, v5, v1}, Lcom/shabakaty/downloader/u40;->r(ILcom/shabakaty/downloader/w40;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 22
    :cond_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v6

    .line 23
    invoke-static {v6}, Lcom/shabakaty/downloader/ni3$d;->f(I)Lcom/shabakaty/downloader/ni3$d;

    move-result-object v7

    if-nez v7, :cond_2

    .line 24
    invoke-virtual {v1, v5}, Lcom/shabakaty/downloader/w40;->y(I)V

    .line 25
    invoke-virtual {v1, v6}, Lcom/shabakaty/downloader/w40;->y(I)V

    goto :goto_0

    .line 26
    :cond_2
    iget v5, p0, Lcom/shabakaty/downloader/ni3;->s:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/shabakaty/downloader/ni3;->s:I

    .line 27
    iput-object v7, p0, Lcom/shabakaty/downloader/ni3;->w:Lcom/shabakaty/downloader/ni3$d;

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    .line 28
    iget v6, p0, Lcom/shabakaty/downloader/ni3;->s:I

    and-int/2addr v6, v4

    if-ne v6, v4, :cond_4

    .line 29
    iget-object v5, p0, Lcom/shabakaty/downloader/ni3;->v:Lcom/shabakaty/downloader/pi3;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v6, Lcom/shabakaty/downloader/pi3$b;

    invoke-direct {v6}, Lcom/shabakaty/downloader/pi3$b;-><init>()V

    .line 31
    invoke-virtual {v6, v5}, Lcom/shabakaty/downloader/pi3$b;->n(Lcom/shabakaty/downloader/pi3;)Lcom/shabakaty/downloader/pi3$b;

    move-object v5, v6

    .line 32
    :cond_4
    sget-object v6, Lcom/shabakaty/downloader/pi3;->D:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v6, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/pi3;

    iput-object v6, p0, Lcom/shabakaty/downloader/ni3;->v:Lcom/shabakaty/downloader/pi3;

    if-eqz v5, :cond_5

    .line 33
    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/pi3$b;->n(Lcom/shabakaty/downloader/pi3;)Lcom/shabakaty/downloader/pi3$b;

    .line 34
    invoke-virtual {v5}, Lcom/shabakaty/downloader/pi3$b;->l()Lcom/shabakaty/downloader/pi3;

    move-result-object v5

    iput-object v5, p0, Lcom/shabakaty/downloader/ni3;->v:Lcom/shabakaty/downloader/pi3;

    .line 35
    :cond_5
    iget v5, p0, Lcom/shabakaty/downloader/ni3;->s:I

    or-int/2addr v5, v4

    iput v5, p0, Lcom/shabakaty/downloader/ni3;->s:I

    goto :goto_0

    :cond_6
    and-int/lit8 v5, v3, 0x2

    if-eq v5, v4, :cond_7

    .line 36
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/shabakaty/downloader/ni3;->u:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    .line 37
    :cond_7
    iget-object v5, p0, Lcom/shabakaty/downloader/ni3;->u:Ljava/util/List;

    sget-object v6, Lcom/shabakaty/downloader/pi3;->D:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v6, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 38
    :cond_8
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v6

    .line 39
    invoke-static {v6}, Lcom/shabakaty/downloader/ni3$c;->f(I)Lcom/shabakaty/downloader/ni3$c;

    move-result-object v7

    if-nez v7, :cond_9

    .line 40
    invoke-virtual {v1, v5}, Lcom/shabakaty/downloader/w40;->y(I)V

    .line 41
    invoke-virtual {v1, v6}, Lcom/shabakaty/downloader/w40;->y(I)V

    goto/16 :goto_0

    .line 42
    :cond_9
    iget v5, p0, Lcom/shabakaty/downloader/ni3;->s:I

    or-int/2addr v5, v0

    iput v5, p0, Lcom/shabakaty/downloader/ni3;->s:I

    .line 43
    iput-object v7, p0, Lcom/shabakaty/downloader/ni3;->t:Lcom/shabakaty/downloader/ni3$c;
    :try_end_0
    .catch Lcom/shabakaty/downloader/s32; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_a
    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 44
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

    :goto_2
    and-int/lit8 p2, v3, 0x2

    if-ne p2, v4, :cond_b

    .line 49
    iget-object p2, p0, Lcom/shabakaty/downloader/ni3;->u:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/ni3;->u:Ljava/util/List;

    .line 50
    :cond_b
    :try_start_2
    invoke-virtual {v1}, Lcom/shabakaty/downloader/w40;->j()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 51
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/ni3;->r:Lcom/shabakaty/downloader/ep;

    throw p1

    :catch_2
    :goto_3
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/ni3;->r:Lcom/shabakaty/downloader/ep;

    .line 52
    throw p1

    :cond_c
    and-int/lit8 p1, v3, 0x2

    if-ne p1, v4, :cond_d

    .line 53
    iget-object p1, p0, Lcom/shabakaty/downloader/ni3;->u:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ni3;->u:Ljava/util/List;

    .line 54
    :cond_d
    :try_start_3
    invoke-virtual {v1}, Lcom/shabakaty/downloader/w40;->j()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    .line 55
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/ni3;->r:Lcom/shabakaty/downloader/ep;

    throw p1

    :catch_3
    :goto_4
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ni3;->r:Lcom/shabakaty/downloader/ep;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .line 1
    iget-byte v0, p0, Lcom/shabakaty/downloader/ni3;->x:B

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
    iget-object v3, p0, Lcom/shabakaty/downloader/ni3;->u:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 3
    iget-object v3, p0, Lcom/shabakaty/downloader/ni3;->u:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/pi3;

    .line 4
    invoke-virtual {v3}, Lcom/shabakaty/downloader/pi3;->a()Z

    move-result v3

    if-nez v3, :cond_2

    .line 5
    iput-byte v2, p0, Lcom/shabakaty/downloader/ni3;->x:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_3
    iget v0, p0, Lcom/shabakaty/downloader/ni3;->s:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/ni3;->v:Lcom/shabakaty/downloader/pi3;

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/pi3;->a()Z

    move-result v0

    if-nez v0, :cond_5

    .line 9
    iput-byte v2, p0, Lcom/shabakaty/downloader/ni3;->x:B

    return v2

    .line 10
    :cond_5
    iput-byte v1, p0, Lcom/shabakaty/downloader/ni3;->x:B

    return v1
.end method

.method public c()Lcom/shabakaty/downloader/es2$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ni3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ni3$b;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/ni3$b;->n(Lcom/shabakaty/downloader/ni3;)Lcom/shabakaty/downloader/ni3$b;

    return-object v0
.end method

.method public e()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ni3;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/ni3;->s:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ni3;->t:Lcom/shabakaty/downloader/ni3$c;

    .line 4
    iget v0, v0, Lcom/shabakaty/downloader/ni3$c;->r:I

    .line 5
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/w40;->b(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/ni3;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ge v2, v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/ni3;->u:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/es2;

    invoke-static {v3, v1}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iget v1, p0, Lcom/shabakaty/downloader/ni3;->s:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    .line 9
    iget-object v2, p0, Lcom/shabakaty/downloader/ni3;->v:Lcom/shabakaty/downloader/pi3;

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_3
    iget v1, p0, Lcom/shabakaty/downloader/ni3;->s:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    .line 11
    iget-object v1, p0, Lcom/shabakaty/downloader/ni3;->w:Lcom/shabakaty/downloader/ni3$d;

    .line 12
    iget v1, v1, Lcom/shabakaty/downloader/ni3$d;->r:I

    .line 13
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/w40;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_4
    iget-object v1, p0, Lcom/shabakaty/downloader/ni3;->r:Lcom/shabakaty/downloader/ep;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ep;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 15
    iput v1, p0, Lcom/shabakaty/downloader/ni3;->y:I

    return v1
.end method

.method public f(Lcom/shabakaty/downloader/w40;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ni3;->e()I

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/ni3;->s:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ni3;->t:Lcom/shabakaty/downloader/ni3$c;

    .line 4
    iget v0, v0, Lcom/shabakaty/downloader/ni3$c;->r:I

    .line 5
    invoke-virtual {p1, v1, v0}, Lcom/shabakaty/downloader/w40;->n(II)V

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/ni3;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v0, v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/ni3;->u:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/es2;

    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget v0, p0, Lcom/shabakaty/downloader/ni3;->s:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x3

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/ni3;->v:Lcom/shabakaty/downloader/pi3;

    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    .line 10
    :cond_2
    iget v0, p0, Lcom/shabakaty/downloader/ni3;->s:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/ni3;->w:Lcom/shabakaty/downloader/ni3$d;

    .line 12
    iget v0, v0, Lcom/shabakaty/downloader/ni3$d;->r:I

    .line 13
    invoke-virtual {p1, v1, v0}, Lcom/shabakaty/downloader/w40;->n(II)V

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/ni3;->r:Lcom/shabakaty/downloader/ep;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/w40;->u(Lcom/shabakaty/downloader/ep;)V

    return-void
.end method

.method public g()Lcom/shabakaty/downloader/es2$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ni3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ni3$b;-><init>()V

    return-object v0
.end method
