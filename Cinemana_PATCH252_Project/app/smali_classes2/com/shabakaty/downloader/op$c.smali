.class public final Lcom/shabakaty/downloader/op$c;
.super Ljava/lang/Object;
.source "Cache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/op;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final k:Ljava/lang/String;

.field public static final l:Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/shabakaty/downloader/ts1;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/shabakaty/downloader/mj3;

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Lcom/shabakaty/downloader/ts1;

.field public final h:Lcom/shabakaty/downloader/is1;

.field public final i:J

.field public final j:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/lc3;->c:Lcom/shabakaty/downloader/lc3$a;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/lc3;->a:Lcom/shabakaty/downloader/lc3;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "OkHttp-Sent-Millis"

    sput-object v0, Lcom/shabakaty/downloader/op$c;->k:Ljava/lang/String;

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/lc3;->a:Lcom/shabakaty/downloader/lc3;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "OkHttp-Received-Millis"

    sput-object v0, Lcom/shabakaty/downloader/op$c;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/r94;)V
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "rawSource"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/md0;->d(Lcom/shabakaty/downloader/r94;)Lcom/shabakaty/downloader/eo;

    move-result-object v0

    .line 3
    move-object v3, v0

    check-cast v3, Lcom/shabakaty/downloader/on3;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/on3;->V0()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/shabakaty/downloader/op$c;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v3}, Lcom/shabakaty/downloader/on3;->V0()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/shabakaty/downloader/op$c;->c:Ljava/lang/String;

    .line 5
    new-instance v4, Lcom/shabakaty/downloader/ts1$a;

    invoke-direct {v4}, Lcom/shabakaty/downloader/ts1$a;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    move-object v5, v0

    check-cast v5, Lcom/shabakaty/downloader/on3;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/on3;->c()J

    move-result-wide v6

    .line 7
    invoke-virtual {v5}, Lcom/shabakaty/downloader/on3;->V0()Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v9, "expected an int but was \""

    const-wide/16 v10, 0x0

    cmp-long v12, v6, v10

    if-ltz v12, :cond_b

    const v12, 0x7fffffff

    int-to-long v12, v12

    cmp-long v14, v6, v12

    if-gtz v14, :cond_b

    .line 8
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v15, 0x0

    if-lez v14, :cond_0

    const/4 v14, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    if-nez v14, :cond_b

    long-to-int v7, v6

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_1

    .line 9
    :try_start_3
    invoke-virtual {v3}, Lcom/shabakaty/downloader/on3;->V0()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/shabakaty/downloader/ts1$a;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/ts1$a;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v4}, Lcom/shabakaty/downloader/ts1$a;->d()Lcom/shabakaty/downloader/ts1;

    move-result-object v4

    iput-object v4, v1, Lcom/shabakaty/downloader/op$c;->b:Lcom/shabakaty/downloader/ts1;

    .line 11
    invoke-virtual {v3}, Lcom/shabakaty/downloader/on3;->V0()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/shabakaty/downloader/zc4;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/zc4;

    move-result-object v4

    .line 12
    iget-object v6, v4, Lcom/shabakaty/downloader/zc4;->a:Lcom/shabakaty/downloader/mj3;

    iput-object v6, v1, Lcom/shabakaty/downloader/op$c;->d:Lcom/shabakaty/downloader/mj3;

    .line 13
    iget v6, v4, Lcom/shabakaty/downloader/zc4;->b:I

    iput v6, v1, Lcom/shabakaty/downloader/op$c;->e:I

    .line 14
    iget-object v4, v4, Lcom/shabakaty/downloader/zc4;->c:Ljava/lang/String;

    iput-object v4, v1, Lcom/shabakaty/downloader/op$c;->f:Ljava/lang/String;

    .line 15
    new-instance v4, Lcom/shabakaty/downloader/ts1$a;

    invoke-direct {v4}, Lcom/shabakaty/downloader/ts1$a;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16
    :try_start_4
    invoke-virtual {v5}, Lcom/shabakaty/downloader/on3;->c()J

    move-result-wide v6

    .line 17
    invoke-virtual {v5}, Lcom/shabakaty/downloader/on3;->V0()Ljava/lang/String;

    move-result-object v5

    cmp-long v8, v6, v10

    if-ltz v8, :cond_a

    cmp-long v8, v6, v12

    if-gtz v8, :cond_a

    .line 18
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-lez v8, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-nez v8, :cond_a

    long-to-int v5, v6

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_3

    .line 19
    :try_start_5
    invoke-virtual {v3}, Lcom/shabakaty/downloader/on3;->V0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/shabakaty/downloader/ts1$a;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/ts1$a;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 20
    :cond_3
    sget-object v5, Lcom/shabakaty/downloader/op$c;->k:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/ts1$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 21
    sget-object v7, Lcom/shabakaty/downloader/op$c;->l:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/shabakaty/downloader/ts1$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 22
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/ts1$a;->f(Ljava/lang/String;)Lcom/shabakaty/downloader/ts1$a;

    .line 23
    invoke-virtual {v4, v7}, Lcom/shabakaty/downloader/ts1$a;->f(Ljava/lang/String;)Lcom/shabakaty/downloader/ts1$a;

    if-eqz v6, :cond_4

    .line 24
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_4

    :cond_4
    move-wide v5, v10

    :goto_4
    iput-wide v5, v1, Lcom/shabakaty/downloader/op$c;->i:J

    if-eqz v8, :cond_5

    .line 25
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    :cond_5
    iput-wide v10, v1, Lcom/shabakaty/downloader/op$c;->j:J

    .line 26
    invoke-virtual {v4}, Lcom/shabakaty/downloader/ts1$a;->d()Lcom/shabakaty/downloader/ts1;

    move-result-object v4

    iput-object v4, v1, Lcom/shabakaty/downloader/op$c;->g:Lcom/shabakaty/downloader/ts1;

    .line 27
    iget-object v4, v1, Lcom/shabakaty/downloader/op$c;->a:Ljava/lang/String;

    const-string v5, "https://"

    const/4 v6, 0x2

    invoke-static {v4, v5, v15, v6}, Lcom/shabakaty/downloader/ne4;->L(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 28
    invoke-virtual {v3}, Lcom/shabakaty/downloader/on3;->V0()Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    const/4 v15, 0x1

    goto :goto_5

    :cond_6
    const/4 v15, 0x0

    :goto_5
    if-nez v15, :cond_8

    .line 30
    invoke-virtual {v3}, Lcom/shabakaty/downloader/on3;->V0()Ljava/lang/String;

    move-result-object v4

    .line 31
    sget-object v5, Lcom/shabakaty/downloader/a20;->t:Lcom/shabakaty/downloader/a20$b;

    invoke-virtual {v5, v4}, Lcom/shabakaty/downloader/a20$b;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/a20;

    move-result-object v4

    .line 32
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/op$c;->a(Lcom/shabakaty/downloader/eo;)Ljava/util/List;

    move-result-object v5

    .line 33
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/op$c;->a(Lcom/shabakaty/downloader/eo;)Ljava/util/List;

    move-result-object v0

    .line 34
    invoke-virtual {v3}, Lcom/shabakaty/downloader/on3;->W()Z

    move-result v6

    if-nez v6, :cond_7

    .line 35
    sget-object v6, Lcom/shabakaty/downloader/yn4;->y:Lcom/shabakaty/downloader/yn4$a;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/on3;->V0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/shabakaty/downloader/yn4$a;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/yn4;

    move-result-object v3

    goto :goto_6

    .line 36
    :cond_7
    sget-object v3, Lcom/shabakaty/downloader/yn4;->w:Lcom/shabakaty/downloader/yn4;

    .line 37
    :goto_6
    invoke-static {v5}, Lcom/shabakaty/downloader/ry4;->x(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 38
    new-instance v6, Lcom/shabakaty/downloader/is1;

    invoke-static {v0}, Lcom/shabakaty/downloader/ry4;->x(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v7, Lcom/shabakaty/downloader/hs1;

    invoke-direct {v7, v5}, Lcom/shabakaty/downloader/hs1;-><init>(Ljava/util/List;)V

    invoke-direct {v6, v3, v4, v0, v7}, Lcom/shabakaty/downloader/is1;-><init>(Lcom/shabakaty/downloader/yn4;Lcom/shabakaty/downloader/a20;Ljava/util/List;Lcom/shabakaty/downloader/rm1;)V

    .line 39
    iput-object v6, v1, Lcom/shabakaty/downloader/op$c;->h:Lcom/shabakaty/downloader/is1;

    goto :goto_7

    .line 40
    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected \"\" but was \""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const/4 v0, 0x0

    .line 41
    iput-object v0, v1, Lcom/shabakaty/downloader/op$c;->h:Lcom/shabakaty/downloader/is1;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 42
    :goto_7
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/r94;->close()V

    return-void

    .line 43
    :cond_a
    :try_start_6
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_0
    move-exception v0

    .line 44
    :try_start_7
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 45
    :cond_b
    :try_start_8
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catch_1
    move-exception v0

    .line 46
    :try_start_9
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_0
    move-exception v0

    .line 47
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/r94;->close()V

    throw v0
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/ws3;)V
    .locals 10

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iget-object v0, p1, Lcom/shabakaty/downloader/ws3;->s:Lcom/shabakaty/downloader/vr3;

    .line 50
    iget-object v0, v0, Lcom/shabakaty/downloader/vr3;->b:Lcom/shabakaty/downloader/qw1;

    .line 51
    iget-object v0, v0, Lcom/shabakaty/downloader/qw1;->j:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/shabakaty/downloader/op$c;->a:Ljava/lang/String;

    .line 53
    iget-object v0, p1, Lcom/shabakaty/downloader/ws3;->z:Lcom/shabakaty/downloader/ws3;

    .line 54
    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 55
    iget-object v0, v0, Lcom/shabakaty/downloader/ws3;->s:Lcom/shabakaty/downloader/vr3;

    .line 56
    iget-object v0, v0, Lcom/shabakaty/downloader/vr3;->d:Lcom/shabakaty/downloader/ts1;

    .line 57
    iget-object v1, p1, Lcom/shabakaty/downloader/ws3;->x:Lcom/shabakaty/downloader/ts1;

    .line 58
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ts1;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_3

    .line 59
    invoke-virtual {v1, v5}, Lcom/shabakaty/downloader/ts1;->i(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Vary"

    const/4 v8, 0x1

    invoke-static {v7, v6, v8}, Lcom/shabakaty/downloader/ne4;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_2

    .line 60
    :cond_0
    invoke-virtual {v1, v5}, Lcom/shabakaty/downloader/ts1;->n(I)Ljava/lang/String;

    move-result-object v6

    if-nez v3, :cond_1

    .line 61
    new-instance v3, Ljava/util/TreeSet;

    .line 62
    sget-object v7, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    const-string v9, "CASE_INSENSITIVE_ORDER"

    invoke-static {v7, v9}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct {v3, v7}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    :cond_1
    new-array v7, v8, [C

    const/16 v8, 0x2c

    aput-char v8, v7, v4

    const/4 v8, 0x6

    .line 64
    invoke-static {v6, v7, v4, v4, v8}, Lcom/shabakaty/downloader/re4;->d0(Ljava/lang/CharSequence;[CZII)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "null cannot be cast to non-null type kotlin.CharSequence"

    .line 65
    invoke-static {v7, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v7}, Lcom/shabakaty/downloader/re4;->m0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    goto :goto_3

    .line 66
    :cond_4
    sget-object v3, Lcom/shabakaty/downloader/c31;->r:Lcom/shabakaty/downloader/c31;

    .line 67
    :goto_3
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lcom/shabakaty/downloader/ry4;->b:Lcom/shabakaty/downloader/ts1;

    goto :goto_5

    .line 68
    :cond_5
    new-instance v1, Lcom/shabakaty/downloader/ts1$a;

    invoke-direct {v1}, Lcom/shabakaty/downloader/ts1$a;-><init>()V

    .line 69
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ts1;->size()I

    move-result v2

    :goto_4
    if-ge v4, v2, :cond_7

    .line 70
    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/ts1;->i(I)Ljava/lang/String;

    move-result-object v5

    .line 71
    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 72
    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/ts1;->n(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/shabakaty/downloader/ts1$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/ts1$a;

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 73
    :cond_7
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ts1$a;->d()Lcom/shabakaty/downloader/ts1;

    move-result-object v0

    .line 74
    :goto_5
    iput-object v0, p0, Lcom/shabakaty/downloader/op$c;->b:Lcom/shabakaty/downloader/ts1;

    .line 75
    iget-object v0, p1, Lcom/shabakaty/downloader/ws3;->s:Lcom/shabakaty/downloader/vr3;

    .line 76
    iget-object v0, v0, Lcom/shabakaty/downloader/vr3;->c:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/shabakaty/downloader/op$c;->c:Ljava/lang/String;

    .line 78
    iget-object v0, p1, Lcom/shabakaty/downloader/ws3;->t:Lcom/shabakaty/downloader/mj3;

    .line 79
    iput-object v0, p0, Lcom/shabakaty/downloader/op$c;->d:Lcom/shabakaty/downloader/mj3;

    .line 80
    iget v0, p1, Lcom/shabakaty/downloader/ws3;->v:I

    .line 81
    iput v0, p0, Lcom/shabakaty/downloader/op$c;->e:I

    .line 82
    iget-object v0, p1, Lcom/shabakaty/downloader/ws3;->u:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/shabakaty/downloader/op$c;->f:Ljava/lang/String;

    .line 84
    iget-object v0, p1, Lcom/shabakaty/downloader/ws3;->x:Lcom/shabakaty/downloader/ts1;

    .line 85
    iput-object v0, p0, Lcom/shabakaty/downloader/op$c;->g:Lcom/shabakaty/downloader/ts1;

    .line 86
    iget-object v0, p1, Lcom/shabakaty/downloader/ws3;->w:Lcom/shabakaty/downloader/is1;

    .line 87
    iput-object v0, p0, Lcom/shabakaty/downloader/op$c;->h:Lcom/shabakaty/downloader/is1;

    .line 88
    iget-wide v0, p1, Lcom/shabakaty/downloader/ws3;->C:J

    .line 89
    iput-wide v0, p0, Lcom/shabakaty/downloader/op$c;->i:J

    .line 90
    iget-wide v0, p1, Lcom/shabakaty/downloader/ws3;->D:J

    .line 91
    iput-wide v0, p0, Lcom/shabakaty/downloader/op$c;->j:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/eo;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/eo;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    check-cast p1, Lcom/shabakaty/downloader/on3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/on3;->c()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/on3;->V0()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-ltz v5, :cond_3

    const v3, 0x7fffffff

    int-to-long v3, v3

    cmp-long v5, v0, v3

    if-gtz v5, :cond_3

    .line 3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    long-to-int v1, v0

    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 4
    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object p1

    :cond_1
    :try_start_1
    const-string v0, "X.509"

    .line 5
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v4, v1, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/on3;->V0()Ljava/lang/String;

    move-result-object v3

    .line 8
    new-instance v5, Lcom/shabakaty/downloader/zn;

    invoke-direct {v5}, Lcom/shabakaty/downloader/zn;-><init>()V

    .line 9
    sget-object v6, Lcom/shabakaty/downloader/fp;->v:Lcom/shabakaty/downloader/fp$a;

    invoke-virtual {v6, v3}, Lcom/shabakaty/downloader/fp$a;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/fp;

    move-result-object v3

    invoke-static {v3}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-virtual {v5, v3}, Lcom/shabakaty/downloader/zn;->B(Lcom/shabakaty/downloader/fp;)Lcom/shabakaty/downloader/zn;

    .line 10
    new-instance v3, Lcom/shabakaty/downloader/zn$a;

    invoke-direct {v3, v5}, Lcom/shabakaty/downloader/zn$a;-><init>(Lcom/shabakaty/downloader/zn;)V

    .line 11
    invoke-virtual {v0, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-object v2

    :catch_0
    move-exception p1

    .line 12
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_3
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected an int but was \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 14
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Lcom/shabakaty/downloader/do;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/do;",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    check-cast p1, Lcom/shabakaty/downloader/nn3;

    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/nn3;->t1(J)Lcom/shabakaty/downloader/do;

    const/16 v0, 0xa

    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/nn3;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/nn3;->X(I)Lcom/shabakaty/downloader/do;

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 3
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/Certificate;

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v4

    .line 4
    sget-object v5, Lcom/shabakaty/downloader/fp;->v:Lcom/shabakaty/downloader/fp$a;

    const-string v6, "bytes"

    invoke-static {v4, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x3

    invoke-static {v5, v4, v2, v2, v6}, Lcom/shabakaty/downloader/fp$a;->d(Lcom/shabakaty/downloader/fp$a;[BIII)Lcom/shabakaty/downloader/fp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shabakaty/downloader/fp;->f()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {p1, v4}, Lcom/shabakaty/downloader/nn3;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/shabakaty/downloader/do;->X(I)Lcom/shabakaty/downloader/do;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 6
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final c(Lcom/shabakaty/downloader/wt0$a;)V
    .locals 9

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/wt0$a;->d(I)Lcom/shabakaty/downloader/l84;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/md0;->c(Lcom/shabakaty/downloader/l84;)Lcom/shabakaty/downloader/do;

    move-result-object p1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/op$c;->a:Ljava/lang/String;

    move-object v2, p1

    check-cast v2, Lcom/shabakaty/downloader/nn3;

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/nn3;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    move-result-object v1

    const/16 v3, 0xa

    invoke-interface {v1, v3}, Lcom/shabakaty/downloader/do;->X(I)Lcom/shabakaty/downloader/do;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/op$c;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/nn3;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/shabakaty/downloader/do;->X(I)Lcom/shabakaty/downloader/do;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/op$c;->b:Lcom/shabakaty/downloader/ts1;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ts1;->size()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lcom/shabakaty/downloader/nn3;->t1(J)Lcom/shabakaty/downloader/do;

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/nn3;->X(I)Lcom/shabakaty/downloader/do;

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/op$c;->b:Lcom/shabakaty/downloader/ts1;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ts1;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    :goto_0
    const-string v5, ": "

    if-ge v4, v1, :cond_0

    .line 6
    :try_start_1
    iget-object v6, p0, Lcom/shabakaty/downloader/op$c;->b:Lcom/shabakaty/downloader/ts1;

    invoke-virtual {v6, v4}, Lcom/shabakaty/downloader/ts1;->i(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/shabakaty/downloader/nn3;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    move-result-object v6

    .line 7
    invoke-interface {v6, v5}, Lcom/shabakaty/downloader/do;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    move-result-object v5

    .line 8
    iget-object v6, p0, Lcom/shabakaty/downloader/op$c;->b:Lcom/shabakaty/downloader/ts1;

    invoke-virtual {v6, v4}, Lcom/shabakaty/downloader/ts1;->n(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/shabakaty/downloader/do;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    move-result-object v5

    .line 9
    invoke-interface {v5, v3}, Lcom/shabakaty/downloader/do;->X(I)Lcom/shabakaty/downloader/do;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/op$c;->d:Lcom/shabakaty/downloader/mj3;

    iget v4, p0, Lcom/shabakaty/downloader/op$c;->e:I

    iget-object v6, p0, Lcom/shabakaty/downloader/op$c;->f:Ljava/lang/String;

    const-string v7, "protocol"

    .line 11
    invoke-static {v1, v7}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "message"

    invoke-static {v6, v7}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    sget-object v8, Lcom/shabakaty/downloader/mj3;->s:Lcom/shabakaty/downloader/mj3;

    if-ne v1, v8, :cond_1

    const-string v1, "HTTP/1.0"

    .line 14
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v1, "HTTP/1.1"

    .line 15
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v1, 0x20

    .line 16
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v1, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/nn3;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/shabakaty/downloader/do;->X(I)Lcom/shabakaty/downloader/do;

    .line 20
    iget-object v1, p0, Lcom/shabakaty/downloader/op$c;->g:Lcom/shabakaty/downloader/ts1;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ts1;->size()I

    move-result v1

    const/4 v4, 0x2

    add-int/2addr v1, v4

    int-to-long v6, v1

    invoke-virtual {v2, v6, v7}, Lcom/shabakaty/downloader/nn3;->t1(J)Lcom/shabakaty/downloader/do;

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/nn3;->X(I)Lcom/shabakaty/downloader/do;

    .line 21
    iget-object v1, p0, Lcom/shabakaty/downloader/op$c;->g:Lcom/shabakaty/downloader/ts1;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ts1;->size()I

    move-result v1

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v1, :cond_2

    .line 22
    iget-object v7, p0, Lcom/shabakaty/downloader/op$c;->g:Lcom/shabakaty/downloader/ts1;

    invoke-virtual {v7, v6}, Lcom/shabakaty/downloader/ts1;->i(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/shabakaty/downloader/nn3;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    move-result-object v7

    .line 23
    invoke-interface {v7, v5}, Lcom/shabakaty/downloader/do;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    move-result-object v7

    .line 24
    iget-object v8, p0, Lcom/shabakaty/downloader/op$c;->g:Lcom/shabakaty/downloader/ts1;

    invoke-virtual {v8, v6}, Lcom/shabakaty/downloader/ts1;->n(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/shabakaty/downloader/do;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    move-result-object v7

    .line 25
    invoke-interface {v7, v3}, Lcom/shabakaty/downloader/do;->X(I)Lcom/shabakaty/downloader/do;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 26
    :cond_2
    sget-object v1, Lcom/shabakaty/downloader/op$c;->k:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/nn3;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    move-result-object v1

    .line 27
    invoke-interface {v1, v5}, Lcom/shabakaty/downloader/do;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    move-result-object v1

    .line 28
    iget-wide v6, p0, Lcom/shabakaty/downloader/op$c;->i:J

    invoke-interface {v1, v6, v7}, Lcom/shabakaty/downloader/do;->t1(J)Lcom/shabakaty/downloader/do;

    move-result-object v1

    .line 29
    invoke-interface {v1, v3}, Lcom/shabakaty/downloader/do;->X(I)Lcom/shabakaty/downloader/do;

    .line 30
    sget-object v1, Lcom/shabakaty/downloader/op$c;->l:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/nn3;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    move-result-object v1

    .line 31
    invoke-interface {v1, v5}, Lcom/shabakaty/downloader/do;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    move-result-object v1

    .line 32
    iget-wide v5, p0, Lcom/shabakaty/downloader/op$c;->j:J

    invoke-interface {v1, v5, v6}, Lcom/shabakaty/downloader/do;->t1(J)Lcom/shabakaty/downloader/do;

    move-result-object v1

    .line 33
    invoke-interface {v1, v3}, Lcom/shabakaty/downloader/do;->X(I)Lcom/shabakaty/downloader/do;

    .line 34
    iget-object v1, p0, Lcom/shabakaty/downloader/op$c;->a:Ljava/lang/String;

    const-string v5, "https://"

    invoke-static {v1, v5, v0, v4}, Lcom/shabakaty/downloader/ne4;->L(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/nn3;->X(I)Lcom/shabakaty/downloader/do;

    .line 36
    iget-object v0, p0, Lcom/shabakaty/downloader/op$c;->h:Lcom/shabakaty/downloader/is1;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 37
    iget-object v0, v0, Lcom/shabakaty/downloader/is1;->c:Lcom/shabakaty/downloader/a20;

    .line 38
    iget-object v0, v0, Lcom/shabakaty/downloader/a20;->a:Ljava/lang/String;

    .line 39
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/nn3;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/shabakaty/downloader/do;->X(I)Lcom/shabakaty/downloader/do;

    .line 40
    iget-object v0, p0, Lcom/shabakaty/downloader/op$c;->h:Lcom/shabakaty/downloader/is1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/is1;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/op$c;->b(Lcom/shabakaty/downloader/do;Ljava/util/List;)V

    .line 41
    iget-object v0, p0, Lcom/shabakaty/downloader/op$c;->h:Lcom/shabakaty/downloader/is1;

    .line 42
    iget-object v0, v0, Lcom/shabakaty/downloader/is1;->d:Ljava/util/List;

    .line 43
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/op$c;->b(Lcom/shabakaty/downloader/do;Ljava/util/List;)V

    .line 44
    iget-object v0, p0, Lcom/shabakaty/downloader/op$c;->h:Lcom/shabakaty/downloader/is1;

    .line 45
    iget-object v0, v0, Lcom/shabakaty/downloader/is1;->b:Lcom/shabakaty/downloader/yn4;

    .line 46
    iget-object v0, v0, Lcom/shabakaty/downloader/yn4;->r:Ljava/lang/String;

    .line 47
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/nn3;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/shabakaty/downloader/do;->X(I)Lcom/shabakaty/downloader/do;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    const/4 v0, 0x0

    .line 48
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/he0;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/he0;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
