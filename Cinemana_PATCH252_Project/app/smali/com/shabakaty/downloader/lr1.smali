.class public final Lcom/shabakaty/downloader/lr1;
.super Ljava/lang/Object;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/lr1$a;
    }
.end annotation


# static fields
.field public static final n:Lcom/shabakaty/downloader/cu4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/cu4<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/cu4<",
            "*>;",
            "Lcom/shabakaty/downloader/lr1$a<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/cu4<",
            "*>;",
            "Lcom/shabakaty/downloader/wr4<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final c:Lcom/shabakaty/downloader/nc0;

.field public final d:Lcom/shabakaty/downloader/q92;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/xr4;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/shabakaty/downloader/w12<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Z

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/xr4;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/xr4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lcom/shabakaty/downloader/cu4;->get(Ljava/lang/Class;)Lcom/shabakaty/downloader/cu4;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/lr1;->n:Lcom/shabakaty/downloader/cu4;

    return-void
.end method

.method public constructor <init>()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcom/shabakaty/downloader/m61;->u:Lcom/shabakaty/downloader/m61;

    sget-object v2, Lcom/shabakaty/downloader/qa1;->r:Lcom/shabakaty/downloader/qa1;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v11, Lcom/shabakaty/downloader/il2;->r:Lcom/shabakaty/downloader/il2;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x2

    .line 5
    invoke-direct/range {v0 .. v17}, Lcom/shabakaty/downloader/lr1;-><init>(Lcom/shabakaty/downloader/m61;Lcom/shabakaty/downloader/ra1;Ljava/util/Map;ZZZZZZZLcom/shabakaty/downloader/il2;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/m61;Lcom/shabakaty/downloader/ra1;Ljava/util/Map;ZZZZZZZLcom/shabakaty/downloader/il2;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/m61;",
            "Lcom/shabakaty/downloader/ra1;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/shabakaty/downloader/w12<",
            "*>;>;ZZZZZZZ",
            "Lcom/shabakaty/downloader/il2;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/xr4;",
            ">;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/xr4;",
            ">;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/xr4;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v3, Ljava/lang/ThreadLocal;

    invoke-direct {v3}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v3, v0, Lcom/shabakaty/downloader/lr1;->a:Ljava/lang/ThreadLocal;

    .line 8
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, v0, Lcom/shabakaty/downloader/lr1;->b:Ljava/util/Map;

    .line 9
    iput-object v2, v0, Lcom/shabakaty/downloader/lr1;->f:Ljava/util/Map;

    .line 10
    new-instance v3, Lcom/shabakaty/downloader/nc0;

    invoke-direct {v3, p3}, Lcom/shabakaty/downloader/nc0;-><init>(Ljava/util/Map;)V

    iput-object v3, v0, Lcom/shabakaty/downloader/lr1;->c:Lcom/shabakaty/downloader/nc0;

    move v2, p4

    .line 11
    iput-boolean v2, v0, Lcom/shabakaty/downloader/lr1;->g:Z

    move v2, p6

    .line 12
    iput-boolean v2, v0, Lcom/shabakaty/downloader/lr1;->h:Z

    move/from16 v2, p7

    .line 13
    iput-boolean v2, v0, Lcom/shabakaty/downloader/lr1;->i:Z

    move/from16 v2, p8

    .line 14
    iput-boolean v2, v0, Lcom/shabakaty/downloader/lr1;->j:Z

    move/from16 v2, p9

    .line 15
    iput-boolean v2, v0, Lcom/shabakaty/downloader/lr1;->k:Z

    move-object/from16 v2, p15

    .line 16
    iput-object v2, v0, Lcom/shabakaty/downloader/lr1;->l:Ljava/util/List;

    move-object/from16 v2, p16

    .line 17
    iput-object v2, v0, Lcom/shabakaty/downloader/lr1;->m:Ljava/util/List;

    .line 18
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 19
    sget-object v4, Lcom/shabakaty/downloader/zr4;->D:Lcom/shabakaty/downloader/xr4;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v4, Lcom/shabakaty/downloader/o43;->b:Lcom/shabakaty/downloader/xr4;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, p17

    .line 22
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 23
    sget-object v4, Lcom/shabakaty/downloader/zr4;->r:Lcom/shabakaty/downloader/xr4;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v4, Lcom/shabakaty/downloader/zr4;->g:Lcom/shabakaty/downloader/xr4;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v4, Lcom/shabakaty/downloader/zr4;->d:Lcom/shabakaty/downloader/xr4;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v4, Lcom/shabakaty/downloader/zr4;->e:Lcom/shabakaty/downloader/xr4;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v4, Lcom/shabakaty/downloader/zr4;->f:Lcom/shabakaty/downloader/xr4;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v4, Lcom/shabakaty/downloader/il2;->r:Lcom/shabakaty/downloader/il2;

    move-object/from16 v5, p11

    if-ne v5, v4, :cond_0

    .line 29
    sget-object v4, Lcom/shabakaty/downloader/zr4;->k:Lcom/shabakaty/downloader/wr4;

    goto :goto_0

    .line 30
    :cond_0
    new-instance v4, Lcom/shabakaty/downloader/ir1;

    invoke-direct {v4}, Lcom/shabakaty/downloader/ir1;-><init>()V

    .line 31
    :goto_0
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Long;

    .line 32
    new-instance v7, Lcom/shabakaty/downloader/cs4;

    invoke-direct {v7, v5, v6, v4}, Lcom/shabakaty/downloader/cs4;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/shabakaty/downloader/wr4;)V

    .line 33
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Double;

    if-eqz p10, :cond_1

    .line 35
    sget-object v7, Lcom/shabakaty/downloader/zr4;->m:Lcom/shabakaty/downloader/wr4;

    goto :goto_1

    .line 36
    :cond_1
    new-instance v7, Lcom/shabakaty/downloader/gr1;

    invoke-direct {v7, p0}, Lcom/shabakaty/downloader/gr1;-><init>(Lcom/shabakaty/downloader/lr1;)V

    .line 37
    :goto_1
    new-instance v8, Lcom/shabakaty/downloader/cs4;

    invoke-direct {v8, v5, v6, v7}, Lcom/shabakaty/downloader/cs4;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/shabakaty/downloader/wr4;)V

    .line 38
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Float;

    if-eqz p10, :cond_2

    .line 40
    sget-object v7, Lcom/shabakaty/downloader/zr4;->l:Lcom/shabakaty/downloader/wr4;

    goto :goto_2

    .line 41
    :cond_2
    new-instance v7, Lcom/shabakaty/downloader/hr1;

    invoke-direct {v7, p0}, Lcom/shabakaty/downloader/hr1;-><init>(Lcom/shabakaty/downloader/lr1;)V

    .line 42
    :goto_2
    new-instance v8, Lcom/shabakaty/downloader/cs4;

    invoke-direct {v8, v5, v6, v7}, Lcom/shabakaty/downloader/cs4;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/shabakaty/downloader/wr4;)V

    .line 43
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v5, Lcom/shabakaty/downloader/zr4;->n:Lcom/shabakaty/downloader/xr4;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v5, Lcom/shabakaty/downloader/zr4;->h:Lcom/shabakaty/downloader/xr4;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v5, Lcom/shabakaty/downloader/zr4;->i:Lcom/shabakaty/downloader/xr4;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    const-class v5, Ljava/util/concurrent/atomic/AtomicLong;

    .line 48
    new-instance v6, Lcom/shabakaty/downloader/jr1;

    invoke-direct {v6, v4}, Lcom/shabakaty/downloader/jr1;-><init>(Lcom/shabakaty/downloader/wr4;)V

    .line 49
    new-instance v7, Lcom/shabakaty/downloader/vr4;

    invoke-direct {v7, v6}, Lcom/shabakaty/downloader/vr4;-><init>(Lcom/shabakaty/downloader/wr4;)V

    .line 50
    new-instance v6, Lcom/shabakaty/downloader/bs4;

    invoke-direct {v6, v5, v7}, Lcom/shabakaty/downloader/bs4;-><init>(Ljava/lang/Class;Lcom/shabakaty/downloader/wr4;)V

    .line 51
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    const-class v5, Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 53
    new-instance v6, Lcom/shabakaty/downloader/kr1;

    invoke-direct {v6, v4}, Lcom/shabakaty/downloader/kr1;-><init>(Lcom/shabakaty/downloader/wr4;)V

    .line 54
    new-instance v4, Lcom/shabakaty/downloader/vr4;

    invoke-direct {v4, v6}, Lcom/shabakaty/downloader/vr4;-><init>(Lcom/shabakaty/downloader/wr4;)V

    .line 55
    new-instance v6, Lcom/shabakaty/downloader/bs4;

    invoke-direct {v6, v5, v4}, Lcom/shabakaty/downloader/bs4;-><init>(Ljava/lang/Class;Lcom/shabakaty/downloader/wr4;)V

    .line 56
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v4, Lcom/shabakaty/downloader/zr4;->j:Lcom/shabakaty/downloader/xr4;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v4, Lcom/shabakaty/downloader/zr4;->o:Lcom/shabakaty/downloader/xr4;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v4, Lcom/shabakaty/downloader/zr4;->s:Lcom/shabakaty/downloader/xr4;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v4, Lcom/shabakaty/downloader/zr4;->t:Lcom/shabakaty/downloader/xr4;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    const-class v4, Ljava/math/BigDecimal;

    sget-object v5, Lcom/shabakaty/downloader/zr4;->p:Lcom/shabakaty/downloader/wr4;

    .line 62
    new-instance v6, Lcom/shabakaty/downloader/bs4;

    invoke-direct {v6, v4, v5}, Lcom/shabakaty/downloader/bs4;-><init>(Ljava/lang/Class;Lcom/shabakaty/downloader/wr4;)V

    .line 63
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    const-class v4, Ljava/math/BigInteger;

    sget-object v5, Lcom/shabakaty/downloader/zr4;->q:Lcom/shabakaty/downloader/wr4;

    .line 65
    new-instance v6, Lcom/shabakaty/downloader/bs4;

    invoke-direct {v6, v4, v5}, Lcom/shabakaty/downloader/bs4;-><init>(Ljava/lang/Class;Lcom/shabakaty/downloader/wr4;)V

    .line 66
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v4, Lcom/shabakaty/downloader/zr4;->u:Lcom/shabakaty/downloader/xr4;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v4, Lcom/shabakaty/downloader/zr4;->v:Lcom/shabakaty/downloader/xr4;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v4, Lcom/shabakaty/downloader/zr4;->x:Lcom/shabakaty/downloader/xr4;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v4, Lcom/shabakaty/downloader/zr4;->y:Lcom/shabakaty/downloader/xr4;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v4, Lcom/shabakaty/downloader/zr4;->B:Lcom/shabakaty/downloader/xr4;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v4, Lcom/shabakaty/downloader/zr4;->w:Lcom/shabakaty/downloader/xr4;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v4, Lcom/shabakaty/downloader/zr4;->b:Lcom/shabakaty/downloader/xr4;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v4, Lcom/shabakaty/downloader/gm0;->b:Lcom/shabakaty/downloader/xr4;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v4, Lcom/shabakaty/downloader/zr4;->A:Lcom/shabakaty/downloader/xr4;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v4, Lcom/shabakaty/downloader/ln4;->b:Lcom/shabakaty/downloader/xr4;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v4, Lcom/shabakaty/downloader/va4;->b:Lcom/shabakaty/downloader/xr4;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v4, Lcom/shabakaty/downloader/zr4;->z:Lcom/shabakaty/downloader/xr4;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v4, Lcom/shabakaty/downloader/ed;->c:Lcom/shabakaty/downloader/xr4;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v4, Lcom/shabakaty/downloader/zr4;->a:Lcom/shabakaty/downloader/xr4;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v4, Lcom/shabakaty/downloader/g50;

    invoke-direct {v4, v3}, Lcom/shabakaty/downloader/g50;-><init>(Lcom/shabakaty/downloader/nc0;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v4, Lcom/shabakaty/downloader/om2;

    move v5, p5

    invoke-direct {v4, v3, p5}, Lcom/shabakaty/downloader/om2;-><init>(Lcom/shabakaty/downloader/nc0;Z)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v4, Lcom/shabakaty/downloader/q92;

    invoke-direct {v4, v3}, Lcom/shabakaty/downloader/q92;-><init>(Lcom/shabakaty/downloader/nc0;)V

    iput-object v4, v0, Lcom/shabakaty/downloader/lr1;->d:Lcom/shabakaty/downloader/q92;

    .line 84
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v5, Lcom/shabakaty/downloader/zr4;->E:Lcom/shabakaty/downloader/xr4;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v5, Lcom/shabakaty/downloader/lq3;

    move-object v6, p2

    invoke-direct {v5, v3, p2, p1, v4}, Lcom/shabakaty/downloader/lq3;-><init>(Lcom/shabakaty/downloader/nc0;Lcom/shabakaty/downloader/ra1;Lcom/shabakaty/downloader/m61;Lcom/shabakaty/downloader/q92;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/lr1;->e:Ljava/util/List;

    return-void
.end method

.method public static a(D)V
    .locals 2

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public b(Lcom/shabakaty/downloader/z92;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/z92;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/la2;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/la2;-><init>(Lcom/shabakaty/downloader/z92;)V

    invoke-virtual {p0, v0, p2}, Lcom/shabakaty/downloader/lr1;->c(Lcom/shabakaty/downloader/ga2;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    :goto_0
    invoke-static {p2}, Lcom/shabakaty/downloader/ml3;->c(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/shabakaty/downloader/ga2;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/ga2;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p1, Lcom/shabakaty/downloader/ga2;->s:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p1, Lcom/shabakaty/downloader/ga2;->s:Z

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->L()Lcom/shabakaty/downloader/ka2;

    const/4 v1, 0x0

    .line 4
    invoke-static {p2}, Lcom/shabakaty/downloader/cu4;->get(Ljava/lang/reflect/Type;)Lcom/shabakaty/downloader/cu4;

    move-result-object p2

    .line 5
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/lr1;->f(Lcom/shabakaty/downloader/cu4;)Lcom/shabakaty/downloader/wr4;

    move-result-object p2

    .line 6
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/wr4;->a(Lcom/shabakaty/downloader/ga2;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iput-boolean v0, p1, Lcom/shabakaty/downloader/ga2;->s:Z

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 8
    :try_start_1
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AssertionError (GSON 2.8.8): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v1, p2}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 10
    throw v1

    :catch_1
    move-exception p2

    .line 11
    new-instance v1, Lcom/shabakaty/downloader/ja2;

    invoke-direct {v1, p2}, Lcom/shabakaty/downloader/ja2;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception p2

    .line 12
    new-instance v1, Lcom/shabakaty/downloader/ja2;

    invoke-direct {v1, p2}, Lcom/shabakaty/downloader/ja2;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_3
    move-exception p2

    if-eqz v1, :cond_0

    const/4 p2, 0x0

    .line 13
    iput-boolean v0, p1, Lcom/shabakaty/downloader/ga2;->s:Z

    return-object p2

    .line 14
    :cond_0
    :try_start_2
    new-instance v1, Lcom/shabakaty/downloader/ja2;

    invoke-direct {v1, p2}, Lcom/shabakaty/downloader/ja2;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    :goto_0
    iput-boolean v0, p1, Lcom/shabakaty/downloader/ga2;->s:Z

    .line 16
    throw p2
.end method

.method public d(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ga2;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/ga2;-><init>(Ljava/io/Reader;)V

    .line 2
    iget-boolean p1, p0, Lcom/shabakaty/downloader/lr1;->k:Z

    .line 3
    iput-boolean p1, v0, Lcom/shabakaty/downloader/ga2;->s:Z

    .line 4
    invoke-virtual {p0, v0, p2}, Lcom/shabakaty/downloader/lr1;->c(Lcom/shabakaty/downloader/ga2;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    :try_start_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ga2;->L()Lcom/shabakaty/downloader/ka2;

    move-result-object p2

    sget-object v0, Lcom/shabakaty/downloader/ka2;->A:Lcom/shabakaty/downloader/ka2;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/aa2;

    const-string p2, "JSON document was not fully consumed."

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/aa2;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/shabakaty/downloader/bm2; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 7
    new-instance p2, Lcom/shabakaty/downloader/aa2;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/aa2;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 8
    new-instance p2, Lcom/shabakaty/downloader/ja2;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/ja2;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_0
    return-object p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, v0, p2}, Lcom/shabakaty/downloader/lr1;->d(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    :goto_0
    invoke-static {p2}, Lcom/shabakaty/downloader/ml3;->c(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Lcom/shabakaty/downloader/cu4;)Lcom/shabakaty/downloader/wr4;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/cu4<",
            "TT;>;)",
            "Lcom/shabakaty/downloader/wr4<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lr1;->b:Ljava/util/Map;

    if-nez p1, :cond_0

    sget-object v1, Lcom/shabakaty/downloader/lr1;->n:Lcom/shabakaty/downloader/cu4;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/wr4;

    if-eqz v0, :cond_1

    return-object v0

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/lr1;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/lr1;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 5
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/lr1$a;

    if-eqz v2, :cond_3

    return-object v2

    .line 6
    :cond_3
    :try_start_0
    new-instance v2, Lcom/shabakaty/downloader/lr1$a;

    invoke-direct {v2}, Lcom/shabakaty/downloader/lr1$a;-><init>()V

    .line 7
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v3, p0, Lcom/shabakaty/downloader/lr1;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/xr4;

    .line 9
    invoke-interface {v4, p0, p1}, Lcom/shabakaty/downloader/xr4;->a(Lcom/shabakaty/downloader/lr1;Lcom/shabakaty/downloader/cu4;)Lcom/shabakaty/downloader/wr4;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 10
    iget-object v3, v2, Lcom/shabakaty/downloader/lr1$a;->a:Lcom/shabakaty/downloader/wr4;

    if-nez v3, :cond_6

    .line 11
    iput-object v4, v2, Lcom/shabakaty/downloader/lr1$a;->a:Lcom/shabakaty/downloader/wr4;

    .line 12
    iget-object v2, p0, Lcom/shabakaty/downloader/lr1;->b:Ljava/util/Map;

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 14
    iget-object p1, p0, Lcom/shabakaty/downloader/lr1;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_5
    return-object v4

    .line 15
    :cond_6
    :try_start_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 16
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSON (2.8.8) cannot handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    .line 17
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_8

    .line 18
    iget-object p1, p0, Lcom/shabakaty/downloader/lr1;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_8
    throw v2
.end method

.method public g(Lcom/shabakaty/downloader/xr4;Lcom/shabakaty/downloader/cu4;)Lcom/shabakaty/downloader/wr4;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/xr4;",
            "Lcom/shabakaty/downloader/cu4<",
            "TT;>;)",
            "Lcom/shabakaty/downloader/wr4<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lr1;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/lr1;->d:Lcom/shabakaty/downloader/q92;

    :cond_0
    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/lr1;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/xr4;

    if-nez v0, :cond_2

    if-ne v2, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 4
    :cond_2
    invoke-interface {v2, p0, p2}, Lcom/shabakaty/downloader/xr4;->a(Lcom/shabakaty/downloader/lr1;Lcom/shabakaty/downloader/cu4;)Lcom/shabakaty/downloader/wr4;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    .line 5
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GSON cannot serialize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(Ljava/io/Writer;)Lcom/shabakaty/downloader/pa2;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/lr1;->h:Z

    if-eqz v0, :cond_0

    const-string v0, ")]}\'\n"

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/pa2;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/pa2;-><init>(Ljava/io/Writer;)V

    .line 4
    iget-boolean p1, p0, Lcom/shabakaty/downloader/lr1;->j:Z

    if-eqz p1, :cond_1

    const-string p1, "  "

    .line 5
    iput-object p1, v0, Lcom/shabakaty/downloader/pa2;->u:Ljava/lang/String;

    const-string p1, ": "

    .line 6
    iput-object p1, v0, Lcom/shabakaty/downloader/pa2;->v:Ljava/lang/String;

    .line 7
    :cond_1
    iget-boolean p1, p0, Lcom/shabakaty/downloader/lr1;->g:Z

    .line 8
    iput-boolean p1, v0, Lcom/shabakaty/downloader/pa2;->z:Z

    return-object v0
.end method

.method public i(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/ba2;->a:Lcom/shabakaty/downloader/ba2;

    .line 2
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/lr1;->k(Lcom/shabakaty/downloader/z92;Ljava/lang/Appendable;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 7
    invoke-virtual {p0, p1, v0, v1}, Lcom/shabakaty/downloader/lr1;->m(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 8
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j(Lcom/shabakaty/downloader/z92;Lcom/shabakaty/downloader/pa2;)V
    .locals 6

    .line 1
    iget-boolean v0, p2, Lcom/shabakaty/downloader/pa2;->w:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p2, Lcom/shabakaty/downloader/pa2;->w:Z

    .line 3
    iget-boolean v1, p2, Lcom/shabakaty/downloader/pa2;->x:Z

    .line 4
    iget-boolean v2, p0, Lcom/shabakaty/downloader/lr1;->i:Z

    .line 5
    iput-boolean v2, p2, Lcom/shabakaty/downloader/pa2;->x:Z

    .line 6
    iget-boolean v2, p2, Lcom/shabakaty/downloader/pa2;->z:Z

    .line 7
    iget-boolean v3, p0, Lcom/shabakaty/downloader/lr1;->g:Z

    .line 8
    iput-boolean v3, p2, Lcom/shabakaty/downloader/pa2;->z:Z

    .line 9
    :try_start_0
    sget-object v3, Lcom/shabakaty/downloader/zr4;->C:Lcom/shabakaty/downloader/wr4;

    check-cast v3, Lcom/shabakaty/downloader/zr4$u;

    .line 10
    invoke-virtual {v3, p2, p1}, Lcom/shabakaty/downloader/zr4$u;->d(Lcom/shabakaty/downloader/pa2;Lcom/shabakaty/downloader/z92;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iput-boolean v0, p2, Lcom/shabakaty/downloader/pa2;->w:Z

    .line 12
    iput-boolean v1, p2, Lcom/shabakaty/downloader/pa2;->x:Z

    .line 13
    iput-boolean v2, p2, Lcom/shabakaty/downloader/pa2;->z:Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 14
    :goto_0
    :try_start_1
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AssertionError (GSON 2.8.8): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 15
    invoke-virtual {v3, p1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 16
    throw v3

    .line 17
    :goto_1
    new-instance v3, Lcom/shabakaty/downloader/aa2;

    invoke-direct {v3, p1}, Lcom/shabakaty/downloader/aa2;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :goto_2
    iput-boolean v0, p2, Lcom/shabakaty/downloader/pa2;->w:Z

    .line 19
    iput-boolean v1, p2, Lcom/shabakaty/downloader/pa2;->x:Z

    .line 20
    iput-boolean v2, p2, Lcom/shabakaty/downloader/pa2;->z:Z

    .line 21
    throw p1
.end method

.method public k(Lcom/shabakaty/downloader/z92;Ljava/lang/Appendable;)V
    .locals 1

    .line 1
    :try_start_0
    instance-of v0, p2, Ljava/io/Writer;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/io/Writer;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/zd4$a;

    invoke-direct {v0, p2}, Lcom/shabakaty/downloader/zd4$a;-><init>(Ljava/lang/Appendable;)V

    move-object p2, v0

    .line 2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/lr1;->h(Ljava/io/Writer;)Lcom/shabakaty/downloader/pa2;

    move-result-object p2

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/lr1;->j(Lcom/shabakaty/downloader/z92;Lcom/shabakaty/downloader/pa2;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Lcom/shabakaty/downloader/aa2;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/aa2;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public l(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/shabakaty/downloader/pa2;)V
    .locals 5

    .line 1
    invoke-static {p2}, Lcom/shabakaty/downloader/cu4;->get(Ljava/lang/reflect/Type;)Lcom/shabakaty/downloader/cu4;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/lr1;->f(Lcom/shabakaty/downloader/cu4;)Lcom/shabakaty/downloader/wr4;

    move-result-object p2

    .line 2
    iget-boolean v0, p3, Lcom/shabakaty/downloader/pa2;->w:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p3, Lcom/shabakaty/downloader/pa2;->w:Z

    .line 4
    iget-boolean v1, p3, Lcom/shabakaty/downloader/pa2;->x:Z

    .line 5
    iget-boolean v2, p0, Lcom/shabakaty/downloader/lr1;->i:Z

    .line 6
    iput-boolean v2, p3, Lcom/shabakaty/downloader/pa2;->x:Z

    .line 7
    iget-boolean v2, p3, Lcom/shabakaty/downloader/pa2;->z:Z

    .line 8
    iget-boolean v3, p0, Lcom/shabakaty/downloader/lr1;->g:Z

    .line 9
    iput-boolean v3, p3, Lcom/shabakaty/downloader/pa2;->z:Z

    .line 10
    :try_start_0
    invoke-virtual {p2, p3, p1}, Lcom/shabakaty/downloader/wr4;->b(Lcom/shabakaty/downloader/pa2;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iput-boolean v0, p3, Lcom/shabakaty/downloader/pa2;->w:Z

    .line 12
    iput-boolean v1, p3, Lcom/shabakaty/downloader/pa2;->x:Z

    .line 13
    iput-boolean v2, p3, Lcom/shabakaty/downloader/pa2;->z:Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    :try_start_1
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AssertionError (GSON 2.8.8): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p2, p1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 16
    throw p2

    :catch_1
    move-exception p1

    .line 17
    new-instance p2, Lcom/shabakaty/downloader/aa2;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/aa2;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :goto_0
    iput-boolean v0, p3, Lcom/shabakaty/downloader/pa2;->w:Z

    .line 19
    iput-boolean v1, p3, Lcom/shabakaty/downloader/pa2;->x:Z

    .line 20
    iput-boolean v2, p3, Lcom/shabakaty/downloader/pa2;->z:Z

    .line 21
    throw p1
.end method

.method public m(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 1

    .line 1
    :try_start_0
    instance-of v0, p3, Ljava/io/Writer;

    if-eqz v0, :cond_0

    check-cast p3, Ljava/io/Writer;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/zd4$a;

    invoke-direct {v0, p3}, Lcom/shabakaty/downloader/zd4$a;-><init>(Ljava/lang/Appendable;)V

    move-object p3, v0

    .line 2
    :goto_0
    invoke-virtual {p0, p3}, Lcom/shabakaty/downloader/lr1;->h(Ljava/io/Writer;)Lcom/shabakaty/downloader/pa2;

    move-result-object p3

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/shabakaty/downloader/lr1;->l(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/shabakaty/downloader/pa2;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Lcom/shabakaty/downloader/aa2;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/aa2;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/shabakaty/downloader/lr1;->g:Z

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",factories:"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/lr1;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",instanceCreators:"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/lr1;->c:Lcom/shabakaty/downloader/nc0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
