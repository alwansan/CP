.class public final Lcom/shabakaty/downloader/yi3$b;
.super Lcom/shabakaty/downloader/pp1;
.source "ProtoBuf.java"

# interfaces
.implements Lcom/shabakaty/downloader/fs2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/yi3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/yi3$b$b;,
        Lcom/shabakaty/downloader/yi3$b$c;
    }
.end annotation


# static fields
.field public static final y:Lcom/shabakaty/downloader/yi3$b;

.field public static z:Lcom/shabakaty/downloader/na3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/na3<",
            "Lcom/shabakaty/downloader/yi3$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final r:Lcom/shabakaty/downloader/ep;

.field public s:I

.field public t:Lcom/shabakaty/downloader/yi3$b$c;

.field public u:Lcom/shabakaty/downloader/yi3;

.field public v:I

.field public w:B

.field public x:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/yi3$b$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/yi3$b$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/yi3$b;->z:Lcom/shabakaty/downloader/na3;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/yi3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/yi3$b;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/yi3$b;->y:Lcom/shabakaty/downloader/yi3$b;

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/yi3$b$c;->u:Lcom/shabakaty/downloader/yi3$b$c;

    iput-object v1, v0, Lcom/shabakaty/downloader/yi3$b;->t:Lcom/shabakaty/downloader/yi3$b$c;

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/yi3;->K:Lcom/shabakaty/downloader/yi3;

    .line 5
    iput-object v1, v0, Lcom/shabakaty/downloader/yi3$b;->u:Lcom/shabakaty/downloader/yi3;

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Lcom/shabakaty/downloader/yi3$b;->v:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/shabakaty/downloader/yi3$b;->w:B

    .line 8
    iput v0, p0, Lcom/shabakaty/downloader/yi3$b;->x:I

    .line 9
    sget-object v0, Lcom/shabakaty/downloader/ep;->r:Lcom/shabakaty/downloader/ep;

    iput-object v0, p0, Lcom/shabakaty/downloader/yi3$b;->r:Lcom/shabakaty/downloader/ep;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/pp1$b;Lcom/shabakaty/downloader/md0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/pp1;-><init>(Lcom/shabakaty/downloader/pp1$b;)V

    const/4 p2, -0x1

    .line 2
    iput-byte p2, p0, Lcom/shabakaty/downloader/yi3$b;->w:B

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/yi3$b;->x:I

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/yi3$b;->r:Lcom/shabakaty/downloader/ep;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;Lcom/shabakaty/downloader/md0;)V
    .locals 6

    .line 10
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1;-><init>()V

    const/4 p3, -0x1

    .line 11
    iput-byte p3, p0, Lcom/shabakaty/downloader/yi3$b;->w:B

    .line 12
    iput p3, p0, Lcom/shabakaty/downloader/yi3$b;->x:I

    .line 13
    sget-object p3, Lcom/shabakaty/downloader/yi3$b$c;->u:Lcom/shabakaty/downloader/yi3$b$c;

    iput-object p3, p0, Lcom/shabakaty/downloader/yi3$b;->t:Lcom/shabakaty/downloader/yi3$b$c;

    .line 14
    sget-object p3, Lcom/shabakaty/downloader/yi3;->K:Lcom/shabakaty/downloader/yi3;

    .line 15
    iput-object p3, p0, Lcom/shabakaty/downloader/yi3$b;->u:Lcom/shabakaty/downloader/yi3;

    const/4 p3, 0x0

    .line 16
    iput p3, p0, Lcom/shabakaty/downloader/yi3$b;->v:I

    .line 17
    invoke-static {}, Lcom/shabakaty/downloader/ep;->u()Lcom/shabakaty/downloader/ep$b;

    move-result-object v0

    const/4 v1, 0x1

    .line 18
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/w40;->k(Ljava/io/OutputStream;I)Lcom/shabakaty/downloader/w40;

    move-result-object v2

    :cond_0
    :goto_0
    if-nez p3, :cond_8

    .line 19
    :try_start_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->o()I

    move-result v3

    if-eqz v3, :cond_7

    const/16 v4, 0x8

    if-eq v3, v4, :cond_5

    const/16 v4, 0x12

    if-eq v3, v4, :cond_2

    const/16 v4, 0x18

    if-eq v3, v4, :cond_1

    .line 20
    invoke-virtual {p1, v3, v2}, Lcom/shabakaty/downloader/u40;->r(ILcom/shabakaty/downloader/w40;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 21
    :cond_1
    iget v3, p0, Lcom/shabakaty/downloader/yi3$b;->s:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/shabakaty/downloader/yi3$b;->s:I

    .line 22
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v3

    .line 23
    iput v3, p0, Lcom/shabakaty/downloader/yi3$b;->v:I

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 24
    iget v4, p0, Lcom/shabakaty/downloader/yi3$b;->s:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_3

    .line 25
    iget-object v3, p0, Lcom/shabakaty/downloader/yi3$b;->u:Lcom/shabakaty/downloader/yi3;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {v3}, Lcom/shabakaty/downloader/yi3;->w(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3$c;

    move-result-object v3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    .line 27
    :cond_3
    :goto_1
    sget-object v4, Lcom/shabakaty/downloader/yi3;->L:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v4, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/yi3;

    iput-object v4, p0, Lcom/shabakaty/downloader/yi3$b;->u:Lcom/shabakaty/downloader/yi3;

    if-eqz v3, :cond_4

    .line 28
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/yi3$c;->o(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3$c;

    .line 29
    invoke-virtual {v3}, Lcom/shabakaty/downloader/yi3$c;->m()Lcom/shabakaty/downloader/yi3;

    move-result-object v3

    iput-object v3, p0, Lcom/shabakaty/downloader/yi3$b;->u:Lcom/shabakaty/downloader/yi3;

    .line 30
    :cond_4
    iget v3, p0, Lcom/shabakaty/downloader/yi3$b;->s:I

    or-int/2addr v3, v5

    iput v3, p0, Lcom/shabakaty/downloader/yi3$b;->s:I

    goto :goto_0

    .line 31
    :cond_5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v4

    .line 32
    invoke-static {v4}, Lcom/shabakaty/downloader/yi3$b$c;->f(I)Lcom/shabakaty/downloader/yi3$b$c;

    move-result-object v5

    if-nez v5, :cond_6

    .line 33
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/w40;->y(I)V

    .line 34
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/w40;->y(I)V

    goto :goto_0

    .line 35
    :cond_6
    iget v3, p0, Lcom/shabakaty/downloader/yi3$b;->s:I

    or-int/2addr v3, v1

    iput v3, p0, Lcom/shabakaty/downloader/yi3$b;->s:I

    .line 36
    iput-object v5, p0, Lcom/shabakaty/downloader/yi3$b;->t:Lcom/shabakaty/downloader/yi3$b$c;
    :try_end_0
    .catch Lcom/shabakaty/downloader/s32; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_7
    :goto_2
    const/4 p3, 0x1

    goto :goto_0

    .line 37
    :goto_3
    :try_start_1
    new-instance p2, Lcom/shabakaty/downloader/s32;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/s32;-><init>(Ljava/lang/String;)V

    .line 38
    iput-object p0, p2, Lcom/shabakaty/downloader/s32;->r:Lcom/shabakaty/downloader/es2;

    .line 39
    throw p2

    :catch_1
    move-exception p1

    .line 40
    iput-object p0, p1, Lcom/shabakaty/downloader/s32;->r:Lcom/shabakaty/downloader/es2;

    .line 41
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :goto_4
    :try_start_2
    invoke-virtual {v2}, Lcom/shabakaty/downloader/w40;->j()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    .line 43
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/yi3$b;->r:Lcom/shabakaty/downloader/ep;

    throw p1

    :catch_2
    :goto_5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/yi3$b;->r:Lcom/shabakaty/downloader/ep;

    .line 44
    throw p1

    .line 45
    :cond_8
    :try_start_3
    invoke-virtual {v2}, Lcom/shabakaty/downloader/w40;->j()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p1

    .line 46
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/yi3$b;->r:Lcom/shabakaty/downloader/ep;

    throw p1

    :catch_3
    :goto_6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/yi3$b;->r:Lcom/shabakaty/downloader/ep;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .line 1
    iget-byte v0, p0, Lcom/shabakaty/downloader/yi3$b;->w:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yi3$b;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/yi3$b;->u:Lcom/shabakaty/downloader/yi3;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yi3;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iput-byte v2, p0, Lcom/shabakaty/downloader/yi3$b;->w:B

    return v2

    .line 6
    :cond_2
    iput-byte v1, p0, Lcom/shabakaty/downloader/yi3$b;->w:B

    return v1
.end method

.method public c()Lcom/shabakaty/downloader/es2$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/yi3$b$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/yi3$b$b;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/yi3$b$b;->n(Lcom/shabakaty/downloader/yi3$b;)Lcom/shabakaty/downloader/yi3$b$b;

    return-object v0
.end method

.method public e()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/yi3$b;->x:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/yi3$b;->s:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/yi3$b;->t:Lcom/shabakaty/downloader/yi3$b$c;

    .line 4
    iget v1, v1, Lcom/shabakaty/downloader/yi3$b$c;->r:I

    .line 5
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/w40;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_1
    iget v1, p0, Lcom/shabakaty/downloader/yi3$b;->s:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/yi3$b;->u:Lcom/shabakaty/downloader/yi3;

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_2
    iget v1, p0, Lcom/shabakaty/downloader/yi3$b;->s:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 9
    iget v2, p0, Lcom/shabakaty/downloader/yi3$b;->v:I

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/shabakaty/downloader/yi3$b;->r:Lcom/shabakaty/downloader/ep;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ep;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 11
    iput v1, p0, Lcom/shabakaty/downloader/yi3$b;->x:I

    return v1
.end method

.method public f(Lcom/shabakaty/downloader/w40;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yi3$b;->e()I

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/yi3$b;->s:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/yi3$b;->t:Lcom/shabakaty/downloader/yi3$b$c;

    .line 4
    iget v0, v0, Lcom/shabakaty/downloader/yi3$b$c;->r:I

    .line 5
    invoke-virtual {p1, v1, v0}, Lcom/shabakaty/downloader/w40;->n(II)V

    .line 6
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/yi3$b;->s:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/yi3$b;->u:Lcom/shabakaty/downloader/yi3;

    invoke-virtual {p1, v1, v0}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    .line 8
    :cond_1
    iget v0, p0, Lcom/shabakaty/downloader/yi3$b;->s:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 9
    iget v1, p0, Lcom/shabakaty/downloader/yi3$b;->v:I

    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/yi3$b;->r:Lcom/shabakaty/downloader/ep;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/w40;->u(Lcom/shabakaty/downloader/ep;)V

    return-void
.end method

.method public g()Lcom/shabakaty/downloader/es2$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/yi3$b$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/yi3$b$b;-><init>()V

    return-object v0
.end method

.method public i()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/yi3$b;->s:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
