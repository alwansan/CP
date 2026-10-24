.class public final enum Lcom/shabakaty/downloader/sb2;
.super Ljava/lang/Enum;
.source "JvmPrimitiveType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/sb2;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/shabakaty/downloader/sb2;

.field public static final enum B:Lcom/shabakaty/downloader/sb2;

.field public static final enum C:Lcom/shabakaty/downloader/sb2;

.field public static final D:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/fi1;",
            ">;"
        }
    .end annotation
.end field

.field public static final E:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/sb2;",
            ">;"
        }
    .end annotation
.end field

.field public static final F:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/sf3;",
            "Lcom/shabakaty/downloader/sb2;",
            ">;"
        }
    .end annotation
.end field

.field public static final G:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/sb2;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic H:[Lcom/shabakaty/downloader/sb2;

.field public static final enum v:Lcom/shabakaty/downloader/sb2;

.field public static final enum w:Lcom/shabakaty/downloader/sb2;

.field public static final enum x:Lcom/shabakaty/downloader/sb2;

.field public static final enum y:Lcom/shabakaty/downloader/sb2;

.field public static final enum z:Lcom/shabakaty/downloader/sb2;


# instance fields
.field public final r:Lcom/shabakaty/downloader/sf3;

.field public final s:Ljava/lang/String;

.field public final t:Ljava/lang/String;

.field public final u:Lcom/shabakaty/downloader/fi1;


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v7, Lcom/shabakaty/downloader/sb2;

    sget-object v3, Lcom/shabakaty/downloader/sf3;->w:Lcom/shabakaty/downloader/sf3;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x0

    const-string v4, "boolean"

    const-string v5, "Z"

    const-string v6, "java.lang.Boolean"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/sb2;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/sf3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/shabakaty/downloader/sb2;->v:Lcom/shabakaty/downloader/sb2;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/sb2;

    sget-object v11, Lcom/shabakaty/downloader/sf3;->x:Lcom/shabakaty/downloader/sf3;

    const-string v9, "CHAR"

    const/4 v10, 0x1

    const-string v12, "char"

    const-string v13, "C"

    const-string v14, "java.lang.Character"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/shabakaty/downloader/sb2;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/sf3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/sb2;->w:Lcom/shabakaty/downloader/sb2;

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/sb2;

    sget-object v18, Lcom/shabakaty/downloader/sf3;->y:Lcom/shabakaty/downloader/sf3;

    const-string v16, "BYTE"

    const/16 v17, 0x2

    const-string v19, "byte"

    const-string v20, "B"

    const-string v21, "java.lang.Byte"

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lcom/shabakaty/downloader/sb2;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/sf3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/shabakaty/downloader/sb2;->x:Lcom/shabakaty/downloader/sb2;

    .line 4
    new-instance v2, Lcom/shabakaty/downloader/sb2;

    sget-object v11, Lcom/shabakaty/downloader/sf3;->z:Lcom/shabakaty/downloader/sf3;

    const-string v9, "SHORT"

    const/4 v10, 0x3

    const-string v12, "short"

    const-string v13, "S"

    const-string v14, "java.lang.Short"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/shabakaty/downloader/sb2;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/sf3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/shabakaty/downloader/sb2;->y:Lcom/shabakaty/downloader/sb2;

    .line 5
    new-instance v3, Lcom/shabakaty/downloader/sb2;

    sget-object v18, Lcom/shabakaty/downloader/sf3;->A:Lcom/shabakaty/downloader/sf3;

    const-string v16, "INT"

    const/16 v17, 0x4

    const-string v19, "int"

    const-string v20, "I"

    const-string v21, "java.lang.Integer"

    move-object v15, v3

    invoke-direct/range {v15 .. v21}, Lcom/shabakaty/downloader/sb2;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/sf3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/shabakaty/downloader/sb2;->z:Lcom/shabakaty/downloader/sb2;

    .line 6
    new-instance v4, Lcom/shabakaty/downloader/sb2;

    sget-object v11, Lcom/shabakaty/downloader/sf3;->B:Lcom/shabakaty/downloader/sf3;

    const-string v9, "FLOAT"

    const/4 v10, 0x5

    const-string v12, "float"

    const-string v13, "F"

    const-string v14, "java.lang.Float"

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Lcom/shabakaty/downloader/sb2;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/sf3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/shabakaty/downloader/sb2;->A:Lcom/shabakaty/downloader/sb2;

    .line 7
    new-instance v5, Lcom/shabakaty/downloader/sb2;

    sget-object v18, Lcom/shabakaty/downloader/sf3;->C:Lcom/shabakaty/downloader/sf3;

    const-string v16, "LONG"

    const/16 v17, 0x6

    const-string v19, "long"

    const-string v20, "J"

    const-string v21, "java.lang.Long"

    move-object v15, v5

    invoke-direct/range {v15 .. v21}, Lcom/shabakaty/downloader/sb2;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/sf3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/shabakaty/downloader/sb2;->B:Lcom/shabakaty/downloader/sb2;

    .line 8
    new-instance v6, Lcom/shabakaty/downloader/sb2;

    sget-object v11, Lcom/shabakaty/downloader/sf3;->D:Lcom/shabakaty/downloader/sf3;

    const-string v9, "DOUBLE"

    const/4 v10, 0x7

    const-string v12, "double"

    const-string v13, "D"

    const-string v14, "java.lang.Double"

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lcom/shabakaty/downloader/sb2;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/sf3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/shabakaty/downloader/sb2;->C:Lcom/shabakaty/downloader/sb2;

    const/16 v8, 0x8

    new-array v8, v8, [Lcom/shabakaty/downloader/sb2;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const/4 v7, 0x1

    aput-object v0, v8, v7

    const/4 v0, 0x2

    aput-object v1, v8, v0

    const/4 v0, 0x3

    aput-object v2, v8, v0

    const/4 v0, 0x4

    aput-object v3, v8, v0

    const/4 v0, 0x5

    aput-object v4, v8, v0

    const/4 v0, 0x6

    aput-object v5, v8, v0

    const/4 v0, 0x7

    aput-object v6, v8, v0

    .line 9
    sput-object v8, Lcom/shabakaty/downloader/sb2;->H:[Lcom/shabakaty/downloader/sb2;

    .line 10
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/sb2;->D:Ljava/util/Set;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/sb2;->E:Ljava/util/Map;

    .line 12
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/shabakaty/downloader/sf3;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/shabakaty/downloader/sb2;->F:Ljava/util/Map;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/sb2;->G:Ljava/util/Map;

    .line 14
    invoke-static {}, Lcom/shabakaty/downloader/sb2;->values()[Lcom/shabakaty/downloader/sb2;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v9, v1, :cond_1

    aget-object v2, v0, v9

    .line 15
    sget-object v3, Lcom/shabakaty/downloader/sb2;->D:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/sb2;->u()Lcom/shabakaty/downloader/fi1;

    move-result-object v4

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object v3, Lcom/shabakaty/downloader/sb2;->E:Ljava/util/Map;

    .line 17
    iget-object v4, v2, Lcom/shabakaty/downloader/sb2;->s:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 18
    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v3, Lcom/shabakaty/downloader/sb2;->F:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/sb2;->n()Lcom/shabakaty/downloader/sf3;

    move-result-object v4

    check-cast v3, Ljava/util/EnumMap;

    invoke-virtual {v3, v4, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v3, Lcom/shabakaty/downloader/sb2;->G:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/sb2;->j()Ljava/lang/String;

    move-result-object v4

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    .line 21
    invoke-static {v0}, Lcom/shabakaty/downloader/sb2;->f(I)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/shabakaty/downloader/sf3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/sf3;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/shabakaty/downloader/sb2;->r:Lcom/shabakaty/downloader/sf3;

    .line 3
    iput-object p4, p0, Lcom/shabakaty/downloader/sb2;->s:Ljava/lang/String;

    .line 4
    iput-object p5, p0, Lcom/shabakaty/downloader/sb2;->t:Ljava/lang/String;

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/fi1;

    invoke-direct {p1, p6}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/sb2;->u:Lcom/shabakaty/downloader/fi1;

    return-void

    :cond_0
    const/4 p1, 0x6

    .line 6
    invoke-static {p1}, Lcom/shabakaty/downloader/sb2;->f(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public static synthetic f(I)V
    .locals 7

    const/4 v0, 0x4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    :pswitch_0
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_0
    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_1

    const/4 v3, 0x3

    goto :goto_1

    :cond_1
    :pswitch_1
    const/4 v3, 0x2

    :goto_1
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "kotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType"

    const/4 v5, 0x0

    packed-switch p0, :pswitch_data_2

    const-string v6, "className"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_2
    const-string v6, "wrapperClassName"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_3
    const-string v6, "primitiveType"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_4
    const-string v6, "desc"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_5
    const-string v6, "type"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_6
    aput-object v4, v3, v5

    goto :goto_2

    :pswitch_7
    const-string v6, "name"

    aput-object v6, v3, v5

    :goto_2
    const-string v5, "get"

    const/4 v6, 0x1

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_3

    aput-object v4, v3, v6

    goto :goto_3

    :pswitch_8
    const-string v4, "getWrapperFqName"

    aput-object v4, v3, v6

    goto :goto_3

    :pswitch_9
    const-string v4, "getDesc"

    aput-object v4, v3, v6

    goto :goto_3

    :pswitch_a
    const-string v4, "getJavaKeywordName"

    aput-object v4, v3, v6

    goto :goto_3

    :pswitch_b
    const-string v4, "getPrimitiveType"

    aput-object v4, v3, v6

    goto :goto_3

    :cond_2
    aput-object v5, v3, v6

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v4, "isWrapperClassName"

    aput-object v4, v3, v1

    goto :goto_4

    :pswitch_c
    const-string v4, "<init>"

    aput-object v4, v3, v1

    goto :goto_4

    :pswitch_d
    const-string v4, "getByDesc"

    aput-object v4, v3, v1

    goto :goto_4

    :pswitch_e
    aput-object v5, v3, v1

    :goto_4
    :pswitch_f
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_3

    packed-switch p0, :pswitch_data_5

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_3
    :pswitch_10
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_4
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xa
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_e
        :pswitch_f
        :pswitch_e
        :pswitch_f
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xa
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method public static h(Ljava/lang/String;)Lcom/shabakaty/downloader/sb2;
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/sb2;->E:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/sb2;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Non-primitive type name passed: "

    invoke-static {v1, p0}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/sb2;
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/sb2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/sb2;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/sb2;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/sb2;->H:[Lcom/shabakaty/downloader/sb2;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/sb2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/sb2;

    return-object v0
.end method


# virtual methods
.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sb2;->t:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/shabakaty/downloader/sb2;->f(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public n()Lcom/shabakaty/downloader/sf3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sb2;->r:Lcom/shabakaty/downloader/sf3;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/shabakaty/downloader/sb2;->f(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public u()Lcom/shabakaty/downloader/fi1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sb2;->u:Lcom/shabakaty/downloader/fi1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/shabakaty/downloader/sb2;->f(I)V

    const/4 v0, 0x0

    throw v0
.end method
