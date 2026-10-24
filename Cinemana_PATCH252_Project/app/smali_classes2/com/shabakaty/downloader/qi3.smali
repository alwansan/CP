.class public final Lcom/shabakaty/downloader/qi3;
.super Lcom/shabakaty/downloader/pp1$d;
.source "ProtoBuf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/qi3$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/pp1$d<",
        "Lcom/shabakaty/downloader/qi3;",
        ">;"
    }
.end annotation


# static fields
.field public static final I:Lcom/shabakaty/downloader/qi3;

.field public static J:Lcom/shabakaty/downloader/na3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/na3<",
            "Lcom/shabakaty/downloader/qi3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Lcom/shabakaty/downloader/yi3;

.field public B:I

.field public C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/cj3;",
            ">;"
        }
    .end annotation
.end field

.field public D:Lcom/shabakaty/downloader/bj3;

.field public E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public F:Lcom/shabakaty/downloader/mi3;

.field public G:B

.field public H:I

.field public final s:Lcom/shabakaty/downloader/ep;

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:Lcom/shabakaty/downloader/yi3;

.field public y:I

.field public z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/aj3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/qi3$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/qi3$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/qi3;->J:Lcom/shabakaty/downloader/na3;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/qi3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/qi3;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/qi3;->I:Lcom/shabakaty/downloader/qi3;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qi3;->t()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1$d;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/shabakaty/downloader/qi3;->G:B

    .line 8
    iput v0, p0, Lcom/shabakaty/downloader/qi3;->H:I

    .line 9
    sget-object v0, Lcom/shabakaty/downloader/ep;->r:Lcom/shabakaty/downloader/ep;

    iput-object v0, p0, Lcom/shabakaty/downloader/qi3;->s:Lcom/shabakaty/downloader/ep;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/pp1$c;Lcom/shabakaty/downloader/md0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/pp1$d;-><init>(Lcom/shabakaty/downloader/pp1$c;)V

    const/4 p2, -0x1

    .line 2
    iput-byte p2, p0, Lcom/shabakaty/downloader/qi3;->G:B

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/qi3;->H:I

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/qi3;->s:Lcom/shabakaty/downloader/ep;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;Lcom/shabakaty/downloader/md0;)V
    .locals 10

    .line 10
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1$d;-><init>()V

    const/4 p3, -0x1

    .line 11
    iput-byte p3, p0, Lcom/shabakaty/downloader/qi3;->G:B

    .line 12
    iput p3, p0, Lcom/shabakaty/downloader/qi3;->H:I

    .line 13
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qi3;->t()V

    .line 14
    invoke-static {}, Lcom/shabakaty/downloader/ep;->u()Lcom/shabakaty/downloader/ep$b;

    move-result-object p3

    const/4 v0, 0x1

    .line 15
    invoke-static {p3, v0}, Lcom/shabakaty/downloader/w40;->k(Ljava/io/OutputStream;I)Lcom/shabakaty/downloader/w40;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    const/16 v4, 0x100

    const/16 v5, 0x20

    const/16 v6, 0x400

    if-nez v2, :cond_11

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->o()I

    move-result v7

    const/4 v8, 0x0

    sparse-switch v7, :sswitch_data_0

    .line 17
    invoke-virtual {p0, p1, v1, p2, v7}, Lcom/shabakaty/downloader/pp1$d;->o(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/w40;Lcom/shabakaty/downloader/t81;I)Z

    move-result v4

    goto/16 :goto_3

    .line 18
    :sswitch_0
    iget v7, p0, Lcom/shabakaty/downloader/qi3;->t:I

    and-int/2addr v7, v4

    if-ne v7, v4, :cond_1

    .line 19
    iget-object v7, p0, Lcom/shabakaty/downloader/qi3;->F:Lcom/shabakaty/downloader/mi3;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v8, Lcom/shabakaty/downloader/mi3$b;

    invoke-direct {v8}, Lcom/shabakaty/downloader/mi3$b;-><init>()V

    .line 21
    invoke-virtual {v8, v7}, Lcom/shabakaty/downloader/mi3$b;->n(Lcom/shabakaty/downloader/mi3;)Lcom/shabakaty/downloader/mi3$b;

    .line 22
    :cond_1
    sget-object v7, Lcom/shabakaty/downloader/mi3;->w:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v7, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/mi3;

    iput-object v7, p0, Lcom/shabakaty/downloader/qi3;->F:Lcom/shabakaty/downloader/mi3;

    if-eqz v8, :cond_2

    .line 23
    invoke-virtual {v8, v7}, Lcom/shabakaty/downloader/mi3$b;->n(Lcom/shabakaty/downloader/mi3;)Lcom/shabakaty/downloader/mi3$b;

    .line 24
    invoke-virtual {v8}, Lcom/shabakaty/downloader/mi3$b;->l()Lcom/shabakaty/downloader/mi3;

    move-result-object v7

    iput-object v7, p0, Lcom/shabakaty/downloader/qi3;->F:Lcom/shabakaty/downloader/mi3;

    .line 25
    :cond_2
    iget v7, p0, Lcom/shabakaty/downloader/qi3;->t:I

    or-int/2addr v7, v4

    iput v7, p0, Lcom/shabakaty/downloader/qi3;->t:I

    goto :goto_0

    .line 26
    :sswitch_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v7

    .line 27
    invoke-virtual {p1, v7}, Lcom/shabakaty/downloader/u40;->d(I)I

    move-result v7

    and-int/lit16 v8, v3, 0x400

    if-eq v8, v6, :cond_3

    .line 28
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->b()I

    move-result v8

    if-lez v8, :cond_3

    .line 29
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/shabakaty/downloader/qi3;->E:Ljava/util/List;

    or-int/lit16 v3, v3, 0x400

    .line 30
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->b()I

    move-result v8

    if-lez v8, :cond_4

    .line 31
    iget-object v8, p0, Lcom/shabakaty/downloader/qi3;->E:Ljava/util/List;

    .line 32
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v9

    .line 33
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 34
    :cond_4
    iput v7, p1, Lcom/shabakaty/downloader/u40;->i:I

    .line 35
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->p()V

    goto :goto_0

    :sswitch_2
    and-int/lit16 v7, v3, 0x400

    if-eq v7, v6, :cond_5

    .line 36
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/shabakaty/downloader/qi3;->E:Ljava/util/List;

    or-int/lit16 v3, v3, 0x400

    .line 37
    :cond_5
    iget-object v7, p0, Lcom/shabakaty/downloader/qi3;->E:Ljava/util/List;

    .line 38
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v8

    .line 39
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 40
    :sswitch_3
    iget v7, p0, Lcom/shabakaty/downloader/qi3;->t:I

    const/16 v9, 0x80

    and-int/2addr v7, v9

    if-ne v7, v9, :cond_6

    .line 41
    iget-object v7, p0, Lcom/shabakaty/downloader/qi3;->D:Lcom/shabakaty/downloader/bj3;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static {v7}, Lcom/shabakaty/downloader/bj3;->i(Lcom/shabakaty/downloader/bj3;)Lcom/shabakaty/downloader/bj3$b;

    move-result-object v8

    .line 43
    :cond_6
    sget-object v7, Lcom/shabakaty/downloader/bj3;->y:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v7, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/bj3;

    iput-object v7, p0, Lcom/shabakaty/downloader/qi3;->D:Lcom/shabakaty/downloader/bj3;

    if-eqz v8, :cond_7

    .line 44
    invoke-virtual {v8, v7}, Lcom/shabakaty/downloader/bj3$b;->n(Lcom/shabakaty/downloader/bj3;)Lcom/shabakaty/downloader/bj3$b;

    .line 45
    invoke-virtual {v8}, Lcom/shabakaty/downloader/bj3$b;->l()Lcom/shabakaty/downloader/bj3;

    move-result-object v7

    iput-object v7, p0, Lcom/shabakaty/downloader/qi3;->D:Lcom/shabakaty/downloader/bj3;

    .line 46
    :cond_7
    iget v7, p0, Lcom/shabakaty/downloader/qi3;->t:I

    or-int/2addr v7, v9

    iput v7, p0, Lcom/shabakaty/downloader/qi3;->t:I

    goto/16 :goto_0

    .line 47
    :sswitch_4
    iget v7, p0, Lcom/shabakaty/downloader/qi3;->t:I

    or-int/2addr v7, v0

    iput v7, p0, Lcom/shabakaty/downloader/qi3;->t:I

    .line 48
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v7

    .line 49
    iput v7, p0, Lcom/shabakaty/downloader/qi3;->u:I

    goto/16 :goto_0

    .line 50
    :sswitch_5
    iget v7, p0, Lcom/shabakaty/downloader/qi3;->t:I

    or-int/lit8 v7, v7, 0x40

    iput v7, p0, Lcom/shabakaty/downloader/qi3;->t:I

    .line 51
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v7

    .line 52
    iput v7, p0, Lcom/shabakaty/downloader/qi3;->B:I

    goto/16 :goto_0

    .line 53
    :sswitch_6
    iget v7, p0, Lcom/shabakaty/downloader/qi3;->t:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Lcom/shabakaty/downloader/qi3;->t:I

    .line 54
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v7

    .line 55
    iput v7, p0, Lcom/shabakaty/downloader/qi3;->y:I

    goto/16 :goto_0

    :sswitch_7
    and-int/lit16 v7, v3, 0x100

    if-eq v7, v4, :cond_8

    .line 56
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/shabakaty/downloader/qi3;->C:Ljava/util/List;

    or-int/lit16 v3, v3, 0x100

    .line 57
    :cond_8
    iget-object v7, p0, Lcom/shabakaty/downloader/qi3;->C:Ljava/util/List;

    sget-object v8, Lcom/shabakaty/downloader/cj3;->D:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v8, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 58
    :sswitch_8
    iget v7, p0, Lcom/shabakaty/downloader/qi3;->t:I

    and-int/2addr v7, v5

    if-ne v7, v5, :cond_9

    .line 59
    iget-object v7, p0, Lcom/shabakaty/downloader/qi3;->A:Lcom/shabakaty/downloader/yi3;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {v7}, Lcom/shabakaty/downloader/yi3;->w(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3$c;

    move-result-object v8

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_0
    move-exception p1

    goto/16 :goto_4

    .line 61
    :cond_9
    :goto_2
    sget-object v7, Lcom/shabakaty/downloader/yi3;->L:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v7, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/yi3;

    iput-object v7, p0, Lcom/shabakaty/downloader/qi3;->A:Lcom/shabakaty/downloader/yi3;

    if-eqz v8, :cond_a

    .line 62
    invoke-virtual {v8, v7}, Lcom/shabakaty/downloader/yi3$c;->o(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3$c;

    .line 63
    invoke-virtual {v8}, Lcom/shabakaty/downloader/yi3$c;->m()Lcom/shabakaty/downloader/yi3;

    move-result-object v7

    iput-object v7, p0, Lcom/shabakaty/downloader/qi3;->A:Lcom/shabakaty/downloader/yi3;

    .line 64
    :cond_a
    iget v7, p0, Lcom/shabakaty/downloader/qi3;->t:I

    or-int/2addr v7, v5

    iput v7, p0, Lcom/shabakaty/downloader/qi3;->t:I

    goto/16 :goto_0

    :sswitch_9
    and-int/lit8 v7, v3, 0x20

    if-eq v7, v5, :cond_b

    .line 65
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/shabakaty/downloader/qi3;->z:Ljava/util/List;

    or-int/lit8 v3, v3, 0x20

    .line 66
    :cond_b
    iget-object v7, p0, Lcom/shabakaty/downloader/qi3;->z:Ljava/util/List;

    sget-object v8, Lcom/shabakaty/downloader/aj3;->E:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v8, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 67
    :sswitch_a
    iget v7, p0, Lcom/shabakaty/downloader/qi3;->t:I

    const/16 v9, 0x8

    and-int/2addr v7, v9

    if-ne v7, v9, :cond_c

    .line 68
    iget-object v7, p0, Lcom/shabakaty/downloader/qi3;->x:Lcom/shabakaty/downloader/yi3;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {v7}, Lcom/shabakaty/downloader/yi3;->w(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3$c;

    move-result-object v8

    .line 70
    :cond_c
    sget-object v7, Lcom/shabakaty/downloader/yi3;->L:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v7, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/yi3;

    iput-object v7, p0, Lcom/shabakaty/downloader/qi3;->x:Lcom/shabakaty/downloader/yi3;

    if-eqz v8, :cond_d

    .line 71
    invoke-virtual {v8, v7}, Lcom/shabakaty/downloader/yi3$c;->o(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3$c;

    .line 72
    invoke-virtual {v8}, Lcom/shabakaty/downloader/yi3$c;->m()Lcom/shabakaty/downloader/yi3;

    move-result-object v7

    iput-object v7, p0, Lcom/shabakaty/downloader/qi3;->x:Lcom/shabakaty/downloader/yi3;

    .line 73
    :cond_d
    iget v7, p0, Lcom/shabakaty/downloader/qi3;->t:I

    or-int/2addr v7, v9

    iput v7, p0, Lcom/shabakaty/downloader/qi3;->t:I

    goto/16 :goto_0

    .line 74
    :sswitch_b
    iget v7, p0, Lcom/shabakaty/downloader/qi3;->t:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/shabakaty/downloader/qi3;->t:I

    .line 75
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v7

    .line 76
    iput v7, p0, Lcom/shabakaty/downloader/qi3;->w:I

    goto/16 :goto_0

    .line 77
    :sswitch_c
    iget v7, p0, Lcom/shabakaty/downloader/qi3;->t:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/shabakaty/downloader/qi3;->t:I

    .line 78
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v7

    .line 79
    iput v7, p0, Lcom/shabakaty/downloader/qi3;->v:I
    :try_end_0
    .catch Lcom/shabakaty/downloader/s32; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_3
    if-nez v4, :cond_0

    :sswitch_d
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 80
    :goto_4
    :try_start_1
    new-instance p2, Lcom/shabakaty/downloader/s32;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/s32;-><init>(Ljava/lang/String;)V

    .line 81
    iput-object p0, p2, Lcom/shabakaty/downloader/s32;->r:Lcom/shabakaty/downloader/es2;

    .line 82
    throw p2

    :catch_1
    move-exception p1

    .line 83
    iput-object p0, p1, Lcom/shabakaty/downloader/s32;->r:Lcom/shabakaty/downloader/es2;

    .line 84
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    and-int/lit8 p2, v3, 0x20

    if-ne p2, v5, :cond_e

    .line 85
    iget-object p2, p0, Lcom/shabakaty/downloader/qi3;->z:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/qi3;->z:Ljava/util/List;

    :cond_e
    and-int/lit16 p2, v3, 0x100

    if-ne p2, v4, :cond_f

    .line 86
    iget-object p2, p0, Lcom/shabakaty/downloader/qi3;->C:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/qi3;->C:Ljava/util/List;

    :cond_f
    and-int/lit16 p2, v3, 0x400

    if-ne p2, v6, :cond_10

    .line 87
    iget-object p2, p0, Lcom/shabakaty/downloader/qi3;->E:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/qi3;->E:Ljava/util/List;

    .line 88
    :cond_10
    :try_start_2
    invoke-virtual {v1}, Lcom/shabakaty/downloader/w40;->j()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p1

    .line 89
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/qi3;->s:Lcom/shabakaty/downloader/ep;

    throw p1

    :catch_2
    :goto_6
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/qi3;->s:Lcom/shabakaty/downloader/ep;

    .line 90
    iget-object p2, p0, Lcom/shabakaty/downloader/pp1$d;->r:Lcom/shabakaty/downloader/ua1;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ua1;->i()V

    .line 91
    throw p1

    :cond_11
    and-int/lit8 p1, v3, 0x20

    if-ne p1, v5, :cond_12

    .line 92
    iget-object p1, p0, Lcom/shabakaty/downloader/qi3;->z:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/qi3;->z:Ljava/util/List;

    :cond_12
    and-int/lit16 p1, v3, 0x100

    if-ne p1, v4, :cond_13

    .line 93
    iget-object p1, p0, Lcom/shabakaty/downloader/qi3;->C:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/qi3;->C:Ljava/util/List;

    :cond_13
    and-int/lit16 p1, v3, 0x400

    if-ne p1, v6, :cond_14

    .line 94
    iget-object p1, p0, Lcom/shabakaty/downloader/qi3;->E:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/qi3;->E:Ljava/util/List;

    .line 95
    :cond_14
    :try_start_3
    invoke-virtual {v1}, Lcom/shabakaty/downloader/w40;->j()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception p1

    .line 96
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/qi3;->s:Lcom/shabakaty/downloader/ep;

    throw p1

    :catch_3
    :goto_7
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/qi3;->s:Lcom/shabakaty/downloader/ep;

    .line 97
    iget-object p1, p0, Lcom/shabakaty/downloader/pp1$d;->r:Lcom/shabakaty/downloader/ua1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ua1;->i()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_c
        0x10 -> :sswitch_b
        0x1a -> :sswitch_a
        0x22 -> :sswitch_9
        0x2a -> :sswitch_8
        0x32 -> :sswitch_7
        0x38 -> :sswitch_6
        0x40 -> :sswitch_5
        0x48 -> :sswitch_4
        0xf2 -> :sswitch_3
        0xf8 -> :sswitch_2
        0xfa -> :sswitch_1
        0x102 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .line 1
    iget-byte v0, p0, Lcom/shabakaty/downloader/qi3;->G:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 2
    :cond_1
    iget v0, p0, Lcom/shabakaty/downloader/qi3;->t:I

    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 3
    iput-byte v2, p0, Lcom/shabakaty/downloader/qi3;->G:B

    return v2

    .line 4
    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qi3;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/qi3;->x:Lcom/shabakaty/downloader/yi3;

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yi3;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 7
    iput-byte v2, p0, Lcom/shabakaty/downloader/qi3;->G:B

    return v2

    :cond_4
    const/4 v0, 0x0

    .line 8
    :goto_1
    iget-object v3, p0, Lcom/shabakaty/downloader/qi3;->z:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 9
    iget-object v3, p0, Lcom/shabakaty/downloader/qi3;->z:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/aj3;

    .line 10
    invoke-virtual {v3}, Lcom/shabakaty/downloader/aj3;->a()Z

    move-result v3

    if-nez v3, :cond_5

    .line 11
    iput-byte v2, p0, Lcom/shabakaty/downloader/qi3;->G:B

    return v2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 12
    :cond_6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qi3;->q()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 13
    iget-object v0, p0, Lcom/shabakaty/downloader/qi3;->A:Lcom/shabakaty/downloader/yi3;

    .line 14
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yi3;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 15
    iput-byte v2, p0, Lcom/shabakaty/downloader/qi3;->G:B

    return v2

    :cond_7
    const/4 v0, 0x0

    .line 16
    :goto_2
    iget-object v3, p0, Lcom/shabakaty/downloader/qi3;->C:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 17
    iget-object v3, p0, Lcom/shabakaty/downloader/qi3;->C:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/cj3;

    .line 18
    invoke-virtual {v3}, Lcom/shabakaty/downloader/cj3;->a()Z

    move-result v3

    if-nez v3, :cond_8

    .line 19
    iput-byte v2, p0, Lcom/shabakaty/downloader/qi3;->G:B

    return v2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 20
    :cond_9
    iget v0, p0, Lcom/shabakaty/downloader/qi3;->t:I

    const/16 v3, 0x80

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_a

    const/4 v0, 0x1

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_b

    .line 21
    iget-object v0, p0, Lcom/shabakaty/downloader/qi3;->D:Lcom/shabakaty/downloader/bj3;

    .line 22
    invoke-virtual {v0}, Lcom/shabakaty/downloader/bj3;->a()Z

    move-result v0

    if-nez v0, :cond_b

    .line 23
    iput-byte v2, p0, Lcom/shabakaty/downloader/qi3;->G:B

    return v2

    .line 24
    :cond_b
    iget v0, p0, Lcom/shabakaty/downloader/qi3;->t:I

    const/16 v3, 0x100

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_c

    const/4 v0, 0x1

    goto :goto_4

    :cond_c
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_d

    .line 25
    iget-object v0, p0, Lcom/shabakaty/downloader/qi3;->F:Lcom/shabakaty/downloader/mi3;

    .line 26
    invoke-virtual {v0}, Lcom/shabakaty/downloader/mi3;->a()Z

    move-result v0

    if-nez v0, :cond_d

    .line 27
    iput-byte v2, p0, Lcom/shabakaty/downloader/qi3;->G:B

    return v2

    .line 28
    :cond_d
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pp1$d;->i()Z

    move-result v0

    if-nez v0, :cond_e

    .line 29
    iput-byte v2, p0, Lcom/shabakaty/downloader/qi3;->G:B

    return v2

    .line 30
    :cond_e
    iput-byte v1, p0, Lcom/shabakaty/downloader/qi3;->G:B

    return v1
.end method

.method public b()Lcom/shabakaty/downloader/es2;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/qi3;->I:Lcom/shabakaty/downloader/qi3;

    return-object v0
.end method

.method public c()Lcom/shabakaty/downloader/es2$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/qi3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/qi3$b;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/qi3$b;->o(Lcom/shabakaty/downloader/qi3;)Lcom/shabakaty/downloader/qi3$b;

    return-object v0
.end method

.method public e()I
    .locals 9

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/qi3;->H:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/qi3;->t:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/qi3;->v:I

    invoke-static {v3, v0}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget v4, p0, Lcom/shabakaty/downloader/qi3;->t:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_2

    .line 5
    iget v4, p0, Lcom/shabakaty/downloader/qi3;->w:I

    invoke-static {v1, v4}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 6
    :cond_2
    iget v4, p0, Lcom/shabakaty/downloader/qi3;->t:I

    const/16 v6, 0x8

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_3

    const/4 v4, 0x3

    .line 7
    iget-object v7, p0, Lcom/shabakaty/downloader/qi3;->x:Lcom/shabakaty/downloader/yi3;

    invoke-static {v4, v7}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_3
    const/4 v4, 0x0

    .line 8
    :goto_1
    iget-object v7, p0, Lcom/shabakaty/downloader/qi3;->z:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 9
    iget-object v7, p0, Lcom/shabakaty/downloader/qi3;->z:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/es2;

    invoke-static {v5, v7}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v7

    add-int/2addr v0, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 10
    :cond_4
    iget v4, p0, Lcom/shabakaty/downloader/qi3;->t:I

    const/16 v5, 0x20

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_5

    const/4 v4, 0x5

    .line 11
    iget-object v7, p0, Lcom/shabakaty/downloader/qi3;->A:Lcom/shabakaty/downloader/yi3;

    invoke-static {v4, v7}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_5
    const/4 v4, 0x0

    .line 12
    :goto_2
    iget-object v7, p0, Lcom/shabakaty/downloader/qi3;->C:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_6

    const/4 v7, 0x6

    .line 13
    iget-object v8, p0, Lcom/shabakaty/downloader/qi3;->C:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/downloader/es2;

    invoke-static {v7, v8}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v7

    add-int/2addr v0, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 14
    :cond_6
    iget v4, p0, Lcom/shabakaty/downloader/qi3;->t:I

    const/16 v7, 0x10

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_7

    const/4 v4, 0x7

    .line 15
    iget v7, p0, Lcom/shabakaty/downloader/qi3;->y:I

    invoke-static {v4, v7}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 16
    :cond_7
    iget v4, p0, Lcom/shabakaty/downloader/qi3;->t:I

    const/16 v7, 0x40

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_8

    .line 17
    iget v4, p0, Lcom/shabakaty/downloader/qi3;->B:I

    invoke-static {v6, v4}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 18
    :cond_8
    iget v4, p0, Lcom/shabakaty/downloader/qi3;->t:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_9

    const/16 v3, 0x9

    .line 19
    iget v4, p0, Lcom/shabakaty/downloader/qi3;->u:I

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 20
    :cond_9
    iget v3, p0, Lcom/shabakaty/downloader/qi3;->t:I

    const/16 v4, 0x80

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_a

    const/16 v3, 0x1e

    .line 21
    iget-object v4, p0, Lcom/shabakaty/downloader/qi3;->D:Lcom/shabakaty/downloader/bj3;

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_a
    const/4 v3, 0x0

    .line 22
    :goto_3
    iget-object v4, p0, Lcom/shabakaty/downloader/qi3;->E:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_b

    .line 23
    iget-object v4, p0, Lcom/shabakaty/downloader/qi3;->E:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/shabakaty/downloader/w40;->d(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_b
    add-int/2addr v0, v3

    .line 24
    iget-object v2, p0, Lcom/shabakaty/downloader/qi3;->E:Ljava/util/List;

    .line 25
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    .line 26
    iget v0, p0, Lcom/shabakaty/downloader/qi3;->t:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_c

    .line 27
    iget-object v0, p0, Lcom/shabakaty/downloader/qi3;->F:Lcom/shabakaty/downloader/mi3;

    invoke-static {v5, v0}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v0

    add-int/2addr v2, v0

    .line 28
    :cond_c
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pp1$d;->j()I

    move-result v0

    add-int/2addr v0, v2

    .line 29
    iget-object v1, p0, Lcom/shabakaty/downloader/qi3;->s:Lcom/shabakaty/downloader/ep;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ep;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 30
    iput v1, p0, Lcom/shabakaty/downloader/qi3;->H:I

    return v1
.end method

.method public f(Lcom/shabakaty/downloader/w40;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qi3;->e()I

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pp1$d;->n()Lcom/shabakaty/downloader/pp1$d$a;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/shabakaty/downloader/qi3;->t:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 4
    iget v1, p0, Lcom/shabakaty/downloader/qi3;->v:I

    invoke-virtual {p1, v3, v1}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 5
    :cond_0
    iget v1, p0, Lcom/shabakaty/downloader/qi3;->t:I

    const/4 v4, 0x4

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1

    .line 6
    iget v1, p0, Lcom/shabakaty/downloader/qi3;->w:I

    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 7
    :cond_1
    iget v1, p0, Lcom/shabakaty/downloader/qi3;->t:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    .line 8
    iget-object v5, p0, Lcom/shabakaty/downloader/qi3;->x:Lcom/shabakaty/downloader/yi3;

    invoke-virtual {p1, v1, v5}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    :cond_2
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 9
    :goto_0
    iget-object v6, p0, Lcom/shabakaty/downloader/qi3;->z:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 10
    iget-object v6, p0, Lcom/shabakaty/downloader/qi3;->z:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/es2;

    invoke-virtual {p1, v4, v6}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 11
    :cond_3
    iget v4, p0, Lcom/shabakaty/downloader/qi3;->t:I

    const/16 v5, 0x20

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_4

    const/4 v4, 0x5

    .line 12
    iget-object v6, p0, Lcom/shabakaty/downloader/qi3;->A:Lcom/shabakaty/downloader/yi3;

    invoke-virtual {p1, v4, v6}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    :cond_4
    const/4 v4, 0x0

    .line 13
    :goto_1
    iget-object v6, p0, Lcom/shabakaty/downloader/qi3;->C:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_5

    const/4 v6, 0x6

    .line 14
    iget-object v7, p0, Lcom/shabakaty/downloader/qi3;->C:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/es2;

    invoke-virtual {p1, v6, v7}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 15
    :cond_5
    iget v4, p0, Lcom/shabakaty/downloader/qi3;->t:I

    const/16 v6, 0x10

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_6

    const/4 v4, 0x7

    .line 16
    iget v6, p0, Lcom/shabakaty/downloader/qi3;->y:I

    invoke-virtual {p1, v4, v6}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 17
    :cond_6
    iget v4, p0, Lcom/shabakaty/downloader/qi3;->t:I

    const/16 v6, 0x40

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_7

    .line 18
    iget v4, p0, Lcom/shabakaty/downloader/qi3;->B:I

    invoke-virtual {p1, v2, v4}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 19
    :cond_7
    iget v2, p0, Lcom/shabakaty/downloader/qi3;->t:I

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_8

    const/16 v2, 0x9

    .line 20
    iget v3, p0, Lcom/shabakaty/downloader/qi3;->u:I

    invoke-virtual {p1, v2, v3}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 21
    :cond_8
    iget v2, p0, Lcom/shabakaty/downloader/qi3;->t:I

    const/16 v3, 0x80

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_9

    const/16 v2, 0x1e

    .line 22
    iget-object v3, p0, Lcom/shabakaty/downloader/qi3;->D:Lcom/shabakaty/downloader/bj3;

    invoke-virtual {p1, v2, v3}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    .line 23
    :cond_9
    :goto_2
    iget-object v2, p0, Lcom/shabakaty/downloader/qi3;->E:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    const/16 v2, 0x1f

    .line 24
    iget-object v3, p0, Lcom/shabakaty/downloader/qi3;->E:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/shabakaty/downloader/w40;->p(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 25
    :cond_a
    iget v1, p0, Lcom/shabakaty/downloader/qi3;->t:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    .line 26
    iget-object v1, p0, Lcom/shabakaty/downloader/qi3;->F:Lcom/shabakaty/downloader/mi3;

    invoke-virtual {p1, v5, v1}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    :cond_b
    const/16 v1, 0x4a38

    .line 27
    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/pp1$d$a;->a(ILcom/shabakaty/downloader/w40;)V

    .line 28
    iget-object v0, p0, Lcom/shabakaty/downloader/qi3;->s:Lcom/shabakaty/downloader/ep;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/w40;->u(Lcom/shabakaty/downloader/ep;)V

    return-void
.end method

.method public g()Lcom/shabakaty/downloader/es2$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/qi3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/qi3$b;-><init>()V

    return-object v0
.end method

.method public q()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/qi3;->t:I

    const/16 v1, 0x20

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
    iget v0, p0, Lcom/shabakaty/downloader/qi3;->t:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public s()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/qi3;->t:I

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

.method public final t()V
    .locals 3

    const/4 v0, 0x6

    .line 1
    iput v0, p0, Lcom/shabakaty/downloader/qi3;->u:I

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/qi3;->v:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/qi3;->w:I

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/yi3;->K:Lcom/shabakaty/downloader/yi3;

    .line 5
    iput-object v1, p0, Lcom/shabakaty/downloader/qi3;->x:Lcom/shabakaty/downloader/yi3;

    .line 6
    iput v0, p0, Lcom/shabakaty/downloader/qi3;->y:I

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/shabakaty/downloader/qi3;->z:Ljava/util/List;

    .line 8
    iput-object v1, p0, Lcom/shabakaty/downloader/qi3;->A:Lcom/shabakaty/downloader/yi3;

    .line 9
    iput v0, p0, Lcom/shabakaty/downloader/qi3;->B:I

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/qi3;->C:Ljava/util/List;

    .line 11
    sget-object v0, Lcom/shabakaty/downloader/bj3;->x:Lcom/shabakaty/downloader/bj3;

    .line 12
    iput-object v0, p0, Lcom/shabakaty/downloader/qi3;->D:Lcom/shabakaty/downloader/bj3;

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/qi3;->E:Ljava/util/List;

    .line 14
    sget-object v0, Lcom/shabakaty/downloader/mi3;->v:Lcom/shabakaty/downloader/mi3;

    .line 15
    iput-object v0, p0, Lcom/shabakaty/downloader/qi3;->F:Lcom/shabakaty/downloader/mi3;

    return-void
.end method
