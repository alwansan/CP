.class public final Lcom/shabakaty/downloader/z53;
.super Ljava/lang/Object;
.source "OkHttpCall.java"

# interfaces
.implements Lcom/shabakaty/downloader/nq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/z53$c;,
        Lcom/shabakaty/downloader/z53$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/nq<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/fs3;

.field public final s:[Ljava/lang/Object;

.field public final t:Lcom/shabakaty/downloader/mq$a;

.field public final u:Lcom/shabakaty/downloader/de0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/de0<",
            "Lcom/shabakaty/downloader/ys3;",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile v:Z

.field public w:Lcom/shabakaty/downloader/mq;

.field public x:Ljava/lang/Throwable;

.field public y:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fs3;[Ljava/lang/Object;Lcom/shabakaty/downloader/mq$a;Lcom/shabakaty/downloader/de0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/fs3;",
            "[",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/mq$a;",
            "Lcom/shabakaty/downloader/de0<",
            "Lcom/shabakaty/downloader/ys3;",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/z53;->r:Lcom/shabakaty/downloader/fs3;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/z53;->s:[Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/z53;->t:Lcom/shabakaty/downloader/mq$a;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/z53;->u:Lcom/shabakaty/downloader/de0;

    return-void
.end method


# virtual methods
.method public G0()Lcom/shabakaty/downloader/nq;
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/z53;

    iget-object v1, p0, Lcom/shabakaty/downloader/z53;->r:Lcom/shabakaty/downloader/fs3;

    iget-object v2, p0, Lcom/shabakaty/downloader/z53;->s:[Ljava/lang/Object;

    iget-object v3, p0, Lcom/shabakaty/downloader/z53;->t:Lcom/shabakaty/downloader/mq$a;

    iget-object v4, p0, Lcom/shabakaty/downloader/z53;->u:Lcom/shabakaty/downloader/de0;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/z53;-><init>(Lcom/shabakaty/downloader/fs3;[Ljava/lang/Object;Lcom/shabakaty/downloader/mq$a;Lcom/shabakaty/downloader/de0;)V

    return-object v0
.end method

.method public final a()Lcom/shabakaty/downloader/mq;
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/z53;->t:Lcom/shabakaty/downloader/mq$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/z53;->r:Lcom/shabakaty/downloader/fs3;

    iget-object v2, p0, Lcom/shabakaty/downloader/z53;->s:[Ljava/lang/Object;

    .line 2
    iget-object v3, v1, Lcom/shabakaty/downloader/fs3;->j:[Lcom/shabakaty/downloader/da3;

    .line 3
    array-length v4, v2

    .line 4
    array-length v5, v3

    if-ne v4, v5, :cond_b

    .line 5
    new-instance v5, Lcom/shabakaty/downloader/zr3;

    iget-object v7, v1, Lcom/shabakaty/downloader/fs3;->c:Ljava/lang/String;

    iget-object v8, v1, Lcom/shabakaty/downloader/fs3;->b:Lcom/shabakaty/downloader/qw1;

    iget-object v9, v1, Lcom/shabakaty/downloader/fs3;->d:Ljava/lang/String;

    iget-object v10, v1, Lcom/shabakaty/downloader/fs3;->e:Lcom/shabakaty/downloader/ts1;

    iget-object v11, v1, Lcom/shabakaty/downloader/fs3;->f:Lcom/shabakaty/downloader/fr2;

    iget-boolean v12, v1, Lcom/shabakaty/downloader/fs3;->g:Z

    iget-boolean v13, v1, Lcom/shabakaty/downloader/fs3;->h:Z

    iget-boolean v14, v1, Lcom/shabakaty/downloader/fs3;->i:Z

    move-object v6, v5

    invoke-direct/range {v6 .. v14}, Lcom/shabakaty/downloader/zr3;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/qw1;Ljava/lang/String;Lcom/shabakaty/downloader/ts1;Lcom/shabakaty/downloader/fr2;ZZZ)V

    .line 6
    iget-boolean v6, v1, Lcom/shabakaty/downloader/fs3;->k:Z

    if-eqz v6, :cond_0

    add-int/lit8 v4, v4, -0x1

    .line 7
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v4, :cond_1

    .line 8
    aget-object v9, v2, v8

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    aget-object v9, v3, v8

    aget-object v10, v2, v8

    invoke-virtual {v9, v5, v10}, Lcom/shabakaty/downloader/da3;->a(Lcom/shabakaty/downloader/zr3;Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v2, v5, Lcom/shabakaty/downloader/zr3;->d:Lcom/shabakaty/downloader/qw1$a;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {v2}, Lcom/shabakaty/downloader/qw1$a;->a()Lcom/shabakaty/downloader/qw1;

    move-result-object v2

    goto :goto_2

    .line 12
    :cond_2
    iget-object v2, v5, Lcom/shabakaty/downloader/zr3;->b:Lcom/shabakaty/downloader/qw1;

    iget-object v4, v5, Lcom/shabakaty/downloader/zr3;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "link"

    .line 13
    invoke-static {v4, v8}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/qw1;->g(Ljava/lang/String;)Lcom/shabakaty/downloader/qw1$a;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/shabakaty/downloader/qw1$a;->a()Lcom/shabakaty/downloader/qw1;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_a

    .line 15
    :goto_2
    iget-object v4, v5, Lcom/shabakaty/downloader/zr3;->k:Lcom/shabakaty/downloader/yr3;

    if-nez v4, :cond_7

    .line 16
    iget-object v8, v5, Lcom/shabakaty/downloader/zr3;->j:Lcom/shabakaty/downloader/th1$a;

    if-eqz v8, :cond_4

    .line 17
    invoke-virtual {v8}, Lcom/shabakaty/downloader/th1$a;->b()Lcom/shabakaty/downloader/th1;

    move-result-object v4

    goto :goto_3

    .line 18
    :cond_4
    iget-object v8, v5, Lcom/shabakaty/downloader/zr3;->i:Lcom/shabakaty/downloader/sv2$a;

    if-eqz v8, :cond_6

    .line 19
    iget-object v3, v8, Lcom/shabakaty/downloader/sv2$a;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    .line 20
    new-instance v4, Lcom/shabakaty/downloader/sv2;

    iget-object v3, v8, Lcom/shabakaty/downloader/sv2$a;->a:Lcom/shabakaty/downloader/fp;

    iget-object v7, v8, Lcom/shabakaty/downloader/sv2$a;->b:Lcom/shabakaty/downloader/fr2;

    iget-object v8, v8, Lcom/shabakaty/downloader/sv2$a;->c:Ljava/util/List;

    invoke-static {v8}, Lcom/shabakaty/downloader/ry4;->x(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v4, v3, v7, v8}, Lcom/shabakaty/downloader/sv2;-><init>(Lcom/shabakaty/downloader/fp;Lcom/shabakaty/downloader/fr2;Ljava/util/List;)V

    goto :goto_3

    .line 21
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multipart body must have at least one part."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_6
    iget-boolean v8, v5, Lcom/shabakaty/downloader/zr3;->h:Z

    if-eqz v8, :cond_7

    new-array v4, v7, [B

    .line 23
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/yr3;->d(Lcom/shabakaty/downloader/fr2;[B)Lcom/shabakaty/downloader/yr3;

    move-result-object v4

    .line 24
    :cond_7
    :goto_3
    iget-object v3, v5, Lcom/shabakaty/downloader/zr3;->g:Lcom/shabakaty/downloader/fr2;

    if-eqz v3, :cond_9

    if-eqz v4, :cond_8

    .line 25
    new-instance v7, Lcom/shabakaty/downloader/zr3$a;

    invoke-direct {v7, v4, v3}, Lcom/shabakaty/downloader/zr3$a;-><init>(Lcom/shabakaty/downloader/yr3;Lcom/shabakaty/downloader/fr2;)V

    move-object v4, v7

    goto :goto_4

    .line 26
    :cond_8
    iget-object v7, v5, Lcom/shabakaty/downloader/zr3;->f:Lcom/shabakaty/downloader/ts1$a;

    .line 27
    iget-object v3, v3, Lcom/shabakaty/downloader/fr2;->a:Ljava/lang/String;

    const-string v8, "Content-Type"

    .line 28
    invoke-virtual {v7, v8, v3}, Lcom/shabakaty/downloader/ts1$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/ts1$a;

    .line 29
    :cond_9
    :goto_4
    iget-object v3, v5, Lcom/shabakaty/downloader/zr3;->e:Lcom/shabakaty/downloader/vr3$a;

    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/vr3$a;->j(Lcom/shabakaty/downloader/qw1;)Lcom/shabakaty/downloader/vr3$a;

    iget-object v2, v5, Lcom/shabakaty/downloader/zr3;->f:Lcom/shabakaty/downloader/ts1$a;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ts1$a;->d()Lcom/shabakaty/downloader/ts1;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/vr3$a;->f(Lcom/shabakaty/downloader/ts1;)Lcom/shabakaty/downloader/vr3$a;

    iget-object v2, v5, Lcom/shabakaty/downloader/zr3;->a:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lcom/shabakaty/downloader/vr3$a;->g(Ljava/lang/String;Lcom/shabakaty/downloader/yr3;)Lcom/shabakaty/downloader/vr3$a;

    .line 30
    const-class v2, Lcom/shabakaty/downloader/w32;

    new-instance v4, Lcom/shabakaty/downloader/w32;

    iget-object v1, v1, Lcom/shabakaty/downloader/fs3;->a:Ljava/lang/reflect/Method;

    invoke-direct {v4, v1, v6}, Lcom/shabakaty/downloader/w32;-><init>(Ljava/lang/reflect/Method;Ljava/util/List;)V

    invoke-virtual {v3, v2, v4}, Lcom/shabakaty/downloader/vr3$a;->i(Ljava/lang/Class;Ljava/lang/Object;)Lcom/shabakaty/downloader/vr3$a;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/vr3$a;->b()Lcom/shabakaty/downloader/vr3;

    move-result-object v1

    .line 31
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/mq$a;->a(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/mq;

    move-result-object v0

    const-string v1, "Call.Factory returned null."

    .line 32
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 33
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Malformed URL. Base: "

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v5, Lcom/shabakaty/downloader/zr3;->b:Lcom/shabakaty/downloader/qw1;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Relative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lcom/shabakaty/downloader/zr3;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument count ("

    const-string v2, ") doesn\'t match expected count ("

    invoke-static {v1, v4, v2}, Lcom/shabakaty/downloader/lh4;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v3

    const-string v3, ")"

    invoke-static {v1, v2, v3}, Lcom/shabakaty/downloader/gh;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()Lcom/shabakaty/downloader/mq;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/z53;->w:Lcom/shabakaty/downloader/mq;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/z53;->x:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 3
    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_2

    .line 4
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 6
    :cond_1
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 7
    :cond_2
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 8
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/z53;->a()Lcom/shabakaty/downloader/mq;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/z53;->w:Lcom/shabakaty/downloader/mq;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 9
    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/bz4;->o(Ljava/lang/Throwable;)V

    .line 10
    iput-object v0, p0, Lcom/shabakaty/downloader/z53;->x:Ljava/lang/Throwable;

    .line 11
    throw v0
.end method

.method public c(Lcom/shabakaty/downloader/ws3;)Lcom/shabakaty/downloader/xs3;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ws3;",
            ")",
            "Lcom/shabakaty/downloader/xs3<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    const-string v2, "response"

    .line 2
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v4, v0, Lcom/shabakaty/downloader/ws3;->s:Lcom/shabakaty/downloader/vr3;

    .line 4
    iget-object v5, v0, Lcom/shabakaty/downloader/ws3;->t:Lcom/shabakaty/downloader/mj3;

    .line 5
    iget v7, v0, Lcom/shabakaty/downloader/ws3;->v:I

    .line 6
    iget-object v6, v0, Lcom/shabakaty/downloader/ws3;->u:Ljava/lang/String;

    .line 7
    iget-object v8, v0, Lcom/shabakaty/downloader/ws3;->w:Lcom/shabakaty/downloader/is1;

    .line 8
    iget-object v2, v0, Lcom/shabakaty/downloader/ws3;->x:Lcom/shabakaty/downloader/ts1;

    .line 9
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ts1;->l()Lcom/shabakaty/downloader/ts1$a;

    move-result-object v2

    .line 10
    iget-object v11, v0, Lcom/shabakaty/downloader/ws3;->z:Lcom/shabakaty/downloader/ws3;

    .line 11
    iget-object v12, v0, Lcom/shabakaty/downloader/ws3;->A:Lcom/shabakaty/downloader/ws3;

    .line 12
    iget-object v13, v0, Lcom/shabakaty/downloader/ws3;->B:Lcom/shabakaty/downloader/ws3;

    .line 13
    iget-wide v14, v0, Lcom/shabakaty/downloader/ws3;->C:J

    .line 14
    iget-wide v9, v0, Lcom/shabakaty/downloader/ws3;->D:J

    .line 15
    iget-object v0, v0, Lcom/shabakaty/downloader/ws3;->E:Lcom/shabakaty/downloader/e61;

    .line 16
    new-instance v3, Lcom/shabakaty/downloader/z53$c;

    move-wide/from16 v16, v9

    .line 17
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ys3;->d()Lcom/shabakaty/downloader/fr2;

    move-result-object v9

    move-wide/from16 v19, v14

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ys3;->c()J

    move-result-wide v14

    invoke-direct {v3, v9, v14, v15}, Lcom/shabakaty/downloader/z53$c;-><init>(Lcom/shabakaty/downloader/fr2;J)V

    if-ltz v7, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    if-eqz v9, :cond_a

    if-eqz v4, :cond_9

    if-eqz v5, :cond_8

    if-eqz v6, :cond_7

    .line 18
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ts1$a;->d()Lcom/shabakaty/downloader/ts1;

    move-result-object v9

    .line 19
    new-instance v2, Lcom/shabakaty/downloader/ws3;

    move-object v10, v3

    move-object v3, v2

    move-wide/from16 v14, v19

    move-object/from16 v18, v0

    invoke-direct/range {v3 .. v18}, Lcom/shabakaty/downloader/ws3;-><init>(Lcom/shabakaty/downloader/vr3;Lcom/shabakaty/downloader/mj3;Ljava/lang/String;ILcom/shabakaty/downloader/is1;Lcom/shabakaty/downloader/ts1;Lcom/shabakaty/downloader/ys3;Lcom/shabakaty/downloader/ws3;Lcom/shabakaty/downloader/ws3;Lcom/shabakaty/downloader/ws3;JJLcom/shabakaty/downloader/e61;)V

    .line 20
    iget v0, v2, Lcom/shabakaty/downloader/ws3;->v:I

    const/16 v3, 0xc8

    const/4 v4, 0x0

    if-lt v0, v3, :cond_5

    const/16 v3, 0x12c

    if-lt v0, v3, :cond_1

    goto :goto_2

    :cond_1
    const/16 v3, 0xcc

    if-eq v0, v3, :cond_4

    const/16 v3, 0xcd

    if-ne v0, v3, :cond_2

    goto :goto_1

    .line 21
    :cond_2
    new-instance v3, Lcom/shabakaty/downloader/z53$b;

    invoke-direct {v3, v1}, Lcom/shabakaty/downloader/z53$b;-><init>(Lcom/shabakaty/downloader/ys3;)V

    move-object/from16 v5, p0

    .line 22
    :try_start_0
    iget-object v0, v5, Lcom/shabakaty/downloader/z53;->u:Lcom/shabakaty/downloader/de0;

    invoke-interface {v0, v3}, Lcom/shabakaty/downloader/de0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/xs3;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/ws3;)Lcom/shabakaty/downloader/xs3;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 24
    iget-object v1, v3, Lcom/shabakaty/downloader/z53$b;->v:Ljava/io/IOException;

    if-nez v1, :cond_3

    .line 25
    throw v0

    .line 26
    :cond_3
    throw v1

    :cond_4
    :goto_1
    move-object/from16 v5, p0

    .line 27
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ys3;->close()V

    .line 28
    invoke-static {v4, v2}, Lcom/shabakaty/downloader/xs3;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/ws3;)Lcom/shabakaty/downloader/xs3;

    move-result-object v0

    return-object v0

    :cond_5
    :goto_2
    move-object/from16 v5, p0

    .line 29
    :try_start_1
    invoke-static {v1}, Lcom/shabakaty/downloader/bz4;->a(Lcom/shabakaty/downloader/ys3;)Lcom/shabakaty/downloader/ys3;

    move-result-object v0

    .line 30
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ws3;->c()Z

    move-result v3

    if-nez v3, :cond_6

    .line 31
    new-instance v3, Lcom/shabakaty/downloader/xs3;

    invoke-direct {v3, v2, v4, v0}, Lcom/shabakaty/downloader/xs3;-><init>(Lcom/shabakaty/downloader/ws3;Ljava/lang/Object;Lcom/shabakaty/downloader/ys3;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ys3;->close()V

    return-object v3

    .line 33
    :cond_6
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "rawResponse should not be successful response"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 34
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ys3;->close()V

    .line 35
    throw v0

    :cond_7
    move-object/from16 v5, p0

    .line 36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object/from16 v5, p0

    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move-object/from16 v5, p0

    .line 38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move-object/from16 v5, p0

    const-string v0, "code < 0: "

    .line 39
    invoke-static {v0, v7}, Lcom/shabakaty/downloader/bl3;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public c0(Lcom/shabakaty/downloader/xq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/xq<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/z53;->y:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/z53;->y:Z

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/z53;->w:Lcom/shabakaty/downloader/mq;

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/z53;->x:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 6
    :try_start_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/z53;->a()Lcom/shabakaty/downloader/mq;

    move-result-object v2

    iput-object v2, p0, Lcom/shabakaty/downloader/z53;->w:Lcom/shabakaty/downloader/mq;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 7
    :try_start_2
    invoke-static {v1}, Lcom/shabakaty/downloader/bz4;->o(Ljava/lang/Throwable;)V

    .line 8
    iput-object v1, p0, Lcom/shabakaty/downloader/z53;->x:Ljava/lang/Throwable;

    .line 9
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    .line 10
    invoke-interface {p1, p0, v1}, Lcom/shabakaty/downloader/xq;->a(Lcom/shabakaty/downloader/nq;Ljava/lang/Throwable;)V

    return-void

    .line 11
    :cond_1
    iget-boolean v1, p0, Lcom/shabakaty/downloader/z53;->v:Z

    if-eqz v1, :cond_2

    .line 12
    invoke-interface {v0}, Lcom/shabakaty/downloader/mq;->cancel()V

    .line 13
    :cond_2
    new-instance v1, Lcom/shabakaty/downloader/z53$a;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/z53$a;-><init>(Lcom/shabakaty/downloader/z53;Lcom/shabakaty/downloader/xq;)V

    invoke-static {v0, v1}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lcom/shabakaty/downloader/mq;Lcom/shabakaty/downloader/wq;)V

    return-void

    .line 14
    :cond_3
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already executed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 15
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/z53;->v:Z

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/z53;->w:Lcom/shabakaty/downloader/mq;

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/shabakaty/downloader/mq;->cancel()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/z53;

    iget-object v1, p0, Lcom/shabakaty/downloader/z53;->r:Lcom/shabakaty/downloader/fs3;

    iget-object v2, p0, Lcom/shabakaty/downloader/z53;->s:[Ljava/lang/Object;

    iget-object v3, p0, Lcom/shabakaty/downloader/z53;->t:Lcom/shabakaty/downloader/mq$a;

    iget-object v4, p0, Lcom/shabakaty/downloader/z53;->u:Lcom/shabakaty/downloader/de0;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/z53;-><init>(Lcom/shabakaty/downloader/fs3;[Ljava/lang/Object;Lcom/shabakaty/downloader/mq$a;Lcom/shabakaty/downloader/de0;)V

    return-object v0
.end method

.method public declared-synchronized d()Lcom/shabakaty/downloader/vr3;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/z53;->b()Lcom/shabakaty/downloader/mq;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/mq;->d()Lcom/shabakaty/downloader/vr3;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to create request."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public execute()Lcom/shabakaty/downloader/xs3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/xs3<",
            "TT;>;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/z53;->y:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/z53;->y:Z

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/z53;->b()Lcom/shabakaty/downloader/mq;

    move-result-object v0

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-boolean v1, p0, Lcom/shabakaty/downloader/z53;->v:Z

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v0}, Lcom/shabakaty/downloader/mq;->cancel()V

    .line 8
    :cond_0
    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->execute(Lcom/shabakaty/downloader/mq;)Lcom/shabakaty/downloader/ws3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/z53;->c(Lcom/shabakaty/downloader/ws3;)Lcom/shabakaty/downloader/xs3;

    move-result-object v0

    return-object v0

    .line 9
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 10
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public p()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/z53;->v:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/z53;->w:Lcom/shabakaty/downloader/mq;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/shabakaty/downloader/mq;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
