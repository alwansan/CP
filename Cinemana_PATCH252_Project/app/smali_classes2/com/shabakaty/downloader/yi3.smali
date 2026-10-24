.class public final Lcom/shabakaty/downloader/yi3;
.super Lcom/shabakaty/downloader/pp1$d;
.source "ProtoBuf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/yi3$c;,
        Lcom/shabakaty/downloader/yi3$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/pp1$d<",
        "Lcom/shabakaty/downloader/yi3;",
        ">;"
    }
.end annotation


# static fields
.field public static final K:Lcom/shabakaty/downloader/yi3;

.field public static L:Lcom/shabakaty/downloader/na3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/na3<",
            "Lcom/shabakaty/downloader/yi3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:Lcom/shabakaty/downloader/yi3;

.field public E:I

.field public F:Lcom/shabakaty/downloader/yi3;

.field public G:I

.field public H:I

.field public I:B

.field public J:I

.field public final s:Lcom/shabakaty/downloader/ep;

.field public t:I

.field public u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/yi3$b;",
            ">;"
        }
    .end annotation
.end field

.field public v:Z

.field public w:I

.field public x:Lcom/shabakaty/downloader/yi3;

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/yi3$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/yi3$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/yi3;->L:Lcom/shabakaty/downloader/na3;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/yi3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/yi3;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/yi3;->K:Lcom/shabakaty/downloader/yi3;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yi3;->v()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1$d;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/shabakaty/downloader/yi3;->I:B

    .line 8
    iput v0, p0, Lcom/shabakaty/downloader/yi3;->J:I

    .line 9
    sget-object v0, Lcom/shabakaty/downloader/ep;->r:Lcom/shabakaty/downloader/ep;

    iput-object v0, p0, Lcom/shabakaty/downloader/yi3;->s:Lcom/shabakaty/downloader/ep;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/pp1$c;Lcom/shabakaty/downloader/md0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/pp1$d;-><init>(Lcom/shabakaty/downloader/pp1$c;)V

    const/4 p2, -0x1

    .line 2
    iput-byte p2, p0, Lcom/shabakaty/downloader/yi3;->I:B

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/yi3;->J:I

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/yi3;->s:Lcom/shabakaty/downloader/ep;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;Lcom/shabakaty/downloader/md0;)V
    .locals 7

    .line 10
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1$d;-><init>()V

    const/4 p3, -0x1

    .line 11
    iput-byte p3, p0, Lcom/shabakaty/downloader/yi3;->I:B

    .line 12
    iput p3, p0, Lcom/shabakaty/downloader/yi3;->J:I

    .line 13
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yi3;->v()V

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
    if-nez v2, :cond_9

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->o()I

    move-result v4

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_0

    .line 17
    invoke-virtual {p0, p1, v1, p2, v4}, Lcom/shabakaty/downloader/pp1$d;->o(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/w40;Lcom/shabakaty/downloader/t81;I)Z

    move-result v4

    goto/16 :goto_2

    .line 18
    :sswitch_0
    iget v4, p0, Lcom/shabakaty/downloader/yi3;->t:I

    or-int/lit16 v4, v4, 0x800

    iput v4, p0, Lcom/shabakaty/downloader/yi3;->t:I

    .line 19
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v4

    .line 20
    iput v4, p0, Lcom/shabakaty/downloader/yi3;->G:I

    goto :goto_0

    .line 21
    :sswitch_1
    iget v4, p0, Lcom/shabakaty/downloader/yi3;->t:I

    const/16 v6, 0x400

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_1

    .line 22
    iget-object v4, p0, Lcom/shabakaty/downloader/yi3;->F:Lcom/shabakaty/downloader/yi3;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {v4}, Lcom/shabakaty/downloader/yi3;->w(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3$c;

    move-result-object v5

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_3

    .line 24
    :cond_1
    :goto_1
    sget-object v4, Lcom/shabakaty/downloader/yi3;->L:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v4, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/yi3;

    iput-object v4, p0, Lcom/shabakaty/downloader/yi3;->F:Lcom/shabakaty/downloader/yi3;

    if-eqz v5, :cond_2

    .line 25
    invoke-virtual {v5, v4}, Lcom/shabakaty/downloader/yi3$c;->o(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3$c;

    .line 26
    invoke-virtual {v5}, Lcom/shabakaty/downloader/yi3$c;->m()Lcom/shabakaty/downloader/yi3;

    move-result-object v4

    iput-object v4, p0, Lcom/shabakaty/downloader/yi3;->F:Lcom/shabakaty/downloader/yi3;

    .line 27
    :cond_2
    iget v4, p0, Lcom/shabakaty/downloader/yi3;->t:I

    or-int/2addr v4, v6

    iput v4, p0, Lcom/shabakaty/downloader/yi3;->t:I

    goto :goto_0

    .line 28
    :sswitch_2
    iget v4, p0, Lcom/shabakaty/downloader/yi3;->t:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/shabakaty/downloader/yi3;->t:I

    .line 29
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v4

    .line 30
    iput v4, p0, Lcom/shabakaty/downloader/yi3;->C:I

    goto :goto_0

    .line 31
    :sswitch_3
    iget v4, p0, Lcom/shabakaty/downloader/yi3;->t:I

    or-int/lit16 v4, v4, 0x200

    iput v4, p0, Lcom/shabakaty/downloader/yi3;->t:I

    .line 32
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v4

    .line 33
    iput v4, p0, Lcom/shabakaty/downloader/yi3;->E:I

    goto :goto_0

    .line 34
    :sswitch_4
    iget v4, p0, Lcom/shabakaty/downloader/yi3;->t:I

    const/16 v6, 0x100

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_3

    .line 35
    iget-object v4, p0, Lcom/shabakaty/downloader/yi3;->D:Lcom/shabakaty/downloader/yi3;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {v4}, Lcom/shabakaty/downloader/yi3;->w(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3$c;

    move-result-object v5

    .line 37
    :cond_3
    sget-object v4, Lcom/shabakaty/downloader/yi3;->L:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v4, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/yi3;

    iput-object v4, p0, Lcom/shabakaty/downloader/yi3;->D:Lcom/shabakaty/downloader/yi3;

    if-eqz v5, :cond_4

    .line 38
    invoke-virtual {v5, v4}, Lcom/shabakaty/downloader/yi3$c;->o(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3$c;

    .line 39
    invoke-virtual {v5}, Lcom/shabakaty/downloader/yi3$c;->m()Lcom/shabakaty/downloader/yi3;

    move-result-object v4

    iput-object v4, p0, Lcom/shabakaty/downloader/yi3;->D:Lcom/shabakaty/downloader/yi3;

    .line 40
    :cond_4
    iget v4, p0, Lcom/shabakaty/downloader/yi3;->t:I

    or-int/2addr v4, v6

    iput v4, p0, Lcom/shabakaty/downloader/yi3;->t:I

    goto/16 :goto_0

    .line 41
    :sswitch_5
    iget v4, p0, Lcom/shabakaty/downloader/yi3;->t:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/shabakaty/downloader/yi3;->t:I

    .line 42
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v4

    .line 43
    iput v4, p0, Lcom/shabakaty/downloader/yi3;->B:I

    goto/16 :goto_0

    .line 44
    :sswitch_6
    iget v4, p0, Lcom/shabakaty/downloader/yi3;->t:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/shabakaty/downloader/yi3;->t:I

    .line 45
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v4

    .line 46
    iput v4, p0, Lcom/shabakaty/downloader/yi3;->y:I

    goto/16 :goto_0

    .line 47
    :sswitch_7
    iget v4, p0, Lcom/shabakaty/downloader/yi3;->t:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/shabakaty/downloader/yi3;->t:I

    .line 48
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v4

    .line 49
    iput v4, p0, Lcom/shabakaty/downloader/yi3;->A:I

    goto/16 :goto_0

    .line 50
    :sswitch_8
    iget v4, p0, Lcom/shabakaty/downloader/yi3;->t:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/shabakaty/downloader/yi3;->t:I

    .line 51
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v4

    .line 52
    iput v4, p0, Lcom/shabakaty/downloader/yi3;->z:I

    goto/16 :goto_0

    .line 53
    :sswitch_9
    iget v4, p0, Lcom/shabakaty/downloader/yi3;->t:I

    const/4 v6, 0x4

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_5

    .line 54
    iget-object v4, p0, Lcom/shabakaty/downloader/yi3;->x:Lcom/shabakaty/downloader/yi3;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {v4}, Lcom/shabakaty/downloader/yi3;->w(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3$c;

    move-result-object v5

    .line 56
    :cond_5
    sget-object v4, Lcom/shabakaty/downloader/yi3;->L:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v4, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/yi3;

    iput-object v4, p0, Lcom/shabakaty/downloader/yi3;->x:Lcom/shabakaty/downloader/yi3;

    if-eqz v5, :cond_6

    .line 57
    invoke-virtual {v5, v4}, Lcom/shabakaty/downloader/yi3$c;->o(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3$c;

    .line 58
    invoke-virtual {v5}, Lcom/shabakaty/downloader/yi3$c;->m()Lcom/shabakaty/downloader/yi3;

    move-result-object v4

    iput-object v4, p0, Lcom/shabakaty/downloader/yi3;->x:Lcom/shabakaty/downloader/yi3;

    .line 59
    :cond_6
    iget v4, p0, Lcom/shabakaty/downloader/yi3;->t:I

    or-int/2addr v4, v6

    iput v4, p0, Lcom/shabakaty/downloader/yi3;->t:I

    goto/16 :goto_0

    .line 60
    :sswitch_a
    iget v4, p0, Lcom/shabakaty/downloader/yi3;->t:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/shabakaty/downloader/yi3;->t:I

    .line 61
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v4

    .line 62
    iput v4, p0, Lcom/shabakaty/downloader/yi3;->w:I

    goto/16 :goto_0

    .line 63
    :sswitch_b
    iget v4, p0, Lcom/shabakaty/downloader/yi3;->t:I

    or-int/2addr v4, v0

    iput v4, p0, Lcom/shabakaty/downloader/yi3;->t:I

    .line 64
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->e()Z

    move-result v4

    iput-boolean v4, p0, Lcom/shabakaty/downloader/yi3;->v:Z

    goto/16 :goto_0

    :sswitch_c
    and-int/lit8 v4, v3, 0x1

    if-eq v4, v0, :cond_7

    .line 65
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/shabakaty/downloader/yi3;->u:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    .line 66
    :cond_7
    iget-object v4, p0, Lcom/shabakaty/downloader/yi3;->u:Ljava/util/List;

    sget-object v5, Lcom/shabakaty/downloader/yi3$b;->z:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v5, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 67
    :sswitch_d
    iget v4, p0, Lcom/shabakaty/downloader/yi3;->t:I

    or-int/lit16 v4, v4, 0x1000

    iput v4, p0, Lcom/shabakaty/downloader/yi3;->t:I

    .line 68
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v4

    .line 69
    iput v4, p0, Lcom/shabakaty/downloader/yi3;->H:I
    :try_end_0
    .catch Lcom/shabakaty/downloader/s32; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_2
    if-nez v4, :cond_0

    :sswitch_e
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 70
    :goto_3
    :try_start_1
    new-instance p2, Lcom/shabakaty/downloader/s32;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/s32;-><init>(Ljava/lang/String;)V

    .line 71
    iput-object p0, p2, Lcom/shabakaty/downloader/s32;->r:Lcom/shabakaty/downloader/es2;

    .line 72
    throw p2

    :catch_1
    move-exception p1

    .line 73
    iput-object p0, p1, Lcom/shabakaty/downloader/s32;->r:Lcom/shabakaty/downloader/es2;

    .line 74
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit8 p2, v3, 0x1

    if-ne p2, v0, :cond_8

    .line 75
    iget-object p2, p0, Lcom/shabakaty/downloader/yi3;->u:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/yi3;->u:Ljava/util/List;

    .line 76
    :cond_8
    :try_start_2
    invoke-virtual {v1}, Lcom/shabakaty/downloader/w40;->j()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    .line 77
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/yi3;->s:Lcom/shabakaty/downloader/ep;

    throw p1

    :catch_2
    :goto_5
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/yi3;->s:Lcom/shabakaty/downloader/ep;

    .line 78
    iget-object p2, p0, Lcom/shabakaty/downloader/pp1$d;->r:Lcom/shabakaty/downloader/ua1;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ua1;->i()V

    .line 79
    throw p1

    :cond_9
    and-int/lit8 p1, v3, 0x1

    if-ne p1, v0, :cond_a

    .line 80
    iget-object p1, p0, Lcom/shabakaty/downloader/yi3;->u:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/yi3;->u:Ljava/util/List;

    .line 81
    :cond_a
    :try_start_3
    invoke-virtual {v1}, Lcom/shabakaty/downloader/w40;->j()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p1

    .line 82
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/yi3;->s:Lcom/shabakaty/downloader/ep;

    throw p1

    :catch_3
    :goto_6
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/yi3;->s:Lcom/shabakaty/downloader/ep;

    .line 83
    iget-object p1, p0, Lcom/shabakaty/downloader/pp1$d;->r:Lcom/shabakaty/downloader/ua1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ua1;->i()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_d
        0x12 -> :sswitch_c
        0x18 -> :sswitch_b
        0x20 -> :sswitch_a
        0x2a -> :sswitch_9
        0x30 -> :sswitch_8
        0x38 -> :sswitch_7
        0x40 -> :sswitch_6
        0x48 -> :sswitch_5
        0x52 -> :sswitch_4
        0x58 -> :sswitch_3
        0x60 -> :sswitch_2
        0x6a -> :sswitch_1
        0x70 -> :sswitch_0
    .end sparse-switch
.end method

.method public static w(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/yi3$c;

    invoke-direct {v0}, Lcom/shabakaty/downloader/yi3$c;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/yi3$c;->o(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3$c;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .line 1
    iget-byte v0, p0, Lcom/shabakaty/downloader/yi3;->I:B

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
    iget-object v3, p0, Lcom/shabakaty/downloader/yi3;->u:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 3
    iget-object v3, p0, Lcom/shabakaty/downloader/yi3;->u:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/yi3$b;

    .line 4
    invoke-virtual {v3}, Lcom/shabakaty/downloader/yi3$b;->a()Z

    move-result v3

    if-nez v3, :cond_2

    .line 5
    iput-byte v2, p0, Lcom/shabakaty/downloader/yi3;->I:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yi3;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/yi3;->x:Lcom/shabakaty/downloader/yi3;

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yi3;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 9
    iput-byte v2, p0, Lcom/shabakaty/downloader/yi3;->I:B

    return v2

    .line 10
    :cond_4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yi3;->t()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/yi3;->D:Lcom/shabakaty/downloader/yi3;

    .line 12
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yi3;->a()Z

    move-result v0

    if-nez v0, :cond_5

    .line 13
    iput-byte v2, p0, Lcom/shabakaty/downloader/yi3;->I:B

    return v2

    .line 14
    :cond_5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yi3;->q()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    iget-object v0, p0, Lcom/shabakaty/downloader/yi3;->F:Lcom/shabakaty/downloader/yi3;

    .line 16
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yi3;->a()Z

    move-result v0

    if-nez v0, :cond_6

    .line 17
    iput-byte v2, p0, Lcom/shabakaty/downloader/yi3;->I:B

    return v2

    .line 18
    :cond_6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pp1$d;->i()Z

    move-result v0

    if-nez v0, :cond_7

    .line 19
    iput-byte v2, p0, Lcom/shabakaty/downloader/yi3;->I:B

    return v2

    .line 20
    :cond_7
    iput-byte v1, p0, Lcom/shabakaty/downloader/yi3;->I:B

    return v1
.end method

.method public b()Lcom/shabakaty/downloader/es2;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/yi3;->K:Lcom/shabakaty/downloader/yi3;

    return-object v0
.end method

.method public bridge synthetic c()Lcom/shabakaty/downloader/es2$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yi3;->x()Lcom/shabakaty/downloader/yi3$c;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/yi3;->J:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/yi3;->t:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/yi3;->H:I

    invoke-static {v2, v0}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v0

    add-int/2addr v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/yi3;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x2

    if-ge v3, v1, :cond_2

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/yi3;->u:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/es2;

    invoke-static {v4, v1}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_2
    iget v1, p0, Lcom/shabakaty/downloader/yi3;->t:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 7
    invoke-static {v1}, Lcom/shabakaty/downloader/w40;->i(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 8
    :cond_3
    iget v1, p0, Lcom/shabakaty/downloader/yi3;->t:I

    and-int/2addr v1, v4

    const/4 v2, 0x4

    if-ne v1, v4, :cond_4

    .line 9
    iget v1, p0, Lcom/shabakaty/downloader/yi3;->w:I

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_4
    iget v1, p0, Lcom/shabakaty/downloader/yi3;->t:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    .line 11
    iget-object v2, p0, Lcom/shabakaty/downloader/yi3;->x:Lcom/shabakaty/downloader/yi3;

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_5
    iget v1, p0, Lcom/shabakaty/downloader/yi3;->t:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    .line 13
    iget v2, p0, Lcom/shabakaty/downloader/yi3;->z:I

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_6
    iget v1, p0, Lcom/shabakaty/downloader/yi3;->t:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    .line 15
    iget v2, p0, Lcom/shabakaty/downloader/yi3;->A:I

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_7
    iget v1, p0, Lcom/shabakaty/downloader/yi3;->t:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    .line 17
    iget v1, p0, Lcom/shabakaty/downloader/yi3;->y:I

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_8
    iget v1, p0, Lcom/shabakaty/downloader/yi3;->t:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    const/16 v1, 0x9

    .line 19
    iget v2, p0, Lcom/shabakaty/downloader/yi3;->B:I

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_9
    iget v1, p0, Lcom/shabakaty/downloader/yi3;->t:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    const/16 v1, 0xa

    .line 21
    iget-object v2, p0, Lcom/shabakaty/downloader/yi3;->D:Lcom/shabakaty/downloader/yi3;

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_a
    iget v1, p0, Lcom/shabakaty/downloader/yi3;->t:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    const/16 v1, 0xb

    .line 23
    iget v2, p0, Lcom/shabakaty/downloader/yi3;->E:I

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    :cond_b
    iget v1, p0, Lcom/shabakaty/downloader/yi3;->t:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c

    const/16 v1, 0xc

    .line 25
    iget v2, p0, Lcom/shabakaty/downloader/yi3;->C:I

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_c
    iget v1, p0, Lcom/shabakaty/downloader/yi3;->t:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d

    const/16 v1, 0xd

    .line 27
    iget-object v2, p0, Lcom/shabakaty/downloader/yi3;->F:Lcom/shabakaty/downloader/yi3;

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    :cond_d
    iget v1, p0, Lcom/shabakaty/downloader/yi3;->t:I

    const/16 v2, 0x800

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_e

    const/16 v1, 0xe

    .line 29
    iget v2, p0, Lcom/shabakaty/downloader/yi3;->G:I

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    :cond_e
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pp1$d;->j()I

    move-result v1

    add-int/2addr v1, v0

    .line 31
    iget-object v0, p0, Lcom/shabakaty/downloader/yi3;->s:Lcom/shabakaty/downloader/ep;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ep;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 32
    iput v0, p0, Lcom/shabakaty/downloader/yi3;->J:I

    return v0
.end method

.method public f(Lcom/shabakaty/downloader/w40;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yi3;->e()I

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/pp1$d;->n()Lcom/shabakaty/downloader/pp1$d$a;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/shabakaty/downloader/yi3;->t:I

    const/16 v2, 0x1000

    and-int/2addr v1, v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 4
    iget v1, p0, Lcom/shabakaty/downloader/yi3;->H:I

    invoke-virtual {p1, v3, v1}, Lcom/shabakaty/downloader/w40;->p(II)V

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/yi3;->u:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x2

    if-ge v1, v2, :cond_1

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/yi3;->u:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/es2;

    invoke-virtual {p1, v4, v2}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget v1, p0, Lcom/shabakaty/downloader/yi3;->t:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 8
    iget-boolean v1, p0, Lcom/shabakaty/downloader/yi3;->v:Z

    const/16 v2, 0x18

    .line 9
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/w40;->y(I)V

    .line 10
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/w40;->t(I)V

    .line 11
    :cond_2
    iget v1, p0, Lcom/shabakaty/downloader/yi3;->t:I

    and-int/2addr v1, v4

    const/4 v2, 0x4

    if-ne v1, v4, :cond_3

    .line 12
    iget v1, p0, Lcom/shabakaty/downloader/yi3;->w:I

    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 13
    :cond_3
    iget v1, p0, Lcom/shabakaty/downloader/yi3;->t:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x5

    .line 14
    iget-object v2, p0, Lcom/shabakaty/downloader/yi3;->x:Lcom/shabakaty/downloader/yi3;

    invoke-virtual {p1, v1, v2}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    .line 15
    :cond_4
    iget v1, p0, Lcom/shabakaty/downloader/yi3;->t:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x6

    .line 16
    iget v2, p0, Lcom/shabakaty/downloader/yi3;->z:I

    invoke-virtual {p1, v1, v2}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 17
    :cond_5
    iget v1, p0, Lcom/shabakaty/downloader/yi3;->t:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x7

    .line 18
    iget v2, p0, Lcom/shabakaty/downloader/yi3;->A:I

    invoke-virtual {p1, v1, v2}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 19
    :cond_6
    iget v1, p0, Lcom/shabakaty/downloader/yi3;->t:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    .line 20
    iget v1, p0, Lcom/shabakaty/downloader/yi3;->y:I

    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 21
    :cond_7
    iget v1, p0, Lcom/shabakaty/downloader/yi3;->t:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    const/16 v1, 0x9

    .line 22
    iget v2, p0, Lcom/shabakaty/downloader/yi3;->B:I

    invoke-virtual {p1, v1, v2}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 23
    :cond_8
    iget v1, p0, Lcom/shabakaty/downloader/yi3;->t:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    const/16 v1, 0xa

    .line 24
    iget-object v2, p0, Lcom/shabakaty/downloader/yi3;->D:Lcom/shabakaty/downloader/yi3;

    invoke-virtual {p1, v1, v2}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    .line 25
    :cond_9
    iget v1, p0, Lcom/shabakaty/downloader/yi3;->t:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    const/16 v1, 0xb

    .line 26
    iget v2, p0, Lcom/shabakaty/downloader/yi3;->E:I

    invoke-virtual {p1, v1, v2}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 27
    :cond_a
    iget v1, p0, Lcom/shabakaty/downloader/yi3;->t:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    const/16 v1, 0xc

    .line 28
    iget v2, p0, Lcom/shabakaty/downloader/yi3;->C:I

    invoke-virtual {p1, v1, v2}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 29
    :cond_b
    iget v1, p0, Lcom/shabakaty/downloader/yi3;->t:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c

    const/16 v1, 0xd

    .line 30
    iget-object v2, p0, Lcom/shabakaty/downloader/yi3;->F:Lcom/shabakaty/downloader/yi3;

    invoke-virtual {p1, v1, v2}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    .line 31
    :cond_c
    iget v1, p0, Lcom/shabakaty/downloader/yi3;->t:I

    const/16 v2, 0x800

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d

    const/16 v1, 0xe

    .line 32
    iget v2, p0, Lcom/shabakaty/downloader/yi3;->G:I

    invoke-virtual {p1, v1, v2}, Lcom/shabakaty/downloader/w40;->p(II)V

    :cond_d
    const/16 v1, 0xc8

    .line 33
    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/pp1$d$a;->a(ILcom/shabakaty/downloader/w40;)V

    .line 34
    iget-object v0, p0, Lcom/shabakaty/downloader/yi3;->s:Lcom/shabakaty/downloader/ep;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/w40;->u(Lcom/shabakaty/downloader/ep;)V

    return-void
.end method

.method public g()Lcom/shabakaty/downloader/es2$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/yi3$c;

    invoke-direct {v0}, Lcom/shabakaty/downloader/yi3$c;-><init>()V

    return-object v0
.end method

.method public q()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/yi3;->t:I

    const/16 v1, 0x400

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
    iget v0, p0, Lcom/shabakaty/downloader/yi3;->t:I

    const/16 v1, 0x10

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
    iget v0, p0, Lcom/shabakaty/downloader/yi3;->t:I

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

.method public t()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/yi3;->t:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public u()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/yi3;->t:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final v()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/yi3;->u:Ljava/util/List;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/yi3;->v:Z

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/yi3;->w:I

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/yi3;->K:Lcom/shabakaty/downloader/yi3;

    .line 5
    iput-object v1, p0, Lcom/shabakaty/downloader/yi3;->x:Lcom/shabakaty/downloader/yi3;

    .line 6
    iput v0, p0, Lcom/shabakaty/downloader/yi3;->y:I

    .line 7
    iput v0, p0, Lcom/shabakaty/downloader/yi3;->z:I

    .line 8
    iput v0, p0, Lcom/shabakaty/downloader/yi3;->A:I

    .line 9
    iput v0, p0, Lcom/shabakaty/downloader/yi3;->B:I

    .line 10
    iput v0, p0, Lcom/shabakaty/downloader/yi3;->C:I

    .line 11
    iput-object v1, p0, Lcom/shabakaty/downloader/yi3;->D:Lcom/shabakaty/downloader/yi3;

    .line 12
    iput v0, p0, Lcom/shabakaty/downloader/yi3;->E:I

    .line 13
    iput-object v1, p0, Lcom/shabakaty/downloader/yi3;->F:Lcom/shabakaty/downloader/yi3;

    .line 14
    iput v0, p0, Lcom/shabakaty/downloader/yi3;->G:I

    .line 15
    iput v0, p0, Lcom/shabakaty/downloader/yi3;->H:I

    return-void
.end method

.method public x()Lcom/shabakaty/downloader/yi3$c;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/yi3;->w(Lcom/shabakaty/downloader/yi3;)Lcom/shabakaty/downloader/yi3$c;

    move-result-object v0

    return-object v0
.end method
