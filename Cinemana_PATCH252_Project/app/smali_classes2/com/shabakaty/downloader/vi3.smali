.class public final Lcom/shabakaty/downloader/vi3;
.super Lcom/shabakaty/downloader/pp1$d;
.source "ProtoBuf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/vi3$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/pp1$d<",
        "Lcom/shabakaty/downloader/vi3;",
        ">;"
    }
.end annotation


# static fields
.field public static final I:Lcom/shabakaty/downloader/vi3;

.field public static J:Lcom/shabakaty/downloader/na3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/na3<",
            "Lcom/shabakaty/downloader/vi3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Lcom/shabakaty/downloader/yi3;

.field public B:I

.field public C:Lcom/shabakaty/downloader/cj3;

.field public D:I

.field public E:I

.field public F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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
    new-instance v0, Lcom/shabakaty/downloader/vi3$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/vi3$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/vi3;->J:Lcom/shabakaty/downloader/na3;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/vi3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/vi3;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/vi3;->I:Lcom/shabakaty/downloader/vi3;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vi3;->t()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1$d;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/shabakaty/downloader/vi3;->G:B

    .line 8
    iput v0, p0, Lcom/shabakaty/downloader/vi3;->H:I

    .line 9
    sget-object v0, Lcom/shabakaty/downloader/ep;->r:Lcom/shabakaty/downloader/ep;

    iput-object v0, p0, Lcom/shabakaty/downloader/vi3;->s:Lcom/shabakaty/downloader/ep;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/pp1$c;Lcom/shabakaty/downloader/md0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/pp1$d;-><init>(Lcom/shabakaty/downloader/pp1$c;)V

    const/4 p2, -0x1

    .line 2
    iput-byte p2, p0, Lcom/shabakaty/downloader/vi3;->G:B

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/vi3;->H:I

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/vi3;->s:Lcom/shabakaty/downloader/ep;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;Lcom/shabakaty/downloader/md0;)V
    .locals 9

    .line 10
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1$d;-><init>()V

    const/4 p3, -0x1

    .line 11
    iput-byte p3, p0, Lcom/shabakaty/downloader/vi3;->G:B

    .line 12
    iput p3, p0, Lcom/shabakaty/downloader/vi3;->H:I

    .line 13
    invoke-virtual {p0}, Lcom/shabakaty/downloader/vi3;->t()V

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
    const/16 v4, 0x20

    const/16 v5, 0x800

    if-nez v2, :cond_d

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->o()I

    move-result v6

    const/4 v7, 0x0

    sparse-switch v6, :sswitch_data_0

    .line 17
    invoke-virtual {p0, p1, v1, p2, v6}, Lcom/shabakaty/downloader/pp1$d;->o(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/w40;Lcom/shabakaty/downloader/t81;I)Z

    move-result v4

    goto/16 :goto_3

    .line 18
    :sswitch_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v6

    .line 19
    invoke-virtual {p1, v6}, Lcom/shabakaty/downloader/u40;->d(I)I

    move-result v6

    and-int/lit16 v7, v3, 0x800

    if-eq v7, v5, :cond_1

    .line 20
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->b()I

    move-result v7

    if-lez v7, :cond_1

    .line 21
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/shabakaty/downloader/vi3;->F:Ljava/util/List;

    or-int/lit16 v3, v3, 0x800

    .line 22
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->b()I

    move-result v7

    if-lez v7, :cond_2

    .line 23
    iget-object v7, p0, Lcom/shabakaty/downloader/vi3;->F:Ljava/util/List;

    .line 24
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v8

    .line 25
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 26
    :cond_2
    iput v6, p1, Lcom/shabakaty/downloader/u40;->i:I

    .line 27
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->p()V

    goto :goto_0

    :sswitch_1
    and-int/lit16 v6, v3, 0x800

    if-eq v6, v5, :cond_3

    .line 28
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/shabakaty/downloader/vi3;->F:Ljava/util/List;

    or-int/lit16 v3, v3, 0x800

    .line 29
    :cond_3
    iget-object v6, p0, Lcom/shabakaty/downloader/vi3;->F:Ljava/util/List;

    .line 30
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v7

    .line 31
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32
    :sswitch_2
    iget v6, p0, Lcom/shabakaty/downloader/vi3;->t:I

    or-int/2addr v6, v0

    iput v6, p0, Lcom/shabakaty/downloader/vi3;->t:I

    .line 33
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v6

    .line 34
    iput v6, p0, Lcom/shabakaty/downloader/vi3;->u:I

    goto :goto_0

    .line 35
    :sswitch_3
    iget v6, p0, Lcom/shabakaty/downloader/vi3;->t:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lcom/shabakaty/downloader/vi3;->t:I

    .line 36
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v6

    .line 37
    iput v6, p0, Lcom/shabakaty/downloader/vi3;->B:I

    goto :goto_0

    .line 38
    :sswitch_4
    iget v6, p0, Lcom/shabakaty/downloader/vi3;->t:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/shabakaty/downloader/vi3;->t:I

    .line 39
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v6

    .line 40
    iput v6, p0, Lcom/shabakaty/downloader/vi3;->y:I

    goto/16 :goto_0

    .line 41
    :sswitch_5
    iget v6, p0, Lcom/shabakaty/downloader/vi3;->t:I

    or-int/lit16 v6, v6, 0x200

    iput v6, p0, Lcom/shabakaty/downloader/vi3;->t:I

    .line 42
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v6

    .line 43
    iput v6, p0, Lcom/shabakaty/downloader/vi3;->E:I

    goto/16 :goto_0

    .line 44
    :sswitch_6
    iget v6, p0, Lcom/shabakaty/downloader/vi3;->t:I

    or-int/lit16 v6, v6, 0x100

    iput v6, p0, Lcom/shabakaty/downloader/vi3;->t:I

    .line 45
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v6

    .line 46
    iput v6, p0, Lcom/shabakaty/downloader/vi3;->D:I

    goto/16 :goto_0

    .line 47
    :sswitch_7
    iget v6, p0, Lcom/shabakaty/downloader/vi3;->t:I

    const/16 v8, 0x80

    and-int/2addr v6, v8

    if-ne v6, v8, :cond_4

    .line 48
    iget-object v6, p0, Lcom/shabakaty/downloader/vi3;->C:Lcom/shabakaty/downloader/cj3;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v7, Lcom/shabakaty/downloader/cj3$b;

    invoke-direct {v7}, Lcom/shabakaty/downloader/cj3$b;-><init>()V

    .line 50
    invoke-virtual {v7, v6}, Lcom/shabakaty/downloader/cj3$b;->o(Lcom/shabakaty/downloader/cj3;)Lcom/shabakaty/downloader/cj3$b;

    .line 51
    :cond_4
    sget-object v6, Lcom/shabakaty/downloader/cj3;->D:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v6, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/cj3;

    iput-object v6, p0, Lcom/shabakaty/downloader/vi3;->C:Lcom/shabakaty/downloader/cj3;

    if-eqz v7, :cond_5

    .line 52
    invoke-virtual {v7, v6}, Lcom/shabakaty/downloader/cj3$b;->o(Lcom/shabakaty/downloader/cj3;)Lcom/shabakaty/downloader/cj3$b;

    .line 53
    invoke-virtual {v7}, Lcom/shabakaty/downloader/cj3$b;->m()Lcom/shabakaty/downloader/cj3;

    move-result-object v6

    iput-object v6, p0, Lcom/shabakaty/downloader/vi3;->C:Lcom/shabakaty/downloader/cj3;

    .line 54
    :cond_5
    iget v6, p0, Lcom/shabakaty/downloader/vi3;->t:I

    or-int/2addr v6, v8

    iput v6, p0, Lcom/shabakaty/downloader/vi3;->t:I

    goto/16 :goto_0

    .line 55
    :sswitch_8
    iget v6, p0, Lcom/shabakaty/downloader/vi3;->t:I

    and-int/2addr v6, v4

    if-ne v6, v4, :cond_6

    .line 56
    iget-object v6, p0, Lcom/shabakaty/downloader/vi3;->A:Lcom/shabakaty/downloader/yi3;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {v6}, Lcom/shabakaty/downloader/yi3;->w(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3$c;

    move-result-object v7

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_0
    move-exception p1

    goto/16 :goto_4

    .line 58
    :cond_6
    :goto_2
    sget-object v6, Lcom/shabakaty/downloader/yi3;->L:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v6, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/yi3;

    iput-object v6, p0, Lcom/shabakaty/downloader/vi3;->A:Lcom/shabakaty/downloader/yi3;

    if-eqz v7, :cond_7

    .line 59
    invoke-virtual {v7, v6}, Lcom/shabakaty/downloader/yi3$c;->o(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3$c;

    .line 60
    invoke-virtual {v7}, Lcom/shabakaty/downloader/yi3$c;->m()Lcom/shabakaty/downloader/yi3;

    move-result-object v6

    iput-object v6, p0, Lcom/shabakaty/downloader/vi3;->A:Lcom/shabakaty/downloader/yi3;

    .line 61
    :cond_7
    iget v6, p0, Lcom/shabakaty/downloader/vi3;->t:I

    or-int/2addr v6, v4

    iput v6, p0, Lcom/shabakaty/downloader/vi3;->t:I

    goto/16 :goto_0

    :sswitch_9
    and-int/lit8 v6, v3, 0x20

    if-eq v6, v4, :cond_8

    .line 62
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/shabakaty/downloader/vi3;->z:Ljava/util/List;

    or-int/lit8 v3, v3, 0x20

    .line 63
    :cond_8
    iget-object v6, p0, Lcom/shabakaty/downloader/vi3;->z:Ljava/util/List;

    sget-object v7, Lcom/shabakaty/downloader/aj3;->E:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v7, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 64
    :sswitch_a
    iget v6, p0, Lcom/shabakaty/downloader/vi3;->t:I

    const/16 v8, 0x8

    and-int/2addr v6, v8

    if-ne v6, v8, :cond_9

    .line 65
    iget-object v6, p0, Lcom/shabakaty/downloader/vi3;->x:Lcom/shabakaty/downloader/yi3;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {v6}, Lcom/shabakaty/downloader/yi3;->w(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3$c;

    move-result-object v7

    .line 67
    :cond_9
    sget-object v6, Lcom/shabakaty/downloader/yi3;->L:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v6, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/yi3;

    iput-object v6, p0, Lcom/shabakaty/downloader/vi3;->x:Lcom/shabakaty/downloader/yi3;

    if-eqz v7, :cond_a

    .line 68
    invoke-virtual {v7, v6}, Lcom/shabakaty/downloader/yi3$c;->o(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3$c;

    .line 69
    invoke-virtual {v7}, Lcom/shabakaty/downloader/yi3$c;->m()Lcom/shabakaty/downloader/yi3;

    move-result-object v6

    iput-object v6, p0, Lcom/shabakaty/downloader/vi3;->x:Lcom/shabakaty/downloader/yi3;

    .line 70
    :cond_a
    iget v6, p0, Lcom/shabakaty/downloader/vi3;->t:I

    or-int/2addr v6, v8

    iput v6, p0, Lcom/shabakaty/downloader/vi3;->t:I

    goto/16 :goto_0

    .line 71
    :sswitch_b
    iget v6, p0, Lcom/shabakaty/downloader/vi3;->t:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/shabakaty/downloader/vi3;->t:I

    .line 72
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v6

    .line 73
    iput v6, p0, Lcom/shabakaty/downloader/vi3;->w:I

    goto/16 :goto_0

    .line 74
    :sswitch_c
    iget v6, p0, Lcom/shabakaty/downloader/vi3;->t:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/shabakaty/downloader/vi3;->t:I

    .line 75
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v6

    .line 76
    iput v6, p0, Lcom/shabakaty/downloader/vi3;->v:I
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

    .line 77
    :goto_4
    :try_start_1
    new-instance p2, Lcom/shabakaty/downloader/s32;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/s32;-><init>(Ljava/lang/String;)V

    .line 78
    iput-object p0, p2, Lcom/shabakaty/downloader/s32;->r:Lcom/shabakaty/downloader/es2;

    .line 79
    throw p2

    :catch_1
    move-exception p1

    .line 80
    iput-object p0, p1, Lcom/shabakaty/downloader/s32;->r:Lcom/shabakaty/downloader/es2;

    .line 81
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    and-int/lit8 p2, v3, 0x20

    if-ne p2, v4, :cond_b

    .line 82
    iget-object p2, p0, Lcom/shabakaty/downloader/vi3;->z:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/vi3;->z:Ljava/util/List;

    :cond_b
    and-int/lit16 p2, v3, 0x800

    if-ne p2, v5, :cond_c

    .line 83
    iget-object p2, p0, Lcom/shabakaty/downloader/vi3;->F:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/vi3;->F:Ljava/util/List;

    .line 84
    :cond_c
    :try_start_2
    invoke-virtual {v1}, Lcom/shabakaty/downloader/w40;->j()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p1

    .line 85
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/vi3;->s:Lcom/shabakaty/downloader/ep;

    throw p1

    :catch_2
    :goto_6
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/vi3;->s:Lcom/shabakaty/downloader/ep;

    .line 86
    iget-object p2, p0, Lcom/shabakaty/downloader/pp1$d;->r:Lcom/shabakaty/downloader/ua1;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ua1;->i()V

    .line 87
    throw p1

    :cond_d
    and-int/lit8 p1, v3, 0x20

    if-ne p1, v4, :cond_e

    .line 88
    iget-object p1, p0, Lcom/shabakaty/downloader/vi3;->z:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/vi3;->z:Ljava/util/List;

    :cond_e
    and-int/lit16 p1, v3, 0x800

    if-ne p1, v5, :cond_f

    .line 89
    iget-object p1, p0, Lcom/shabakaty/downloader/vi3;->F:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/vi3;->F:Ljava/util/List;

    .line 90
    :cond_f
    :try_start_3
    invoke-virtual {v1}, Lcom/shabakaty/downloader/w40;->j()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception p1

    .line 91
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/vi3;->s:Lcom/shabakaty/downloader/ep;

    throw p1

    :catch_3
    :goto_7
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/vi3;->s:Lcom/shabakaty/downloader/ep;

    .line 92
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
        0x50 -> :sswitch_3
        0x58 -> :sswitch_2
        0xf8 -> :sswitch_1
        0xfa -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .line 1
    iget-byte v0, p0, Lcom/shabakaty/downloader/vi3;->G:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 2
    :cond_1
    iget v0, p0, Lcom/shabakaty/downloader/vi3;->t:I

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
    iput-byte v2, p0, Lcom/shabakaty/downloader/vi3;->G:B

    return v2

    .line 4
    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/vi3;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/vi3;->x:Lcom/shabakaty/downloader/yi3;

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yi3;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 7
    iput-byte v2, p0, Lcom/shabakaty/downloader/vi3;->G:B

    return v2

    :cond_4
    const/4 v0, 0x0

    .line 8
    :goto_1
    iget-object v3, p0, Lcom/shabakaty/downloader/vi3;->z:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 9
    iget-object v3, p0, Lcom/shabakaty/downloader/vi3;->z:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/aj3;

    .line 10
    invoke-virtual {v3}, Lcom/shabakaty/downloader/aj3;->a()Z

    move-result v3

    if-nez v3, :cond_5

    .line 11
    iput-byte v2, p0, Lcom/shabakaty/downloader/vi3;->G:B

    return v2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 12
    :cond_6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/vi3;->q()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 13
    iget-object v0, p0, Lcom/shabakaty/downloader/vi3;->A:Lcom/shabakaty/downloader/yi3;

    .line 14
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yi3;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 15
    iput-byte v2, p0, Lcom/shabakaty/downloader/vi3;->G:B

    return v2

    .line 16
    :cond_7
    iget v0, p0, Lcom/shabakaty/downloader/vi3;->t:I

    const/16 v3, 0x80

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_8

    const/4 v0, 0x1

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_9

    .line 17
    iget-object v0, p0, Lcom/shabakaty/downloader/vi3;->C:Lcom/shabakaty/downloader/cj3;

    .line 18
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cj3;->a()Z

    move-result v0

    if-nez v0, :cond_9

    .line 19
    iput-byte v2, p0, Lcom/shabakaty/downloader/vi3;->G:B

    return v2

    .line 20
    :cond_9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pp1$d;->i()Z

    move-result v0

    if-nez v0, :cond_a

    .line 21
    iput-byte v2, p0, Lcom/shabakaty/downloader/vi3;->G:B

    return v2

    .line 22
    :cond_a
    iput-byte v1, p0, Lcom/shabakaty/downloader/vi3;->G:B

    return v1
.end method

.method public b()Lcom/shabakaty/downloader/es2;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/vi3;->I:Lcom/shabakaty/downloader/vi3;

    return-object v0
.end method

.method public c()Lcom/shabakaty/downloader/es2$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/vi3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/vi3$b;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/vi3$b;->o(Lcom/shabakaty/downloader/vi3;)Lcom/shabakaty/downloader/vi3$b;

    return-object v0
.end method

.method public e()I
    .locals 8

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/vi3;->H:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/vi3;->t:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/vi3;->v:I

    invoke-static {v3, v0}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget v4, p0, Lcom/shabakaty/downloader/vi3;->t:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_2

    .line 5
    iget v4, p0, Lcom/shabakaty/downloader/vi3;->w:I

    invoke-static {v1, v4}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 6
    :cond_2
    iget v4, p0, Lcom/shabakaty/downloader/vi3;->t:I

    const/16 v6, 0x8

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_3

    const/4 v4, 0x3

    .line 7
    iget-object v7, p0, Lcom/shabakaty/downloader/vi3;->x:Lcom/shabakaty/downloader/yi3;

    invoke-static {v4, v7}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_3
    const/4 v4, 0x0

    .line 8
    :goto_1
    iget-object v7, p0, Lcom/shabakaty/downloader/vi3;->z:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 9
    iget-object v7, p0, Lcom/shabakaty/downloader/vi3;->z:Ljava/util/List;

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
    iget v4, p0, Lcom/shabakaty/downloader/vi3;->t:I

    const/16 v5, 0x20

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_5

    const/4 v4, 0x5

    .line 11
    iget-object v5, p0, Lcom/shabakaty/downloader/vi3;->A:Lcom/shabakaty/downloader/yi3;

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v4

    add-int/2addr v0, v4

    .line 12
    :cond_5
    iget v4, p0, Lcom/shabakaty/downloader/vi3;->t:I

    const/16 v5, 0x80

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_6

    const/4 v4, 0x6

    .line 13
    iget-object v5, p0, Lcom/shabakaty/downloader/vi3;->C:Lcom/shabakaty/downloader/cj3;

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v4

    add-int/2addr v0, v4

    .line 14
    :cond_6
    iget v4, p0, Lcom/shabakaty/downloader/vi3;->t:I

    const/16 v5, 0x100

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_7

    const/4 v4, 0x7

    .line 15
    iget v5, p0, Lcom/shabakaty/downloader/vi3;->D:I

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 16
    :cond_7
    iget v4, p0, Lcom/shabakaty/downloader/vi3;->t:I

    const/16 v5, 0x200

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_8

    .line 17
    iget v4, p0, Lcom/shabakaty/downloader/vi3;->E:I

    invoke-static {v6, v4}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 18
    :cond_8
    iget v4, p0, Lcom/shabakaty/downloader/vi3;->t:I

    const/16 v5, 0x10

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_9

    const/16 v4, 0x9

    .line 19
    iget v5, p0, Lcom/shabakaty/downloader/vi3;->y:I

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 20
    :cond_9
    iget v4, p0, Lcom/shabakaty/downloader/vi3;->t:I

    const/16 v5, 0x40

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_a

    const/16 v4, 0xa

    .line 21
    iget v5, p0, Lcom/shabakaty/downloader/vi3;->B:I

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 22
    :cond_a
    iget v4, p0, Lcom/shabakaty/downloader/vi3;->t:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_b

    const/16 v3, 0xb

    .line 23
    iget v4, p0, Lcom/shabakaty/downloader/vi3;->u:I

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v3

    add-int/2addr v0, v3

    :cond_b
    const/4 v3, 0x0

    .line 24
    :goto_2
    iget-object v4, p0, Lcom/shabakaty/downloader/vi3;->F:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_c

    .line 25
    iget-object v4, p0, Lcom/shabakaty/downloader/vi3;->F:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/shabakaty/downloader/w40;->d(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_c
    add-int/2addr v0, v3

    .line 26
    iget-object v2, p0, Lcom/shabakaty/downloader/vi3;->F:Ljava/util/List;

    .line 27
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    .line 28
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pp1$d;->j()I

    move-result v0

    add-int/2addr v0, v2

    .line 29
    iget-object v1, p0, Lcom/shabakaty/downloader/vi3;->s:Lcom/shabakaty/downloader/ep;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ep;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 30
    iput v1, p0, Lcom/shabakaty/downloader/vi3;->H:I

    return v1
.end method

.method public f(Lcom/shabakaty/downloader/w40;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/vi3;->e()I

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pp1$d;->n()Lcom/shabakaty/downloader/pp1$d$a;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/shabakaty/downloader/vi3;->t:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 4
    iget v1, p0, Lcom/shabakaty/downloader/vi3;->v:I

    invoke-virtual {p1, v3, v1}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 5
    :cond_0
    iget v1, p0, Lcom/shabakaty/downloader/vi3;->t:I

    const/4 v4, 0x4

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1

    .line 6
    iget v1, p0, Lcom/shabakaty/downloader/vi3;->w:I

    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 7
    :cond_1
    iget v1, p0, Lcom/shabakaty/downloader/vi3;->t:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    .line 8
    iget-object v5, p0, Lcom/shabakaty/downloader/vi3;->x:Lcom/shabakaty/downloader/yi3;

    invoke-virtual {p1, v1, v5}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    :cond_2
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 9
    :goto_0
    iget-object v6, p0, Lcom/shabakaty/downloader/vi3;->z:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 10
    iget-object v6, p0, Lcom/shabakaty/downloader/vi3;->z:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/es2;

    invoke-virtual {p1, v4, v6}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 11
    :cond_3
    iget v4, p0, Lcom/shabakaty/downloader/vi3;->t:I

    const/16 v5, 0x20

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_4

    const/4 v4, 0x5

    .line 12
    iget-object v5, p0, Lcom/shabakaty/downloader/vi3;->A:Lcom/shabakaty/downloader/yi3;

    invoke-virtual {p1, v4, v5}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    .line 13
    :cond_4
    iget v4, p0, Lcom/shabakaty/downloader/vi3;->t:I

    const/16 v5, 0x80

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_5

    const/4 v4, 0x6

    .line 14
    iget-object v5, p0, Lcom/shabakaty/downloader/vi3;->C:Lcom/shabakaty/downloader/cj3;

    invoke-virtual {p1, v4, v5}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    .line 15
    :cond_5
    iget v4, p0, Lcom/shabakaty/downloader/vi3;->t:I

    const/16 v5, 0x100

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_6

    const/4 v4, 0x7

    .line 16
    iget v5, p0, Lcom/shabakaty/downloader/vi3;->D:I

    invoke-virtual {p1, v4, v5}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 17
    :cond_6
    iget v4, p0, Lcom/shabakaty/downloader/vi3;->t:I

    const/16 v5, 0x200

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_7

    .line 18
    iget v4, p0, Lcom/shabakaty/downloader/vi3;->E:I

    invoke-virtual {p1, v2, v4}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 19
    :cond_7
    iget v2, p0, Lcom/shabakaty/downloader/vi3;->t:I

    const/16 v4, 0x10

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_8

    const/16 v2, 0x9

    .line 20
    iget v4, p0, Lcom/shabakaty/downloader/vi3;->y:I

    invoke-virtual {p1, v2, v4}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 21
    :cond_8
    iget v2, p0, Lcom/shabakaty/downloader/vi3;->t:I

    const/16 v4, 0x40

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_9

    const/16 v2, 0xa

    .line 22
    iget v4, p0, Lcom/shabakaty/downloader/vi3;->B:I

    invoke-virtual {p1, v2, v4}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 23
    :cond_9
    iget v2, p0, Lcom/shabakaty/downloader/vi3;->t:I

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_a

    const/16 v2, 0xb

    .line 24
    iget v3, p0, Lcom/shabakaty/downloader/vi3;->u:I

    invoke-virtual {p1, v2, v3}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 25
    :cond_a
    :goto_1
    iget-object v2, p0, Lcom/shabakaty/downloader/vi3;->F:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_b

    const/16 v2, 0x1f

    .line 26
    iget-object v3, p0, Lcom/shabakaty/downloader/vi3;->F:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/shabakaty/downloader/w40;->p(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_b
    const/16 v1, 0x4a38

    .line 27
    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/pp1$d$a;->a(ILcom/shabakaty/downloader/w40;)V

    .line 28
    iget-object v0, p0, Lcom/shabakaty/downloader/vi3;->s:Lcom/shabakaty/downloader/ep;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/w40;->u(Lcom/shabakaty/downloader/ep;)V

    return-void
.end method

.method public g()Lcom/shabakaty/downloader/es2$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/vi3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/vi3$b;-><init>()V

    return-object v0
.end method

.method public q()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/vi3;->t:I

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
    iget v0, p0, Lcom/shabakaty/downloader/vi3;->t:I

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
    iget v0, p0, Lcom/shabakaty/downloader/vi3;->t:I

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

    const/16 v0, 0x206

    .line 1
    iput v0, p0, Lcom/shabakaty/downloader/vi3;->u:I

    const/16 v0, 0x806

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/vi3;->v:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/vi3;->w:I

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/yi3;->K:Lcom/shabakaty/downloader/yi3;

    .line 5
    iput-object v1, p0, Lcom/shabakaty/downloader/vi3;->x:Lcom/shabakaty/downloader/yi3;

    .line 6
    iput v0, p0, Lcom/shabakaty/downloader/vi3;->y:I

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/shabakaty/downloader/vi3;->z:Ljava/util/List;

    .line 8
    iput-object v1, p0, Lcom/shabakaty/downloader/vi3;->A:Lcom/shabakaty/downloader/yi3;

    .line 9
    iput v0, p0, Lcom/shabakaty/downloader/vi3;->B:I

    .line 10
    sget-object v1, Lcom/shabakaty/downloader/cj3;->C:Lcom/shabakaty/downloader/cj3;

    .line 11
    iput-object v1, p0, Lcom/shabakaty/downloader/vi3;->C:Lcom/shabakaty/downloader/cj3;

    .line 12
    iput v0, p0, Lcom/shabakaty/downloader/vi3;->D:I

    .line 13
    iput v0, p0, Lcom/shabakaty/downloader/vi3;->E:I

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/vi3;->F:Ljava/util/List;

    return-void
.end method
