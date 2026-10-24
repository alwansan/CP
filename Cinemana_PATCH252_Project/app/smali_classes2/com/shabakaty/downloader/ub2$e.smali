.class public final Lcom/shabakaty/downloader/ub2$e;
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
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ub2$e$b;,
        Lcom/shabakaty/downloader/ub2$e$c;
    }
.end annotation


# static fields
.field public static final x:Lcom/shabakaty/downloader/ub2$e;

.field public static y:Lcom/shabakaty/downloader/na3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/na3<",
            "Lcom/shabakaty/downloader/ub2$e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final r:Lcom/shabakaty/downloader/ep;

.field public s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ub2$e$c;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
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
    new-instance v0, Lcom/shabakaty/downloader/ub2$e$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ub2$e$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ub2$e;->y:Lcom/shabakaty/downloader/na3;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ub2$e;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ub2$e;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ub2$e;->x:Lcom/shabakaty/downloader/ub2$e;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/ub2$e;->s:Ljava/util/List;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/ub2$e;->t:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1;-><init>()V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/shabakaty/downloader/ub2$e;->u:I

    .line 9
    iput-byte v0, p0, Lcom/shabakaty/downloader/ub2$e;->v:B

    .line 10
    iput v0, p0, Lcom/shabakaty/downloader/ub2$e;->w:I

    .line 11
    sget-object v0, Lcom/shabakaty/downloader/ep;->r:Lcom/shabakaty/downloader/ep;

    iput-object v0, p0, Lcom/shabakaty/downloader/ub2$e;->r:Lcom/shabakaty/downloader/ep;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/pp1$b;Lcom/shabakaty/downloader/ub2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/pp1;-><init>(Lcom/shabakaty/downloader/pp1$b;)V

    const/4 p2, -0x1

    .line 2
    iput p2, p0, Lcom/shabakaty/downloader/ub2$e;->u:I

    .line 3
    iput-byte p2, p0, Lcom/shabakaty/downloader/ub2$e;->v:B

    .line 4
    iput p2, p0, Lcom/shabakaty/downloader/ub2$e;->w:I

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    .line 6
    iput-object p1, p0, Lcom/shabakaty/downloader/ub2$e;->r:Lcom/shabakaty/downloader/ep;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;Lcom/shabakaty/downloader/ub2$a;)V
    .locals 8

    .line 12
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1;-><init>()V

    const/4 p3, -0x1

    .line 13
    iput p3, p0, Lcom/shabakaty/downloader/ub2$e;->u:I

    .line 14
    iput-byte p3, p0, Lcom/shabakaty/downloader/ub2$e;->v:B

    .line 15
    iput p3, p0, Lcom/shabakaty/downloader/ub2$e;->w:I

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/shabakaty/downloader/ub2$e;->s:Ljava/util/List;

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/shabakaty/downloader/ub2$e;->t:Ljava/util/List;

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

    if-nez v2, :cond_b

    .line 20
    :try_start_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->o()I

    move-result v5

    if-eqz v5, :cond_8

    const/16 v6, 0xa

    if-eq v5, v6, :cond_6

    const/16 v6, 0x28

    if-eq v5, v6, :cond_4

    const/16 v6, 0x2a

    if-eq v5, v6, :cond_1

    .line 21
    invoke-virtual {p1, v5, v1}, Lcom/shabakaty/downloader/u40;->r(ILcom/shabakaty/downloader/w40;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 22
    :cond_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v5

    .line 23
    invoke-virtual {p1, v5}, Lcom/shabakaty/downloader/u40;->d(I)I

    move-result v5

    and-int/lit8 v6, v3, 0x2

    if-eq v6, v4, :cond_2

    .line 24
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->b()I

    move-result v6

    if-lez v6, :cond_2

    .line 25
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/shabakaty/downloader/ub2$e;->t:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    .line 26
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->b()I

    move-result v6

    if-lez v6, :cond_3

    .line 27
    iget-object v6, p0, Lcom/shabakaty/downloader/ub2$e;->t:Ljava/util/List;

    .line 28
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v7

    .line 29
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 30
    :cond_3
    iput v5, p1, Lcom/shabakaty/downloader/u40;->i:I

    .line 31
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->p()V

    goto :goto_0

    :cond_4
    and-int/lit8 v5, v3, 0x2

    if-eq v5, v4, :cond_5

    .line 32
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/shabakaty/downloader/ub2$e;->t:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    .line 33
    :cond_5
    iget-object v5, p0, Lcom/shabakaty/downloader/ub2$e;->t:Ljava/util/List;

    .line 34
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v6

    .line 35
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    and-int/lit8 v5, v3, 0x1

    if-eq v5, v0, :cond_7

    .line 36
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/shabakaty/downloader/ub2$e;->s:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    .line 37
    :cond_7
    iget-object v5, p0, Lcom/shabakaty/downloader/ub2$e;->s:Ljava/util/List;

    sget-object v6, Lcom/shabakaty/downloader/ub2$e$c;->E:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v6, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/shabakaty/downloader/s32; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_8
    :goto_2
    const/4 v2, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

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

    :goto_3
    and-int/lit8 p2, v3, 0x1

    if-ne p2, v0, :cond_9

    .line 43
    iget-object p2, p0, Lcom/shabakaty/downloader/ub2$e;->s:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/ub2$e;->s:Ljava/util/List;

    :cond_9
    and-int/lit8 p2, v3, 0x2

    if-ne p2, v4, :cond_a

    .line 44
    iget-object p2, p0, Lcom/shabakaty/downloader/ub2$e;->t:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/ub2$e;->t:Ljava/util/List;

    .line 45
    :cond_a
    :try_start_2
    invoke-virtual {v1}, Lcom/shabakaty/downloader/w40;->j()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    .line 46
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/ub2$e;->r:Lcom/shabakaty/downloader/ep;

    throw p1

    :catch_2
    :goto_4
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/ub2$e;->r:Lcom/shabakaty/downloader/ep;

    .line 47
    throw p1

    :cond_b
    and-int/lit8 p1, v3, 0x1

    if-ne p1, v0, :cond_c

    .line 48
    iget-object p1, p0, Lcom/shabakaty/downloader/ub2$e;->s:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ub2$e;->s:Ljava/util/List;

    :cond_c
    and-int/lit8 p1, v3, 0x2

    if-ne p1, v4, :cond_d

    .line 49
    iget-object p1, p0, Lcom/shabakaty/downloader/ub2$e;->t:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ub2$e;->t:Ljava/util/List;

    .line 50
    :cond_d
    :try_start_3
    invoke-virtual {v1}, Lcom/shabakaty/downloader/w40;->j()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception p1

    .line 51
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/ub2$e;->r:Lcom/shabakaty/downloader/ep;

    throw p1

    :catch_3
    :goto_5
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ub2$e;->r:Lcom/shabakaty/downloader/ep;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/shabakaty/downloader/ub2$e;->v:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lcom/shabakaty/downloader/ub2$e;->v:B

    return v1
.end method

.method public c()Lcom/shabakaty/downloader/es2$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ub2$e$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ub2$e$b;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/ub2$e$b;->n(Lcom/shabakaty/downloader/ub2$e;)Lcom/shabakaty/downloader/ub2$e$b;

    return-object v0
.end method

.method public e()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ub2$e;->w:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/shabakaty/downloader/ub2$e;->s:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 3
    iget-object v3, p0, Lcom/shabakaty/downloader/ub2$e;->s:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/es2;

    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 4
    :goto_1
    iget-object v3, p0, Lcom/shabakaty/downloader/ub2$e;->t:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 5
    iget-object v3, p0, Lcom/shabakaty/downloader/ub2$e;->t:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/shabakaty/downloader/w40;->d(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v2, v1

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/ub2$e;->t:Ljava/util/List;

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 8
    invoke-static {v1}, Lcom/shabakaty/downloader/w40;->d(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 9
    :cond_3
    iput v1, p0, Lcom/shabakaty/downloader/ub2$e;->u:I

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/ub2$e;->r:Lcom/shabakaty/downloader/ep;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ep;->size()I

    move-result v0

    add-int/2addr v0, v2

    .line 11
    iput v0, p0, Lcom/shabakaty/downloader/ub2$e;->w:I

    return v0
.end method

.method public f(Lcom/shabakaty/downloader/w40;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ub2$e;->e()I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/ub2$e;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/ub2$e;->s:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/es2;

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/ub2$e;->t:Ljava/util/List;

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/16 v1, 0x2a

    .line 6
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/w40;->y(I)V

    .line 7
    iget v1, p0, Lcom/shabakaty/downloader/ub2$e;->u:I

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/w40;->y(I)V

    .line 8
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/shabakaty/downloader/ub2$e;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/ub2$e;->t:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/w40;->q(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/ub2$e;->r:Lcom/shabakaty/downloader/ep;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/w40;->u(Lcom/shabakaty/downloader/ep;)V

    return-void
.end method

.method public g()Lcom/shabakaty/downloader/es2$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ub2$e$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ub2$e$b;-><init>()V

    return-object v0
.end method
