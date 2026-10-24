.class public final Lcom/shabakaty/downloader/a83;
.super Lcom/shabakaty/downloader/k0;
.source "modifierChecks.kt"


# static fields
.field public static final a:Lcom/shabakaty/downloader/a83;

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/mz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    new-instance v0, Lcom/shabakaty/downloader/a83;

    invoke-direct {v0}, Lcom/shabakaty/downloader/a83;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/a83;->a:Lcom/shabakaty/downloader/a83;

    const/16 v0, 0x12

    new-array v0, v0, [Lcom/shabakaty/downloader/mz;

    .line 1
    new-instance v1, Lcom/shabakaty/downloader/mz;

    sget-object v2, Lcom/shabakaty/downloader/b83;->i:Lcom/shabakaty/downloader/hw2;

    const/4 v3, 0x2

    new-array v4, v3, [Lcom/shabakaty/downloader/jz;

    sget-object v5, Lcom/shabakaty/downloader/lr2$b;->b:Lcom/shabakaty/downloader/lr2$b;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v7, Lcom/shabakaty/downloader/qz4$a;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Lcom/shabakaty/downloader/qz4$a;-><init>(I)V

    aput-object v7, v4, v8

    const/4 v7, 0x0

    const/4 v9, 0x4

    invoke-direct {v1, v2, v4, v7, v9}, Lcom/shabakaty/downloader/mz;-><init>(Lcom/shabakaty/downloader/hw2;[Lcom/shabakaty/downloader/jz;Lcom/shabakaty/downloader/tm1;I)V

    aput-object v1, v0, v6

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/mz;

    sget-object v2, Lcom/shabakaty/downloader/b83;->j:Lcom/shabakaty/downloader/hw2;

    new-array v4, v3, [Lcom/shabakaty/downloader/jz;

    aput-object v5, v4, v6

    new-instance v10, Lcom/shabakaty/downloader/qz4$a;

    invoke-direct {v10, v3}, Lcom/shabakaty/downloader/qz4$a;-><init>(I)V

    aput-object v10, v4, v8

    .line 3
    sget-object v10, Lcom/shabakaty/downloader/a83$a;->r:Lcom/shabakaty/downloader/a83$a;

    .line 4
    invoke-direct {v1, v2, v4, v10}, Lcom/shabakaty/downloader/mz;-><init>(Lcom/shabakaty/downloader/hw2;[Lcom/shabakaty/downloader/jz;Lcom/shabakaty/downloader/tm1;)V

    aput-object v1, v0, v8

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/mz;

    sget-object v2, Lcom/shabakaty/downloader/b83;->a:Lcom/shabakaty/downloader/hw2;

    new-array v4, v9, [Lcom/shabakaty/downloader/jz;

    aput-object v5, v4, v6

    sget-object v10, Lcom/shabakaty/downloader/kz2;->a:Lcom/shabakaty/downloader/kz2;

    aput-object v10, v4, v8

    new-instance v11, Lcom/shabakaty/downloader/qz4$a;

    invoke-direct {v11, v3}, Lcom/shabakaty/downloader/qz4$a;-><init>(I)V

    aput-object v11, v4, v3

    sget-object v11, Lcom/shabakaty/downloader/a42;->a:Lcom/shabakaty/downloader/a42;

    const/4 v12, 0x3

    aput-object v11, v4, v12

    invoke-direct {v1, v2, v4, v7, v9}, Lcom/shabakaty/downloader/mz;-><init>(Lcom/shabakaty/downloader/hw2;[Lcom/shabakaty/downloader/jz;Lcom/shabakaty/downloader/tm1;I)V

    aput-object v1, v0, v3

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/mz;

    sget-object v2, Lcom/shabakaty/downloader/b83;->b:Lcom/shabakaty/downloader/hw2;

    new-array v4, v9, [Lcom/shabakaty/downloader/jz;

    aput-object v5, v4, v6

    aput-object v10, v4, v8

    new-instance v13, Lcom/shabakaty/downloader/qz4$a;

    invoke-direct {v13, v12}, Lcom/shabakaty/downloader/qz4$a;-><init>(I)V

    aput-object v13, v4, v3

    aput-object v11, v4, v12

    invoke-direct {v1, v2, v4, v7, v9}, Lcom/shabakaty/downloader/mz;-><init>(Lcom/shabakaty/downloader/hw2;[Lcom/shabakaty/downloader/jz;Lcom/shabakaty/downloader/tm1;I)V

    aput-object v1, v0, v12

    .line 7
    new-instance v1, Lcom/shabakaty/downloader/mz;

    sget-object v2, Lcom/shabakaty/downloader/b83;->c:Lcom/shabakaty/downloader/hw2;

    new-array v4, v9, [Lcom/shabakaty/downloader/jz;

    aput-object v5, v4, v6

    aput-object v10, v4, v8

    new-instance v13, Lcom/shabakaty/downloader/qz4$b;

    invoke-direct {v13, v3}, Lcom/shabakaty/downloader/qz4$b;-><init>(I)V

    aput-object v13, v4, v3

    aput-object v11, v4, v12

    invoke-direct {v1, v2, v4, v7, v9}, Lcom/shabakaty/downloader/mz;-><init>(Lcom/shabakaty/downloader/hw2;[Lcom/shabakaty/downloader/jz;Lcom/shabakaty/downloader/tm1;I)V

    aput-object v1, v0, v9

    .line 8
    new-instance v1, Lcom/shabakaty/downloader/mz;

    sget-object v2, Lcom/shabakaty/downloader/b83;->g:Lcom/shabakaty/downloader/hw2;

    new-array v4, v8, [Lcom/shabakaty/downloader/jz;

    aput-object v5, v4, v6

    invoke-direct {v1, v2, v4, v7, v9}, Lcom/shabakaty/downloader/mz;-><init>(Lcom/shabakaty/downloader/hw2;[Lcom/shabakaty/downloader/jz;Lcom/shabakaty/downloader/tm1;I)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 9
    new-instance v1, Lcom/shabakaty/downloader/mz;

    sget-object v2, Lcom/shabakaty/downloader/b83;->f:Lcom/shabakaty/downloader/hw2;

    new-array v4, v9, [Lcom/shabakaty/downloader/jz;

    aput-object v5, v4, v6

    sget-object v11, Lcom/shabakaty/downloader/qz4$d;->b:Lcom/shabakaty/downloader/qz4$d;

    aput-object v11, v4, v8

    aput-object v10, v4, v3

    sget-object v13, Lcom/shabakaty/downloader/ot3$a;->c:Lcom/shabakaty/downloader/ot3$a;

    aput-object v13, v4, v12

    invoke-direct {v1, v2, v4, v7, v9}, Lcom/shabakaty/downloader/mz;-><init>(Lcom/shabakaty/downloader/hw2;[Lcom/shabakaty/downloader/jz;Lcom/shabakaty/downloader/tm1;I)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 10
    new-instance v1, Lcom/shabakaty/downloader/mz;

    sget-object v2, Lcom/shabakaty/downloader/b83;->h:Lcom/shabakaty/downloader/hw2;

    new-array v4, v3, [Lcom/shabakaty/downloader/jz;

    aput-object v5, v4, v6

    sget-object v14, Lcom/shabakaty/downloader/qz4$c;->b:Lcom/shabakaty/downloader/qz4$c;

    aput-object v14, v4, v8

    invoke-direct {v1, v2, v4, v7, v9}, Lcom/shabakaty/downloader/mz;-><init>(Lcom/shabakaty/downloader/hw2;[Lcom/shabakaty/downloader/jz;Lcom/shabakaty/downloader/tm1;I)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 11
    new-instance v1, Lcom/shabakaty/downloader/mz;

    sget-object v2, Lcom/shabakaty/downloader/b83;->k:Lcom/shabakaty/downloader/hw2;

    new-array v4, v3, [Lcom/shabakaty/downloader/jz;

    aput-object v5, v4, v6

    aput-object v14, v4, v8

    invoke-direct {v1, v2, v4, v7, v9}, Lcom/shabakaty/downloader/mz;-><init>(Lcom/shabakaty/downloader/hw2;[Lcom/shabakaty/downloader/jz;Lcom/shabakaty/downloader/tm1;I)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 12
    new-instance v1, Lcom/shabakaty/downloader/mz;

    sget-object v2, Lcom/shabakaty/downloader/b83;->l:Lcom/shabakaty/downloader/hw2;

    new-array v4, v12, [Lcom/shabakaty/downloader/jz;

    aput-object v5, v4, v6

    aput-object v14, v4, v8

    aput-object v13, v4, v3

    invoke-direct {v1, v2, v4, v7, v9}, Lcom/shabakaty/downloader/mz;-><init>(Lcom/shabakaty/downloader/hw2;[Lcom/shabakaty/downloader/jz;Lcom/shabakaty/downloader/tm1;I)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 13
    new-instance v1, Lcom/shabakaty/downloader/mz;

    sget-object v2, Lcom/shabakaty/downloader/b83;->p:Lcom/shabakaty/downloader/hw2;

    new-array v4, v12, [Lcom/shabakaty/downloader/jz;

    aput-object v5, v4, v6

    aput-object v11, v4, v8

    aput-object v10, v4, v3

    invoke-direct {v1, v2, v4, v7, v9}, Lcom/shabakaty/downloader/mz;-><init>(Lcom/shabakaty/downloader/hw2;[Lcom/shabakaty/downloader/jz;Lcom/shabakaty/downloader/tm1;I)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 14
    new-instance v1, Lcom/shabakaty/downloader/mz;

    sget-object v2, Lcom/shabakaty/downloader/b83;->d:Lcom/shabakaty/downloader/hw2;

    new-array v4, v8, [Lcom/shabakaty/downloader/jz;

    sget-object v13, Lcom/shabakaty/downloader/lr2$a;->b:Lcom/shabakaty/downloader/lr2$a;

    aput-object v13, v4, v6

    .line 15
    sget-object v13, Lcom/shabakaty/downloader/a83$b;->r:Lcom/shabakaty/downloader/a83$b;

    .line 16
    invoke-direct {v1, v2, v4, v13}, Lcom/shabakaty/downloader/mz;-><init>(Lcom/shabakaty/downloader/hw2;[Lcom/shabakaty/downloader/jz;Lcom/shabakaty/downloader/tm1;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 17
    new-instance v1, Lcom/shabakaty/downloader/mz;

    sget-object v2, Lcom/shabakaty/downloader/b83;->e:Lcom/shabakaty/downloader/hw2;

    new-array v4, v9, [Lcom/shabakaty/downloader/jz;

    aput-object v5, v4, v6

    sget-object v13, Lcom/shabakaty/downloader/ot3$b;->c:Lcom/shabakaty/downloader/ot3$b;

    aput-object v13, v4, v8

    aput-object v11, v4, v3

    aput-object v10, v4, v12

    invoke-direct {v1, v2, v4, v7, v9}, Lcom/shabakaty/downloader/mz;-><init>(Lcom/shabakaty/downloader/hw2;[Lcom/shabakaty/downloader/jz;Lcom/shabakaty/downloader/tm1;I)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 18
    new-instance v1, Lcom/shabakaty/downloader/mz;

    sget-object v2, Lcom/shabakaty/downloader/b83;->r:Ljava/util/Set;

    new-array v4, v12, [Lcom/shabakaty/downloader/jz;

    aput-object v5, v4, v6

    aput-object v11, v4, v8

    aput-object v10, v4, v3

    invoke-direct {v1, v2, v4, v7, v9}, Lcom/shabakaty/downloader/mz;-><init>(Ljava/util/Collection;[Lcom/shabakaty/downloader/jz;Lcom/shabakaty/downloader/tm1;I)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 19
    new-instance v1, Lcom/shabakaty/downloader/mz;

    sget-object v2, Lcom/shabakaty/downloader/b83;->q:Ljava/util/Set;

    new-array v4, v3, [Lcom/shabakaty/downloader/jz;

    aput-object v5, v4, v6

    aput-object v14, v4, v8

    invoke-direct {v1, v2, v4, v7, v9}, Lcom/shabakaty/downloader/mz;-><init>(Ljava/util/Collection;[Lcom/shabakaty/downloader/jz;Lcom/shabakaty/downloader/tm1;I)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 20
    new-instance v1, Lcom/shabakaty/downloader/mz;

    new-array v2, v3, [Lcom/shabakaty/downloader/hw2;

    sget-object v4, Lcom/shabakaty/downloader/b83;->n:Lcom/shabakaty/downloader/hw2;

    aput-object v4, v2, v6

    sget-object v4, Lcom/shabakaty/downloader/b83;->o:Lcom/shabakaty/downloader/hw2;

    aput-object v4, v2, v8

    invoke-static {v2}, Lcom/shabakaty/downloader/iq6;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-array v4, v8, [Lcom/shabakaty/downloader/jz;

    aput-object v5, v4, v6

    .line 21
    sget-object v13, Lcom/shabakaty/downloader/a83$c;->r:Lcom/shabakaty/downloader/a83$c;

    .line 22
    invoke-direct {v1, v2, v4, v13}, Lcom/shabakaty/downloader/mz;-><init>(Ljava/util/Collection;[Lcom/shabakaty/downloader/jz;Lcom/shabakaty/downloader/tm1;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 23
    new-instance v1, Lcom/shabakaty/downloader/mz;

    sget-object v2, Lcom/shabakaty/downloader/b83;->s:Ljava/util/Set;

    new-array v4, v9, [Lcom/shabakaty/downloader/jz;

    aput-object v5, v4, v6

    sget-object v13, Lcom/shabakaty/downloader/ot3$c;->c:Lcom/shabakaty/downloader/ot3$c;

    aput-object v13, v4, v8

    aput-object v11, v4, v3

    aput-object v10, v4, v12

    invoke-direct {v1, v2, v4, v7, v9}, Lcom/shabakaty/downloader/mz;-><init>(Ljava/util/Collection;[Lcom/shabakaty/downloader/jz;Lcom/shabakaty/downloader/tm1;I)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 24
    new-instance v1, Lcom/shabakaty/downloader/mz;

    sget-object v2, Lcom/shabakaty/downloader/b83;->m:Lcom/shabakaty/downloader/mq3;

    new-array v4, v3, [Lcom/shabakaty/downloader/jz;

    aput-object v5, v4, v6

    aput-object v14, v4, v8

    .line 25
    sget-object v5, Lcom/shabakaty/downloader/nz;->r:Lcom/shabakaty/downloader/nz;

    const-string v6, "regex"

    .line 26
    invoke-static {v2, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "checks"

    invoke-static {v4, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "additionalChecks"

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, [Lcom/shabakaty/downloader/jz;

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object v15, v1

    move-object/from16 v17, v2

    move-object/from16 v19, v5

    invoke-direct/range {v15 .. v20}, Lcom/shabakaty/downloader/mz;-><init>(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/mq3;Ljava/util/Collection;Lcom/shabakaty/downloader/tm1;[Lcom/shabakaty/downloader/jz;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 28
    invoke-static {v0}, Lcom/shabakaty/downloader/iq6;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/a83;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/k0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/mz;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/a83;->b:Ljava/util/List;

    return-object v0
.end method
