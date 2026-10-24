.class public Lcom/shabakaty/downloader/ag6;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.1.1"

# interfaces
.implements Lcom/shabakaty/downloader/pj5;
.implements Lcom/shabakaty/downloader/tq3;
.implements Lcom/shabakaty/downloader/k63;
.implements Lcom/shabakaty/downloader/io5;
.implements Lcom/shabakaty/downloader/m76;
.implements Lcom/shabakaty/downloader/td0;
.implements Lcom/shabakaty/downloader/ls1;


# instance fields
.field public final synthetic r:I

.field public s:Ljava/lang/Object;

.field public t:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILcom/shabakaty/downloader/io2;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iput v1, v0, Lcom/shabakaty/downloader/ag6;->r:I

    const/4 v2, 0x7

    const/16 v3, 0x10

    const/16 v4, 0xa

    if-eq v1, v2, :cond_5

    const/16 v2, 0x13

    if-eq v1, v2, :cond_4

    const/16 v2, 0x9

    if-eq v1, v2, :cond_3

    if-eq v1, v4, :cond_2

    const/4 v2, 0x3

    if-eq v1, v3, :cond_1

    const/16 v3, 0x11

    if-eq v1, v3, :cond_0

    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v1, v0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    .line 38
    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v2, v0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    check-cast v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, v0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    return-void

    .line 39
    :cond_0
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    .line 41
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    .line 42
    iget-object v1, v0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    new-instance v3, Lcom/shabakaty/downloader/hd0;

    const/4 v4, 0x1

    .line 43
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "TV-Y"

    const-string v7, "This program is designed to be appropriate for all children"

    const/4 v8, 0x0

    .line 44
    invoke-direct {v3, v5, v6, v7, v8}, Lcom/shabakaty/downloader/hd0;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v6, "1"

    invoke-interface {v1, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v1, v0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    new-instance v3, Lcom/shabakaty/downloader/hd0;

    const/4 v7, 0x2

    .line 46
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v9, "TV-Y7"

    const-string v10, "This program is designed for children age 7 and above"

    .line 47
    invoke-direct {v3, v7, v9, v10, v8}, Lcom/shabakaty/downloader/hd0;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v9, "2"

    invoke-interface {v1, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v1, v0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    new-instance v3, Lcom/shabakaty/downloader/hd0;

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v10, "TV-G"

    const-string v11, "Most parents would find this program suitable for all ages"

    .line 50
    invoke-direct {v3, v2, v10, v11, v8}, Lcom/shabakaty/downloader/hd0;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v10, "3"

    invoke-interface {v1, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v1, v0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    new-instance v3, Lcom/shabakaty/downloader/hd0;

    const/4 v11, 0x4

    .line 52
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "TV-PG"

    const-string v13, "This program contains material that parents may find unsuitable for younger children"

    .line 53
    invoke-direct {v3, v11, v12, v13, v8}, Lcom/shabakaty/downloader/hd0;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v12, "4"

    invoke-interface {v1, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v1, v0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    new-instance v3, Lcom/shabakaty/downloader/hd0;

    const/4 v13, 0x5

    .line 55
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "TV-14"

    const-string v15, "This program contains some material that many parents would find unsuitable for children under 14 years of age"

    .line 56
    invoke-direct {v3, v13, v14, v15, v4}, Lcom/shabakaty/downloader/hd0;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v14, "5"

    invoke-interface {v1, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v1, v0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    new-instance v3, Lcom/shabakaty/downloader/hd0;

    const/4 v15, 0x6

    .line 58
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v8, "TV-MA"

    move-object/from16 p2, v14

    const-string v14, "This program is specifically designed to be viewed by adults and therefore may be unsuitable for children under 17"

    .line 59
    invoke-direct {v3, v15, v8, v14, v4}, Lcom/shabakaty/downloader/hd0;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v8, "6"

    invoke-interface {v1, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v1, v0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    new-instance v3, Lcom/shabakaty/downloader/hd0;

    const-string v14, "G"

    const-string v4, "All ages admitted. Nothing that would offend parents for viewing by children"

    move-object/from16 v16, v8

    const/4 v8, 0x0

    invoke-direct {v3, v5, v14, v4, v8}, Lcom/shabakaty/downloader/hd0;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v1, v0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    new-instance v3, Lcom/shabakaty/downloader/hd0;

    const-string v4, "PG"

    const-string v5, "Some material may not be suitable for children. Parents urged to give \"parental guidance\". May contain some material parents might not like for their young children."

    invoke-direct {v3, v7, v4, v5, v8}, Lcom/shabakaty/downloader/hd0;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v1, v0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    new-instance v3, Lcom/shabakaty/downloader/hd0;

    const-string v4, "PG-13"

    const-string v5, "Some material may be inappropriate for children under 13. Parents are urged to be cautious. Some material may be inappropriate for pre-teenagers."

    invoke-direct {v3, v2, v4, v5, v8}, Lcom/shabakaty/downloader/hd0;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v1, v0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    new-instance v2, Lcom/shabakaty/downloader/hd0;

    const-string v3, "R"

    const-string v4, "Under 17 requires accompanying parent or adult guardian. Contains some adult material. Parents are urged to learn more about the film before taking their young children with them."

    const/4 v5, 0x1

    invoke-direct {v2, v11, v3, v4, v5}, Lcom/shabakaty/downloader/hd0;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v1, v0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    new-instance v2, Lcom/shabakaty/downloader/hd0;

    const-string v3, "NC-17"

    const-string v4, "No One 17 and Under Admitted. Clearly adult. Children are not admitted."

    invoke-direct {v2, v13, v3, v4, v5}, Lcom/shabakaty/downloader/hd0;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v3, p2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v1, v0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    new-instance v2, Lcom/shabakaty/downloader/hd0;

    const-string v3, "Approved"

    const-string v4, ""

    invoke-direct {v2, v15, v3, v4, v5}, Lcom/shabakaty/downloader/hd0;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v3, v16

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 66
    invoke-direct {v0, v1, v1, v2}, Lcom/shabakaty/downloader/ag6;-><init>(Lorg/json/JSONArray;Lorg/json/JSONArray;I)V

    return-void

    .line 67
    :cond_2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 68
    :cond_3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/TreeMap;

    .line 69
    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, v0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    new-instance v1, Ljava/util/TreeMap;

    .line 70
    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, v0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    return-void

    .line 71
    :cond_4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v1, v0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    return-void

    .line 73
    :cond_5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v2, 0x3f400000    # 0.75f

    .line 74
    invoke-direct {v1, v3, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v1, v0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    .line 75
    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v1, v0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, Lcom/shabakaty/downloader/ag6;->r:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/np4;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lcom/shabakaty/downloader/ag6;->r:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/oh5;Lcom/shabakaty/downloader/pj5;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/shabakaty/downloader/ag6;->r:I

    .line 30
    iput-object p1, p0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/pj3;)V
    .locals 1

    const/16 v0, 0xf

    iput v0, p0, Lcom/shabakaty/downloader/ag6;->r:I

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    .line 85
    iput-object p1, p0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/tk1;)V
    .locals 2

    const/16 v0, 0xb

    iput v0, p0, Lcom/shabakaty/downloader/ag6;->r:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/shabakaty/downloader/kw6;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/kw6;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    iput-object p1, p0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/uw6;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, Lcom/shabakaty/downloader/ag6;->r:I

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/vh5;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/shabakaty/downloader/ag6;->r:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/vt3;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/ag6;->r:I

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 81
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    .line 82
    iput-object p1, p0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/yc5;Lcom/shabakaty/downloader/zk4;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/shabakaty/downloader/ag6;->r:I

    .line 29
    iput-object p1, p0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/zf2;Lcom/shabakaty/downloader/x72;)V
    .locals 1

    const/16 v0, 0x12

    iput v0, p0, Lcom/shabakaty/downloader/ag6;->r:I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    .line 35
    iput-object p2, p0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/zt2;)V
    .locals 10

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/ag6;->r:I

    .line 6
    sget-object v1, Lcom/shabakaty/downloader/ot6;->a:Lcom/shabakaty/downloader/kt6;

    .line 7
    const-class v1, Lcom/shabakaty/downloader/ot6;

    monitor-enter v1

    :try_start_0
    const-string v2, "common"

    const-string v4, "common"

    .line 8
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    sget-object v7, Lcom/shabakaty/downloader/tf3;->s:Lcom/shabakaty/downloader/tf3;

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 11
    sget-object v5, Lcom/shabakaty/downloader/ot6;->b:Lcom/shabakaty/downloader/bi5;

    .line 12
    invoke-virtual {v5, v2}, Lcom/shabakaty/downloader/og5;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 13
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v5, ""

    if-nez v2, :cond_0

    const-string v6, " enableClearcut"

    .line 14
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_0
    if-nez v3, :cond_1

    .line 15
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, " enableFirelog"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_1
    if-nez v0, :cond_2

    .line 16
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, " firelogEventType"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 17
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Missing required properties:"

    .line 18
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 19
    :cond_3
    new-instance v2, Ljava/lang/String;

    .line 20
    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_0
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance v9, Lcom/shabakaty/downloader/mq6;

    .line 21
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x1

    .line 22
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/shabakaty/downloader/mq6;-><init>(Ljava/lang/String;ZZLcom/shabakaty/downloader/tf3;I)V

    .line 23
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/shabakaty/downloader/ot6;->a:Lcom/shabakaty/downloader/kt6;

    if-nez v0, :cond_5

    new-instance v0, Lcom/shabakaty/downloader/kt6;

    .line 24
    invoke-direct {v0}, Lcom/shabakaty/downloader/kt6;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ot6;->a:Lcom/shabakaty/downloader/kt6;

    :cond_5
    sget-object v0, Lcom/shabakaty/downloader/ot6;->a:Lcom/shabakaty/downloader/kt6;

    .line 25
    invoke-virtual {v0, v9}, Lcom/shabakaty/downloader/rf2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/bs6;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 26
    monitor-exit v1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    iput-object v0, p0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    .line 28
    :try_start_3
    monitor-exit v1

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit v1

    throw p1
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileLock;)V
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, Lcom/shabakaty/downloader/ag6;->r:I

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    .line 78
    iput-object p2, p0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .locals 1

    const/16 v0, 0x10

    iput v0, p0, Lcom/shabakaty/downloader/ag6;->r:I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/json/JSONArray;Lorg/json/JSONArray;I)V
    .locals 0

    const/16 p1, 0x10

    iput p1, p0, Lcom/shabakaty/downloader/ag6;->r:I

    and-int/lit8 p1, p3, 0x1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 32
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/ag6;-><init>(Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    return-void
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;)Lcom/shabakaty/downloader/ag6;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    new-instance p0, Ljava/io/RandomAccessFile;

    const-string p1, "rw"

    invoke-direct {p0, v1, p1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_0 .. :try_end_0} :catch_6

    .line 3
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_1 .. :try_end_1} :catch_3

    .line 4
    :try_start_2
    new-instance v1, Lcom/shabakaty/downloader/ag6;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/ag6;-><init>(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileLock;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception p1

    goto :goto_0

    :catch_4
    move-exception p1

    goto :goto_0

    :catch_5
    move-exception p1

    :goto_0
    move-object v1, p1

    move-object p1, v0

    goto :goto_2

    :catch_6
    move-exception p0

    goto :goto_1

    :catch_7
    move-exception p0

    goto :goto_1

    :catch_8
    move-exception p0

    :goto_1
    move-object v1, p0

    move-object p0, v0

    move-object p1, p0

    :goto_2
    const-string v2, "CrossProcessLock"

    const-string v3, "encountered error while creating and acquiring the lock, ignoring"

    .line 5
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p1, :cond_0

    .line 6
    :try_start_3
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    goto :goto_3

    :catch_9
    nop

    :cond_0
    :goto_3
    if-eqz p0, :cond_1

    .line 7
    :try_start_4
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a

    :catch_a
    :cond_1
    return-object v0
.end method

.method public static final t(Lcom/shabakaty/downloader/np4;Lcom/shabakaty/downloader/yi5;Lcom/shabakaty/downloader/gj5;)I
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/shabakaty/downloader/yi5;->a(Lcom/shabakaty/downloader/np4;Ljava/util/List;)Lcom/shabakaty/downloader/gj5;

    move-result-object p0

    .line 2
    instance-of p1, p0, Lcom/shabakaty/downloader/ug5;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/shabakaty/downloader/gj5;->f()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/kl3;->m(D)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public M(Lcom/shabakaty/downloader/uk4;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    iget-object v1, p0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1
    iget-object v2, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->f:Lcom/shabakaty/downloader/as3;

    new-instance v3, Lcom/shabakaty/downloader/qz2;

    .line 2
    invoke-direct {v3, v0, p1}, Lcom/shabakaty/downloader/qz2;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/shabakaty/downloader/uk4;)V

    .line 3
    monitor-enter v2

    :try_start_0
    iget-object p1, v2, Lcom/shabakaty/downloader/as3;->b:Ljava/util/Map;

    .line 4
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/uk4;

    const/4 v4, 0x3

    if-eqz p1, :cond_2

    const-string v0, "FirebaseMessaging"

    .line 5
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Joining ongoing request for: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v1, "FirebaseMessaging"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    goto :goto_2

    :cond_2
    :try_start_1
    const-string p1, "FirebaseMessaging"

    .line 7
    invoke-static {p1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "Making new request for: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/String;

    .line 10
    invoke-direct {p1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string v4, "FirebaseMessaging"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_4
    iget-object p1, v3, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/uk4;

    .line 12
    iget-object v0, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->e:Lcom/shabakaty/downloader/nq1;

    .line 13
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uk4;->h()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 14
    iget-object v3, v0, Lcom/shabakaty/downloader/nq1;->a:Lcom/shabakaty/downloader/ec1;

    .line 15
    invoke-static {v3}, Lcom/shabakaty/downloader/rs2;->b(Lcom/shabakaty/downloader/ec1;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "*"

    .line 16
    invoke-virtual {v0, p1, v3, v5, v4}, Lcom/shabakaty/downloader/nq1;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/nq1;->a(Lcom/shabakaty/downloader/uk4;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    .line 18
    iget-object v0, v2, Lcom/shabakaty/downloader/as3;->a:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/shabakaty/downloader/yh1;

    invoke-direct {v3, v2, v1}, Lcom/shabakaty/downloader/yh1;-><init>(Lcom/shabakaty/downloader/as3;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1, v0, v3}, Lcom/shabakaty/downloader/uk4;->f(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/td0;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    iget-object v0, v2, Lcom/shabakaty/downloader/as3;->b:Ljava/util/Map;

    .line 20
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    :goto_2
    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1
.end method

.method public b()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast v0, Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/np4;
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/np4;

    .line 1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/np4;->e()Lcom/shabakaty/downloader/np4;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/np4;->i(Ljava/lang/String;Lcom/shabakaty/downloader/gj5;)V

    return-object v0
.end method

.method public d(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/pj5;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/pj5;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/pj5;->d(J)V

    :cond_0
    return-void
.end method

.method public f()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0
.end method

.method public g(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast v0, Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public h(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/uw6;

    iget-object p5, p0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    check-cast p5, Ljava/lang/String;

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object p5

    invoke-virtual {p5}, Lcom/shabakaty/downloader/de6;->e()V

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uw6;->d()V

    const/4 p5, 0x0

    if-nez p4, :cond_0

    :try_start_0
    new-array p4, p5, [B

    :cond_0
    iget-object v0, p1, Lcom/shabakaty/downloader/uw6;->x:Ljava/util/List;

    const-string v1, "null reference"

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p1, Lcom/shabakaty/downloader/uw6;->x:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0xc8

    const/16 v3, 0xcc

    if-eq p2, v2, :cond_1

    if-ne p2, v3, :cond_6

    const/16 p2, 0xcc

    :cond_1
    if-nez p3, :cond_6

    :try_start_1
    iget-object p3, p1, Lcom/shabakaty/downloader/uw6;->i:Lcom/shabakaty/downloader/bt6;

    .line 5
    iget-object p3, p3, Lcom/shabakaty/downloader/bt6;->i:Lcom/shabakaty/downloader/f96;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/uw6;->k()Lcom/shabakaty/downloader/x30;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/mn0;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 7
    invoke-virtual {p3, v2, v3}, Lcom/shabakaty/downloader/f96;->b(J)V

    iget-object p3, p1, Lcom/shabakaty/downloader/uw6;->i:Lcom/shabakaty/downloader/bt6;

    .line 8
    iget-object p3, p3, Lcom/shabakaty/downloader/bt6;->j:Lcom/shabakaty/downloader/f96;

    const-wide/16 v2, 0x0

    invoke-virtual {p3, v2, v3}, Lcom/shabakaty/downloader/f96;->b(J)V

    .line 9
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uw6;->D()V

    .line 10
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p3

    .line 11
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    const-string v4, "Successful upload. Got network response. code, size"

    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    array-length p4, p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, v4, p2, p4}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 13
    invoke-static {p2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 14
    invoke-virtual {p2}, Lcom/shabakaty/downloader/mh5;->Q()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object p4, p1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 16
    invoke-static {p4}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 17
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 18
    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/e;->e()V

    .line 19
    invoke-virtual {p4}, Lcom/shabakaty/downloader/uv6;->f()V

    .line 20
    invoke-virtual {p4}, Lcom/shabakaty/downloader/mh5;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    .line 21
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, p5
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v4, "queue"

    const-string v5, "rowid=?"

    .line 22
    invoke-virtual {v0, v4, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_2

    goto :goto_0

    .line 23
    :cond_2
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v4, "Deleted fewer rows from queue than expected"

    invoke-direct {v0, v4}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    move-exception v0

    .line 24
    :try_start_5
    iget-object p4, p4, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 25
    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p4

    .line 26
    iget-object p4, p4, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v4, "Failed to delete a bundle in a queue table"

    .line 27
    invoke-virtual {p4, v4, v0}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    throw v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_1
    move-exception p4

    .line 29
    :try_start_6
    iget-object v0, p1, Lcom/shabakaty/downloader/uw6;->y:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 30
    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_0

    .line 31
    :cond_3
    throw p4

    .line 32
    :cond_4
    iget-object p2, p1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 33
    invoke-static {p2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 34
    invoke-virtual {p2}, Lcom/shabakaty/downloader/mh5;->j()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object p2, p1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 35
    invoke-static {p2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 36
    invoke-virtual {p2}, Lcom/shabakaty/downloader/mh5;->R()V

    iput-object v1, p1, Lcom/shabakaty/downloader/uw6;->y:Ljava/util/List;

    iget-object p2, p1, Lcom/shabakaty/downloader/uw6;->b:Lcom/shabakaty/downloader/e86;

    .line 37
    invoke-static {p2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 38
    invoke-virtual {p2}, Lcom/shabakaty/downloader/e86;->j()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/shabakaty/downloader/uw6;->G()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 39
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uw6;->t()V

    goto :goto_1

    :cond_5
    const-wide/16 p2, -0x1

    .line 40
    iput-wide p2, p1, Lcom/shabakaty/downloader/uw6;->z:J

    .line 41
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uw6;->D()V

    .line 42
    :goto_1
    iput-wide v2, p1, Lcom/shabakaty/downloader/uw6;->o:J

    goto/16 :goto_2

    :catchall_0
    move-exception p2

    .line 43
    iget-object p3, p1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 44
    invoke-static {p3}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 45
    invoke-virtual {p3}, Lcom/shabakaty/downloader/mh5;->R()V

    .line 46
    throw p2
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_2
    move-exception p2

    .line 47
    :try_start_8
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p3

    .line 48
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string p4, "Database error while trying to delete uploaded bundles"

    .line 49
    invoke-virtual {p3, p4, p2}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uw6;->k()Lcom/shabakaty/downloader/x30;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/mn0;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    .line 52
    iput-wide p2, p1, Lcom/shabakaty/downloader/uw6;->o:J

    .line 53
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p2

    .line 54
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    const-string p3, "Disable upload, time"

    .line 55
    iget-wide v0, p1, Lcom/shabakaty/downloader/uw6;->o:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 56
    :cond_6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p4

    .line 57
    iget-object p4, p4, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    const-string v1, "Network upload failed. Will retry later. code, error"

    .line 58
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p4, v1, v2, p3}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p3, p1, Lcom/shabakaty/downloader/uw6;->i:Lcom/shabakaty/downloader/bt6;

    .line 59
    iget-object p3, p3, Lcom/shabakaty/downloader/bt6;->j:Lcom/shabakaty/downloader/f96;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/uw6;->k()Lcom/shabakaty/downloader/x30;

    move-result-object p4

    check-cast p4, Lcom/shabakaty/downloader/mn0;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 61
    invoke-virtual {p3, v1, v2}, Lcom/shabakaty/downloader/f96;->b(J)V

    const/16 p3, 0x1f7

    if-eq p2, p3, :cond_7

    const/16 p3, 0x1ad

    if-ne p2, p3, :cond_8

    :cond_7
    iget-object p2, p1, Lcom/shabakaty/downloader/uw6;->i:Lcom/shabakaty/downloader/bt6;

    .line 62
    iget-object p2, p2, Lcom/shabakaty/downloader/bt6;->h:Lcom/shabakaty/downloader/f96;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/uw6;->k()Lcom/shabakaty/downloader/x30;

    move-result-object p3

    check-cast p3, Lcom/shabakaty/downloader/mn0;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    .line 64
    invoke-virtual {p2, p3, p4}, Lcom/shabakaty/downloader/f96;->b(J)V

    :cond_8
    iget-object p2, p1, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 65
    invoke-static {p2}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 66
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/mh5;->S(Ljava/util/List;)V

    .line 67
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uw6;->D()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 68
    :goto_2
    iput-boolean p5, p1, Lcom/shabakaty/downloader/uw6;->t:Z

    .line 69
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uw6;->A()V

    return-void

    :catchall_1
    move-exception p2

    .line 70
    iput-boolean p5, p1, Lcom/shabakaty/downloader/uw6;->t:Z

    .line 71
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uw6;->A()V

    .line 72
    throw p2
.end method

.method public i(JILjava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/oh5;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Lcom/shabakaty/downloader/oh5;->g:Ljava/lang/Long;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/pj5;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/shabakaty/downloader/pj5;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/pj5;->i(JILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public j(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast v0, Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public l(Lcom/shabakaty/downloader/u51;)[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast v0, Ljava/io/DataOutputStream;

    iget-object v1, p1, Lcom/shabakaty/downloader/u51;->r:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 5
    iget-object v0, p1, Lcom/shabakaty/downloader/u51;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast v2, Ljava/io/DataOutputStream;

    .line 7
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast v0, Ljava/io/DataOutputStream;

    iget-wide v1, p1, Lcom/shabakaty/downloader/u51;->t:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast v0, Ljava/io/DataOutputStream;

    iget-wide v1, p1, Lcom/shabakaty/downloader/u51;->u:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast v0, Ljava/io/DataOutputStream;

    iget-object p1, p1, Lcom/shabakaty/downloader/u51;->v:[B

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast p1, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 13
    iget-object p1, p0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    check-cast p1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 14
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast v0, Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public n()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast v0, Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    check-cast v0, Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CrossProcessLock"

    const-string v2, "encountered error while releasing, ignoring"

    .line 3
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public o(Lcom/shabakaty/downloader/q62;)Lcom/shabakaty/downloader/q20;
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/q62;->e()Lcom/shabakaty/downloader/fi1;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/q62;->k()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/x72;

    check-cast p1, Lcom/shabakaty/downloader/x72$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 4
    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/q62;->l()Lcom/shabakaty/downloader/q62;

    move-result-object v2

    if-nez v2, :cond_3

    if-nez v0, :cond_1

    return-object v1

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/zf2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/fi1;->e()Lcom/shabakaty/downloader/fi1;

    move-result-object v0

    const-string v3, "fqName.parent()"

    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/zf2;->d(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/yf2;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/iq6;->q(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/yf2;

    if-nez v0, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, v0, Lcom/shabakaty/downloader/yf2;->A:Lcom/shabakaty/downloader/rb2;

    .line 9
    iget-object v0, v0, Lcom/shabakaty/downloader/rb2;->d:Lcom/shabakaty/downloader/ag2;

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-interface {p1}, Lcom/shabakaty/downloader/p72;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/ag2;->v(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/q62;)Lcom/shabakaty/downloader/q20;

    move-result-object v1

    :goto_0
    return-object v1

    .line 12
    :cond_3
    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/ag6;->o(Lcom/shabakaty/downloader/q62;)Lcom/shabakaty/downloader/q20;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->J0()Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_5

    move-object p1, v1

    goto :goto_2

    .line 13
    :cond_5
    invoke-interface {p1}, Lcom/shabakaty/downloader/p72;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object p1

    sget-object v2, Lcom/shabakaty/downloader/mz2;->J:Lcom/shabakaty/downloader/mz2;

    invoke-interface {v0, p1, v2}, Lcom/shabakaty/downloader/ls3;->g(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Lcom/shabakaty/downloader/g30;

    move-result-object p1

    :goto_2
    instance-of v0, p1, Lcom/shabakaty/downloader/q20;

    if-eqz v0, :cond_6

    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/q20;

    :cond_6
    return-object v1
.end method

.method public p()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONArray;

    const-string v2, "notification_ids"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONArray;

    const-string v2, "in_app_message_ids"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "JSONObject()\n           \u2026AM_IDS, inAppMessagesIds)"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public q(IZ)[B
    .locals 9

    iget-object v0, p0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/kw6;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 2
    iput-object v3, v0, Lcom/shabakaty/downloader/kw6;->i:Ljava/lang/Boolean;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/kw6;

    .line 4
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 5
    iput-object p2, v0, Lcom/shabakaty/downloader/kw6;->g:Ljava/lang/Boolean;

    .line 6
    iget-object p2, p0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    check-cast p2, Lcom/shabakaty/downloader/tk1;

    iget-object v0, p0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/kw6;

    .line 7
    new-instance v3, Lcom/shabakaty/downloader/ek6;

    .line 8
    invoke-direct {v3, v0}, Lcom/shabakaty/downloader/ek6;-><init>(Lcom/shabakaty/downloader/kw6;)V

    .line 9
    iput-object v3, p2, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    .line 10
    :try_start_0
    const-class p2, Lcom/shabakaty/downloader/cp6;

    monitor-enter p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    sget-object v0, Lcom/shabakaty/downloader/cp6;->r:Lcom/shabakaty/downloader/cp6;

    if-nez v0, :cond_1

    new-instance v0, Lcom/shabakaty/downloader/cp6;

    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/cp6;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/cp6;->r:Lcom/shabakaty/downloader/cp6;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    monitor-exit p2

    if-nez p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/tk1;

    .line 12
    new-instance p2, Lcom/shabakaty/downloader/pe6;

    .line 13
    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/pe6;-><init>(Lcom/shabakaty/downloader/tk1;)V

    .line 14
    new-instance p1, Lcom/shabakaty/downloader/w92;

    invoke-direct {p1}, Lcom/shabakaty/downloader/w92;-><init>()V

    sget-object v0, Lcom/shabakaty/downloader/u76;->a:Lcom/shabakaty/downloader/wa0;

    .line 15
    check-cast v0, Lcom/shabakaty/downloader/u76;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/u76;->a(Lcom/shabakaty/downloader/m31;)V

    .line 16
    iput-boolean v1, p1, Lcom/shabakaty/downloader/w92;->d:Z

    .line 17
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 18
    :try_start_3
    new-instance v1, Lcom/shabakaty/downloader/oa2;

    .line 19
    iget-object v5, p1, Lcom/shabakaty/downloader/w92;->a:Ljava/util/Map;

    .line 20
    iget-object v6, p1, Lcom/shabakaty/downloader/w92;->b:Ljava/util/Map;

    .line 21
    iget-object v7, p1, Lcom/shabakaty/downloader/w92;->c:Lcom/shabakaty/downloader/l43;

    .line 22
    iget-boolean v8, p1, Lcom/shabakaty/downloader/w92;->d:Z

    move-object v3, v1

    move-object v4, v0

    .line 23
    invoke-direct/range {v3 .. v8}, Lcom/shabakaty/downloader/oa2;-><init>(Ljava/io/Writer;Ljava/util/Map;Ljava/util/Map;Lcom/shabakaty/downloader/l43;Z)V

    .line 24
    invoke-virtual {v1, p2, v2}, Lcom/shabakaty/downloader/oa2;->g(Ljava/lang/Object;Z)Lcom/shabakaty/downloader/oa2;

    .line 25
    invoke-virtual {v1}, Lcom/shabakaty/downloader/oa2;->i()V

    .line 26
    iget-object p1, v1, Lcom/shabakaty/downloader/oa2;->b:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 27
    :catch_0
    :try_start_4
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "utf-8"

    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/tk1;

    .line 29
    new-instance p2, Lcom/shabakaty/downloader/pe6;

    .line 30
    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/pe6;-><init>(Lcom/shabakaty/downloader/tk1;)V

    .line 31
    new-instance p1, Lcom/shabakaty/downloader/aj5;

    invoke-direct {p1}, Lcom/shabakaty/downloader/aj5;-><init>()V

    .line 32
    sget-object v0, Lcom/shabakaty/downloader/u76;->a:Lcom/shabakaty/downloader/wa0;

    .line 33
    check-cast v0, Lcom/shabakaty/downloader/u76;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/u76;->a(Lcom/shabakaty/downloader/m31;)V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/shabakaty/downloader/aj5;->a:Ljava/util/Map;

    .line 35
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p1, Lcom/shabakaty/downloader/aj5;->b:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object p1, p1, Lcom/shabakaty/downloader/aj5;->c:Lcom/shabakaty/downloader/l43;

    .line 36
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2

    .line 37
    :try_start_5
    new-instance v3, Lcom/shabakaty/downloader/ki5;

    invoke-direct {v3, v2, v0, v1, p1}, Lcom/shabakaty/downloader/ki5;-><init>(Ljava/io/OutputStream;Ljava/util/Map;Ljava/util/Map;Lcom/shabakaty/downloader/l43;)V

    .line 38
    invoke-virtual {v3, p2}, Lcom/shabakaty/downloader/ki5;->h(Ljava/lang/Object;)Lcom/shabakaty/downloader/ki5;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 39
    :catch_1
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :catch_2
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 40
    monitor-exit p2

    throw p1
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_2

    .line 41
    :goto_1
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Failed to covert logging to UTF-8 byte array"

    .line 42
    invoke-direct {p2, v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public r(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/vh5;

    iget-object v1, p0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    check-cast p1, Lcom/shabakaty/downloader/cf7;

    check-cast p2, Lcom/shabakaty/downloader/zk4;

    .line 1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vh5;->e()V

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ij;->k()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gf5;

    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/gf5;->O(Ljava/lang/String;)V

    .line 3
    iget-object p1, v0, Lcom/shabakaty/downloader/vh5;->s:Ljava/lang/Object;

    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v1, v0, Lcom/shabakaty/downloader/vh5;->p:Lcom/shabakaty/downloader/zk4;

    if-eqz v1, :cond_0

    const/16 v0, 0x7d1

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/vh5;->l(I)Lcom/shabakaty/downloader/g9;

    move-result-object v0

    .line 6
    iget-object p2, p2, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/ye7;->p(Ljava/lang/Exception;)V

    .line 7
    monitor-exit p1

    goto :goto_0

    .line 8
    :cond_0
    iput-object p2, v0, Lcom/shabakaty/downloader/vh5;->p:Lcom/shabakaty/downloader/zk4;

    .line 9
    monitor-exit p1

    :goto_0
    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public s(Lcom/shabakaty/downloader/np4;Lcom/shabakaty/downloader/tk1;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/rz6;

    invoke-direct {v0, p2}, Lcom/shabakaty/downloader/rz6;-><init>(Lcom/shabakaty/downloader/tk1;)V

    iget-object v1, p0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    check-cast v1, Ljava/util/TreeMap;

    .line 2
    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 3
    iget-object v3, p2, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast v3, Lcom/shabakaty/downloader/ke5;

    .line 4
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ke5;->a()Lcom/shabakaty/downloader/ke5;

    move-result-object v3

    iget-object v4, p0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    check-cast v4, Ljava/util/TreeMap;

    .line 5
    invoke-virtual {v4, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/yi5;

    invoke-static {p1, v2, v0}, Lcom/shabakaty/downloader/ag6;->t(Lcom/shabakaty/downloader/np4;Lcom/shabakaty/downloader/yi5;Lcom/shabakaty/downloader/gj5;)I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 6
    :cond_1
    iput-object v3, p2, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_2
    iget-object p2, p0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast p2, Ljava/util/TreeMap;

    .line 8
    invoke-virtual {p2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast v2, Ljava/util/TreeMap;

    .line 9
    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/yi5;

    invoke-static {p1, v1, v0}, Lcom/shabakaty/downloader/ag6;->t(Lcom/shabakaty/downloader/np4;Lcom/shabakaty/downloader/yi5;Lcom/shabakaty/downloader/gj5;)I

    goto :goto_1

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/ag6;->r:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "OSOutcomeSourceBody{notificationIds="

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inAppMessagesIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public v(Lcom/shabakaty/downloader/uk4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/uk4<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/yc5;

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/yc5;->b:Ljava/util/Map;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/zk4;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
