.class public final Lcom/shabakaty/downloader/q71;
.super Lcom/shabakaty/downloader/ak;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/j71;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/q71$a;
    }
.end annotation


# instance fields
.field public A:Lcom/shabakaty/downloader/bd3$b;

.field public B:Lcom/shabakaty/downloader/hp2;

.field public C:Lcom/shabakaty/downloader/yc3;

.field public D:I

.field public E:J

.field public final b:Lcom/shabakaty/downloader/mp4;

.field public final c:Lcom/shabakaty/downloader/bd3$b;

.field public final d:[Lcom/shabakaty/downloader/lr3;

.field public final e:Lcom/shabakaty/downloader/lp4;

.field public final f:Lcom/shabakaty/downloader/fs1;

.field public final g:Lcom/shabakaty/downloader/s71$e;

.field public final h:Lcom/shabakaty/downloader/s71;

.field public final i:Lcom/shabakaty/downloader/si2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/si2<",
            "Lcom/shabakaty/downloader/bd3$c;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/shabakaty/downloader/j71$b;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lcom/shabakaty/downloader/nn4$b;

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/q71$a;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Z

.field public final n:Lcom/shabakaty/downloader/zq2;

.field public final o:Landroid/os/Looper;

.field public final p:Lcom/shabakaty/downloader/qi;

.field public final q:J

.field public final r:J

.field public final s:Lcom/shabakaty/downloader/w30;

.field public t:I

.field public u:Z

.field public v:I

.field public w:I

.field public x:Z

.field public y:I

.field public z:Lcom/shabakaty/downloader/t54;


# direct methods
.method public constructor <init>([Lcom/shabakaty/downloader/lr3;Lcom/shabakaty/downloader/lp4;Lcom/shabakaty/downloader/zq2;Lcom/shabakaty/downloader/fj2;Lcom/shabakaty/downloader/qi;Lcom/shabakaty/downloader/k6;ZLcom/shabakaty/downloader/wz3;JJLcom/shabakaty/downloader/ej2;JZLcom/shabakaty/downloader/w30;Landroid/os/Looper;Lcom/shabakaty/downloader/bd3;Lcom/shabakaty/downloader/bd3$b;)V
    .locals 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p5

    move-object/from16 v9, p6

    move-object/from16 v15, p17

    move-object/from16 v14, p18

    move-object/from16 v1, p19

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/shabakaty/downloader/ak;-><init>()V

    .line 2
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shabakaty/downloader/sy4;->e:Ljava/lang/String;

    const/16 v5, 0x1e

    invoke-static {v3, v5}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v5

    const-string v7, "Init "

    const-string v8, " ["

    const-string v10, "ExoPlayerLib/2.15.1"

    invoke-static {v5, v7, v3, v8, v10}, Lcom/shabakaty/downloader/nl3;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ExoPlayerImpl"

    .line 3
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 5
    iput-object v2, v0, Lcom/shabakaty/downloader/q71;->d:[Lcom/shabakaty/downloader/lr3;

    .line 6
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, p2

    .line 7
    iput-object v3, v0, Lcom/shabakaty/downloader/q71;->e:Lcom/shabakaty/downloader/lp4;

    move-object/from16 v7, p3

    .line 8
    iput-object v7, v0, Lcom/shabakaty/downloader/q71;->n:Lcom/shabakaty/downloader/zq2;

    .line 9
    iput-object v6, v0, Lcom/shabakaty/downloader/q71;->p:Lcom/shabakaty/downloader/qi;

    move/from16 v7, p7

    .line 10
    iput-boolean v7, v0, Lcom/shabakaty/downloader/q71;->m:Z

    move-wide/from16 v7, p9

    .line 11
    iput-wide v7, v0, Lcom/shabakaty/downloader/q71;->q:J

    move-wide/from16 v7, p11

    .line 12
    iput-wide v7, v0, Lcom/shabakaty/downloader/q71;->r:J

    .line 13
    iput-object v14, v0, Lcom/shabakaty/downloader/q71;->o:Landroid/os/Looper;

    .line 14
    iput-object v15, v0, Lcom/shabakaty/downloader/q71;->s:Lcom/shabakaty/downloader/w30;

    .line 15
    iput v4, v0, Lcom/shabakaty/downloader/q71;->t:I

    .line 16
    new-instance v7, Lcom/shabakaty/downloader/si2;

    new-instance v8, Lcom/shabakaty/downloader/cu;

    invoke-direct {v8, v1}, Lcom/shabakaty/downloader/cu;-><init>(Lcom/shabakaty/downloader/bd3;)V

    .line 17
    new-instance v10, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v10}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    invoke-direct {v7, v10, v14, v15, v8}, Lcom/shabakaty/downloader/si2;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/shabakaty/downloader/w30;Lcom/shabakaty/downloader/si2$b;)V

    .line 18
    iput-object v7, v0, Lcom/shabakaty/downloader/q71;->i:Lcom/shabakaty/downloader/si2;

    .line 19
    new-instance v7, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v7}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v7, v0, Lcom/shabakaty/downloader/q71;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 20
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/shabakaty/downloader/q71;->l:Ljava/util/List;

    .line 21
    new-instance v7, Lcom/shabakaty/downloader/t54$a;

    .line 22
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    invoke-direct {v7, v4, v8}, Lcom/shabakaty/downloader/t54$a;-><init>(ILjava/util/Random;)V

    .line 23
    iput-object v7, v0, Lcom/shabakaty/downloader/q71;->z:Lcom/shabakaty/downloader/t54;

    .line 24
    new-instance v7, Lcom/shabakaty/downloader/mp4;

    array-length v8, v2

    new-array v8, v8, [Lcom/shabakaty/downloader/nr3;

    array-length v10, v2

    new-array v10, v10, [Lcom/shabakaty/downloader/f81;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v10, v11}, Lcom/shabakaty/downloader/mp4;-><init>([Lcom/shabakaty/downloader/nr3;[Lcom/shabakaty/downloader/f81;Ljava/lang/Object;)V

    iput-object v7, v0, Lcom/shabakaty/downloader/q71;->b:Lcom/shabakaty/downloader/mp4;

    .line 25
    new-instance v7, Lcom/shabakaty/downloader/nn4$b;

    invoke-direct {v7}, Lcom/shabakaty/downloader/nn4$b;-><init>()V

    iput-object v7, v0, Lcom/shabakaty/downloader/q71;->k:Lcom/shabakaty/downloader/nn4$b;

    .line 26
    new-instance v7, Landroid/util/SparseBooleanArray;

    invoke-direct {v7}, Landroid/util/SparseBooleanArray;-><init>()V

    const/16 v8, 0xa

    new-array v10, v8, [I

    .line 27
    fill-array-data v10, :array_0

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v8, :cond_1

    .line 28
    aget v13, v10, v12

    const/16 v16, 0x0

    xor-int/lit8 v16, v16, 0x1

    .line 29
    invoke-static/range {v16 .. v16}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 30
    invoke-virtual {v7, v13, v5}, Landroid/util/SparseBooleanArray;->append(IZ)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v12, p20

    .line 31
    iget-object v8, v12, Lcom/shabakaty/downloader/bd3$b;->a:Lcom/shabakaty/downloader/xd1;

    const/4 v10, 0x0

    .line 32
    :goto_2
    invoke-virtual {v8}, Lcom/shabakaty/downloader/xd1;->c()I

    move-result v12

    if-ge v10, v12, :cond_2

    .line 33
    invoke-virtual {v8, v10}, Lcom/shabakaty/downloader/xd1;->b(I)I

    move-result v12

    xor-int/lit8 v13, v5, 0x0

    .line 34
    invoke-static {v13}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 35
    invoke-virtual {v7, v12, v5}, Landroid/util/SparseBooleanArray;->append(IZ)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 36
    :cond_2
    new-instance v8, Lcom/shabakaty/downloader/bd3$b;

    xor-int/lit8 v10, v5, 0x0

    .line 37
    invoke-static {v10}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 38
    new-instance v10, Lcom/shabakaty/downloader/xd1;

    invoke-direct {v10, v7, v11}, Lcom/shabakaty/downloader/xd1;-><init>(Landroid/util/SparseBooleanArray;Lcom/shabakaty/downloader/xd1$a;)V

    .line 39
    invoke-direct {v8, v10, v11}, Lcom/shabakaty/downloader/bd3$b;-><init>(Lcom/shabakaty/downloader/xd1;Lcom/shabakaty/downloader/bd3$a;)V

    .line 40
    iput-object v8, v0, Lcom/shabakaty/downloader/q71;->c:Lcom/shabakaty/downloader/bd3$b;

    .line 41
    new-instance v7, Landroid/util/SparseBooleanArray;

    invoke-direct {v7}, Landroid/util/SparseBooleanArray;-><init>()V

    const/4 v8, 0x0

    .line 42
    :goto_3
    invoke-virtual {v10}, Lcom/shabakaty/downloader/xd1;->c()I

    move-result v12

    if-ge v8, v12, :cond_3

    .line 43
    invoke-virtual {v10, v8}, Lcom/shabakaty/downloader/xd1;->b(I)I

    move-result v12

    xor-int/lit8 v13, v5, 0x0

    .line 44
    invoke-static {v13}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 45
    invoke-virtual {v7, v12, v5}, Landroid/util/SparseBooleanArray;->append(IZ)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x3

    xor-int/lit8 v10, v5, 0x0

    .line 46
    invoke-static {v10}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 47
    invoke-virtual {v7, v8, v5}, Landroid/util/SparseBooleanArray;->append(IZ)V

    const/16 v8, 0x9

    xor-int/lit8 v10, v5, 0x0

    .line 48
    invoke-static {v10}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 49
    invoke-virtual {v7, v8, v5}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 50
    new-instance v8, Lcom/shabakaty/downloader/bd3$b;

    xor-int/lit8 v10, v5, 0x0

    .line 51
    invoke-static {v10}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 52
    new-instance v10, Lcom/shabakaty/downloader/xd1;

    invoke-direct {v10, v7, v11}, Lcom/shabakaty/downloader/xd1;-><init>(Landroid/util/SparseBooleanArray;Lcom/shabakaty/downloader/xd1$a;)V

    .line 53
    invoke-direct {v8, v10, v11}, Lcom/shabakaty/downloader/bd3$b;-><init>(Lcom/shabakaty/downloader/xd1;Lcom/shabakaty/downloader/bd3$a;)V

    .line 54
    iput-object v8, v0, Lcom/shabakaty/downloader/q71;->A:Lcom/shabakaty/downloader/bd3$b;

    .line 55
    sget-object v7, Lcom/shabakaty/downloader/hp2;->D:Lcom/shabakaty/downloader/hp2;

    iput-object v7, v0, Lcom/shabakaty/downloader/q71;->B:Lcom/shabakaty/downloader/hp2;

    const/4 v7, -0x1

    .line 56
    iput v7, v0, Lcom/shabakaty/downloader/q71;->D:I

    .line 57
    invoke-interface {v15, v14, v11}, Lcom/shabakaty/downloader/w30;->b(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/shabakaty/downloader/fs1;

    move-result-object v7

    iput-object v7, v0, Lcom/shabakaty/downloader/q71;->f:Lcom/shabakaty/downloader/fs1;

    .line 58
    new-instance v12, Lcom/shabakaty/downloader/p71;

    invoke-direct {v12, v0, v5}, Lcom/shabakaty/downloader/p71;-><init>(Lcom/shabakaty/downloader/q71;I)V

    iput-object v12, v0, Lcom/shabakaty/downloader/q71;->g:Lcom/shabakaty/downloader/s71$e;

    .line 59
    iget-object v5, v0, Lcom/shabakaty/downloader/q71;->b:Lcom/shabakaty/downloader/mp4;

    invoke-static {v5}, Lcom/shabakaty/downloader/yc3;->i(Lcom/shabakaty/downloader/mp4;)Lcom/shabakaty/downloader/yc3;

    move-result-object v5

    iput-object v5, v0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    if-eqz v9, :cond_6

    .line 60
    iget-object v5, v9, Lcom/shabakaty/downloader/k6;->x:Lcom/shabakaty/downloader/bd3;

    if-eqz v5, :cond_4

    iget-object v5, v9, Lcom/shabakaty/downloader/k6;->u:Lcom/shabakaty/downloader/k6$a;

    .line 61
    iget-object v5, v5, Lcom/shabakaty/downloader/k6$a;->b:Lcom/google/common/collect/p;

    .line 62
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    const/4 v4, 0x1

    .line 63
    :cond_5
    invoke-static {v4}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 64
    iput-object v1, v9, Lcom/shabakaty/downloader/k6;->x:Lcom/shabakaty/downloader/bd3;

    .line 65
    iget-object v4, v9, Lcom/shabakaty/downloader/k6;->r:Lcom/shabakaty/downloader/w30;

    invoke-interface {v4, v14, v11}, Lcom/shabakaty/downloader/w30;->b(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/shabakaty/downloader/fs1;

    .line 66
    iget-object v4, v9, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    new-instance v5, Lcom/shabakaty/downloader/rv;

    invoke-direct {v5, v9, v1}, Lcom/shabakaty/downloader/rv;-><init>(Lcom/shabakaty/downloader/k6;Lcom/shabakaty/downloader/bd3;)V

    .line 67
    new-instance v1, Lcom/shabakaty/downloader/si2;

    iget-object v7, v4, Lcom/shabakaty/downloader/si2;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v4, v4, Lcom/shabakaty/downloader/si2;->a:Lcom/shabakaty/downloader/w30;

    invoke-direct {v1, v7, v14, v4, v5}, Lcom/shabakaty/downloader/si2;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/shabakaty/downloader/w30;Lcom/shabakaty/downloader/si2$b;)V

    .line 68
    iput-object v1, v9, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 69
    invoke-virtual {v0, v9}, Lcom/shabakaty/downloader/q71;->i0(Lcom/shabakaty/downloader/bd3$c;)V

    .line 70
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v14}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-interface {v6, v1, v9}, Lcom/shabakaty/downloader/qi;->d(Landroid/os/Handler;Lcom/shabakaty/downloader/qi$a;)V

    .line 71
    :cond_6
    new-instance v13, Lcom/shabakaty/downloader/s71;

    move-object v1, v13

    iget-object v4, v0, Lcom/shabakaty/downloader/q71;->b:Lcom/shabakaty/downloader/mp4;

    iget v7, v0, Lcom/shabakaty/downloader/q71;->t:I

    iget-boolean v8, v0, Lcom/shabakaty/downloader/q71;->u:Z

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p13

    move-object/from16 v17, v12

    move-object v0, v13

    move-wide/from16 v12, p14

    move/from16 v14, p16

    move-object/from16 v15, p18

    move-object/from16 v16, p17

    invoke-direct/range {v1 .. v17}, Lcom/shabakaty/downloader/s71;-><init>([Lcom/shabakaty/downloader/lr3;Lcom/shabakaty/downloader/lp4;Lcom/shabakaty/downloader/mp4;Lcom/shabakaty/downloader/fj2;Lcom/shabakaty/downloader/qi;IZLcom/shabakaty/downloader/k6;Lcom/shabakaty/downloader/wz3;Lcom/shabakaty/downloader/ej2;JZLandroid/os/Looper;Lcom/shabakaty/downloader/w30;Lcom/shabakaty/downloader/s71$e;)V

    move-object v1, v0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/shabakaty/downloader/q71;->h:Lcom/shabakaty/downloader/s71;

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
    .end array-data
.end method

.method public static n0(Lcom/shabakaty/downloader/yc3;)J
    .locals 7

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/nn4$c;

    invoke-direct {v0}, Lcom/shabakaty/downloader/nn4$c;-><init>()V

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/nn4$b;

    invoke-direct {v1}, Lcom/shabakaty/downloader/nn4$b;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget-object v3, p0, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget-object v3, v3, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    .line 4
    iget-wide v2, p0, Lcom/shabakaty/downloader/yc3;->c:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 5
    iget-object p0, p0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget v1, v1, Lcom/shabakaty/downloader/nn4$b;->c:I

    invoke-virtual {p0, v1, v0}, Lcom/shabakaty/downloader/nn4;->n(ILcom/shabakaty/downloader/nn4$c;)Lcom/shabakaty/downloader/nn4$c;

    move-result-object p0

    .line 6
    iget-wide v0, p0, Lcom/shabakaty/downloader/nn4$c;->m:J

    goto :goto_0

    .line 7
    :cond_0
    iget-wide v0, v1, Lcom/shabakaty/downloader/nn4$b;->e:J

    add-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public static o0(Lcom/shabakaty/downloader/yc3;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/yc3;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/shabakaty/downloader/yc3;->l:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/shabakaty/downloader/yc3;->m:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public A()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/q71;->r:J

    return-wide v0
.end method

.method public B(Lcom/shabakaty/downloader/bd3$e;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/q71;->i0(Lcom/shabakaty/downloader/bd3$c;)V

    return-void
.end method

.method public C()J
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/q71;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v1, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget-object v0, v0, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/shabakaty/downloader/q71;->k:Lcom/shabakaty/downloader/nn4$b;

    invoke-virtual {v1, v0, v2}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-wide v1, v0, Lcom/shabakaty/downloader/yc3;->c:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/q71;->t()I

    move-result v1

    iget-object v2, p0, Lcom/shabakaty/downloader/ak;->a:Lcom/shabakaty/downloader/nn4$c;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/nn4;->n(ILcom/shabakaty/downloader/nn4$c;)Lcom/shabakaty/downloader/nn4$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/nn4$c;->a()J

    move-result-wide v0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->k:Lcom/shabakaty/downloader/nn4$b;

    .line 6
    iget-wide v0, v0, Lcom/shabakaty/downloader/nn4$b;->e:J

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/jp;->d(J)J

    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-wide v2, v2, Lcom/shabakaty/downloader/yc3;->c:J

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/jp;->d(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/q71;->V()J

    move-result-wide v0

    return-wide v0
.end method

.method public E()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/p;->s:Lcom/shabakaty/downloader/c0;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/oq3;->v:Lcom/google/common/collect/p;

    return-object v0
.end method

.method public F()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/q71;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget v0, v0, Lcom/shabakaty/downloader/mp2;->b:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public H(Landroid/view/SurfaceView;)V
    .locals 0

    return-void
.end method

.method public I()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget v0, v0, Lcom/shabakaty/downloader/yc3;->m:I

    return v0
.end method

.method public J()Lcom/shabakaty/downloader/cp4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->h:Lcom/shabakaty/downloader/cp4;

    return-object v0
.end method

.method public K()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/q71;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v1, v0, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget-object v2, v1, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/shabakaty/downloader/q71;->k:Lcom/shabakaty/downloader/nn4$b;

    invoke-virtual {v0, v2, v3}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->k:Lcom/shabakaty/downloader/nn4$b;

    iget v2, v1, Lcom/shabakaty/downloader/mp2;->b:I

    iget v1, v1, Lcom/shabakaty/downloader/mp2;->c:I

    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/nn4$b;->a(II)J

    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/jp;->d(J)J

    move-result-wide v0

    return-wide v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ak;->X()J

    move-result-wide v0

    return-wide v0
.end method

.method public L()Lcom/shabakaty/downloader/nn4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    return-object v0
.end method

.method public M()Landroid/os/Looper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->o:Landroid/os/Looper;

    return-object v0
.end method

.method public N()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/q71;->u:Z

    return v0
.end method

.method public O()J
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/shabakaty/downloader/q71;->E:J

    return-wide v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v1, v0, Lcom/shabakaty/downloader/yc3;->k:Lcom/shabakaty/downloader/uq2$a;

    iget-wide v1, v1, Lcom/shabakaty/downloader/mp2;->d:J

    iget-object v3, v0, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget-wide v3, v3, Lcom/shabakaty/downloader/mp2;->d:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/q71;->t()I

    move-result v1

    iget-object v2, p0, Lcom/shabakaty/downloader/ak;->a:Lcom/shabakaty/downloader/nn4$c;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/nn4;->n(ILcom/shabakaty/downloader/nn4$c;)Lcom/shabakaty/downloader/nn4$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/nn4$c;->b()J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_1
    iget-wide v0, v0, Lcom/shabakaty/downloader/yc3;->q:J

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v2, v2, Lcom/shabakaty/downloader/yc3;->k:Lcom/shabakaty/downloader/uq2$a;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/mp2;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v1, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->k:Lcom/shabakaty/downloader/uq2$a;

    iget-object v0, v0, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/shabakaty/downloader/q71;->k:Lcom/shabakaty/downloader/nn4$b;

    .line 8
    invoke-virtual {v1, v0, v2}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v1, v1, Lcom/shabakaty/downloader/yc3;->k:Lcom/shabakaty/downloader/uq2$a;

    iget v1, v1, Lcom/shabakaty/downloader/mp2;->b:I

    .line 10
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/nn4$b;->c(I)J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 11
    iget-wide v0, v0, Lcom/shabakaty/downloader/nn4$b;->d:J

    goto :goto_0

    :cond_2
    move-wide v0, v1

    .line 12
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v3, v2, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget-object v2, v2, Lcom/shabakaty/downloader/yc3;->k:Lcom/shabakaty/downloader/uq2$a;

    .line 13
    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/shabakaty/downloader/q71;->q0(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;J)J

    move-result-wide v0

    .line 14
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/jp;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public R(Landroid/view/TextureView;)V
    .locals 0

    return-void
.end method

.method public S()Lcom/shabakaty/downloader/ip4;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ip4;

    iget-object v1, p0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v1, v1, Lcom/shabakaty/downloader/yc3;->i:Lcom/shabakaty/downloader/mp4;

    iget-object v1, v1, Lcom/shabakaty/downloader/mp4;->c:[Lcom/shabakaty/downloader/f81;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ip4;-><init>([Lcom/shabakaty/downloader/hp4;)V

    return-object v0
.end method

.method public U()Lcom/shabakaty/downloader/hp2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->B:Lcom/shabakaty/downloader/hp2;

    return-object v0
.end method

.method public V()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/q71;->k0(Lcom/shabakaty/downloader/yc3;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/jp;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public W()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/q71;->q:J

    return-wide v0
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/mp2;->a()Z

    move-result v0

    return v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-wide v0, v0, Lcom/shabakaty/downloader/yc3;->r:J

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/jp;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Lcom/shabakaty/downloader/ad3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->n:Lcom/shabakaty/downloader/ad3;

    return-object v0
.end method

.method public d(IJ)V
    .locals 13

    move-object v10, p0

    move v0, p1

    move-wide v1, p2

    .line 1
    iget-object v3, v10, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v3, v3, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    if-ltz v0, :cond_3

    .line 2
    invoke-virtual {v3}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/shabakaty/downloader/nn4;->p()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 3
    :cond_0
    iget v4, v10, Lcom/shabakaty/downloader/q71;->v:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v10, Lcom/shabakaty/downloader/q71;->v:I

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/q71;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "ExoPlayerImpl"

    const-string v1, "seekTo ignored because an ad is playing"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/s71$d;

    iget-object v1, v10, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/s71$d;-><init>(Lcom/shabakaty/downloader/yc3;)V

    .line 7
    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/s71$d;->a(I)V

    .line 8
    iget-object v1, v10, Lcom/shabakaty/downloader/q71;->g:Lcom/shabakaty/downloader/s71$e;

    check-cast v1, Lcom/shabakaty/downloader/p71;

    iget-object v1, v1, Lcom/shabakaty/downloader/p71;->s:Lcom/shabakaty/downloader/q71;

    .line 9
    iget-object v2, v1, Lcom/shabakaty/downloader/q71;->f:Lcom/shabakaty/downloader/fs1;

    new-instance v3, Lcom/shabakaty/downloader/or;

    invoke-direct {v3, v1, v0}, Lcom/shabakaty/downloader/or;-><init>(Lcom/shabakaty/downloader/q71;Lcom/shabakaty/downloader/s71$d;)V

    check-cast v2, Lcom/shabakaty/downloader/yj4;

    .line 10
    iget-object v0, v2, Lcom/shabakaty/downloader/yj4;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 11
    :cond_1
    iget-object v4, v10, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget v4, v4, Lcom/shabakaty/downloader/yc3;->e:I

    if-ne v4, v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    .line 12
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/q71;->t()I

    move-result v9

    .line 13
    iget-object v4, v10, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/yc3;->g(I)Lcom/shabakaty/downloader/yc3;

    move-result-object v4

    .line 14
    invoke-virtual {p0, v3, p1, v1, v2}, Lcom/shabakaty/downloader/q71;->m0(Lcom/shabakaty/downloader/nn4;IJ)Landroid/util/Pair;

    move-result-object v5

    .line 15
    invoke-virtual {p0, v4, v3, v5}, Lcom/shabakaty/downloader/q71;->p0(Lcom/shabakaty/downloader/yc3;Lcom/shabakaty/downloader/nn4;Landroid/util/Pair;)Lcom/shabakaty/downloader/yc3;

    move-result-object v4

    .line 16
    iget-object v5, v10, Lcom/shabakaty/downloader/q71;->h:Lcom/shabakaty/downloader/s71;

    invoke-static/range {p2 .. p3}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v1

    .line 17
    iget-object v5, v5, Lcom/shabakaty/downloader/s71;->x:Lcom/shabakaty/downloader/fs1;

    new-instance v6, Lcom/shabakaty/downloader/s71$g;

    invoke-direct {v6, v3, p1, v1, v2}, Lcom/shabakaty/downloader/s71$g;-><init>(Lcom/shabakaty/downloader/nn4;IJ)V

    .line 18
    check-cast v5, Lcom/shabakaty/downloader/yj4;

    const/4 v0, 0x3

    invoke-virtual {v5, v0, v6}, Lcom/shabakaty/downloader/yj4;->c(ILjava/lang/Object;)Lcom/shabakaty/downloader/fs1$a;

    move-result-object v0

    .line 19
    check-cast v0, Lcom/shabakaty/downloader/yj4$b;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/yj4$b;->b()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 20
    invoke-virtual {p0, v4}, Lcom/shabakaty/downloader/q71;->k0(Lcom/shabakaty/downloader/yc3;)J

    move-result-wide v11

    move-object v0, p0

    move-object v1, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-wide v7, v11

    .line 21
    invoke-virtual/range {v0 .. v9}, Lcom/shabakaty/downloader/q71;->x0(Lcom/shabakaty/downloader/yc3;IIZZIJI)V

    return-void

    .line 22
    :cond_3
    new-instance v4, Lcom/shabakaty/downloader/cy1;

    invoke-direct {v4, v3, p1, v1, v2}, Lcom/shabakaty/downloader/cy1;-><init>(Lcom/shabakaty/downloader/nn4;IJ)V

    throw v4
.end method

.method public e()Lcom/shabakaty/downloader/bd3$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->A:Lcom/shabakaty/downloader/bd3$b;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-boolean v0, v0, Lcom/shabakaty/downloader/yc3;->l:Z

    return v0
.end method

.method public g()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget v1, v0, Lcom/shabakaty/downloader/yc3;->e:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/yc3;->e(Lcom/shabakaty/downloader/i71;)Lcom/shabakaty/downloader/yc3;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 4
    :goto_0
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/yc3;->g(I)Lcom/shabakaty/downloader/yc3;

    move-result-object v4

    .line 5
    iget v0, p0, Lcom/shabakaty/downloader/q71;->v:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/shabakaty/downloader/q71;->v:I

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->h:Lcom/shabakaty/downloader/s71;

    .line 7
    iget-object v0, v0, Lcom/shabakaty/downloader/s71;->x:Lcom/shabakaty/downloader/fs1;

    check-cast v0, Lcom/shabakaty/downloader/yj4;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/yj4;->a(I)Lcom/shabakaty/downloader/fs1$a;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/yj4$b;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/yj4$b;->b()V

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x5

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, -0x1

    move-object v3, p0

    .line 8
    invoke-virtual/range {v3 .. v12}, Lcom/shabakaty/downloader/q71;->x0(Lcom/shabakaty/downloader/yc3;IIZZIJI)V

    return-void
.end method

.method public h()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget v0, v0, Lcom/shabakaty/downloader/yc3;->e:I

    return v0
.end method

.method public i0(Lcom/shabakaty/downloader/bd3$c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->i:Lcom/shabakaty/downloader/si2;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/si2;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v1, Lcom/shabakaty/downloader/si2$c;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/si2$c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public j(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/q71;->u:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/shabakaty/downloader/q71;->u:Z

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->h:Lcom/shabakaty/downloader/s71;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/s71;->x:Lcom/shabakaty/downloader/fs1;

    const/4 v1, 0x0

    check-cast v0, Lcom/shabakaty/downloader/yj4;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, p1, v1}, Lcom/shabakaty/downloader/yj4;->b(III)Lcom/shabakaty/downloader/fs1$a;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/yj4$b;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/yj4$b;->b()V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->i:Lcom/shabakaty/downloader/si2;

    const/16 v1, 0xa

    new-instance v2, Lcom/shabakaty/downloader/n71;

    invoke-direct {v2, p1}, Lcom/shabakaty/downloader/n71;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/q71;->w0()V

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/q71;->i:Lcom/shabakaty/downloader/si2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    :cond_0
    return-void
.end method

.method public j0(Lcom/shabakaty/downloader/vd3$b;)Lcom/shabakaty/downloader/vd3;
    .locals 8

    .line 1
    new-instance v7, Lcom/shabakaty/downloader/vd3;

    iget-object v1, p0, Lcom/shabakaty/downloader/q71;->h:Lcom/shabakaty/downloader/s71;

    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v3, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/q71;->t()I

    move-result v4

    iget-object v5, p0, Lcom/shabakaty/downloader/q71;->s:Lcom/shabakaty/downloader/w30;

    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->h:Lcom/shabakaty/downloader/s71;

    .line 3
    iget-object v6, v0, Lcom/shabakaty/downloader/s71;->z:Landroid/os/Looper;

    move-object v0, v7

    move-object v2, p1

    .line 4
    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/vd3;-><init>(Lcom/shabakaty/downloader/vd3$a;Lcom/shabakaty/downloader/vd3$b;Lcom/shabakaty/downloader/nn4;ILcom/shabakaty/downloader/w30;Landroid/os/Looper;)V

    return-object v7
.end method

.method public k()I
    .locals 1

    const/16 v0, 0xbb8

    return v0
.end method

.method public final k0(Lcom/shabakaty/downloader/yc3;)J
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/shabakaty/downloader/q71;->E:J

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/mp2;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-wide v0, p1, Lcom/shabakaty/downloader/yc3;->s:J

    return-wide v0

    .line 5
    :cond_1
    iget-object v0, p1, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget-object v1, p1, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget-wide v2, p1, Lcom/shabakaty/downloader/yc3;->s:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/shabakaty/downloader/q71;->q0(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public l()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v1, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget-object v0, v0, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/nn4;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final l0()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/q71;->D:I

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v1, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget-object v0, v0, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/shabakaty/downloader/q71;->k:Lcom/shabakaty/downloader/nn4$b;

    invoke-virtual {v1, v0, v2}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    move-result-object v0

    iget v0, v0, Lcom/shabakaty/downloader/nn4$b;->c:I

    return v0
.end method

.method public m(Landroid/view/TextureView;)V
    .locals 0

    return-void
.end method

.method public final m0(Lcom/shabakaty/downloader/nn4;IJ)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/nn4;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iput p2, p0, Lcom/shabakaty/downloader/q71;->D:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, p1

    if-nez v0, :cond_0

    const-wide/16 p3, 0x0

    .line 3
    :cond_0
    iput-wide p3, p0, Lcom/shabakaty/downloader/q71;->E:J

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/nn4;->p()I

    move-result v0

    if-lt p2, v0, :cond_3

    .line 5
    :cond_2
    iget-boolean p2, p0, Lcom/shabakaty/downloader/q71;->u:Z

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/nn4;->a(Z)I

    move-result p2

    .line 6
    iget-object p3, p0, Lcom/shabakaty/downloader/ak;->a:Lcom/shabakaty/downloader/nn4$c;

    invoke-virtual {p1, p2, p3}, Lcom/shabakaty/downloader/nn4;->n(ILcom/shabakaty/downloader/nn4$c;)Lcom/shabakaty/downloader/nn4$c;

    move-result-object p3

    invoke-virtual {p3}, Lcom/shabakaty/downloader/nn4$c;->a()J

    move-result-wide p3

    :cond_3
    move v3, p2

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/ak;->a:Lcom/shabakaty/downloader/nn4$c;

    iget-object v2, p0, Lcom/shabakaty/downloader/q71;->k:Lcom/shabakaty/downloader/nn4$b;

    invoke-static {p3, p4}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/nn4;->j(Lcom/shabakaty/downloader/nn4$c;Lcom/shabakaty/downloader/nn4$b;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public n()Lcom/shabakaty/downloader/p25;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/p25;->e:Lcom/shabakaty/downloader/p25;

    return-object v0
.end method

.method public o(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/dp2;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/q71;->n:Lcom/shabakaty/downloader/zq2;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/dp2;

    invoke-interface {v2, v3}, Lcom/shabakaty/downloader/zq2;->a(Lcom/shabakaty/downloader/dp2;)Lcom/shabakaty/downloader/uq2;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/shabakaty/downloader/q71;->t0(Ljava/util/List;Z)V

    return-void
.end method

.method public p()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/q71;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget v0, v0, Lcom/shabakaty/downloader/mp2;->c:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public final p0(Lcom/shabakaty/downloader/yc3;Lcom/shabakaty/downloader/nn4;Landroid/util/Pair;)Lcom/shabakaty/downloader/yc3;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/yc3;",
            "Lcom/shabakaty/downloader/nn4;",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/shabakaty/downloader/yc3;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/shabakaty/downloader/md;->b(Z)V

    move-object/from16 v3, p1

    .line 2
    iget-object v5, v3, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    .line 3
    invoke-virtual/range {p1 .. p2}, Lcom/shabakaty/downloader/yc3;->h(Lcom/shabakaty/downloader/nn4;)Lcom/shabakaty/downloader/yc3;

    move-result-object v6

    .line 4
    invoke-virtual/range {p2 .. p2}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    sget-object v1, Lcom/shabakaty/downloader/yc3;->t:Lcom/shabakaty/downloader/uq2$a;

    sget-object v1, Lcom/shabakaty/downloader/yc3;->t:Lcom/shabakaty/downloader/uq2$a;

    .line 6
    iget-wide v2, v0, Lcom/shabakaty/downloader/q71;->E:J

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    .line 7
    sget-object v16, Lcom/shabakaty/downloader/cp4;->u:Lcom/shabakaty/downloader/cp4;

    iget-object v2, v0, Lcom/shabakaty/downloader/q71;->b:Lcom/shabakaty/downloader/mp4;

    .line 8
    sget-object v3, Lcom/google/common/collect/p;->s:Lcom/shabakaty/downloader/c0;

    .line 9
    sget-object v18, Lcom/shabakaty/downloader/oq3;->v:Lcom/google/common/collect/p;

    move-object v7, v1

    move-wide v8, v12

    move-wide v10, v12

    move-object/from16 v17, v2

    .line 10
    invoke-virtual/range {v6 .. v18}, Lcom/shabakaty/downloader/yc3;->b(Lcom/shabakaty/downloader/uq2$a;JJJJLcom/shabakaty/downloader/cp4;Lcom/shabakaty/downloader/mp4;Ljava/util/List;)Lcom/shabakaty/downloader/yc3;

    move-result-object v2

    .line 11
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/yc3;->a(Lcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/yc3;

    move-result-object v1

    .line 12
    iget-wide v2, v1, Lcom/shabakaty/downloader/yc3;->s:J

    iput-wide v2, v1, Lcom/shabakaty/downloader/yc3;->q:J

    return-object v1

    .line 13
    :cond_2
    iget-object v3, v6, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget-object v3, v3, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    .line 14
    sget v7, Lcom/shabakaty/downloader/sy4;->a:I

    iget-object v7, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v4

    if-eqz v7, :cond_3

    .line 15
    new-instance v8, Lcom/shabakaty/downloader/uq2$a;

    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {v8, v9}, Lcom/shabakaty/downloader/uq2$a;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v8, v6, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    :goto_2
    move-object v14, v8

    .line 16
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/q71;->C()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v8

    .line 18
    invoke-virtual {v5}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v2

    if-nez v2, :cond_4

    .line 19
    iget-object v2, v0, Lcom/shabakaty/downloader/q71;->k:Lcom/shabakaty/downloader/nn4$b;

    .line 20
    invoke-virtual {v5, v3, v2}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    move-result-object v2

    .line 21
    iget-wide v2, v2, Lcom/shabakaty/downloader/nn4$b;->e:J

    sub-long/2addr v8, v2

    :cond_4
    if-nez v7, :cond_b

    cmp-long v2, v12, v8

    if-gez v2, :cond_5

    goto/16 :goto_5

    :cond_5
    if-nez v2, :cond_8

    .line 22
    iget-object v2, v6, Lcom/shabakaty/downloader/yc3;->k:Lcom/shabakaty/downloader/uq2$a;

    iget-object v2, v2, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    .line 23
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/nn4;->b(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 24
    iget-object v3, v0, Lcom/shabakaty/downloader/q71;->k:Lcom/shabakaty/downloader/nn4$b;

    .line 25
    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/nn4;->f(ILcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    move-result-object v2

    iget v2, v2, Lcom/shabakaty/downloader/nn4$b;->c:I

    iget-object v3, v14, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    iget-object v4, v0, Lcom/shabakaty/downloader/q71;->k:Lcom/shabakaty/downloader/nn4$b;

    .line 26
    invoke-virtual {v1, v3, v4}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    move-result-object v3

    iget v3, v3, Lcom/shabakaty/downloader/nn4$b;->c:I

    if-eq v2, v3, :cond_a

    .line 27
    :cond_6
    iget-object v2, v14, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    iget-object v3, v0, Lcom/shabakaty/downloader/q71;->k:Lcom/shabakaty/downloader/nn4$b;

    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    .line 28
    invoke-virtual {v14}, Lcom/shabakaty/downloader/mp2;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 29
    iget-object v1, v0, Lcom/shabakaty/downloader/q71;->k:Lcom/shabakaty/downloader/nn4$b;

    iget v2, v14, Lcom/shabakaty/downloader/mp2;->b:I

    iget v3, v14, Lcom/shabakaty/downloader/mp2;->c:I

    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/nn4$b;->a(II)J

    move-result-wide v1

    goto :goto_3

    .line 30
    :cond_7
    iget-object v1, v0, Lcom/shabakaty/downloader/q71;->k:Lcom/shabakaty/downloader/nn4$b;

    iget-wide v1, v1, Lcom/shabakaty/downloader/nn4$b;->d:J

    .line 31
    :goto_3
    iget-wide v8, v6, Lcom/shabakaty/downloader/yc3;->s:J

    iget-wide v10, v6, Lcom/shabakaty/downloader/yc3;->s:J

    iget-wide v12, v6, Lcom/shabakaty/downloader/yc3;->d:J

    iget-wide v3, v6, Lcom/shabakaty/downloader/yc3;->s:J

    sub-long v3, v1, v3

    iget-object v5, v6, Lcom/shabakaty/downloader/yc3;->h:Lcom/shabakaty/downloader/cp4;

    iget-object v15, v6, Lcom/shabakaty/downloader/yc3;->i:Lcom/shabakaty/downloader/mp4;

    iget-object v7, v6, Lcom/shabakaty/downloader/yc3;->j:Ljava/util/List;

    move-object/from16 v18, v7

    move-object v7, v14

    move-object v0, v14

    move-object/from16 v17, v15

    move-wide v14, v3

    move-object/from16 v16, v5

    .line 32
    invoke-virtual/range {v6 .. v18}, Lcom/shabakaty/downloader/yc3;->b(Lcom/shabakaty/downloader/uq2$a;JJJJLcom/shabakaty/downloader/cp4;Lcom/shabakaty/downloader/mp4;Ljava/util/List;)Lcom/shabakaty/downloader/yc3;

    move-result-object v3

    .line 33
    invoke-virtual {v3, v0}, Lcom/shabakaty/downloader/yc3;->a(Lcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/yc3;

    move-result-object v6

    .line 34
    iput-wide v1, v6, Lcom/shabakaty/downloader/yc3;->q:J

    goto :goto_4

    :cond_8
    move-object v0, v14

    .line 35
    invoke-virtual {v0}, Lcom/shabakaty/downloader/mp2;->a()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-static {v1}, Lcom/shabakaty/downloader/md;->e(Z)V

    const-wide/16 v1, 0x0

    .line 36
    iget-wide v3, v6, Lcom/shabakaty/downloader/yc3;->r:J

    sub-long v7, v12, v8

    sub-long/2addr v3, v7

    .line 37
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 38
    iget-wide v1, v6, Lcom/shabakaty/downloader/yc3;->q:J

    .line 39
    iget-object v3, v6, Lcom/shabakaty/downloader/yc3;->k:Lcom/shabakaty/downloader/uq2$a;

    iget-object v4, v6, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/mp2;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    add-long v1, v12, v14

    .line 40
    :cond_9
    iget-object v3, v6, Lcom/shabakaty/downloader/yc3;->h:Lcom/shabakaty/downloader/cp4;

    iget-object v4, v6, Lcom/shabakaty/downloader/yc3;->i:Lcom/shabakaty/downloader/mp4;

    iget-object v5, v6, Lcom/shabakaty/downloader/yc3;->j:Ljava/util/List;

    move-object v7, v0

    move-wide v8, v12

    move-wide v10, v12

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    .line 41
    invoke-virtual/range {v6 .. v18}, Lcom/shabakaty/downloader/yc3;->b(Lcom/shabakaty/downloader/uq2$a;JJJJLcom/shabakaty/downloader/cp4;Lcom/shabakaty/downloader/mp4;Ljava/util/List;)Lcom/shabakaty/downloader/yc3;

    move-result-object v6

    .line 42
    iput-wide v1, v6, Lcom/shabakaty/downloader/yc3;->q:J

    :cond_a
    :goto_4
    move-object/from16 v0, p0

    goto :goto_9

    :cond_b
    :goto_5
    move-object v0, v14

    .line 43
    invoke-virtual {v0}, Lcom/shabakaty/downloader/mp2;->a()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-static {v1}, Lcom/shabakaty/downloader/md;->e(Z)V

    const-wide/16 v14, 0x0

    if-eqz v7, :cond_c

    .line 44
    sget-object v1, Lcom/shabakaty/downloader/cp4;->u:Lcom/shabakaty/downloader/cp4;

    goto :goto_6

    :cond_c
    iget-object v1, v6, Lcom/shabakaty/downloader/yc3;->h:Lcom/shabakaty/downloader/cp4;

    :goto_6
    move-object/from16 v16, v1

    if-eqz v7, :cond_d

    move-object v1, v0

    move-object/from16 v0, p0

    .line 45
    iget-object v2, v0, Lcom/shabakaty/downloader/q71;->b:Lcom/shabakaty/downloader/mp4;

    goto :goto_7

    :cond_d
    move-object v1, v0

    move-object/from16 v0, p0

    iget-object v2, v6, Lcom/shabakaty/downloader/yc3;->i:Lcom/shabakaty/downloader/mp4;

    :goto_7
    move-object/from16 v17, v2

    if-eqz v7, :cond_e

    .line 46
    sget-object v2, Lcom/google/common/collect/p;->s:Lcom/shabakaty/downloader/c0;

    .line 47
    sget-object v2, Lcom/shabakaty/downloader/oq3;->v:Lcom/google/common/collect/p;

    goto :goto_8

    .line 48
    :cond_e
    iget-object v2, v6, Lcom/shabakaty/downloader/yc3;->j:Ljava/util/List;

    :goto_8
    move-object/from16 v18, v2

    move-object v7, v1

    move-wide v8, v12

    move-wide v10, v12

    move-wide v2, v12

    .line 49
    invoke-virtual/range {v6 .. v18}, Lcom/shabakaty/downloader/yc3;->b(Lcom/shabakaty/downloader/uq2$a;JJJJLcom/shabakaty/downloader/cp4;Lcom/shabakaty/downloader/mp4;Ljava/util/List;)Lcom/shabakaty/downloader/yc3;

    move-result-object v4

    .line 50
    invoke-virtual {v4, v1}, Lcom/shabakaty/downloader/yc3;->a(Lcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/yc3;

    move-result-object v6

    .line 51
    iput-wide v2, v6, Lcom/shabakaty/downloader/yc3;->q:J

    :goto_9
    return-object v6
.end method

.method public final q0(Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/uq2$a;J)J
    .locals 1

    .line 1
    iget-object p2, p2, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->k:Lcom/shabakaty/downloader/nn4$b;

    invoke-virtual {p1, p2, v0}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/q71;->k:Lcom/shabakaty/downloader/nn4$b;

    .line 3
    iget-wide p1, p1, Lcom/shabakaty/downloader/nn4$b;->e:J

    add-long/2addr p3, p1

    return-wide p3
.end method

.method public r(Landroid/view/SurfaceView;)V
    .locals 0

    return-void
.end method

.method public r0(Lcom/shabakaty/downloader/bd3$c;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->i:Lcom/shabakaty/downloader/si2;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/si2;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/si2$c;

    .line 3
    iget-object v3, v2, Lcom/shabakaty/downloader/si2$c;->a:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v3, v0, Lcom/shabakaty/downloader/si2;->c:Lcom/shabakaty/downloader/si2$b;

    const/4 v4, 0x1

    .line 5
    iput-boolean v4, v2, Lcom/shabakaty/downloader/si2$c;->d:Z

    .line 6
    iget-boolean v4, v2, Lcom/shabakaty/downloader/si2$c;->c:Z

    if-eqz v4, :cond_1

    .line 7
    iget-object v4, v2, Lcom/shabakaty/downloader/si2$c;->a:Ljava/lang/Object;

    iget-object v5, v2, Lcom/shabakaty/downloader/si2$c;->b:Lcom/shabakaty/downloader/xd1$b;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/xd1$b;->b()Lcom/shabakaty/downloader/xd1;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/shabakaty/downloader/si2$b;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/xd1;)V

    .line 8
    :cond_1
    iget-object v3, v0, Lcom/shabakaty/downloader/si2;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public s(Lcom/shabakaty/downloader/bd3$e;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/q71;->r0(Lcom/shabakaty/downloader/bd3$c;)V

    return-void
.end method

.method public final s0(II)V
    .locals 2

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-lt v0, p1, :cond_0

    .line 1
    iget-object v1, p0, Lcom/shabakaty/downloader/q71;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->z:Lcom/shabakaty/downloader/t54;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/t54;->a(II)Lcom/shabakaty/downloader/t54;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/q71;->z:Lcom/shabakaty/downloader/t54;

    return-void
.end method

.method public t()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/q71;->l0()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public t0(Ljava/util/List;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/uq2;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v10, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/q71;->l0()I

    move-result v0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/q71;->V()J

    move-result-wide v1

    .line 3
    iget v3, v10, Lcom/shabakaty/downloader/q71;->v:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v10, Lcom/shabakaty/downloader/q71;->v:I

    .line 4
    iget-object v3, v10, Lcom/shabakaty/downloader/q71;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 5
    iget-object v3, v10, Lcom/shabakaty/downloader/q71;->l:Ljava/util/List;

    .line 6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 7
    invoke-virtual {v10, v5, v3}, Lcom/shabakaty/downloader/q71;->s0(II)V

    .line 8
    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 9
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 10
    new-instance v6, Lcom/shabakaty/downloader/cr2$c;

    move-object/from16 v7, p1

    .line 11
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/downloader/uq2;

    iget-boolean v9, v10, Lcom/shabakaty/downloader/q71;->m:Z

    invoke-direct {v6, v8, v9}, Lcom/shabakaty/downloader/cr2$c;-><init>(Lcom/shabakaty/downloader/uq2;Z)V

    .line 12
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v8, v10, Lcom/shabakaty/downloader/q71;->l:Ljava/util/List;

    add-int/lit8 v9, v3, 0x0

    new-instance v11, Lcom/shabakaty/downloader/q71$a;

    iget-object v13, v6, Lcom/shabakaty/downloader/cr2$c;->b:Ljava/lang/Object;

    iget-object v6, v6, Lcom/shabakaty/downloader/cr2$c;->a:Lcom/shabakaty/downloader/zm2;

    .line 14
    iget-object v6, v6, Lcom/shabakaty/downloader/zm2;->E:Lcom/shabakaty/downloader/zm2$a;

    .line 15
    invoke-direct {v11, v13, v6}, Lcom/shabakaty/downloader/q71$a;-><init>(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4;)V

    .line 16
    invoke-interface {v8, v9, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 17
    :cond_1
    iget-object v3, v10, Lcom/shabakaty/downloader/q71;->z:Lcom/shabakaty/downloader/t54;

    .line 18
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 19
    invoke-interface {v3, v5, v6}, Lcom/shabakaty/downloader/t54;->f(II)Lcom/shabakaty/downloader/t54;

    move-result-object v3

    iput-object v3, v10, Lcom/shabakaty/downloader/q71;->z:Lcom/shabakaty/downloader/t54;

    .line 20
    new-instance v6, Lcom/shabakaty/downloader/wd3;

    iget-object v7, v10, Lcom/shabakaty/downloader/q71;->l:Ljava/util/List;

    invoke-direct {v6, v7, v3}, Lcom/shabakaty/downloader/wd3;-><init>(Ljava/util/Collection;Lcom/shabakaty/downloader/t54;)V

    .line 21
    invoke-virtual {v6}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v3

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, -0x1

    if-nez v3, :cond_3

    .line 22
    iget v3, v6, Lcom/shabakaty/downloader/wd3;->e:I

    if-ge v9, v3, :cond_2

    goto :goto_1

    .line 23
    :cond_2
    new-instance v0, Lcom/shabakaty/downloader/cy1;

    invoke-direct {v0, v6, v9, v7, v8}, Lcom/shabakaty/downloader/cy1;-><init>(Lcom/shabakaty/downloader/nn4;IJ)V

    throw v0

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 24
    iget-boolean v0, v10, Lcom/shabakaty/downloader/q71;->u:Z

    invoke-virtual {v6, v0}, Lcom/shabakaty/downloader/t;->a(Z)I

    move-result v0

    move v14, v0

    move-wide v1, v7

    goto :goto_2

    :cond_4
    move v14, v0

    .line 25
    :goto_2
    iget-object v0, v10, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    .line 26
    invoke-virtual {v10, v6, v14, v1, v2}, Lcom/shabakaty/downloader/q71;->m0(Lcom/shabakaty/downloader/nn4;IJ)Landroid/util/Pair;

    move-result-object v3

    .line 27
    invoke-virtual {v10, v0, v6, v3}, Lcom/shabakaty/downloader/q71;->p0(Lcom/shabakaty/downloader/yc3;Lcom/shabakaty/downloader/nn4;Landroid/util/Pair;)Lcom/shabakaty/downloader/yc3;

    move-result-object v0

    .line 28
    iget v3, v0, Lcom/shabakaty/downloader/yc3;->e:I

    if-eq v14, v9, :cond_7

    if-eq v3, v4, :cond_7

    .line 29
    invoke-virtual {v6}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v3

    if-nez v3, :cond_6

    .line 30
    iget v3, v6, Lcom/shabakaty/downloader/wd3;->e:I

    if-lt v14, v3, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x2

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v3, 0x4

    .line 31
    :cond_7
    :goto_4
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/yc3;->g(I)Lcom/shabakaty/downloader/yc3;

    move-result-object v3

    .line 32
    iget-object v0, v10, Lcom/shabakaty/downloader/q71;->h:Lcom/shabakaty/downloader/s71;

    .line 33
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v15

    iget-object v13, v10, Lcom/shabakaty/downloader/q71;->z:Lcom/shabakaty/downloader/t54;

    .line 34
    iget-object v0, v0, Lcom/shabakaty/downloader/s71;->x:Lcom/shabakaty/downloader/fs1;

    new-instance v1, Lcom/shabakaty/downloader/s71$a;

    const/16 v17, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v17}, Lcom/shabakaty/downloader/s71$a;-><init>(Ljava/util/List;Lcom/shabakaty/downloader/t54;IJLcom/shabakaty/downloader/r71;)V

    .line 35
    check-cast v0, Lcom/shabakaty/downloader/yj4;

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/yj4;->c(ILjava/lang/Object;)Lcom/shabakaty/downloader/fs1$a;

    move-result-object v0

    .line 36
    check-cast v0, Lcom/shabakaty/downloader/yj4$b;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/yj4$b;->b()V

    .line 37
    iget-object v0, v10, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget-object v0, v0, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    iget-object v1, v3, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget-object v1, v1, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v10, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    .line 39
    invoke-virtual {v0}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v5, 0x1

    :cond_8
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    .line 40
    invoke-virtual {v10, v3}, Lcom/shabakaty/downloader/q71;->k0(Lcom/shabakaty/downloader/yc3;)J

    move-result-wide v8

    const/4 v11, -0x1

    move-object/from16 v0, p0

    move-object v1, v3

    move v3, v4

    move v4, v6

    move v6, v7

    move-wide v7, v8

    move v9, v11

    .line 41
    invoke-virtual/range {v0 .. v9}, Lcom/shabakaty/downloader/q71;->x0(Lcom/shabakaty/downloader/yc3;IIZZIJI)V

    return-void
.end method

.method public u()Lcom/shabakaty/downloader/j71$a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public u0(ZII)V
    .locals 10

    .line 1
    iget-object v2, p0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-boolean v3, v2, Lcom/shabakaty/downloader/yc3;->l:Z

    if-ne v3, p1, :cond_0

    iget v3, v2, Lcom/shabakaty/downloader/yc3;->m:I

    if-ne v3, p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget v3, p0, Lcom/shabakaty/downloader/q71;->v:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/shabakaty/downloader/q71;->v:I

    .line 3
    invoke-virtual {v2, p1, p2}, Lcom/shabakaty/downloader/yc3;->d(ZI)Lcom/shabakaty/downloader/yc3;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/shabakaty/downloader/q71;->h:Lcom/shabakaty/downloader/s71;

    .line 5
    iget-object v3, v3, Lcom/shabakaty/downloader/s71;->x:Lcom/shabakaty/downloader/fs1;

    .line 6
    check-cast v3, Lcom/shabakaty/downloader/yj4;

    invoke-virtual {v3, v4, p1, p2}, Lcom/shabakaty/downloader/yj4;->b(III)Lcom/shabakaty/downloader/fs1$a;

    move-result-object v0

    .line 7
    check-cast v0, Lcom/shabakaty/downloader/yj4$b;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/yj4$b;->b()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, -0x1

    move-object v0, p0

    move-object v1, v2

    move v2, v3

    move v3, p3

    .line 8
    invoke-virtual/range {v0 .. v9}, Lcom/shabakaty/downloader/q71;->x0(Lcom/shabakaty/downloader/yc3;IIZZIJI)V

    return-void
.end method

.method public v(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/q71;->t:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/q71;->t:I

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->h:Lcom/shabakaty/downloader/s71;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/s71;->x:Lcom/shabakaty/downloader/fs1;

    check-cast v0, Lcom/shabakaty/downloader/yj4;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/shabakaty/downloader/yj4;->b(III)Lcom/shabakaty/downloader/fs1$a;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/yj4$b;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/yj4$b;->b()V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->i:Lcom/shabakaty/downloader/si2;

    const/16 v1, 0x9

    new-instance v3, Lcom/shabakaty/downloader/o71;

    invoke-direct {v3, p1, v2}, Lcom/shabakaty/downloader/o71;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/q71;->w0()V

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/q71;->i:Lcom/shabakaty/downloader/si2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/si2;->a()V

    :cond_0
    return-void
.end method

.method public v0(ZLcom/shabakaty/downloader/i71;)V
    .locals 20

    move-object/from16 v10, p0

    move-object/from16 v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_a

    .line 1
    iget-object v3, v10, Lcom/shabakaty/downloader/q71;->l:Ljava/util/List;

    .line 2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ltz v3, :cond_0

    .line 3
    iget-object v4, v10, Lcom/shabakaty/downloader/q71;->l:Ljava/util/List;

    .line 4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt v3, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 5
    :goto_0
    invoke-static {v4}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/q71;->t()I

    move-result v4

    .line 7
    iget-object v5, v10, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v5, v5, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    .line 8
    iget-object v6, v10, Lcom/shabakaty/downloader/q71;->l:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 9
    iget v7, v10, Lcom/shabakaty/downloader/q71;->v:I

    add-int/2addr v7, v2

    iput v7, v10, Lcom/shabakaty/downloader/q71;->v:I

    .line 10
    invoke-virtual {v10, v1, v3}, Lcom/shabakaty/downloader/q71;->s0(II)V

    .line 11
    new-instance v7, Lcom/shabakaty/downloader/wd3;

    iget-object v8, v10, Lcom/shabakaty/downloader/q71;->l:Ljava/util/List;

    iget-object v9, v10, Lcom/shabakaty/downloader/q71;->z:Lcom/shabakaty/downloader/t54;

    invoke-direct {v7, v8, v9}, Lcom/shabakaty/downloader/wd3;-><init>(Ljava/util/Collection;Lcom/shabakaty/downloader/t54;)V

    .line 12
    iget-object v8, v10, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/q71;->C()J

    move-result-wide v11

    .line 14
    invoke-virtual {v5}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v7}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_2

    .line 15
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/q71;->t()I

    move-result v9

    .line 16
    iget-object v13, v10, Lcom/shabakaty/downloader/ak;->a:Lcom/shabakaty/downloader/nn4$c;

    iget-object v14, v10, Lcom/shabakaty/downloader/q71;->k:Lcom/shabakaty/downloader/nn4$b;

    .line 17
    invoke-static {v11, v12}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v18

    move-object v11, v5

    move-object v12, v13

    const/4 v15, -0x1

    move-object v13, v14

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    move v14, v9

    const/4 v9, -0x1

    move-wide/from16 v15, v18

    .line 18
    invoke-virtual/range {v11 .. v16}, Lcom/shabakaty/downloader/nn4;->j(Lcom/shabakaty/downloader/nn4$c;Lcom/shabakaty/downloader/nn4$b;IJ)Landroid/util/Pair;

    move-result-object v11

    .line 19
    sget v12, Lcom/shabakaty/downloader/sy4;->a:I

    iget-object v15, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 20
    invoke-virtual {v7, v15}, Lcom/shabakaty/downloader/t;->b(Ljava/lang/Object;)I

    move-result v12

    if-eq v12, v9, :cond_2

    goto :goto_5

    .line 21
    :cond_2
    iget-object v11, v10, Lcom/shabakaty/downloader/ak;->a:Lcom/shabakaty/downloader/nn4$c;

    iget-object v12, v10, Lcom/shabakaty/downloader/q71;->k:Lcom/shabakaty/downloader/nn4$b;

    iget v13, v10, Lcom/shabakaty/downloader/q71;->t:I

    iget-boolean v14, v10, Lcom/shabakaty/downloader/q71;->u:Z

    move-object/from16 v16, v5

    move-object/from16 v17, v7

    .line 22
    invoke-static/range {v11 .. v17}, Lcom/shabakaty/downloader/s71;->N(Lcom/shabakaty/downloader/nn4$c;Lcom/shabakaty/downloader/nn4$b;IZLjava/lang/Object;Lcom/shabakaty/downloader/nn4;Lcom/shabakaty/downloader/nn4;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 23
    iget-object v1, v10, Lcom/shabakaty/downloader/q71;->k:Lcom/shabakaty/downloader/nn4$b;

    invoke-virtual {v7, v5, v1}, Lcom/shabakaty/downloader/t;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    .line 24
    iget-object v1, v10, Lcom/shabakaty/downloader/q71;->k:Lcom/shabakaty/downloader/nn4$b;

    iget v1, v1, Lcom/shabakaty/downloader/nn4$b;->c:I

    iget-object v2, v10, Lcom/shabakaty/downloader/ak;->a:Lcom/shabakaty/downloader/nn4$c;

    .line 25
    invoke-virtual {v7, v1, v2}, Lcom/shabakaty/downloader/nn4;->n(ILcom/shabakaty/downloader/nn4$c;)Lcom/shabakaty/downloader/nn4$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shabakaty/downloader/nn4$c;->a()J

    move-result-wide v11

    .line 26
    invoke-virtual {v10, v7, v1, v11, v12}, Lcom/shabakaty/downloader/q71;->m0(Lcom/shabakaty/downloader/nn4;IJ)Landroid/util/Pair;

    move-result-object v1

    goto :goto_1

    .line 27
    :cond_3
    invoke-virtual {v10, v7, v9, v1, v2}, Lcom/shabakaty/downloader/q71;->m0(Lcom/shabakaty/downloader/nn4;IJ)Landroid/util/Pair;

    move-result-object v1

    :goto_1
    move-object v11, v1

    goto :goto_5

    :cond_4
    :goto_2
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, -0x1

    .line 28
    invoke-virtual {v5}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v7}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_6

    const/4 v13, -0x1

    goto :goto_4

    .line 29
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/q71;->l0()I

    move-result v13

    :goto_4
    if-eqz v5, :cond_7

    move-wide v11, v1

    .line 30
    :cond_7
    invoke-virtual {v10, v7, v13, v11, v12}, Lcom/shabakaty/downloader/q71;->m0(Lcom/shabakaty/downloader/nn4;IJ)Landroid/util/Pair;

    move-result-object v11

    .line 31
    :goto_5
    invoke-virtual {v10, v8, v7, v11}, Lcom/shabakaty/downloader/q71;->p0(Lcom/shabakaty/downloader/yc3;Lcom/shabakaty/downloader/nn4;Landroid/util/Pair;)Lcom/shabakaty/downloader/yc3;

    move-result-object v1

    .line 32
    iget v2, v1, Lcom/shabakaty/downloader/yc3;->e:I

    const/4 v5, 0x4

    const/4 v7, 0x1

    if-eq v2, v7, :cond_8

    if-eq v2, v5, :cond_8

    if-lez v3, :cond_8

    if-ne v3, v6, :cond_8

    iget-object v2, v1, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    .line 33
    invoke-virtual {v2}, Lcom/shabakaty/downloader/nn4;->p()I

    move-result v2

    if-lt v4, v2, :cond_8

    const/4 v7, 0x1

    goto :goto_6

    :cond_8
    const/4 v7, 0x0

    :goto_6
    if-eqz v7, :cond_9

    .line 34
    invoke-virtual {v1, v5}, Lcom/shabakaty/downloader/yc3;->g(I)Lcom/shabakaty/downloader/yc3;

    move-result-object v1

    .line 35
    :cond_9
    iget-object v2, v10, Lcom/shabakaty/downloader/q71;->h:Lcom/shabakaty/downloader/s71;

    iget-object v4, v10, Lcom/shabakaty/downloader/q71;->z:Lcom/shabakaty/downloader/t54;

    .line 36
    iget-object v2, v2, Lcom/shabakaty/downloader/s71;->x:Lcom/shabakaty/downloader/fs1;

    .line 37
    check-cast v2, Lcom/shabakaty/downloader/yj4;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static {}, Lcom/shabakaty/downloader/yj4;->d()Lcom/shabakaty/downloader/yj4$b;

    move-result-object v5

    iget-object v2, v2, Lcom/shabakaty/downloader/yj4;->a:Landroid/os/Handler;

    const/16 v6, 0x14

    const/4 v7, 0x0

    .line 39
    invoke-virtual {v2, v6, v7, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 40
    iput-object v2, v5, Lcom/shabakaty/downloader/yj4$b;->a:Landroid/os/Message;

    .line 41
    invoke-virtual {v5}, Lcom/shabakaty/downloader/yj4$b;->b()V

    const/4 v2, 0x0

    .line 42
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/yc3;->e(Lcom/shabakaty/downloader/i71;)Lcom/shabakaty/downloader/yc3;

    move-result-object v1

    goto :goto_7

    :cond_a
    const/4 v7, 0x0

    .line 43
    iget-object v1, v10, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v2, v1, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/yc3;->a(Lcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/yc3;

    move-result-object v1

    .line 44
    iget-wide v2, v1, Lcom/shabakaty/downloader/yc3;->s:J

    iput-wide v2, v1, Lcom/shabakaty/downloader/yc3;->q:J

    const-wide/16 v2, 0x0

    .line 45
    iput-wide v2, v1, Lcom/shabakaty/downloader/yc3;->r:J

    :goto_7
    const/4 v2, 0x1

    .line 46
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/yc3;->g(I)Lcom/shabakaty/downloader/yc3;

    move-result-object v1

    if-eqz v0, :cond_b

    .line 47
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/yc3;->e(Lcom/shabakaty/downloader/i71;)Lcom/shabakaty/downloader/yc3;

    move-result-object v0

    move-object v1, v0

    .line 48
    :cond_b
    iget v0, v10, Lcom/shabakaty/downloader/q71;->v:I

    add-int/2addr v0, v2

    iput v0, v10, Lcom/shabakaty/downloader/q71;->v:I

    .line 49
    iget-object v0, v10, Lcom/shabakaty/downloader/q71;->h:Lcom/shabakaty/downloader/s71;

    .line 50
    iget-object v0, v0, Lcom/shabakaty/downloader/s71;->x:Lcom/shabakaty/downloader/fs1;

    check-cast v0, Lcom/shabakaty/downloader/yj4;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/yj4;->a(I)Lcom/shabakaty/downloader/fs1$a;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/yj4$b;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/yj4$b;->b()V

    .line 51
    iget-object v0, v1, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    .line 52
    invoke-virtual {v0}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v10, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v5, 0x1

    goto :goto_8

    :cond_c
    const/4 v5, 0x0

    :goto_8
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x4

    .line 53
    invoke-virtual {v10, v1}, Lcom/shabakaty/downloader/q71;->k0(Lcom/shabakaty/downloader/yc3;)J

    move-result-wide v7

    const/4 v9, -0x1

    move-object/from16 v0, p0

    .line 54
    invoke-virtual/range {v0 .. v9}, Lcom/shabakaty/downloader/q71;->x0(Lcom/shabakaty/downloader/yc3;IIZZIJI)V

    return-void
.end method

.method public w()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/q71;->t:I

    return v0
.end method

.method public final w0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->A:Lcom/shabakaty/downloader/bd3$b;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/q71;->c:Lcom/shabakaty/downloader/bd3$b;

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/bd3$b$a;

    invoke-direct {v2}, Lcom/shabakaty/downloader/bd3$b$a;-><init>()V

    .line 4
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/bd3$b$a;->a(Lcom/shabakaty/downloader/bd3$b;)Lcom/shabakaty/downloader/bd3$b$a;

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/q71;->a()Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v1}, Lcom/shabakaty/downloader/bd3$b$a;->b(IZ)Lcom/shabakaty/downloader/bd3$b$a;

    const/4 v1, 0x4

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ak;->f0()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/q71;->a()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2, v1, v4}, Lcom/shabakaty/downloader/bd3$b$a;->b(IZ)Lcom/shabakaty/downloader/bd3$b$a;

    const/4 v1, 0x5

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ak;->c0()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/q71;->a()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2, v1, v4}, Lcom/shabakaty/downloader/bd3$b$a;->b(IZ)Lcom/shabakaty/downloader/bd3$b$a;

    const/4 v1, 0x6

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/q71;->L()Lcom/shabakaty/downloader/nn4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v4

    if-nez v4, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ak;->c0()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/shabakaty/downloader/ak;->e0()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/shabakaty/downloader/ak;->f0()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/q71;->a()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 11
    :goto_2
    invoke-virtual {v2, v1, v4}, Lcom/shabakaty/downloader/bd3$b$a;->b(IZ)Lcom/shabakaty/downloader/bd3$b$a;

    const/4 v1, 0x7

    .line 12
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ak;->b0()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/shabakaty/downloader/q71;->a()Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v2, v1, v4}, Lcom/shabakaty/downloader/bd3$b$a;->b(IZ)Lcom/shabakaty/downloader/bd3$b$a;

    const/16 v1, 0x8

    .line 13
    invoke-virtual {p0}, Lcom/shabakaty/downloader/q71;->L()Lcom/shabakaty/downloader/nn4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v4

    if-nez v4, :cond_6

    .line 14
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ak;->b0()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lcom/shabakaty/downloader/ak;->e0()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/shabakaty/downloader/ak;->d0()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 15
    :cond_5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/q71;->a()Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    .line 16
    :goto_4
    invoke-virtual {v2, v1, v4}, Lcom/shabakaty/downloader/bd3$b$a;->b(IZ)Lcom/shabakaty/downloader/bd3$b$a;

    const/16 v1, 0x9

    .line 17
    invoke-virtual {p0}, Lcom/shabakaty/downloader/q71;->a()Z

    move-result v4

    xor-int/2addr v4, v3

    invoke-virtual {v2, v1, v4}, Lcom/shabakaty/downloader/bd3$b$a;->b(IZ)Lcom/shabakaty/downloader/bd3$b$a;

    const/16 v1, 0xa

    .line 18
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ak;->f0()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/shabakaty/downloader/q71;->a()Z

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x1

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v2, v1, v4}, Lcom/shabakaty/downloader/bd3$b$a;->b(IZ)Lcom/shabakaty/downloader/bd3$b$a;

    const/16 v1, 0xb

    .line 19
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ak;->f0()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/shabakaty/downloader/q71;->a()Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_6

    :cond_8
    const/4 v3, 0x0

    :goto_6
    invoke-virtual {v2, v1, v3}, Lcom/shabakaty/downloader/bd3$b$a;->b(IZ)Lcom/shabakaty/downloader/bd3$b$a;

    .line 20
    invoke-virtual {v2}, Lcom/shabakaty/downloader/bd3$b$a;->c()Lcom/shabakaty/downloader/bd3$b;

    move-result-object v1

    .line 21
    iput-object v1, p0, Lcom/shabakaty/downloader/q71;->A:Lcom/shabakaty/downloader/bd3$b;

    .line 22
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/bd3$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 23
    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->i:Lcom/shabakaty/downloader/si2;

    const/16 v1, 0xe

    new-instance v2, Lcom/shabakaty/downloader/p71;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/shabakaty/downloader/p71;-><init>(Lcom/shabakaty/downloader/q71;I)V

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    :cond_9
    return-void
.end method

.method public final x0(Lcom/shabakaty/downloader/yc3;IIZZIJI)V
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    .line 1
    iget-object v3, v0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    .line 2
    iput-object v1, v0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    .line 3
    iget-object v4, v3, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget-object v5, v1, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    .line 4
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/nn4;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 5
    iget-object v6, v3, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    .line 6
    iget-object v7, v1, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    .line 7
    invoke-virtual {v7}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v8

    const/4 v9, -0x1

    .line 8
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x3

    if-eqz v8, :cond_0

    .line 9
    invoke-virtual {v6}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 10
    new-instance v4, Landroid/util/Pair;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v4, v6, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 11
    :cond_0
    invoke-virtual {v7}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v8

    invoke-virtual {v6}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v14

    if-eq v8, v14, :cond_1

    .line 12
    new-instance v4, Landroid/util/Pair;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 13
    :cond_1
    iget-object v8, v3, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget-object v8, v8, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    iget-object v14, v0, Lcom/shabakaty/downloader/q71;->k:Lcom/shabakaty/downloader/nn4$b;

    .line 14
    invoke-virtual {v6, v8, v14}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    move-result-object v8

    iget v8, v8, Lcom/shabakaty/downloader/nn4$b;->c:I

    .line 15
    iget-object v14, v0, Lcom/shabakaty/downloader/ak;->a:Lcom/shabakaty/downloader/nn4$c;

    invoke-virtual {v6, v8, v14}, Lcom/shabakaty/downloader/nn4;->n(ILcom/shabakaty/downloader/nn4$c;)Lcom/shabakaty/downloader/nn4$c;

    move-result-object v6

    iget-object v6, v6, Lcom/shabakaty/downloader/nn4$c;->a:Ljava/lang/Object;

    .line 16
    iget-object v8, v1, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget-object v8, v8, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    iget-object v14, v0, Lcom/shabakaty/downloader/q71;->k:Lcom/shabakaty/downloader/nn4$b;

    .line 17
    invoke-virtual {v7, v8, v14}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    move-result-object v8

    iget v8, v8, Lcom/shabakaty/downloader/nn4$b;->c:I

    .line 18
    iget-object v14, v0, Lcom/shabakaty/downloader/ak;->a:Lcom/shabakaty/downloader/nn4$c;

    invoke-virtual {v7, v8, v14}, Lcom/shabakaty/downloader/nn4;->n(ILcom/shabakaty/downloader/nn4$c;)Lcom/shabakaty/downloader/nn4$c;

    move-result-object v7

    iget-object v7, v7, Lcom/shabakaty/downloader/nn4$c;->a:Ljava/lang/Object;

    .line 19
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz p5, :cond_2

    if-nez v2, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_3

    if-ne v2, v5, :cond_3

    const/4 v4, 0x2

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    const/4 v4, 0x3

    .line 20
    :goto_0
    new-instance v6, Landroid/util/Pair;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v6, v7, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v6

    goto :goto_1

    .line 21
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_5
    if-eqz p5, :cond_6

    if-nez v2, :cond_6

    .line 22
    iget-object v4, v3, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget-wide v6, v4, Lcom/shabakaty/downloader/mp2;->d:J

    iget-object v4, v1, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget-wide v14, v4, Lcom/shabakaty/downloader/mp2;->d:J

    cmp-long v4, v6, v14

    if-gez v4, :cond_6

    .line 23
    new-instance v4, Landroid/util/Pair;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 24
    :cond_6
    new-instance v4, Landroid/util/Pair;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v4, v6, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    :goto_1
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 26
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 27
    iget-object v7, v0, Lcom/shabakaty/downloader/q71;->B:Lcom/shabakaty/downloader/hp2;

    const/4 v8, 0x0

    if-eqz v6, :cond_9

    .line 28
    iget-object v7, v1, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    invoke-virtual {v7}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v7

    if-nez v7, :cond_7

    .line 29
    iget-object v7, v1, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget-object v10, v1, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget-object v10, v10, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    iget-object v14, v0, Lcom/shabakaty/downloader/q71;->k:Lcom/shabakaty/downloader/nn4$b;

    .line 30
    invoke-virtual {v7, v10, v14}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    move-result-object v7

    iget v7, v7, Lcom/shabakaty/downloader/nn4$b;->c:I

    .line 31
    iget-object v10, v1, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget-object v14, v0, Lcom/shabakaty/downloader/ak;->a:Lcom/shabakaty/downloader/nn4$c;

    invoke-virtual {v10, v7, v14}, Lcom/shabakaty/downloader/nn4;->n(ILcom/shabakaty/downloader/nn4$c;)Lcom/shabakaty/downloader/nn4$c;

    move-result-object v7

    iget-object v7, v7, Lcom/shabakaty/downloader/nn4$c;->c:Lcom/shabakaty/downloader/dp2;

    goto :goto_2

    :cond_7
    move-object v7, v8

    :goto_2
    if-eqz v7, :cond_8

    .line 32
    iget-object v10, v7, Lcom/shabakaty/downloader/dp2;->d:Lcom/shabakaty/downloader/hp2;

    goto :goto_3

    :cond_8
    sget-object v10, Lcom/shabakaty/downloader/hp2;->D:Lcom/shabakaty/downloader/hp2;

    :goto_3
    move-object/from16 v36, v10

    move-object v10, v7

    move-object/from16 v7, v36

    goto :goto_4

    :cond_9
    move-object v10, v8

    .line 33
    :goto_4
    iget-object v14, v3, Lcom/shabakaty/downloader/yc3;->j:Ljava/util/List;

    iget-object v15, v1, Lcom/shabakaty/downloader/yc3;->j:Ljava/util/List;

    invoke-interface {v14, v15}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c

    .line 34
    new-instance v14, Lcom/shabakaty/downloader/hp2$b;

    invoke-direct {v14, v7, v8}, Lcom/shabakaty/downloader/hp2$b;-><init>(Lcom/shabakaty/downloader/hp2;Lcom/shabakaty/downloader/hp2$a;)V

    .line 35
    iget-object v7, v1, Lcom/shabakaty/downloader/yc3;->j:Ljava/util/List;

    const/4 v15, 0x0

    .line 36
    :goto_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v15, v8, :cond_b

    .line 37
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/downloader/ps2;

    const/4 v13, 0x0

    .line 38
    :goto_6
    iget-object v11, v8, Lcom/shabakaty/downloader/ps2;->r:[Lcom/shabakaty/downloader/ps2$b;

    array-length v9, v11

    if-ge v13, v9, :cond_a

    .line 39
    aget-object v9, v11, v13

    .line 40
    invoke-interface {v9, v14}, Lcom/shabakaty/downloader/ps2$b;->D0(Lcom/shabakaty/downloader/hp2$b;)V

    add-int/lit8 v13, v13, 0x1

    const/4 v9, -0x1

    goto :goto_6

    :cond_a
    add-int/lit8 v15, v15, 0x1

    const/4 v9, -0x1

    const/4 v13, 0x3

    goto :goto_5

    .line 41
    :cond_b
    invoke-virtual {v14}, Lcom/shabakaty/downloader/hp2$b;->a()Lcom/shabakaty/downloader/hp2;

    move-result-object v7

    .line 42
    :cond_c
    iget-object v8, v0, Lcom/shabakaty/downloader/q71;->B:Lcom/shabakaty/downloader/hp2;

    invoke-virtual {v7, v8}, Lcom/shabakaty/downloader/hp2;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v5

    .line 43
    iput-object v7, v0, Lcom/shabakaty/downloader/q71;->B:Lcom/shabakaty/downloader/hp2;

    .line 44
    iget-object v7, v3, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget-object v9, v1, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    invoke-virtual {v7, v9}, Lcom/shabakaty/downloader/nn4;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 45
    iget-object v7, v0, Lcom/shabakaty/downloader/q71;->i:Lcom/shabakaty/downloader/si2;

    new-instance v9, Lcom/shabakaty/downloader/m71;

    move/from16 v11, p2

    invoke-direct {v9, v1, v11, v12}, Lcom/shabakaty/downloader/m71;-><init>(Lcom/shabakaty/downloader/yc3;II)V

    invoke-virtual {v7, v12, v9}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    :cond_d
    if-eqz p5, :cond_15

    .line 46
    new-instance v7, Lcom/shabakaty/downloader/nn4$b;

    invoke-direct {v7}, Lcom/shabakaty/downloader/nn4$b;-><init>()V

    .line 47
    iget-object v9, v3, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    invoke-virtual {v9}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v9

    if-nez v9, :cond_e

    .line 48
    iget-object v9, v3, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget-object v9, v9, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    .line 49
    iget-object v11, v3, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    invoke-virtual {v11, v9, v7}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    .line 50
    iget v11, v7, Lcom/shabakaty/downloader/nn4$b;->c:I

    .line 51
    iget-object v13, v3, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    invoke-virtual {v13, v9}, Lcom/shabakaty/downloader/nn4;->b(Ljava/lang/Object;)I

    move-result v13

    .line 52
    iget-object v14, v3, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget-object v15, v0, Lcom/shabakaty/downloader/ak;->a:Lcom/shabakaty/downloader/nn4$c;

    invoke-virtual {v14, v11, v15}, Lcom/shabakaty/downloader/nn4;->n(ILcom/shabakaty/downloader/nn4$c;)Lcom/shabakaty/downloader/nn4$c;

    move-result-object v14

    iget-object v14, v14, Lcom/shabakaty/downloader/nn4$c;->a:Ljava/lang/Object;

    move-object/from16 v19, v9

    move/from16 v18, v11

    move/from16 v20, v13

    move-object/from16 v17, v14

    goto :goto_7

    :cond_e
    move/from16 v18, p9

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    :goto_7
    if-nez v2, :cond_10

    .line 53
    iget-wide v13, v7, Lcom/shabakaty/downloader/nn4$b;->e:J

    move v11, v6

    iget-wide v5, v7, Lcom/shabakaty/downloader/nn4$b;->d:J

    add-long/2addr v13, v5

    .line 54
    iget-object v5, v3, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/mp2;->a()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 55
    iget-object v5, v3, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget v6, v5, Lcom/shabakaty/downloader/mp2;->b:I

    iget v5, v5, Lcom/shabakaty/downloader/mp2;->c:I

    .line 56
    invoke-virtual {v7, v6, v5}, Lcom/shabakaty/downloader/nn4$b;->a(II)J

    move-result-wide v5

    .line 57
    invoke-static {v3}, Lcom/shabakaty/downloader/q71;->n0(Lcom/shabakaty/downloader/yc3;)J

    move-result-wide v13

    goto :goto_9

    .line 58
    :cond_f
    iget-object v5, v3, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget v5, v5, Lcom/shabakaty/downloader/mp2;->e:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_12

    iget-object v5, v0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v5, v5, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    .line 59
    invoke-virtual {v5}, Lcom/shabakaty/downloader/mp2;->a()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 60
    iget-object v5, v0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    invoke-static {v5}, Lcom/shabakaty/downloader/q71;->n0(Lcom/shabakaty/downloader/yc3;)J

    move-result-wide v13

    goto :goto_8

    :cond_10
    move v11, v6

    .line 61
    iget-object v5, v3, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/mp2;->a()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 62
    iget-wide v5, v3, Lcom/shabakaty/downloader/yc3;->s:J

    .line 63
    invoke-static {v3}, Lcom/shabakaty/downloader/q71;->n0(Lcom/shabakaty/downloader/yc3;)J

    move-result-wide v13

    goto :goto_9

    .line 64
    :cond_11
    iget-wide v5, v7, Lcom/shabakaty/downloader/nn4$b;->e:J

    iget-wide v13, v3, Lcom/shabakaty/downloader/yc3;->s:J

    add-long/2addr v13, v5

    :cond_12
    :goto_8
    move-wide v5, v13

    .line 65
    :goto_9
    new-instance v7, Lcom/shabakaty/downloader/bd3$f;

    .line 66
    invoke-static {v5, v6}, Lcom/shabakaty/downloader/jp;->d(J)J

    move-result-wide v21

    .line 67
    invoke-static {v13, v14}, Lcom/shabakaty/downloader/jp;->d(J)J

    move-result-wide v23

    iget-object v5, v3, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget v6, v5, Lcom/shabakaty/downloader/mp2;->b:I

    iget v5, v5, Lcom/shabakaty/downloader/mp2;->c:I

    move-object/from16 v16, v7

    move/from16 v25, v6

    move/from16 v26, v5

    invoke-direct/range {v16 .. v26}, Lcom/shabakaty/downloader/bd3$f;-><init>(Ljava/lang/Object;ILjava/lang/Object;IJJII)V

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/q71;->t()I

    move-result v5

    .line 69
    iget-object v6, v0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v6, v6, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    invoke-virtual {v6}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v6

    if-nez v6, :cond_13

    .line 70
    iget-object v6, v0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v13, v6, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget-object v13, v13, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    .line 71
    iget-object v6, v6, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget-object v14, v0, Lcom/shabakaty/downloader/q71;->k:Lcom/shabakaty/downloader/nn4$b;

    invoke-virtual {v6, v13, v14}, Lcom/shabakaty/downloader/nn4;->h(Ljava/lang/Object;Lcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    .line 72
    iget-object v6, v0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v6, v6, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    invoke-virtual {v6, v13}, Lcom/shabakaty/downloader/nn4;->b(Ljava/lang/Object;)I

    move-result v6

    .line 73
    iget-object v14, v0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v14, v14, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    iget-object v15, v0, Lcom/shabakaty/downloader/ak;->a:Lcom/shabakaty/downloader/nn4$c;

    invoke-virtual {v14, v5, v15}, Lcom/shabakaty/downloader/nn4;->n(ILcom/shabakaty/downloader/nn4$c;)Lcom/shabakaty/downloader/nn4$c;

    move-result-object v14

    iget-object v14, v14, Lcom/shabakaty/downloader/nn4$c;->a:Ljava/lang/Object;

    move/from16 v29, v6

    move-object/from16 v28, v13

    move-object/from16 v26, v14

    goto :goto_a

    :cond_13
    const/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, -0x1

    .line 74
    :goto_a
    invoke-static/range {p7 .. p8}, Lcom/shabakaty/downloader/jp;->d(J)J

    move-result-wide v30

    .line 75
    new-instance v6, Lcom/shabakaty/downloader/bd3$f;

    .line 76
    iget-object v13, v0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v13, v13, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    invoke-virtual {v13}, Lcom/shabakaty/downloader/mp2;->a()Z

    move-result v13

    if-eqz v13, :cond_14

    .line 77
    iget-object v13, v0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    invoke-static {v13}, Lcom/shabakaty/downloader/q71;->n0(Lcom/shabakaty/downloader/yc3;)J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/shabakaty/downloader/jp;->d(J)J

    move-result-wide v13

    move-wide/from16 v32, v13

    goto :goto_b

    :cond_14
    move-wide/from16 v32, v30

    .line 78
    :goto_b
    iget-object v13, v0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v13, v13, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    iget v14, v13, Lcom/shabakaty/downloader/mp2;->b:I

    iget v13, v13, Lcom/shabakaty/downloader/mp2;->c:I

    move-object/from16 v25, v6

    move/from16 v27, v5

    move/from16 v34, v14

    move/from16 v35, v13

    invoke-direct/range {v25 .. v35}, Lcom/shabakaty/downloader/bd3$f;-><init>(Ljava/lang/Object;ILjava/lang/Object;IJJII)V

    .line 79
    iget-object v5, v0, Lcom/shabakaty/downloader/q71;->i:Lcom/shabakaty/downloader/si2;

    const/16 v13, 0xc

    new-instance v14, Lcom/shabakaty/downloader/uw4;

    invoke-direct {v14, v2, v7, v6}, Lcom/shabakaty/downloader/uw4;-><init>(ILcom/shabakaty/downloader/bd3$f;Lcom/shabakaty/downloader/bd3$f;)V

    invoke-virtual {v5, v13, v14}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    goto :goto_c

    :cond_15
    move v11, v6

    :goto_c
    if-eqz v11, :cond_16

    .line 80
    iget-object v2, v0, Lcom/shabakaty/downloader/q71;->i:Lcom/shabakaty/downloader/si2;

    new-instance v5, Lcom/shabakaty/downloader/m71;

    invoke-direct {v5, v10, v4}, Lcom/shabakaty/downloader/m71;-><init>(Lcom/shabakaty/downloader/dp2;I)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 81
    :cond_16
    iget-object v2, v3, Lcom/shabakaty/downloader/yc3;->f:Lcom/shabakaty/downloader/i71;

    iget-object v4, v1, Lcom/shabakaty/downloader/yc3;->f:Lcom/shabakaty/downloader/i71;

    const/4 v5, 0x5

    const/4 v6, 0x4

    if-eq v2, v4, :cond_17

    .line 82
    iget-object v2, v0, Lcom/shabakaty/downloader/q71;->i:Lcom/shabakaty/downloader/si2;

    new-instance v4, Lcom/shabakaty/downloader/l71;

    invoke-direct {v4, v1, v6}, Lcom/shabakaty/downloader/l71;-><init>(Lcom/shabakaty/downloader/yc3;I)V

    const/16 v7, 0xb

    invoke-virtual {v2, v7, v4}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 83
    iget-object v2, v1, Lcom/shabakaty/downloader/yc3;->f:Lcom/shabakaty/downloader/i71;

    if-eqz v2, :cond_17

    .line 84
    iget-object v2, v0, Lcom/shabakaty/downloader/q71;->i:Lcom/shabakaty/downloader/si2;

    new-instance v4, Lcom/shabakaty/downloader/l71;

    invoke-direct {v4, v1, v5}, Lcom/shabakaty/downloader/l71;-><init>(Lcom/shabakaty/downloader/yc3;I)V

    invoke-virtual {v2, v7, v4}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 85
    :cond_17
    iget-object v2, v3, Lcom/shabakaty/downloader/yc3;->i:Lcom/shabakaty/downloader/mp4;

    iget-object v4, v1, Lcom/shabakaty/downloader/yc3;->i:Lcom/shabakaty/downloader/mp4;

    if-eq v2, v4, :cond_18

    .line 86
    iget-object v2, v0, Lcom/shabakaty/downloader/q71;->e:Lcom/shabakaty/downloader/lp4;

    iget-object v4, v4, Lcom/shabakaty/downloader/mp4;->d:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/lp4;->a(Ljava/lang/Object;)V

    .line 87
    new-instance v2, Lcom/shabakaty/downloader/ip4;

    iget-object v4, v1, Lcom/shabakaty/downloader/yc3;->i:Lcom/shabakaty/downloader/mp4;

    iget-object v4, v4, Lcom/shabakaty/downloader/mp4;->c:[Lcom/shabakaty/downloader/f81;

    invoke-direct {v2, v4}, Lcom/shabakaty/downloader/ip4;-><init>([Lcom/shabakaty/downloader/hp4;)V

    .line 88
    iget-object v4, v0, Lcom/shabakaty/downloader/q71;->i:Lcom/shabakaty/downloader/si2;

    new-instance v7, Lcom/shabakaty/downloader/rv;

    invoke-direct {v7, v1, v2}, Lcom/shabakaty/downloader/rv;-><init>(Lcom/shabakaty/downloader/yc3;Lcom/shabakaty/downloader/ip4;)V

    const/4 v2, 0x2

    invoke-virtual {v4, v2, v7}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 89
    :cond_18
    iget-object v2, v3, Lcom/shabakaty/downloader/yc3;->j:Ljava/util/List;

    iget-object v4, v1, Lcom/shabakaty/downloader/yc3;->j:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x6

    if-nez v2, :cond_19

    .line 90
    iget-object v2, v0, Lcom/shabakaty/downloader/q71;->i:Lcom/shabakaty/downloader/si2;

    new-instance v7, Lcom/shabakaty/downloader/l71;

    invoke-direct {v7, v1, v4}, Lcom/shabakaty/downloader/l71;-><init>(Lcom/shabakaty/downloader/yc3;I)V

    const/4 v10, 0x3

    invoke-virtual {v2, v10, v7}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    :cond_19
    if-eqz v8, :cond_1a

    .line 91
    iget-object v2, v0, Lcom/shabakaty/downloader/q71;->B:Lcom/shabakaty/downloader/hp2;

    .line 92
    iget-object v7, v0, Lcom/shabakaty/downloader/q71;->i:Lcom/shabakaty/downloader/si2;

    const/16 v8, 0xf

    new-instance v10, Lcom/shabakaty/downloader/cu;

    invoke-direct {v10, v2}, Lcom/shabakaty/downloader/cu;-><init>(Lcom/shabakaty/downloader/hp2;)V

    invoke-virtual {v7, v8, v10}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 93
    :cond_1a
    iget-boolean v2, v3, Lcom/shabakaty/downloader/yc3;->g:Z

    iget-boolean v7, v1, Lcom/shabakaty/downloader/yc3;->g:Z

    const/4 v8, 0x7

    if-eq v2, v7, :cond_1b

    .line 94
    iget-object v2, v0, Lcom/shabakaty/downloader/q71;->i:Lcom/shabakaty/downloader/si2;

    new-instance v7, Lcom/shabakaty/downloader/l71;

    invoke-direct {v7, v1, v8}, Lcom/shabakaty/downloader/l71;-><init>(Lcom/shabakaty/downloader/yc3;I)V

    invoke-virtual {v2, v6, v7}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 95
    :cond_1b
    iget v2, v3, Lcom/shabakaty/downloader/yc3;->e:I

    iget v6, v1, Lcom/shabakaty/downloader/yc3;->e:I

    const/16 v7, 0x8

    if-ne v2, v6, :cond_1c

    iget-boolean v2, v3, Lcom/shabakaty/downloader/yc3;->l:Z

    iget-boolean v6, v1, Lcom/shabakaty/downloader/yc3;->l:Z

    if-eq v2, v6, :cond_1d

    .line 96
    :cond_1c
    iget-object v2, v0, Lcom/shabakaty/downloader/q71;->i:Lcom/shabakaty/downloader/si2;

    new-instance v6, Lcom/shabakaty/downloader/l71;

    invoke-direct {v6, v1, v7}, Lcom/shabakaty/downloader/l71;-><init>(Lcom/shabakaty/downloader/yc3;I)V

    const/4 v10, -0x1

    invoke-virtual {v2, v10, v6}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 97
    :cond_1d
    iget v2, v3, Lcom/shabakaty/downloader/yc3;->e:I

    iget v6, v1, Lcom/shabakaty/downloader/yc3;->e:I

    if-eq v2, v6, :cond_1e

    .line 98
    iget-object v2, v0, Lcom/shabakaty/downloader/q71;->i:Lcom/shabakaty/downloader/si2;

    new-instance v6, Lcom/shabakaty/downloader/l71;

    invoke-direct {v6, v1, v12}, Lcom/shabakaty/downloader/l71;-><init>(Lcom/shabakaty/downloader/yc3;I)V

    invoke-virtual {v2, v5, v6}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 99
    :cond_1e
    iget-boolean v2, v3, Lcom/shabakaty/downloader/yc3;->l:Z

    iget-boolean v5, v1, Lcom/shabakaty/downloader/yc3;->l:Z

    if-eq v2, v5, :cond_1f

    .line 100
    iget-object v2, v0, Lcom/shabakaty/downloader/q71;->i:Lcom/shabakaty/downloader/si2;

    new-instance v5, Lcom/shabakaty/downloader/m71;

    move/from16 v6, p3

    const/4 v9, 0x1

    invoke-direct {v5, v1, v6, v9}, Lcom/shabakaty/downloader/m71;-><init>(Lcom/shabakaty/downloader/yc3;II)V

    invoke-virtual {v2, v4, v5}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    goto :goto_d

    :cond_1f
    const/4 v9, 0x1

    .line 101
    :goto_d
    iget v2, v3, Lcom/shabakaty/downloader/yc3;->m:I

    iget v4, v1, Lcom/shabakaty/downloader/yc3;->m:I

    if-eq v2, v4, :cond_20

    .line 102
    iget-object v2, v0, Lcom/shabakaty/downloader/q71;->i:Lcom/shabakaty/downloader/si2;

    new-instance v4, Lcom/shabakaty/downloader/l71;

    invoke-direct {v4, v1, v9}, Lcom/shabakaty/downloader/l71;-><init>(Lcom/shabakaty/downloader/yc3;I)V

    invoke-virtual {v2, v8, v4}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 103
    :cond_20
    invoke-static {v3}, Lcom/shabakaty/downloader/q71;->o0(Lcom/shabakaty/downloader/yc3;)Z

    move-result v2

    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/q71;->o0(Lcom/shabakaty/downloader/yc3;)Z

    move-result v4

    if-eq v2, v4, :cond_21

    .line 104
    iget-object v2, v0, Lcom/shabakaty/downloader/q71;->i:Lcom/shabakaty/downloader/si2;

    new-instance v4, Lcom/shabakaty/downloader/l71;

    const/4 v5, 0x2

    invoke-direct {v4, v1, v5}, Lcom/shabakaty/downloader/l71;-><init>(Lcom/shabakaty/downloader/yc3;I)V

    invoke-virtual {v2, v7, v4}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 105
    :cond_21
    iget-object v2, v3, Lcom/shabakaty/downloader/yc3;->n:Lcom/shabakaty/downloader/ad3;

    iget-object v4, v1, Lcom/shabakaty/downloader/yc3;->n:Lcom/shabakaty/downloader/ad3;

    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/ad3;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 106
    iget-object v2, v0, Lcom/shabakaty/downloader/q71;->i:Lcom/shabakaty/downloader/si2;

    const/16 v4, 0xd

    new-instance v5, Lcom/shabakaty/downloader/l71;

    const/4 v6, 0x3

    invoke-direct {v5, v1, v6}, Lcom/shabakaty/downloader/l71;-><init>(Lcom/shabakaty/downloader/yc3;I)V

    invoke-virtual {v2, v4, v5}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    :cond_22
    if-eqz p4, :cond_23

    .line 107
    iget-object v2, v0, Lcom/shabakaty/downloader/q71;->i:Lcom/shabakaty/downloader/si2;

    sget-object v4, Lcom/shabakaty/downloader/jw3;->r:Lcom/shabakaty/downloader/jw3;

    const/4 v5, -0x1

    invoke-virtual {v2, v5, v4}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 108
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/q71;->w0()V

    .line 109
    iget-object v2, v0, Lcom/shabakaty/downloader/q71;->i:Lcom/shabakaty/downloader/si2;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/si2;->a()V

    .line 110
    iget-boolean v2, v3, Lcom/shabakaty/downloader/yc3;->o:Z

    iget-boolean v4, v1, Lcom/shabakaty/downloader/yc3;->o:Z

    if-eq v2, v4, :cond_24

    .line 111
    iget-object v2, v0, Lcom/shabakaty/downloader/q71;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/j71$b;

    .line 112
    iget-boolean v5, v1, Lcom/shabakaty/downloader/yc3;->o:Z

    invoke-interface {v4, v5}, Lcom/shabakaty/downloader/j71$b;->r(Z)V

    goto :goto_e

    .line 113
    :cond_24
    iget-boolean v2, v3, Lcom/shabakaty/downloader/yc3;->p:Z

    iget-boolean v3, v1, Lcom/shabakaty/downloader/yc3;->p:Z

    if-eq v2, v3, :cond_25

    .line 114
    iget-object v2, v0, Lcom/shabakaty/downloader/q71;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/j71$b;

    .line 115
    iget-boolean v4, v1, Lcom/shabakaty/downloader/yc3;->p:Z

    invoke-interface {v3, v4}, Lcom/shabakaty/downloader/j71$b;->j(Z)V

    goto :goto_f

    :cond_25
    return-void
.end method

.method public y()Lcom/shabakaty/downloader/xc3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->f:Lcom/shabakaty/downloader/i71;

    return-object v0
.end method

.method public z(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/shabakaty/downloader/q71;->u0(ZII)V

    return-void
.end method
