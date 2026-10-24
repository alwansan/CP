.class public final Lcom/shabakaty/downloader/ii3$b$c;
.super Lcom/shabakaty/downloader/pp1;
.source "ProtoBuf.java"

# interfaces
.implements Lcom/shabakaty/downloader/fs2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ii3$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ii3$b$c$b;,
        Lcom/shabakaty/downloader/ii3$b$c$c;
    }
.end annotation


# static fields
.field public static final G:Lcom/shabakaty/downloader/ii3$b$c;

.field public static H:Lcom/shabakaty/downloader/na3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/na3<",
            "Lcom/shabakaty/downloader/ii3$b$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Lcom/shabakaty/downloader/ii3;

.field public B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ii3$b$c;",
            ">;"
        }
    .end annotation
.end field

.field public C:I

.field public D:I

.field public E:B

.field public F:I

.field public final r:Lcom/shabakaty/downloader/ep;

.field public s:I

.field public t:Lcom/shabakaty/downloader/ii3$b$c$c;

.field public u:J

.field public v:F

.field public w:D

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ii3$b$c$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ii3$b$c$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ii3$b$c;->H:Lcom/shabakaty/downloader/na3;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ii3$b$c;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ii3$b$c;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ii3$b$c;->G:Lcom/shabakaty/downloader/ii3$b$c;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ii3$b$c;->i()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/shabakaty/downloader/ii3$b$c;->E:B

    .line 8
    iput v0, p0, Lcom/shabakaty/downloader/ii3$b$c;->F:I

    .line 9
    sget-object v0, Lcom/shabakaty/downloader/ep;->r:Lcom/shabakaty/downloader/ep;

    iput-object v0, p0, Lcom/shabakaty/downloader/ii3$b$c;->r:Lcom/shabakaty/downloader/ep;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/pp1$b;Lcom/shabakaty/downloader/md0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/pp1;-><init>(Lcom/shabakaty/downloader/pp1$b;)V

    const/4 p2, -0x1

    .line 2
    iput-byte p2, p0, Lcom/shabakaty/downloader/ii3$b$c;->E:B

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/ii3$b$c;->F:I

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/ii3$b$c;->r:Lcom/shabakaty/downloader/ep;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;Lcom/shabakaty/downloader/md0;)V
    .locals 11

    .line 10
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1;-><init>()V

    const/4 p3, -0x1

    .line 11
    iput-byte p3, p0, Lcom/shabakaty/downloader/ii3$b$c;->E:B

    .line 12
    iput p3, p0, Lcom/shabakaty/downloader/ii3$b$c;->F:I

    .line 13
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ii3$b$c;->i()V

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

    if-nez v2, :cond_6

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->o()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_1

    .line 17
    :sswitch_0
    iget v5, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    or-int/2addr v5, v4

    iput v5, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    .line 18
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v5

    .line 19
    iput v5, p0, Lcom/shabakaty/downloader/ii3$b$c;->C:I

    goto :goto_0

    .line 20
    :sswitch_1
    iget v5, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    or-int/lit16 v5, v5, 0x200

    iput v5, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    .line 21
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v5

    .line 22
    iput v5, p0, Lcom/shabakaty/downloader/ii3$b$c;->D:I

    goto :goto_0

    :sswitch_2
    and-int/lit16 v5, v3, 0x100

    if-eq v5, v4, :cond_1

    .line 23
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/shabakaty/downloader/ii3$b$c;->B:Ljava/util/List;

    or-int/lit16 v3, v3, 0x100

    .line 24
    :cond_1
    iget-object v5, p0, Lcom/shabakaty/downloader/ii3$b$c;->B:Ljava/util/List;

    sget-object v6, Lcom/shabakaty/downloader/ii3$b$c;->H:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v6, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_3
    const/4 v5, 0x0

    .line 25
    iget v6, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    const/16 v7, 0x80

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_2

    .line 26
    iget-object v5, p0, Lcom/shabakaty/downloader/ii3$b$c;->A:Lcom/shabakaty/downloader/ii3;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v6, Lcom/shabakaty/downloader/ii3$c;

    invoke-direct {v6}, Lcom/shabakaty/downloader/ii3$c;-><init>()V

    .line 28
    invoke-virtual {v6, v5}, Lcom/shabakaty/downloader/ii3$c;->n(Lcom/shabakaty/downloader/ii3;)Lcom/shabakaty/downloader/ii3$c;

    move-object v5, v6

    .line 29
    :cond_2
    sget-object v6, Lcom/shabakaty/downloader/ii3;->y:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v6, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/ii3;

    iput-object v6, p0, Lcom/shabakaty/downloader/ii3$b$c;->A:Lcom/shabakaty/downloader/ii3;

    if-eqz v5, :cond_3

    .line 30
    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/ii3$c;->n(Lcom/shabakaty/downloader/ii3;)Lcom/shabakaty/downloader/ii3$c;

    .line 31
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ii3$c;->l()Lcom/shabakaty/downloader/ii3;

    move-result-object v5

    iput-object v5, p0, Lcom/shabakaty/downloader/ii3$b$c;->A:Lcom/shabakaty/downloader/ii3;

    .line 32
    :cond_3
    iget v5, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    or-int/2addr v5, v7

    iput v5, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    goto :goto_0

    .line 33
    :sswitch_4
    iget v5, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    .line 34
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v5

    .line 35
    iput v5, p0, Lcom/shabakaty/downloader/ii3$b$c;->z:I

    goto :goto_0

    .line 36
    :sswitch_5
    iget v5, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    .line 37
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v5

    .line 38
    iput v5, p0, Lcom/shabakaty/downloader/ii3$b$c;->y:I

    goto/16 :goto_0

    .line 39
    :sswitch_6
    iget v5, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    .line 40
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v5

    .line 41
    iput v5, p0, Lcom/shabakaty/downloader/ii3$b$c;->x:I

    goto/16 :goto_0

    .line 42
    :sswitch_7
    iget v5, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    .line 43
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->k()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    .line 44
    iput-wide v5, p0, Lcom/shabakaty/downloader/ii3$b$c;->w:D

    goto/16 :goto_0

    .line 45
    :sswitch_8
    iget v5, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    .line 46
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->j()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    .line 47
    iput v5, p0, Lcom/shabakaty/downloader/ii3$b$c;->v:F

    goto/16 :goto_0

    .line 48
    :sswitch_9
    iget v5, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    .line 49
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->m()J

    move-result-wide v5

    ushr-long v7, v5, v0

    const-wide/16 v9, 0x1

    and-long/2addr v5, v9

    neg-long v5, v5

    xor-long/2addr v5, v7

    .line 50
    iput-wide v5, p0, Lcom/shabakaty/downloader/ii3$b$c;->u:J

    goto/16 :goto_0

    .line 51
    :sswitch_a
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v6

    .line 52
    invoke-static {v6}, Lcom/shabakaty/downloader/ii3$b$c$c;->f(I)Lcom/shabakaty/downloader/ii3$b$c$c;

    move-result-object v7

    if-nez v7, :cond_4

    .line 53
    invoke-virtual {v1, v5}, Lcom/shabakaty/downloader/w40;->y(I)V

    .line 54
    invoke-virtual {v1, v6}, Lcom/shabakaty/downloader/w40;->y(I)V

    goto/16 :goto_0

    .line 55
    :cond_4
    iget v5, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    or-int/2addr v5, v0

    iput v5, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    .line 56
    iput-object v7, p0, Lcom/shabakaty/downloader/ii3$b$c;->t:Lcom/shabakaty/downloader/ii3$b$c$c;

    goto/16 :goto_0

    .line 57
    :goto_1
    invoke-virtual {p1, v5, v1}, Lcom/shabakaty/downloader/u40;->r(ILcom/shabakaty/downloader/w40;)Z

    move-result v4
    :try_end_0
    .catch Lcom/shabakaty/downloader/s32; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    :sswitch_b
    const/4 v2, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 58
    :try_start_1
    new-instance p2, Lcom/shabakaty/downloader/s32;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/s32;-><init>(Ljava/lang/String;)V

    .line 59
    iput-object p0, p2, Lcom/shabakaty/downloader/s32;->r:Lcom/shabakaty/downloader/es2;

    .line 60
    throw p2

    :catch_1
    move-exception p1

    .line 61
    iput-object p0, p1, Lcom/shabakaty/downloader/s32;->r:Lcom/shabakaty/downloader/es2;

    .line 62
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit16 p2, v3, 0x100

    if-ne p2, v4, :cond_5

    .line 63
    iget-object p2, p0, Lcom/shabakaty/downloader/ii3$b$c;->B:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/ii3$b$c;->B:Ljava/util/List;

    .line 64
    :cond_5
    :try_start_2
    invoke-virtual {v1}, Lcom/shabakaty/downloader/w40;->j()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 65
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/ii3$b$c;->r:Lcom/shabakaty/downloader/ep;

    throw p1

    :catch_2
    :goto_3
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/ii3$b$c;->r:Lcom/shabakaty/downloader/ep;

    .line 66
    throw p1

    :cond_6
    and-int/lit16 p1, v3, 0x100

    if-ne p1, v4, :cond_7

    .line 67
    iget-object p1, p0, Lcom/shabakaty/downloader/ii3$b$c;->B:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ii3$b$c;->B:Ljava/util/List;

    .line 68
    :cond_7
    :try_start_3
    invoke-virtual {v1}, Lcom/shabakaty/downloader/w40;->j()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    .line 69
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/ii3$b$c;->r:Lcom/shabakaty/downloader/ep;

    throw p1

    :catch_3
    :goto_4
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ii3$b$c;->r:Lcom/shabakaty/downloader/ep;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0x8 -> :sswitch_a
        0x10 -> :sswitch_9
        0x1d -> :sswitch_8
        0x21 -> :sswitch_7
        0x28 -> :sswitch_6
        0x30 -> :sswitch_5
        0x38 -> :sswitch_4
        0x42 -> :sswitch_3
        0x4a -> :sswitch_2
        0x50 -> :sswitch_1
        0x58 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .line 1
    iget-byte v0, p0, Lcom/shabakaty/downloader/ii3$b$c;->E:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 2
    :cond_1
    iget v0, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    const/16 v3, 0x80

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ii3$b$c;->A:Lcom/shabakaty/downloader/ii3;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ii3;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    iput-byte v2, p0, Lcom/shabakaty/downloader/ii3$b$c;->E:B

    return v2

    :cond_3
    const/4 v0, 0x0

    .line 6
    :goto_1
    iget-object v3, p0, Lcom/shabakaty/downloader/ii3$b$c;->B:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 7
    iget-object v3, p0, Lcom/shabakaty/downloader/ii3$b$c;->B:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/ii3$b$c;

    .line 8
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ii3$b$c;->a()Z

    move-result v3

    if-nez v3, :cond_4

    .line 9
    iput-byte v2, p0, Lcom/shabakaty/downloader/ii3$b$c;->E:B

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10
    :cond_5
    iput-byte v1, p0, Lcom/shabakaty/downloader/ii3$b$c;->E:B

    return v1
.end method

.method public c()Lcom/shabakaty/downloader/es2$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ii3$b$c$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ii3$b$c$b;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/ii3$b$c$b;->n(Lcom/shabakaty/downloader/ii3$b$c;)Lcom/shabakaty/downloader/ii3$b$c$b;

    return-object v0
.end method

.method public e()I
    .locals 9

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ii3$b$c;->F:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ii3$b$c;->t:Lcom/shabakaty/downloader/ii3$b$c$c;

    .line 4
    iget v0, v0, Lcom/shabakaty/downloader/ii3$b$c$c;->r:I

    .line 5
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/w40;->b(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget v3, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    .line 7
    iget-wide v5, p0, Lcom/shabakaty/downloader/ii3$b$c;->u:J

    .line 8
    invoke-static {v4}, Lcom/shabakaty/downloader/w40;->i(I)I

    move-result v3

    shl-long v7, v5, v1

    const/16 v1, 0x3f

    shr-long v4, v5, v1

    xor-long/2addr v4, v7

    .line 9
    invoke-static {v4, v5}, Lcom/shabakaty/downloader/w40;->h(J)I

    move-result v1

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 10
    :cond_2
    iget v1, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    .line 11
    invoke-static {v1}, Lcom/shabakaty/downloader/w40;->i(I)I

    move-result v1

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 12
    :cond_3
    iget v1, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_4

    .line 13
    invoke-static {v3}, Lcom/shabakaty/downloader/w40;->i(I)I

    move-result v1

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    .line 14
    :cond_4
    iget v1, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    const/4 v1, 0x5

    .line 15
    iget v3, p0, Lcom/shabakaty/downloader/ii3$b$c;->x:I

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_5
    iget v1, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    const/16 v3, 0x20

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_6

    const/4 v1, 0x6

    .line 17
    iget v3, p0, Lcom/shabakaty/downloader/ii3$b$c;->y:I

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_6
    iget v1, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    const/16 v3, 0x40

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_7

    const/4 v1, 0x7

    .line 19
    iget v3, p0, Lcom/shabakaty/downloader/ii3$b$c;->z:I

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_7
    iget v1, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    const/16 v3, 0x80

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_8

    .line 21
    iget-object v1, p0, Lcom/shabakaty/downloader/ii3$b$c;->A:Lcom/shabakaty/downloader/ii3;

    invoke-static {v4, v1}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/shabakaty/downloader/ii3$b$c;->B:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_9

    const/16 v1, 0x9

    .line 23
    iget-object v3, p0, Lcom/shabakaty/downloader/ii3$b$c;->B:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/es2;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 24
    :cond_9
    iget v1, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    const/16 v1, 0xa

    .line 25
    iget v2, p0, Lcom/shabakaty/downloader/ii3$b$c;->D:I

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_a
    iget v1, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    const/16 v1, 0xb

    .line 27
    iget v2, p0, Lcom/shabakaty/downloader/ii3$b$c;->C:I

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    :cond_b
    iget-object v1, p0, Lcom/shabakaty/downloader/ii3$b$c;->r:Lcom/shabakaty/downloader/ep;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ep;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 29
    iput v1, p0, Lcom/shabakaty/downloader/ii3$b$c;->F:I

    return v1
.end method

.method public f(Lcom/shabakaty/downloader/w40;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ii3$b$c;->e()I

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ii3$b$c;->t:Lcom/shabakaty/downloader/ii3$b$c$c;

    .line 4
    iget v0, v0, Lcom/shabakaty/downloader/ii3$b$c$c;->r:I

    .line 5
    invoke-virtual {p1, v1, v0}, Lcom/shabakaty/downloader/w40;->n(II)V

    .line 6
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    const/4 v2, 0x2

    and-int/2addr v0, v2

    const/16 v3, 0x10

    if-ne v0, v2, :cond_1

    .line 7
    iget-wide v4, p0, Lcom/shabakaty/downloader/ii3$b$c;->u:J

    .line 8
    invoke-virtual {p1, v3}, Lcom/shabakaty/downloader/w40;->y(I)V

    shl-long v0, v4, v1

    const/16 v2, 0x3f

    shr-long/2addr v4, v2

    xor-long/2addr v0, v4

    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/w40;->z(J)V

    .line 10
    :cond_1
    iget v0, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 11
    iget v0, p0, Lcom/shabakaty/downloader/ii3$b$c;->v:F

    const/16 v1, 0x1d

    .line 12
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/w40;->y(I)V

    .line 13
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/w40;->w(I)V

    .line 14
    :cond_2
    iget v0, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    .line 15
    iget-wide v4, p0, Lcom/shabakaty/downloader/ii3$b$c;->w:D

    const/16 v0, 0x21

    .line 16
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/w40;->y(I)V

    .line 17
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/shabakaty/downloader/w40;->x(J)V

    .line 18
    :cond_3
    iget v0, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    const/4 v0, 0x5

    .line 19
    iget v2, p0, Lcom/shabakaty/downloader/ii3$b$c;->x:I

    invoke-virtual {p1, v0, v2}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 20
    :cond_4
    iget v0, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    const/16 v2, 0x20

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_5

    const/4 v0, 0x6

    .line 21
    iget v2, p0, Lcom/shabakaty/downloader/ii3$b$c;->y:I

    invoke-virtual {p1, v0, v2}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 22
    :cond_5
    iget v0, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    const/16 v2, 0x40

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_6

    const/4 v0, 0x7

    .line 23
    iget v2, p0, Lcom/shabakaty/downloader/ii3$b$c;->z:I

    invoke-virtual {p1, v0, v2}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 24
    :cond_6
    iget v0, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_7

    .line 25
    iget-object v0, p0, Lcom/shabakaty/downloader/ii3$b$c;->A:Lcom/shabakaty/downloader/ii3;

    invoke-virtual {p1, v1, v0}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    :cond_7
    const/4 v0, 0x0

    .line 26
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/ii3$b$c;->B:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    const/16 v1, 0x9

    .line 27
    iget-object v2, p0, Lcom/shabakaty/downloader/ii3$b$c;->B:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/es2;

    invoke-virtual {p1, v1, v2}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    :cond_8
    iget v0, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/16 v0, 0xa

    .line 29
    iget v1, p0, Lcom/shabakaty/downloader/ii3$b$c;->D:I

    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 30
    :cond_9
    iget v0, p0, Lcom/shabakaty/downloader/ii3$b$c;->s:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/16 v0, 0xb

    .line 31
    iget v1, p0, Lcom/shabakaty/downloader/ii3$b$c;->C:I

    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 32
    :cond_a
    iget-object v0, p0, Lcom/shabakaty/downloader/ii3$b$c;->r:Lcom/shabakaty/downloader/ep;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/w40;->u(Lcom/shabakaty/downloader/ep;)V

    return-void
.end method

.method public g()Lcom/shabakaty/downloader/es2$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ii3$b$c$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ii3$b$c$b;-><init>()V

    return-object v0
.end method

.method public final i()V
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ii3$b$c$c;->s:Lcom/shabakaty/downloader/ii3$b$c$c;

    iput-object v0, p0, Lcom/shabakaty/downloader/ii3$b$c;->t:Lcom/shabakaty/downloader/ii3$b$c$c;

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/shabakaty/downloader/ii3$b$c;->u:J

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/ii3$b$c;->v:F

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/shabakaty/downloader/ii3$b$c;->w:D

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/shabakaty/downloader/ii3$b$c;->x:I

    .line 6
    iput v0, p0, Lcom/shabakaty/downloader/ii3$b$c;->y:I

    .line 7
    iput v0, p0, Lcom/shabakaty/downloader/ii3$b$c;->z:I

    .line 8
    sget-object v1, Lcom/shabakaty/downloader/ii3;->x:Lcom/shabakaty/downloader/ii3;

    .line 9
    iput-object v1, p0, Lcom/shabakaty/downloader/ii3$b$c;->A:Lcom/shabakaty/downloader/ii3;

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/ii3$b$c;->B:Ljava/util/List;

    .line 11
    iput v0, p0, Lcom/shabakaty/downloader/ii3$b$c;->C:I

    .line 12
    iput v0, p0, Lcom/shabakaty/downloader/ii3$b$c;->D:I

    return-void
.end method
