.class public final Lcom/shabakaty/downloader/dj3;
.super Lcom/shabakaty/downloader/pp1;
.source "ProtoBuf.java"

# interfaces
.implements Lcom/shabakaty/downloader/fs2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/dj3$b;,
        Lcom/shabakaty/downloader/dj3$d;,
        Lcom/shabakaty/downloader/dj3$c;
    }
.end annotation


# static fields
.field public static final B:Lcom/shabakaty/downloader/dj3;

.field public static C:Lcom/shabakaty/downloader/na3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/na3<",
            "Lcom/shabakaty/downloader/dj3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:I

.field public final r:Lcom/shabakaty/downloader/ep;

.field public s:I

.field public t:I

.field public u:I

.field public v:Lcom/shabakaty/downloader/dj3$c;

.field public w:I

.field public x:I

.field public y:Lcom/shabakaty/downloader/dj3$d;

.field public z:B


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/dj3$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/dj3$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/dj3;->C:Lcom/shabakaty/downloader/na3;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/dj3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/dj3;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/dj3;->B:Lcom/shabakaty/downloader/dj3;

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lcom/shabakaty/downloader/dj3;->t:I

    .line 4
    iput v1, v0, Lcom/shabakaty/downloader/dj3;->u:I

    .line 5
    sget-object v2, Lcom/shabakaty/downloader/dj3$c;->t:Lcom/shabakaty/downloader/dj3$c;

    iput-object v2, v0, Lcom/shabakaty/downloader/dj3;->v:Lcom/shabakaty/downloader/dj3$c;

    .line 6
    iput v1, v0, Lcom/shabakaty/downloader/dj3;->w:I

    .line 7
    iput v1, v0, Lcom/shabakaty/downloader/dj3;->x:I

    .line 8
    sget-object v1, Lcom/shabakaty/downloader/dj3$d;->s:Lcom/shabakaty/downloader/dj3$d;

    iput-object v1, v0, Lcom/shabakaty/downloader/dj3;->y:Lcom/shabakaty/downloader/dj3$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/shabakaty/downloader/dj3;->z:B

    .line 8
    iput v0, p0, Lcom/shabakaty/downloader/dj3;->A:I

    .line 9
    sget-object v0, Lcom/shabakaty/downloader/ep;->r:Lcom/shabakaty/downloader/ep;

    iput-object v0, p0, Lcom/shabakaty/downloader/dj3;->r:Lcom/shabakaty/downloader/ep;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/pp1$b;Lcom/shabakaty/downloader/md0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/pp1;-><init>(Lcom/shabakaty/downloader/pp1$b;)V

    const/4 p2, -0x1

    .line 2
    iput-byte p2, p0, Lcom/shabakaty/downloader/dj3;->z:B

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/dj3;->A:I

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/dj3;->r:Lcom/shabakaty/downloader/ep;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;Lcom/shabakaty/downloader/md0;)V
    .locals 6

    .line 10
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1;-><init>()V

    const/4 p2, -0x1

    .line 11
    iput-byte p2, p0, Lcom/shabakaty/downloader/dj3;->z:B

    .line 12
    iput p2, p0, Lcom/shabakaty/downloader/dj3;->A:I

    const/4 p2, 0x0

    .line 13
    iput p2, p0, Lcom/shabakaty/downloader/dj3;->t:I

    .line 14
    iput p2, p0, Lcom/shabakaty/downloader/dj3;->u:I

    .line 15
    sget-object p3, Lcom/shabakaty/downloader/dj3$c;->t:Lcom/shabakaty/downloader/dj3$c;

    iput-object p3, p0, Lcom/shabakaty/downloader/dj3;->v:Lcom/shabakaty/downloader/dj3$c;

    .line 16
    iput p2, p0, Lcom/shabakaty/downloader/dj3;->w:I

    .line 17
    iput p2, p0, Lcom/shabakaty/downloader/dj3;->x:I

    .line 18
    sget-object p3, Lcom/shabakaty/downloader/dj3$d;->s:Lcom/shabakaty/downloader/dj3$d;

    iput-object p3, p0, Lcom/shabakaty/downloader/dj3;->y:Lcom/shabakaty/downloader/dj3$d;

    .line 19
    invoke-static {}, Lcom/shabakaty/downloader/ep;->u()Lcom/shabakaty/downloader/ep$b;

    move-result-object p3

    const/4 v0, 0x1

    .line 20
    invoke-static {p3, v0}, Lcom/shabakaty/downloader/w40;->k(Ljava/io/OutputStream;I)Lcom/shabakaty/downloader/w40;

    move-result-object v1

    :cond_0
    :goto_0
    if-nez p2, :cond_a

    .line 21
    :try_start_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->o()I

    move-result v2

    if-eqz v2, :cond_9

    const/16 v3, 0x8

    if-eq v2, v3, :cond_8

    const/16 v4, 0x10

    if-eq v2, v4, :cond_7

    const/16 v5, 0x18

    if-eq v2, v5, :cond_5

    const/16 v5, 0x20

    if-eq v2, v5, :cond_4

    const/16 v3, 0x28

    if-eq v2, v3, :cond_3

    const/16 v3, 0x30

    if-eq v2, v3, :cond_1

    .line 22
    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/u40;->r(ILcom/shabakaty/downloader/w40;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v3

    .line 24
    invoke-static {v3}, Lcom/shabakaty/downloader/dj3$d;->f(I)Lcom/shabakaty/downloader/dj3$d;

    move-result-object v4

    if-nez v4, :cond_2

    .line 25
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/w40;->y(I)V

    .line 26
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/w40;->y(I)V

    goto :goto_0

    .line 27
    :cond_2
    iget v2, p0, Lcom/shabakaty/downloader/dj3;->s:I

    or-int/2addr v2, v5

    iput v2, p0, Lcom/shabakaty/downloader/dj3;->s:I

    .line 28
    iput-object v4, p0, Lcom/shabakaty/downloader/dj3;->y:Lcom/shabakaty/downloader/dj3$d;

    goto :goto_0

    .line 29
    :cond_3
    iget v2, p0, Lcom/shabakaty/downloader/dj3;->s:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/shabakaty/downloader/dj3;->s:I

    .line 30
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v2

    .line 31
    iput v2, p0, Lcom/shabakaty/downloader/dj3;->x:I

    goto :goto_0

    .line 32
    :cond_4
    iget v2, p0, Lcom/shabakaty/downloader/dj3;->s:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/shabakaty/downloader/dj3;->s:I

    .line 33
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v2

    .line 34
    iput v2, p0, Lcom/shabakaty/downloader/dj3;->w:I

    goto :goto_0

    .line 35
    :cond_5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v3

    .line 36
    invoke-static {v3}, Lcom/shabakaty/downloader/dj3$c;->f(I)Lcom/shabakaty/downloader/dj3$c;

    move-result-object v4

    if-nez v4, :cond_6

    .line 37
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/w40;->y(I)V

    .line 38
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/w40;->y(I)V

    goto :goto_0

    .line 39
    :cond_6
    iget v2, p0, Lcom/shabakaty/downloader/dj3;->s:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/shabakaty/downloader/dj3;->s:I

    .line 40
    iput-object v4, p0, Lcom/shabakaty/downloader/dj3;->v:Lcom/shabakaty/downloader/dj3$c;

    goto :goto_0

    .line 41
    :cond_7
    iget v2, p0, Lcom/shabakaty/downloader/dj3;->s:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/shabakaty/downloader/dj3;->s:I

    .line 42
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v2

    .line 43
    iput v2, p0, Lcom/shabakaty/downloader/dj3;->u:I

    goto :goto_0

    .line 44
    :cond_8
    iget v2, p0, Lcom/shabakaty/downloader/dj3;->s:I

    or-int/2addr v2, v0

    iput v2, p0, Lcom/shabakaty/downloader/dj3;->s:I

    .line 45
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v2

    .line 46
    iput v2, p0, Lcom/shabakaty/downloader/dj3;->t:I
    :try_end_0
    .catch Lcom/shabakaty/downloader/s32; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_9
    :goto_1
    const/4 p2, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 47
    :try_start_1
    new-instance p2, Lcom/shabakaty/downloader/s32;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/s32;-><init>(Ljava/lang/String;)V

    .line 48
    iput-object p0, p2, Lcom/shabakaty/downloader/s32;->r:Lcom/shabakaty/downloader/es2;

    .line 49
    throw p2

    :catch_1
    move-exception p1

    .line 50
    iput-object p0, p1, Lcom/shabakaty/downloader/s32;->r:Lcom/shabakaty/downloader/es2;

    .line 51
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Lcom/shabakaty/downloader/w40;->j()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 53
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/dj3;->r:Lcom/shabakaty/downloader/ep;

    throw p1

    :catch_2
    :goto_3
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/dj3;->r:Lcom/shabakaty/downloader/ep;

    .line 54
    throw p1

    .line 55
    :cond_a
    :try_start_3
    invoke-virtual {v1}, Lcom/shabakaty/downloader/w40;->j()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    .line 56
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/dj3;->r:Lcom/shabakaty/downloader/ep;

    throw p1

    :catch_3
    :goto_4
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/dj3;->r:Lcom/shabakaty/downloader/ep;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/shabakaty/downloader/dj3;->z:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lcom/shabakaty/downloader/dj3;->z:B

    return v1
.end method

.method public c()Lcom/shabakaty/downloader/es2$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/dj3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/dj3$b;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/dj3$b;->n(Lcom/shabakaty/downloader/dj3;)Lcom/shabakaty/downloader/dj3$b;

    return-object v0
.end method

.method public e()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/dj3;->A:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/dj3;->s:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 3
    iget v1, p0, Lcom/shabakaty/downloader/dj3;->t:I

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget v1, p0, Lcom/shabakaty/downloader/dj3;->s:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 5
    iget v1, p0, Lcom/shabakaty/downloader/dj3;->u:I

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget v1, p0, Lcom/shabakaty/downloader/dj3;->s:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 7
    iget-object v3, p0, Lcom/shabakaty/downloader/dj3;->v:Lcom/shabakaty/downloader/dj3$c;

    .line 8
    iget v3, v3, Lcom/shabakaty/downloader/dj3$c;->r:I

    .line 9
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/w40;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_3
    iget v1, p0, Lcom/shabakaty/downloader/dj3;->s:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 11
    iget v1, p0, Lcom/shabakaty/downloader/dj3;->w:I

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_4
    iget v1, p0, Lcom/shabakaty/downloader/dj3;->s:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    .line 13
    iget v2, p0, Lcom/shabakaty/downloader/dj3;->x:I

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_5
    iget v1, p0, Lcom/shabakaty/downloader/dj3;->s:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    .line 15
    iget-object v2, p0, Lcom/shabakaty/downloader/dj3;->y:Lcom/shabakaty/downloader/dj3$d;

    .line 16
    iget v2, v2, Lcom/shabakaty/downloader/dj3$d;->r:I

    .line 17
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/w40;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_6
    iget-object v1, p0, Lcom/shabakaty/downloader/dj3;->r:Lcom/shabakaty/downloader/ep;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ep;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 19
    iput v1, p0, Lcom/shabakaty/downloader/dj3;->A:I

    return v1
.end method

.method public f(Lcom/shabakaty/downloader/w40;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/dj3;->e()I

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/dj3;->s:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/dj3;->t:I

    invoke-virtual {p1, v1, v0}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 4
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/dj3;->s:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 5
    iget v0, p0, Lcom/shabakaty/downloader/dj3;->u:I

    invoke-virtual {p1, v1, v0}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 6
    :cond_1
    iget v0, p0, Lcom/shabakaty/downloader/dj3;->s:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 7
    iget-object v2, p0, Lcom/shabakaty/downloader/dj3;->v:Lcom/shabakaty/downloader/dj3$c;

    .line 8
    iget v2, v2, Lcom/shabakaty/downloader/dj3$c;->r:I

    .line 9
    invoke-virtual {p1, v0, v2}, Lcom/shabakaty/downloader/w40;->n(II)V

    .line 10
    :cond_2
    iget v0, p0, Lcom/shabakaty/downloader/dj3;->s:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 11
    iget v0, p0, Lcom/shabakaty/downloader/dj3;->w:I

    invoke-virtual {p1, v1, v0}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 12
    :cond_3
    iget v0, p0, Lcom/shabakaty/downloader/dj3;->s:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 13
    iget v1, p0, Lcom/shabakaty/downloader/dj3;->x:I

    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 14
    :cond_4
    iget v0, p0, Lcom/shabakaty/downloader/dj3;->s:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    .line 15
    iget-object v1, p0, Lcom/shabakaty/downloader/dj3;->y:Lcom/shabakaty/downloader/dj3$d;

    .line 16
    iget v1, v1, Lcom/shabakaty/downloader/dj3$d;->r:I

    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/w40;->n(II)V

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/shabakaty/downloader/dj3;->r:Lcom/shabakaty/downloader/ep;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/w40;->u(Lcom/shabakaty/downloader/ep;)V

    return-void
.end method

.method public g()Lcom/shabakaty/downloader/es2$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/dj3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/dj3$b;-><init>()V

    return-object v0
.end method
