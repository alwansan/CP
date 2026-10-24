.class public final Lcom/shabakaty/downloader/cj3;
.super Lcom/shabakaty/downloader/pp1$d;
.source "ProtoBuf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/cj3$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/pp1$d<",
        "Lcom/shabakaty/downloader/cj3;",
        ">;"
    }
.end annotation


# static fields
.field public static final C:Lcom/shabakaty/downloader/cj3;

.field public static D:Lcom/shabakaty/downloader/na3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/na3<",
            "Lcom/shabakaty/downloader/cj3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:B

.field public B:I

.field public final s:Lcom/shabakaty/downloader/ep;

.field public t:I

.field public u:I

.field public v:I

.field public w:Lcom/shabakaty/downloader/yi3;

.field public x:I

.field public y:Lcom/shabakaty/downloader/yi3;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/cj3$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/cj3$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/cj3;->D:Lcom/shabakaty/downloader/na3;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/cj3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/cj3;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/cj3;->C:Lcom/shabakaty/downloader/cj3;

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lcom/shabakaty/downloader/cj3;->u:I

    .line 4
    iput v1, v0, Lcom/shabakaty/downloader/cj3;->v:I

    .line 5
    sget-object v2, Lcom/shabakaty/downloader/yi3;->K:Lcom/shabakaty/downloader/yi3;

    .line 6
    iput-object v2, v0, Lcom/shabakaty/downloader/cj3;->w:Lcom/shabakaty/downloader/yi3;

    .line 7
    iput v1, v0, Lcom/shabakaty/downloader/cj3;->x:I

    .line 8
    iput-object v2, v0, Lcom/shabakaty/downloader/cj3;->y:Lcom/shabakaty/downloader/yi3;

    .line 9
    iput v1, v0, Lcom/shabakaty/downloader/cj3;->z:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1$d;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/shabakaty/downloader/cj3;->A:B

    .line 8
    iput v0, p0, Lcom/shabakaty/downloader/cj3;->B:I

    .line 9
    sget-object v0, Lcom/shabakaty/downloader/ep;->r:Lcom/shabakaty/downloader/ep;

    iput-object v0, p0, Lcom/shabakaty/downloader/cj3;->s:Lcom/shabakaty/downloader/ep;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/pp1$c;Lcom/shabakaty/downloader/md0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/pp1$d;-><init>(Lcom/shabakaty/downloader/pp1$c;)V

    const/4 p2, -0x1

    .line 2
    iput-byte p2, p0, Lcom/shabakaty/downloader/cj3;->A:B

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/cj3;->B:I

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/cj3;->s:Lcom/shabakaty/downloader/ep;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;Lcom/shabakaty/downloader/md0;)V
    .locals 8

    .line 10
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1$d;-><init>()V

    const/4 p3, -0x1

    .line 11
    iput-byte p3, p0, Lcom/shabakaty/downloader/cj3;->A:B

    .line 12
    iput p3, p0, Lcom/shabakaty/downloader/cj3;->B:I

    const/4 p3, 0x0

    .line 13
    iput p3, p0, Lcom/shabakaty/downloader/cj3;->u:I

    .line 14
    iput p3, p0, Lcom/shabakaty/downloader/cj3;->v:I

    .line 15
    sget-object v0, Lcom/shabakaty/downloader/yi3;->K:Lcom/shabakaty/downloader/yi3;

    .line 16
    iput-object v0, p0, Lcom/shabakaty/downloader/cj3;->w:Lcom/shabakaty/downloader/yi3;

    .line 17
    iput p3, p0, Lcom/shabakaty/downloader/cj3;->x:I

    .line 18
    iput-object v0, p0, Lcom/shabakaty/downloader/cj3;->y:Lcom/shabakaty/downloader/yi3;

    .line 19
    iput p3, p0, Lcom/shabakaty/downloader/cj3;->z:I

    .line 20
    invoke-static {}, Lcom/shabakaty/downloader/ep;->u()Lcom/shabakaty/downloader/ep$b;

    move-result-object v0

    const/4 v1, 0x1

    .line 21
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/w40;->k(Ljava/io/OutputStream;I)Lcom/shabakaty/downloader/w40;

    move-result-object v2

    :cond_0
    :goto_0
    if-nez p3, :cond_c

    .line 22
    :try_start_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->o()I

    move-result v3

    if-eqz v3, :cond_b

    const/16 v4, 0x8

    if-eq v3, v4, :cond_a

    const/16 v5, 0x10

    if-eq v3, v5, :cond_9

    const/16 v6, 0x1a

    const/4 v7, 0x0

    if-eq v3, v6, :cond_6

    const/16 v6, 0x22

    if-eq v3, v6, :cond_3

    const/16 v5, 0x28

    if-eq v3, v5, :cond_2

    const/16 v4, 0x30

    if-eq v3, v4, :cond_1

    .line 23
    invoke-virtual {p0, p1, v2, p2, v3}, Lcom/shabakaty/downloader/pp1$d;->o(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/w40;Lcom/shabakaty/downloader/t81;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 24
    :cond_1
    iget v3, p0, Lcom/shabakaty/downloader/cj3;->t:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/shabakaty/downloader/cj3;->t:I

    .line 25
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v3

    .line 26
    iput v3, p0, Lcom/shabakaty/downloader/cj3;->z:I

    goto :goto_0

    .line 27
    :cond_2
    iget v3, p0, Lcom/shabakaty/downloader/cj3;->t:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/shabakaty/downloader/cj3;->t:I

    .line 28
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v3

    .line 29
    iput v3, p0, Lcom/shabakaty/downloader/cj3;->x:I

    goto :goto_0

    .line 30
    :cond_3
    iget v3, p0, Lcom/shabakaty/downloader/cj3;->t:I

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_4

    .line 31
    iget-object v3, p0, Lcom/shabakaty/downloader/cj3;->y:Lcom/shabakaty/downloader/yi3;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {v3}, Lcom/shabakaty/downloader/yi3;->w(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3$c;

    move-result-object v7

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    .line 33
    :cond_4
    :goto_1
    sget-object v3, Lcom/shabakaty/downloader/yi3;->L:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v3, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/yi3;

    iput-object v3, p0, Lcom/shabakaty/downloader/cj3;->y:Lcom/shabakaty/downloader/yi3;

    if-eqz v7, :cond_5

    .line 34
    invoke-virtual {v7, v3}, Lcom/shabakaty/downloader/yi3$c;->o(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3$c;

    .line 35
    invoke-virtual {v7}, Lcom/shabakaty/downloader/yi3$c;->m()Lcom/shabakaty/downloader/yi3;

    move-result-object v3

    iput-object v3, p0, Lcom/shabakaty/downloader/cj3;->y:Lcom/shabakaty/downloader/yi3;

    .line 36
    :cond_5
    iget v3, p0, Lcom/shabakaty/downloader/cj3;->t:I

    or-int/2addr v3, v5

    iput v3, p0, Lcom/shabakaty/downloader/cj3;->t:I

    goto :goto_0

    .line 37
    :cond_6
    iget v3, p0, Lcom/shabakaty/downloader/cj3;->t:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_7

    .line 38
    iget-object v3, p0, Lcom/shabakaty/downloader/cj3;->w:Lcom/shabakaty/downloader/yi3;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {v3}, Lcom/shabakaty/downloader/yi3;->w(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3$c;

    move-result-object v7

    .line 40
    :cond_7
    sget-object v3, Lcom/shabakaty/downloader/yi3;->L:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v3, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/yi3;

    iput-object v3, p0, Lcom/shabakaty/downloader/cj3;->w:Lcom/shabakaty/downloader/yi3;

    if-eqz v7, :cond_8

    .line 41
    invoke-virtual {v7, v3}, Lcom/shabakaty/downloader/yi3$c;->o(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3$c;

    .line 42
    invoke-virtual {v7}, Lcom/shabakaty/downloader/yi3$c;->m()Lcom/shabakaty/downloader/yi3;

    move-result-object v3

    iput-object v3, p0, Lcom/shabakaty/downloader/cj3;->w:Lcom/shabakaty/downloader/yi3;

    .line 43
    :cond_8
    iget v3, p0, Lcom/shabakaty/downloader/cj3;->t:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/shabakaty/downloader/cj3;->t:I

    goto/16 :goto_0

    .line 44
    :cond_9
    iget v3, p0, Lcom/shabakaty/downloader/cj3;->t:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/shabakaty/downloader/cj3;->t:I

    .line 45
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v3

    .line 46
    iput v3, p0, Lcom/shabakaty/downloader/cj3;->v:I

    goto/16 :goto_0

    .line 47
    :cond_a
    iget v3, p0, Lcom/shabakaty/downloader/cj3;->t:I

    or-int/2addr v3, v1

    iput v3, p0, Lcom/shabakaty/downloader/cj3;->t:I

    .line 48
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v3

    .line 49
    iput v3, p0, Lcom/shabakaty/downloader/cj3;->u:I
    :try_end_0
    .catch Lcom/shabakaty/downloader/s32; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_b
    :goto_2
    const/4 p3, 0x1

    goto/16 :goto_0

    .line 50
    :goto_3
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

    .line 55
    :goto_4
    :try_start_2
    invoke-virtual {v2}, Lcom/shabakaty/downloader/w40;->j()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    .line 56
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/cj3;->s:Lcom/shabakaty/downloader/ep;

    throw p1

    :catch_2
    :goto_5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/cj3;->s:Lcom/shabakaty/downloader/ep;

    .line 57
    iget-object p2, p0, Lcom/shabakaty/downloader/pp1$d;->r:Lcom/shabakaty/downloader/ua1;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ua1;->i()V

    .line 58
    throw p1

    .line 59
    :cond_c
    :try_start_3
    invoke-virtual {v2}, Lcom/shabakaty/downloader/w40;->j()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p1

    .line 60
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/cj3;->s:Lcom/shabakaty/downloader/ep;

    throw p1

    :catch_3
    :goto_6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/cj3;->s:Lcom/shabakaty/downloader/ep;

    .line 61
    iget-object p1, p0, Lcom/shabakaty/downloader/pp1$d;->r:Lcom/shabakaty/downloader/ua1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ua1;->i()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .line 1
    iget-byte v0, p0, Lcom/shabakaty/downloader/cj3;->A:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 2
    :cond_1
    iget v0, p0, Lcom/shabakaty/downloader/cj3;->t:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 3
    iput-byte v2, p0, Lcom/shabakaty/downloader/cj3;->A:B

    return v2

    .line 4
    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/cj3;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/cj3;->w:Lcom/shabakaty/downloader/yi3;

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yi3;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 7
    iput-byte v2, p0, Lcom/shabakaty/downloader/cj3;->A:B

    return v2

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/cj3;->r()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/cj3;->y:Lcom/shabakaty/downloader/yi3;

    .line 10
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yi3;->a()Z

    move-result v0

    if-nez v0, :cond_5

    .line 11
    iput-byte v2, p0, Lcom/shabakaty/downloader/cj3;->A:B

    return v2

    .line 12
    :cond_5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pp1$d;->i()Z

    move-result v0

    if-nez v0, :cond_6

    .line 13
    iput-byte v2, p0, Lcom/shabakaty/downloader/cj3;->A:B

    return v2

    .line 14
    :cond_6
    iput-byte v1, p0, Lcom/shabakaty/downloader/cj3;->A:B

    return v1
.end method

.method public b()Lcom/shabakaty/downloader/es2;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/cj3;->C:Lcom/shabakaty/downloader/cj3;

    return-object v0
.end method

.method public c()Lcom/shabakaty/downloader/es2$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/cj3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/cj3$b;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/cj3$b;->o(Lcom/shabakaty/downloader/cj3;)Lcom/shabakaty/downloader/cj3$b;

    return-object v0
.end method

.method public e()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/cj3;->B:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/cj3;->t:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 3
    iget v1, p0, Lcom/shabakaty/downloader/cj3;->u:I

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget v1, p0, Lcom/shabakaty/downloader/cj3;->t:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 5
    iget v1, p0, Lcom/shabakaty/downloader/cj3;->v:I

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget v1, p0, Lcom/shabakaty/downloader/cj3;->t:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 7
    iget-object v3, p0, Lcom/shabakaty/downloader/cj3;->w:Lcom/shabakaty/downloader/yi3;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    iget v1, p0, Lcom/shabakaty/downloader/cj3;->t:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/cj3;->y:Lcom/shabakaty/downloader/yi3;

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_4
    iget v1, p0, Lcom/shabakaty/downloader/cj3;->t:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    .line 11
    iget v2, p0, Lcom/shabakaty/downloader/cj3;->x:I

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_5
    iget v1, p0, Lcom/shabakaty/downloader/cj3;->t:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    .line 13
    iget v2, p0, Lcom/shabakaty/downloader/cj3;->z:I

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pp1$d;->j()I

    move-result v1

    add-int/2addr v1, v0

    .line 15
    iget-object v0, p0, Lcom/shabakaty/downloader/cj3;->s:Lcom/shabakaty/downloader/ep;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ep;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 16
    iput v0, p0, Lcom/shabakaty/downloader/cj3;->B:I

    return v0
.end method

.method public f(Lcom/shabakaty/downloader/w40;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/cj3;->e()I

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pp1$d;->n()Lcom/shabakaty/downloader/pp1$d$a;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/shabakaty/downloader/cj3;->t:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 4
    iget v1, p0, Lcom/shabakaty/downloader/cj3;->u:I

    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 5
    :cond_0
    iget v1, p0, Lcom/shabakaty/downloader/cj3;->t:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 6
    iget v1, p0, Lcom/shabakaty/downloader/cj3;->v:I

    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 7
    :cond_1
    iget v1, p0, Lcom/shabakaty/downloader/cj3;->t:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    .line 8
    iget-object v3, p0, Lcom/shabakaty/downloader/cj3;->w:Lcom/shabakaty/downloader/yi3;

    invoke-virtual {p1, v1, v3}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    .line 9
    :cond_2
    iget v1, p0, Lcom/shabakaty/downloader/cj3;->t:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/cj3;->y:Lcom/shabakaty/downloader/yi3;

    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    .line 11
    :cond_3
    iget v1, p0, Lcom/shabakaty/downloader/cj3;->t:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x5

    .line 12
    iget v2, p0, Lcom/shabakaty/downloader/cj3;->x:I

    invoke-virtual {p1, v1, v2}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 13
    :cond_4
    iget v1, p0, Lcom/shabakaty/downloader/cj3;->t:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x6

    .line 14
    iget v2, p0, Lcom/shabakaty/downloader/cj3;->z:I

    invoke-virtual {p1, v1, v2}, Lcom/shabakaty/downloader/w40;->p(II)V

    :cond_5
    const/16 v1, 0xc8

    .line 15
    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/pp1$d$a;->a(ILcom/shabakaty/downloader/w40;)V

    .line 16
    iget-object v0, p0, Lcom/shabakaty/downloader/cj3;->s:Lcom/shabakaty/downloader/ep;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/w40;->u(Lcom/shabakaty/downloader/ep;)V

    return-void
.end method

.method public g()Lcom/shabakaty/downloader/es2$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/cj3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/cj3$b;-><init>()V

    return-object v0
.end method

.method public q()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/cj3;->t:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/cj3;->t:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
