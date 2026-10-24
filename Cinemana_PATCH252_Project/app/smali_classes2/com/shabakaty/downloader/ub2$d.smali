.class public final Lcom/shabakaty/downloader/ub2$d;
.super Lcom/shabakaty/downloader/pp1;
.source "JvmProtoBuf.java"

# interfaces
.implements Lcom/shabakaty/downloader/fs2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ub2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ub2$d$b;
    }
.end annotation


# static fields
.field public static final A:Lcom/shabakaty/downloader/ub2$d;

.field public static B:Lcom/shabakaty/downloader/na3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/na3<",
            "Lcom/shabakaty/downloader/ub2$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final r:Lcom/shabakaty/downloader/ep;

.field public s:I

.field public t:Lcom/shabakaty/downloader/ub2$b;

.field public u:Lcom/shabakaty/downloader/ub2$c;

.field public v:Lcom/shabakaty/downloader/ub2$c;

.field public w:Lcom/shabakaty/downloader/ub2$c;

.field public x:Lcom/shabakaty/downloader/ub2$c;

.field public y:B

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ub2$d$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ub2$d$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ub2$d;->B:Lcom/shabakaty/downloader/na3;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ub2$d;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ub2$d;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ub2$d;->A:Lcom/shabakaty/downloader/ub2$d;

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/ub2$b;->x:Lcom/shabakaty/downloader/ub2$b;

    .line 4
    iput-object v1, v0, Lcom/shabakaty/downloader/ub2$d;->t:Lcom/shabakaty/downloader/ub2$b;

    .line 5
    sget-object v1, Lcom/shabakaty/downloader/ub2$c;->x:Lcom/shabakaty/downloader/ub2$c;

    .line 6
    iput-object v1, v0, Lcom/shabakaty/downloader/ub2$d;->u:Lcom/shabakaty/downloader/ub2$c;

    .line 7
    iput-object v1, v0, Lcom/shabakaty/downloader/ub2$d;->v:Lcom/shabakaty/downloader/ub2$c;

    .line 8
    iput-object v1, v0, Lcom/shabakaty/downloader/ub2$d;->w:Lcom/shabakaty/downloader/ub2$c;

    .line 9
    iput-object v1, v0, Lcom/shabakaty/downloader/ub2$d;->x:Lcom/shabakaty/downloader/ub2$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/shabakaty/downloader/ub2$d;->y:B

    .line 8
    iput v0, p0, Lcom/shabakaty/downloader/ub2$d;->z:I

    .line 9
    sget-object v0, Lcom/shabakaty/downloader/ep;->r:Lcom/shabakaty/downloader/ep;

    iput-object v0, p0, Lcom/shabakaty/downloader/ub2$d;->r:Lcom/shabakaty/downloader/ep;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/pp1$b;Lcom/shabakaty/downloader/ub2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/pp1;-><init>(Lcom/shabakaty/downloader/pp1$b;)V

    const/4 p2, -0x1

    .line 2
    iput-byte p2, p0, Lcom/shabakaty/downloader/ub2$d;->y:B

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/ub2$d;->z:I

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/ub2$d;->r:Lcom/shabakaty/downloader/ep;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;Lcom/shabakaty/downloader/ub2$a;)V
    .locals 6

    .line 10
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1;-><init>()V

    const/4 p3, -0x1

    .line 11
    iput-byte p3, p0, Lcom/shabakaty/downloader/ub2$d;->y:B

    .line 12
    iput p3, p0, Lcom/shabakaty/downloader/ub2$d;->z:I

    .line 13
    sget-object p3, Lcom/shabakaty/downloader/ub2$b;->x:Lcom/shabakaty/downloader/ub2$b;

    .line 14
    iput-object p3, p0, Lcom/shabakaty/downloader/ub2$d;->t:Lcom/shabakaty/downloader/ub2$b;

    .line 15
    sget-object p3, Lcom/shabakaty/downloader/ub2$c;->x:Lcom/shabakaty/downloader/ub2$c;

    .line 16
    iput-object p3, p0, Lcom/shabakaty/downloader/ub2$d;->u:Lcom/shabakaty/downloader/ub2$c;

    .line 17
    iput-object p3, p0, Lcom/shabakaty/downloader/ub2$d;->v:Lcom/shabakaty/downloader/ub2$c;

    .line 18
    iput-object p3, p0, Lcom/shabakaty/downloader/ub2$d;->w:Lcom/shabakaty/downloader/ub2$c;

    .line 19
    iput-object p3, p0, Lcom/shabakaty/downloader/ub2$d;->x:Lcom/shabakaty/downloader/ub2$c;

    .line 20
    invoke-static {}, Lcom/shabakaty/downloader/ep;->u()Lcom/shabakaty/downloader/ep$b;

    move-result-object p3

    const/4 v0, 0x1

    .line 21
    invoke-static {p3, v0}, Lcom/shabakaty/downloader/w40;->k(Ljava/io/OutputStream;I)Lcom/shabakaty/downloader/w40;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v2, :cond_11

    .line 22
    :try_start_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->o()I

    move-result v3

    if-eqz v3, :cond_10

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v3, v4, :cond_d

    const/16 v4, 0x12

    if-eq v3, v4, :cond_a

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_7

    const/16 v4, 0x22

    if-eq v3, v4, :cond_4

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_1

    .line 23
    invoke-virtual {p1, v3, v1}, Lcom/shabakaty/downloader/u40;->r(ILcom/shabakaty/downloader/w40;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 24
    :cond_1
    iget v3, p0, Lcom/shabakaty/downloader/ub2$d;->s:I

    const/16 v4, 0x10

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    .line 25
    iget-object v3, p0, Lcom/shabakaty/downloader/ub2$d;->x:Lcom/shabakaty/downloader/ub2$c;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {v3}, Lcom/shabakaty/downloader/ub2$c;->k(Lcom/shabakaty/downloader/ub2$c;)Lcom/shabakaty/downloader/ub2$c$b;

    move-result-object v5

    .line 27
    :cond_2
    sget-object v3, Lcom/shabakaty/downloader/ub2$c;->y:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v3, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/ub2$c;

    iput-object v3, p0, Lcom/shabakaty/downloader/ub2$d;->x:Lcom/shabakaty/downloader/ub2$c;

    if-eqz v5, :cond_3

    .line 28
    invoke-virtual {v5, v3}, Lcom/shabakaty/downloader/ub2$c$b;->n(Lcom/shabakaty/downloader/ub2$c;)Lcom/shabakaty/downloader/ub2$c$b;

    .line 29
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ub2$c$b;->l()Lcom/shabakaty/downloader/ub2$c;

    move-result-object v3

    iput-object v3, p0, Lcom/shabakaty/downloader/ub2$d;->x:Lcom/shabakaty/downloader/ub2$c;

    .line 30
    :cond_3
    iget v3, p0, Lcom/shabakaty/downloader/ub2$d;->s:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/shabakaty/downloader/ub2$d;->s:I

    goto :goto_0

    .line 31
    :cond_4
    iget v3, p0, Lcom/shabakaty/downloader/ub2$d;->s:I

    const/16 v4, 0x8

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_5

    .line 32
    iget-object v3, p0, Lcom/shabakaty/downloader/ub2$d;->w:Lcom/shabakaty/downloader/ub2$c;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {v3}, Lcom/shabakaty/downloader/ub2$c;->k(Lcom/shabakaty/downloader/ub2$c;)Lcom/shabakaty/downloader/ub2$c$b;

    move-result-object v5

    .line 34
    :cond_5
    sget-object v3, Lcom/shabakaty/downloader/ub2$c;->y:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v3, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/ub2$c;

    iput-object v3, p0, Lcom/shabakaty/downloader/ub2$d;->w:Lcom/shabakaty/downloader/ub2$c;

    if-eqz v5, :cond_6

    .line 35
    invoke-virtual {v5, v3}, Lcom/shabakaty/downloader/ub2$c$b;->n(Lcom/shabakaty/downloader/ub2$c;)Lcom/shabakaty/downloader/ub2$c$b;

    .line 36
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ub2$c$b;->l()Lcom/shabakaty/downloader/ub2$c;

    move-result-object v3

    iput-object v3, p0, Lcom/shabakaty/downloader/ub2$d;->w:Lcom/shabakaty/downloader/ub2$c;

    .line 37
    :cond_6
    iget v3, p0, Lcom/shabakaty/downloader/ub2$d;->s:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/shabakaty/downloader/ub2$d;->s:I

    goto :goto_0

    .line 38
    :cond_7
    iget v3, p0, Lcom/shabakaty/downloader/ub2$d;->s:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_8

    .line 39
    iget-object v3, p0, Lcom/shabakaty/downloader/ub2$d;->v:Lcom/shabakaty/downloader/ub2$c;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static {v3}, Lcom/shabakaty/downloader/ub2$c;->k(Lcom/shabakaty/downloader/ub2$c;)Lcom/shabakaty/downloader/ub2$c$b;

    move-result-object v5

    .line 41
    :cond_8
    sget-object v3, Lcom/shabakaty/downloader/ub2$c;->y:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v3, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/ub2$c;

    iput-object v3, p0, Lcom/shabakaty/downloader/ub2$d;->v:Lcom/shabakaty/downloader/ub2$c;

    if-eqz v5, :cond_9

    .line 42
    invoke-virtual {v5, v3}, Lcom/shabakaty/downloader/ub2$c$b;->n(Lcom/shabakaty/downloader/ub2$c;)Lcom/shabakaty/downloader/ub2$c$b;

    .line 43
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ub2$c$b;->l()Lcom/shabakaty/downloader/ub2$c;

    move-result-object v3

    iput-object v3, p0, Lcom/shabakaty/downloader/ub2$d;->v:Lcom/shabakaty/downloader/ub2$c;

    .line 44
    :cond_9
    iget v3, p0, Lcom/shabakaty/downloader/ub2$d;->s:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/shabakaty/downloader/ub2$d;->s:I

    goto/16 :goto_0

    .line 45
    :cond_a
    iget v3, p0, Lcom/shabakaty/downloader/ub2$d;->s:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_b

    .line 46
    iget-object v3, p0, Lcom/shabakaty/downloader/ub2$d;->u:Lcom/shabakaty/downloader/ub2$c;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {v3}, Lcom/shabakaty/downloader/ub2$c;->k(Lcom/shabakaty/downloader/ub2$c;)Lcom/shabakaty/downloader/ub2$c$b;

    move-result-object v5

    .line 48
    :cond_b
    sget-object v3, Lcom/shabakaty/downloader/ub2$c;->y:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v3, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/ub2$c;

    iput-object v3, p0, Lcom/shabakaty/downloader/ub2$d;->u:Lcom/shabakaty/downloader/ub2$c;

    if-eqz v5, :cond_c

    .line 49
    invoke-virtual {v5, v3}, Lcom/shabakaty/downloader/ub2$c$b;->n(Lcom/shabakaty/downloader/ub2$c;)Lcom/shabakaty/downloader/ub2$c$b;

    .line 50
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ub2$c$b;->l()Lcom/shabakaty/downloader/ub2$c;

    move-result-object v3

    iput-object v3, p0, Lcom/shabakaty/downloader/ub2$d;->u:Lcom/shabakaty/downloader/ub2$c;

    .line 51
    :cond_c
    iget v3, p0, Lcom/shabakaty/downloader/ub2$d;->s:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/shabakaty/downloader/ub2$d;->s:I

    goto/16 :goto_0

    .line 52
    :cond_d
    iget v3, p0, Lcom/shabakaty/downloader/ub2$d;->s:I

    and-int/2addr v3, v0

    if-ne v3, v0, :cond_e

    .line 53
    iget-object v3, p0, Lcom/shabakaty/downloader/ub2$d;->t:Lcom/shabakaty/downloader/ub2$b;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v5, Lcom/shabakaty/downloader/ub2$b$b;

    invoke-direct {v5}, Lcom/shabakaty/downloader/ub2$b$b;-><init>()V

    .line 55
    invoke-virtual {v5, v3}, Lcom/shabakaty/downloader/ub2$b$b;->n(Lcom/shabakaty/downloader/ub2$b;)Lcom/shabakaty/downloader/ub2$b$b;

    .line 56
    :cond_e
    sget-object v3, Lcom/shabakaty/downloader/ub2$b;->y:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v3, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/ub2$b;

    iput-object v3, p0, Lcom/shabakaty/downloader/ub2$d;->t:Lcom/shabakaty/downloader/ub2$b;

    if-eqz v5, :cond_f

    .line 57
    invoke-virtual {v5, v3}, Lcom/shabakaty/downloader/ub2$b$b;->n(Lcom/shabakaty/downloader/ub2$b;)Lcom/shabakaty/downloader/ub2$b$b;

    .line 58
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ub2$b$b;->l()Lcom/shabakaty/downloader/ub2$b;

    move-result-object v3

    iput-object v3, p0, Lcom/shabakaty/downloader/ub2$d;->t:Lcom/shabakaty/downloader/ub2$b;

    .line 59
    :cond_f
    iget v3, p0, Lcom/shabakaty/downloader/ub2$d;->s:I

    or-int/2addr v3, v0

    iput v3, p0, Lcom/shabakaty/downloader/ub2$d;->s:I
    :try_end_0
    .catch Lcom/shabakaty/downloader/s32; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_10
    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 60
    :try_start_1
    new-instance p2, Lcom/shabakaty/downloader/s32;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/s32;-><init>(Ljava/lang/String;)V

    .line 61
    iput-object p0, p2, Lcom/shabakaty/downloader/s32;->r:Lcom/shabakaty/downloader/es2;

    .line 62
    throw p2

    :catch_1
    move-exception p1

    .line 63
    iput-object p0, p1, Lcom/shabakaty/downloader/s32;->r:Lcom/shabakaty/downloader/es2;

    .line 64
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Lcom/shabakaty/downloader/w40;->j()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 66
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/ub2$d;->r:Lcom/shabakaty/downloader/ep;

    throw p1

    :catch_2
    :goto_3
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/ub2$d;->r:Lcom/shabakaty/downloader/ep;

    .line 67
    throw p1

    .line 68
    :cond_11
    :try_start_3
    invoke-virtual {v1}, Lcom/shabakaty/downloader/w40;->j()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    .line 69
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/ub2$d;->r:Lcom/shabakaty/downloader/ep;

    throw p1

    :catch_3
    :goto_4
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ub2$d;->r:Lcom/shabakaty/downloader/ep;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/shabakaty/downloader/ub2$d;->y:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lcom/shabakaty/downloader/ub2$d;->y:B

    return v1
.end method

.method public c()Lcom/shabakaty/downloader/es2$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ub2$d$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ub2$d$b;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/ub2$d$b;->n(Lcom/shabakaty/downloader/ub2$d;)Lcom/shabakaty/downloader/ub2$d$b;

    return-object v0
.end method

.method public e()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ub2$d;->z:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/ub2$d;->s:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/ub2$d;->t:Lcom/shabakaty/downloader/ub2$b;

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget v1, p0, Lcom/shabakaty/downloader/ub2$d;->s:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/ub2$d;->u:Lcom/shabakaty/downloader/ub2$c;

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget v1, p0, Lcom/shabakaty/downloader/ub2$d;->s:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 7
    iget-object v3, p0, Lcom/shabakaty/downloader/ub2$d;->v:Lcom/shabakaty/downloader/ub2$c;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    iget v1, p0, Lcom/shabakaty/downloader/ub2$d;->s:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/ub2$d;->w:Lcom/shabakaty/downloader/ub2$c;

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_4
    iget v1, p0, Lcom/shabakaty/downloader/ub2$d;->s:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    .line 11
    iget-object v2, p0, Lcom/shabakaty/downloader/ub2$d;->x:Lcom/shabakaty/downloader/ub2$c;

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_5
    iget-object v1, p0, Lcom/shabakaty/downloader/ub2$d;->r:Lcom/shabakaty/downloader/ep;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ep;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 13
    iput v1, p0, Lcom/shabakaty/downloader/ub2$d;->z:I

    return v1
.end method

.method public f(Lcom/shabakaty/downloader/w40;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ub2$d;->e()I

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/ub2$d;->s:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ub2$d;->t:Lcom/shabakaty/downloader/ub2$b;

    invoke-virtual {p1, v1, v0}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    .line 4
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/ub2$d;->s:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/ub2$d;->u:Lcom/shabakaty/downloader/ub2$c;

    invoke-virtual {p1, v1, v0}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    .line 6
    :cond_1
    iget v0, p0, Lcom/shabakaty/downloader/ub2$d;->s:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 7
    iget-object v2, p0, Lcom/shabakaty/downloader/ub2$d;->v:Lcom/shabakaty/downloader/ub2$c;

    invoke-virtual {p1, v0, v2}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    .line 8
    :cond_2
    iget v0, p0, Lcom/shabakaty/downloader/ub2$d;->s:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/ub2$d;->w:Lcom/shabakaty/downloader/ub2$c;

    invoke-virtual {p1, v1, v0}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    .line 10
    :cond_3
    iget v0, p0, Lcom/shabakaty/downloader/ub2$d;->s:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 11
    iget-object v1, p0, Lcom/shabakaty/downloader/ub2$d;->x:Lcom/shabakaty/downloader/ub2$c;

    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/shabakaty/downloader/ub2$d;->r:Lcom/shabakaty/downloader/ep;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/w40;->u(Lcom/shabakaty/downloader/ep;)V

    return-void
.end method

.method public g()Lcom/shabakaty/downloader/es2$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ub2$d$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ub2$d$b;-><init>()V

    return-object v0
.end method

.method public i()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ub2$d;->s:I

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

.method public j()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ub2$d;->s:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
