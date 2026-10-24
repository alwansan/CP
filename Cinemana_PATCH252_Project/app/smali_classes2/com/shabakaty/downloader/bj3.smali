.class public final Lcom/shabakaty/downloader/bj3;
.super Lcom/shabakaty/downloader/pp1;
.source "ProtoBuf.java"

# interfaces
.implements Lcom/shabakaty/downloader/fs2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/bj3$b;
    }
.end annotation


# static fields
.field public static final x:Lcom/shabakaty/downloader/bj3;

.field public static y:Lcom/shabakaty/downloader/na3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/na3<",
            "Lcom/shabakaty/downloader/bj3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final r:Lcom/shabakaty/downloader/ep;

.field public s:I

.field public t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/yi3;",
            ">;"
        }
    .end annotation
.end field

.field public u:I

.field public v:B

.field public w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/bj3$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/bj3$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/bj3;->y:Lcom/shabakaty/downloader/na3;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/bj3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/bj3;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/bj3;->x:Lcom/shabakaty/downloader/bj3;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/bj3;->t:Ljava/util/List;

    const/4 v1, -0x1

    .line 4
    iput v1, v0, Lcom/shabakaty/downloader/bj3;->u:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/shabakaty/downloader/bj3;->v:B

    .line 8
    iput v0, p0, Lcom/shabakaty/downloader/bj3;->w:I

    .line 9
    sget-object v0, Lcom/shabakaty/downloader/ep;->r:Lcom/shabakaty/downloader/ep;

    iput-object v0, p0, Lcom/shabakaty/downloader/bj3;->r:Lcom/shabakaty/downloader/ep;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/pp1$b;Lcom/shabakaty/downloader/md0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/pp1;-><init>(Lcom/shabakaty/downloader/pp1$b;)V

    const/4 p2, -0x1

    .line 2
    iput-byte p2, p0, Lcom/shabakaty/downloader/bj3;->v:B

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/bj3;->w:I

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/bj3;->r:Lcom/shabakaty/downloader/ep;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;Lcom/shabakaty/downloader/md0;)V
    .locals 6

    .line 10
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1;-><init>()V

    const/4 p3, -0x1

    .line 11
    iput-byte p3, p0, Lcom/shabakaty/downloader/bj3;->v:B

    .line 12
    iput p3, p0, Lcom/shabakaty/downloader/bj3;->w:I

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/bj3;->t:Ljava/util/List;

    .line 14
    iput p3, p0, Lcom/shabakaty/downloader/bj3;->u:I

    .line 15
    invoke-static {}, Lcom/shabakaty/downloader/ep;->u()Lcom/shabakaty/downloader/ep$b;

    move-result-object p3

    const/4 v0, 0x1

    .line 16
    invoke-static {p3, v0}, Lcom/shabakaty/downloader/w40;->k(Ljava/io/OutputStream;I)Lcom/shabakaty/downloader/w40;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v2, :cond_6

    .line 17
    :try_start_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->o()I

    move-result v4

    if-eqz v4, :cond_4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_2

    const/16 v5, 0x10

    if-eq v4, v5, :cond_1

    .line 18
    invoke-virtual {p1, v4, v1}, Lcom/shabakaty/downloader/u40;->r(ILcom/shabakaty/downloader/w40;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 19
    :cond_1
    iget v4, p0, Lcom/shabakaty/downloader/bj3;->s:I

    or-int/2addr v4, v0

    iput v4, p0, Lcom/shabakaty/downloader/bj3;->s:I

    .line 20
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v4

    .line 21
    iput v4, p0, Lcom/shabakaty/downloader/bj3;->u:I

    goto :goto_0

    :cond_2
    and-int/lit8 v4, v3, 0x1

    if-eq v4, v0, :cond_3

    .line 22
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/shabakaty/downloader/bj3;->t:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    .line 23
    :cond_3
    iget-object v4, p0, Lcom/shabakaty/downloader/bj3;->t:Ljava/util/List;

    sget-object v5, Lcom/shabakaty/downloader/yi3;->L:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v5, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/shabakaty/downloader/s32; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 24
    :try_start_1
    new-instance p2, Lcom/shabakaty/downloader/s32;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/s32;-><init>(Ljava/lang/String;)V

    .line 25
    iput-object p0, p2, Lcom/shabakaty/downloader/s32;->r:Lcom/shabakaty/downloader/es2;

    .line 26
    throw p2

    :catch_1
    move-exception p1

    .line 27
    iput-object p0, p1, Lcom/shabakaty/downloader/s32;->r:Lcom/shabakaty/downloader/es2;

    .line 28
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v3, 0x1

    if-ne p2, v0, :cond_5

    .line 29
    iget-object p2, p0, Lcom/shabakaty/downloader/bj3;->t:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/bj3;->t:Ljava/util/List;

    .line 30
    :cond_5
    :try_start_2
    invoke-virtual {v1}, Lcom/shabakaty/downloader/w40;->j()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 31
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/bj3;->r:Lcom/shabakaty/downloader/ep;

    throw p1

    :catch_2
    :goto_3
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/bj3;->r:Lcom/shabakaty/downloader/ep;

    .line 32
    throw p1

    :cond_6
    and-int/lit8 p1, v3, 0x1

    if-ne p1, v0, :cond_7

    .line 33
    iget-object p1, p0, Lcom/shabakaty/downloader/bj3;->t:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/bj3;->t:Ljava/util/List;

    .line 34
    :cond_7
    :try_start_3
    invoke-virtual {v1}, Lcom/shabakaty/downloader/w40;->j()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    .line 35
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/bj3;->r:Lcom/shabakaty/downloader/ep;

    throw p1

    :catch_3
    :goto_4
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/bj3;->r:Lcom/shabakaty/downloader/ep;

    return-void
.end method

.method public static i(Lcom/shabakaty/downloader/bj3;)Lcom/shabakaty/downloader/bj3$b;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/bj3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/bj3$b;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/bj3$b;->n(Lcom/shabakaty/downloader/bj3;)Lcom/shabakaty/downloader/bj3$b;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .line 1
    iget-byte v0, p0, Lcom/shabakaty/downloader/bj3;->v:B

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
    iget-object v3, p0, Lcom/shabakaty/downloader/bj3;->t:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 3
    iget-object v3, p0, Lcom/shabakaty/downloader/bj3;->t:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/yi3;

    .line 4
    invoke-virtual {v3}, Lcom/shabakaty/downloader/yi3;->a()Z

    move-result v3

    if-nez v3, :cond_2

    .line 5
    iput-byte v2, p0, Lcom/shabakaty/downloader/bj3;->v:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_3
    iput-byte v1, p0, Lcom/shabakaty/downloader/bj3;->v:B

    return v1
.end method

.method public c()Lcom/shabakaty/downloader/es2$a;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/bj3;->i(Lcom/shabakaty/downloader/bj3;)Lcom/shabakaty/downloader/bj3$b;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/bj3;->w:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/bj3;->t:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/bj3;->t:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/es2;

    invoke-static {v3, v2}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p0, Lcom/shabakaty/downloader/bj3;->s:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    const/4 v0, 0x2

    .line 5
    iget v2, p0, Lcom/shabakaty/downloader/bj3;->u:I

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/bj3;->r:Lcom/shabakaty/downloader/ep;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ep;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/shabakaty/downloader/bj3;->w:I

    return v0
.end method

.method public f(Lcom/shabakaty/downloader/w40;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bj3;->e()I

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/bj3;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/bj3;->t:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/es2;

    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/bj3;->s:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x2

    .line 5
    iget v1, p0, Lcom/shabakaty/downloader/bj3;->u:I

    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/bj3;->r:Lcom/shabakaty/downloader/ep;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/w40;->u(Lcom/shabakaty/downloader/ep;)V

    return-void
.end method

.method public g()Lcom/shabakaty/downloader/es2$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/bj3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/bj3$b;-><init>()V

    return-object v0
.end method

.method public j()Lcom/shabakaty/downloader/bj3$b;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/bj3;->i(Lcom/shabakaty/downloader/bj3;)Lcom/shabakaty/downloader/bj3$b;

    move-result-object v0

    return-object v0
.end method
