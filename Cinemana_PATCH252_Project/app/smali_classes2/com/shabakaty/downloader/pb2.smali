.class public final Lcom/shabakaty/downloader/pb2;
.super Ljava/lang/Object;
.source "JvmNameResolver.kt"

# interfaces
.implements Lcom/shabakaty/downloader/jw2;


# static fields
.field public static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/shabakaty/downloader/ub2$e;

.field public final b:[Ljava/lang/String;

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ub2$e$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/Character;

    const/16 v2, 0x6b

    .line 1
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0x6f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/16 v2, 0x74

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/16 v2, 0x6c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const/16 v2, 0x69

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const/16 v2, 0x6e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v1, v8

    invoke-static {v1}, Lcom/shabakaty/downloader/iq6;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const-string v10, ""

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x3e

    invoke-static/range {v9 .. v16}, Lcom/shabakaty/downloader/m50;->g0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/shabakaty/downloader/tm1;I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c

    new-array v2, v2, [Ljava/lang/String;

    const-string v9, "/Any"

    .line 2
    invoke-static {v1, v9}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v3

    const-string v3, "/Nothing"

    .line 3
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "/Unit"

    .line 4
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "/Throwable"

    .line 5
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "/Number"

    .line 6
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "/Byte"

    .line 7
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, "/Double"

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "/Float"

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x7

    aput-object v0, v2, v3

    const-string v0, "/Int"

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x8

    aput-object v0, v2, v3

    const-string v0, "/Long"

    .line 8
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x9

    aput-object v0, v2, v3

    const-string v0, "/Short"

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xa

    aput-object v0, v2, v3

    const-string v0, "/Boolean"

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0xb

    aput-object v0, v2, v4

    const-string v0, "/Char"

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0xc

    aput-object v0, v2, v4

    const-string v0, "/CharSequence"

    .line 9
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0xd

    aput-object v0, v2, v4

    const-string v0, "/String"

    .line 10
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0xe

    aput-object v0, v2, v4

    const-string v0, "/Comparable"

    .line 11
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0xf

    aput-object v0, v2, v4

    const-string v0, "/Enum"

    .line 12
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x10

    aput-object v0, v2, v4

    const-string v0, "/Array"

    .line 13
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x11

    aput-object v0, v2, v5

    const-string v0, "/ByteArray"

    .line 14
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x12

    aput-object v0, v2, v5

    const-string v0, "/DoubleArray"

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x13

    aput-object v0, v2, v5

    const-string v0, "/FloatArray"

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x14

    aput-object v0, v2, v5

    const-string v0, "/IntArray"

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x15

    aput-object v0, v2, v5

    const-string v0, "/LongArray"

    .line 15
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x16

    aput-object v0, v2, v5

    const-string v0, "/ShortArray"

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x17

    aput-object v0, v2, v5

    const-string v0, "/BooleanArray"

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x18

    aput-object v0, v2, v5

    const-string v0, "/CharArray"

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x19

    aput-object v0, v2, v5

    const-string v0, "/Cloneable"

    .line 16
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x1a

    aput-object v0, v2, v5

    const-string v0, "/Annotation"

    .line 17
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x1b

    aput-object v0, v2, v5

    const-string v0, "/collections/Iterable"

    .line 18
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x1c

    aput-object v0, v2, v5

    const-string v0, "/collections/MutableIterable"

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x1d

    aput-object v0, v2, v5

    const-string v0, "/collections/Collection"

    .line 19
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x1e

    aput-object v0, v2, v5

    const-string v0, "/collections/MutableCollection"

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x1f

    aput-object v0, v2, v5

    const-string v0, "/collections/List"

    .line 20
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x20

    aput-object v0, v2, v5

    const-string v0, "/collections/MutableList"

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x21

    aput-object v0, v2, v5

    const-string v0, "/collections/Set"

    .line 21
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x22

    aput-object v0, v2, v5

    const-string v0, "/collections/MutableSet"

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x23

    aput-object v0, v2, v5

    const-string v0, "/collections/Map"

    .line 22
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x24

    aput-object v0, v2, v5

    const-string v0, "/collections/MutableMap"

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x25

    aput-object v0, v2, v5

    const-string v0, "/collections/Map.Entry"

    .line 23
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x26

    aput-object v0, v2, v5

    const-string v0, "/collections/MutableMap.MutableEntry"

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x27

    aput-object v0, v2, v5

    const-string v0, "/collections/Iterator"

    .line 24
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x28

    aput-object v0, v2, v5

    const-string v0, "/collections/MutableIterator"

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x29

    aput-object v0, v2, v5

    const-string v0, "/collections/ListIterator"

    .line 25
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x2a

    aput-object v0, v2, v5

    const-string v0, "/collections/MutableListIterator"

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2b

    aput-object v0, v2, v1

    .line 26
    invoke-static {v2}, Lcom/shabakaty/downloader/iq6;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/pb2;->e:Ljava/util/List;

    .line 27
    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->C0(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    .line 28
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lcom/shabakaty/downloader/kf5;->i(I)I

    move-result v1

    if-ge v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    .line 29
    :goto_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 30
    check-cast v0, Lcom/shabakaty/downloader/p02;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/p02;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    move-object v2, v0

    check-cast v2, Lcom/shabakaty/downloader/q02;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/q02;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/shabakaty/downloader/q02;->next()Ljava/lang/Object;

    move-result-object v2

    .line 31
    check-cast v2, Lcom/shabakaty/downloader/o02;

    .line 32
    iget-object v3, v2, Lcom/shabakaty/downloader/o02;->b:Ljava/lang/Object;

    .line 33
    check-cast v3, Ljava/lang/String;

    .line 34
    iget v2, v2, Lcom/shabakaty/downloader/o02;->a:I

    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/ub2$e;[Ljava/lang/String;)V
    .locals 3

    const-string v0, "strings"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/pb2;->a:Lcom/shabakaty/downloader/ub2$e;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/pb2;->b:[Ljava/lang/String;

    .line 4
    iget-object p2, p1, Lcom/shabakaty/downloader/ub2$e;->t:Ljava/util/List;

    .line 5
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Lcom/shabakaty/downloader/c31;->r:Lcom/shabakaty/downloader/c31;

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/shabakaty/downloader/m50;->B0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/shabakaty/downloader/pb2;->c:Ljava/util/Set;

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/ub2$e;->s:Ljava/util/List;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ub2$e$c;

    .line 10
    iget v1, v0, Lcom/shabakaty/downloader/ub2$e$c;->t:I

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 11
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->trimToSize()V

    .line 13
    iput-object p2, p0, Lcom/shabakaty/downloader/pb2;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/pb2;->b(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pb2;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ub2$e$c;

    .line 2
    iget v1, v0, Lcom/shabakaty/downloader/ub2$e$c;->s:I

    and-int/lit8 v2, v1, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v6, 0x2

    if-eqz v2, :cond_3

    .line 3
    iget-object p1, v0, Lcom/shabakaty/downloader/ub2$e$c;->v:Ljava/lang/Object;

    .line 4
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 5
    check-cast p1, Ljava/lang/String;

    goto :goto_3

    .line 6
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/ep;

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ep;->E()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ep;->q()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iput-object v1, v0, Lcom/shabakaty/downloader/ub2$e$c;->v:Ljava/lang/Object;

    :cond_2
    move-object p1, v1

    goto :goto_3

    :cond_3
    and-int/2addr v1, v6

    if-ne v1, v6, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_6

    .line 10
    sget-object v1, Lcom/shabakaty/downloader/pb2;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 11
    iget v7, v0, Lcom/shabakaty/downloader/ub2$e$c;->u:I

    if-ltz v7, :cond_5

    if-ge v7, v2, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_6

    .line 12
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_3

    .line 13
    :cond_6
    iget-object v1, p0, Lcom/shabakaty/downloader/pb2;->b:[Ljava/lang/String;

    aget-object p1, v1, p1

    .line 14
    :goto_3
    iget-object v1, v0, Lcom/shabakaty/downloader/ub2$e$c;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    if-lt v1, v6, :cond_7

    .line 15
    iget-object v1, v0, Lcom/shabakaty/downloader/ub2$e$c;->x:Ljava/util/List;

    const-string v7, "substringIndexList"

    .line 16
    invoke-static {v1, v7}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const-string v8, "begin"

    .line 17
    invoke-static {v7, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ltz v8, :cond_7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v9, "end"

    invoke-static {v1, v9}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-gt v8, v9, :cond_7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v8, v9, :cond_7

    .line 18
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    :cond_7
    iget-object v1, v0, Lcom/shabakaty/downloader/ub2$e$c;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v7, "string"

    if-lt v1, v6, :cond_8

    .line 20
    iget-object v1, v0, Lcom/shabakaty/downloader/ub2$e$c;->z:Ljava/util/List;

    const-string v8, "replaceCharList"

    .line 21
    invoke-static {v1, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 22
    invoke-static {p1, v7}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-char v8, v8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-char v1, v1

    invoke-static {p1, v8, v1, v4, v3}, Lcom/shabakaty/downloader/ne4;->G(Ljava/lang/String;CCZI)Ljava/lang/String;

    move-result-object p1

    .line 23
    :cond_8
    iget-object v0, v0, Lcom/shabakaty/downloader/ub2$e$c;->w:Lcom/shabakaty/downloader/ub2$e$c$c;

    if-nez v0, :cond_9

    .line 24
    sget-object v0, Lcom/shabakaty/downloader/ub2$e$c$c;->s:Lcom/shabakaty/downloader/ub2$e$c$c;

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0x2e

    const/16 v8, 0x24

    if-eq v0, v5, :cond_c

    if-eq v0, v6, :cond_a

    goto :goto_4

    .line 25
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v6, :cond_b

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    :cond_b
    invoke-static {p1, v8, v1, v4, v3}, Lcom/shabakaty/downloader/ne4;->G(Ljava/lang/String;CCZI)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 28
    :cond_c
    invoke-static {p1, v7}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v8, v1, v4, v3}, Lcom/shabakaty/downloader/ne4;->G(Ljava/lang/String;CCZI)Ljava/lang/String;

    move-result-object p1

    .line 29
    :goto_4
    invoke-static {p1, v7}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public c(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pb2;->c:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
