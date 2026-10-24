.class public final Lcom/shabakaty/downloader/ni3$b;
.super Lcom/shabakaty/downloader/pp1$b;
.source "ProtoBuf.java"

# interfaces
.implements Lcom/shabakaty/downloader/fs2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ni3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/pp1$b<",
        "Lcom/shabakaty/downloader/ni3;",
        "Lcom/shabakaty/downloader/ni3$b;",
        ">;"
    }
.end annotation


# instance fields
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1$b;-><init>()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/ni3$c;->s:Lcom/shabakaty/downloader/ni3$c;

    iput-object v0, p0, Lcom/shabakaty/downloader/ni3$b;->t:Lcom/shabakaty/downloader/ni3$c;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ni3$b;->u:Ljava/util/List;

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/pi3;->C:Lcom/shabakaty/downloader/pi3;

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/ni3$b;->v:Lcom/shabakaty/downloader/pi3;

    .line 6
    sget-object v0, Lcom/shabakaty/downloader/ni3$d;->s:Lcom/shabakaty/downloader/ni3$d;

    iput-object v0, p0, Lcom/shabakaty/downloader/ni3$b;->w:Lcom/shabakaty/downloader/ni3$d;

    return-void
.end method


# virtual methods
.method public build()Lcom/shabakaty/downloader/es2;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ni3$b;->l()Lcom/shabakaty/downloader/ni3;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ni3;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/shabakaty/downloader/j0$a;->i(Lcom/shabakaty/downloader/es2;)Lcom/shabakaty/downloader/u97;

    move-result-object v0

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ni3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ni3$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ni3$b;->l()Lcom/shabakaty/downloader/ni3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ni3$b;->n(Lcom/shabakaty/downloader/ni3;)Lcom/shabakaty/downloader/ni3$b;

    return-object v0
.end method

.method public bridge synthetic h(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/j0$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/ni3$b;->m(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/ni3$b;

    return-object p0
.end method

.method public j()Lcom/shabakaty/downloader/pp1$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ni3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ni3$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ni3$b;->l()Lcom/shabakaty/downloader/ni3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ni3$b;->n(Lcom/shabakaty/downloader/ni3;)Lcom/shabakaty/downloader/ni3$b;

    return-object v0
.end method

.method public bridge synthetic k(Lcom/shabakaty/downloader/pp1;)Lcom/shabakaty/downloader/pp1$b;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/ni3;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ni3$b;->n(Lcom/shabakaty/downloader/ni3;)Lcom/shabakaty/downloader/ni3$b;

    return-object p0
.end method

.method public l()Lcom/shabakaty/downloader/ni3;
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ni3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/ni3;-><init>(Lcom/shabakaty/downloader/pp1$b;Lcom/shabakaty/downloader/md0;)V

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/ni3$b;->s:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/ni3$b;->t:Lcom/shabakaty/downloader/ni3$c;

    .line 4
    iput-object v2, v0, Lcom/shabakaty/downloader/ni3;->t:Lcom/shabakaty/downloader/ni3$c;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/ni3$b;->u:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/shabakaty/downloader/ni3$b;->u:Ljava/util/List;

    .line 6
    iget v2, p0, Lcom/shabakaty/downloader/ni3$b;->s:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/shabakaty/downloader/ni3$b;->s:I

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/shabakaty/downloader/ni3$b;->u:Ljava/util/List;

    .line 8
    iput-object v2, v0, Lcom/shabakaty/downloader/ni3;->u:Ljava/util/List;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x2

    .line 9
    :cond_2
    iget-object v2, p0, Lcom/shabakaty/downloader/ni3$b;->v:Lcom/shabakaty/downloader/pi3;

    .line 10
    iput-object v2, v0, Lcom/shabakaty/downloader/ni3;->v:Lcom/shabakaty/downloader/pi3;

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    or-int/lit8 v3, v3, 0x4

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/shabakaty/downloader/ni3$b;->w:Lcom/shabakaty/downloader/ni3$d;

    .line 12
    iput-object v1, v0, Lcom/shabakaty/downloader/ni3;->w:Lcom/shabakaty/downloader/ni3$d;

    .line 13
    iput v3, v0, Lcom/shabakaty/downloader/ni3;->s:I

    return-object v0
.end method

.method public m(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/ni3$b;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/ni3;->A:Lcom/shabakaty/downloader/na3;

    check-cast v1, Lcom/shabakaty/downloader/ni3$a;

    invoke-virtual {v1, p1, p2}, Lcom/shabakaty/downloader/ni3$a;->a(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ni3;
    :try_end_0
    .catch Lcom/shabakaty/downloader/s32; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ni3$b;->n(Lcom/shabakaty/downloader/ni3;)Lcom/shabakaty/downloader/ni3$b;

    :cond_0
    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 3
    :goto_0
    :try_start_1
    iget-object p2, p1, Lcom/shabakaty/downloader/s32;->r:Lcom/shabakaty/downloader/es2;

    .line 4
    check-cast p2, Lcom/shabakaty/downloader/ni3;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_1
    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ni3$b;->n(Lcom/shabakaty/downloader/ni3;)Lcom/shabakaty/downloader/ni3$b;

    :cond_1
    throw p1
.end method

.method public n(Lcom/shabakaty/downloader/ni3;)Lcom/shabakaty/downloader/ni3$b;
    .locals 6

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ni3;->z:Lcom/shabakaty/downloader/ni3;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Lcom/shabakaty/downloader/ni3;->s:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p1, Lcom/shabakaty/downloader/ni3;->t:Lcom/shabakaty/downloader/ni3$c;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget v3, p0, Lcom/shabakaty/downloader/ni3$b;->s:I

    or-int/2addr v3, v1

    iput v3, p0, Lcom/shabakaty/downloader/ni3$b;->s:I

    .line 6
    iput-object v0, p0, Lcom/shabakaty/downloader/ni3$b;->t:Lcom/shabakaty/downloader/ni3$c;

    .line 7
    :cond_2
    iget-object v0, p1, Lcom/shabakaty/downloader/ni3;->u:Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v3, 0x2

    if-nez v0, :cond_5

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/ni3$b;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p1, Lcom/shabakaty/downloader/ni3;->u:Ljava/util/List;

    .line 11
    iput-object v0, p0, Lcom/shabakaty/downloader/ni3$b;->u:Ljava/util/List;

    .line 12
    iget v0, p0, Lcom/shabakaty/downloader/ni3$b;->s:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/shabakaty/downloader/ni3$b;->s:I

    goto :goto_1

    .line 13
    :cond_3
    iget v0, p0, Lcom/shabakaty/downloader/ni3$b;->s:I

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_4

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/shabakaty/downloader/ni3$b;->u:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/ni3$b;->u:Ljava/util/List;

    .line 15
    iget v0, p0, Lcom/shabakaty/downloader/ni3$b;->s:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/shabakaty/downloader/ni3$b;->s:I

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/shabakaty/downloader/ni3$b;->u:Ljava/util/List;

    .line 17
    iget-object v4, p1, Lcom/shabakaty/downloader/ni3;->u:Ljava/util/List;

    .line 18
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19
    :cond_5
    :goto_1
    iget v0, p1, Lcom/shabakaty/downloader/ni3;->s:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    const/4 v3, 0x4

    if-eqz v0, :cond_8

    .line 20
    iget-object v0, p1, Lcom/shabakaty/downloader/ni3;->v:Lcom/shabakaty/downloader/pi3;

    .line 21
    iget v4, p0, Lcom/shabakaty/downloader/ni3$b;->s:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_7

    iget-object v4, p0, Lcom/shabakaty/downloader/ni3$b;->v:Lcom/shabakaty/downloader/pi3;

    .line 22
    sget-object v5, Lcom/shabakaty/downloader/pi3;->C:Lcom/shabakaty/downloader/pi3;

    if-eq v4, v5, :cond_7

    .line 23
    new-instance v5, Lcom/shabakaty/downloader/pi3$b;

    invoke-direct {v5}, Lcom/shabakaty/downloader/pi3$b;-><init>()V

    .line 24
    invoke-virtual {v5, v4}, Lcom/shabakaty/downloader/pi3$b;->n(Lcom/shabakaty/downloader/pi3;)Lcom/shabakaty/downloader/pi3$b;

    .line 25
    invoke-virtual {v5, v0}, Lcom/shabakaty/downloader/pi3$b;->n(Lcom/shabakaty/downloader/pi3;)Lcom/shabakaty/downloader/pi3$b;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/pi3$b;->l()Lcom/shabakaty/downloader/pi3;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ni3$b;->v:Lcom/shabakaty/downloader/pi3;

    goto :goto_3

    .line 26
    :cond_7
    iput-object v0, p0, Lcom/shabakaty/downloader/ni3$b;->v:Lcom/shabakaty/downloader/pi3;

    .line 27
    :goto_3
    iget v0, p0, Lcom/shabakaty/downloader/ni3$b;->s:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/shabakaty/downloader/ni3$b;->s:I

    .line 28
    :cond_8
    iget v0, p1, Lcom/shabakaty/downloader/ni3;->s:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_9

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_a

    .line 29
    iget-object v0, p1, Lcom/shabakaty/downloader/ni3;->w:Lcom/shabakaty/downloader/ni3$d;

    .line 30
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget v1, p0, Lcom/shabakaty/downloader/ni3$b;->s:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/shabakaty/downloader/ni3$b;->s:I

    .line 32
    iput-object v0, p0, Lcom/shabakaty/downloader/ni3$b;->w:Lcom/shabakaty/downloader/ni3$d;

    .line 33
    :cond_a
    iget-object v0, p0, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    .line 34
    iget-object p1, p1, Lcom/shabakaty/downloader/ni3;->r:Lcom/shabakaty/downloader/ep;

    .line 35
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ep;->h(Lcom/shabakaty/downloader/ep;)Lcom/shabakaty/downloader/ep;

    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    return-object p0
.end method

.method public bridge synthetic o1(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/ni3$b;->m(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/ni3$b;

    return-object p0
.end method
