.class public final enum Lcom/shabakaty/downloader/br0;
.super Ljava/lang/Enum;
.source "DescriptorRenderer.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/br0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/shabakaty/downloader/br0;

.field public static final enum B:Lcom/shabakaty/downloader/br0;

.field public static final enum C:Lcom/shabakaty/downloader/br0;

.field public static final enum D:Lcom/shabakaty/downloader/br0;

.field public static final enum E:Lcom/shabakaty/downloader/br0;

.field public static final enum F:Lcom/shabakaty/downloader/br0;

.field public static final enum G:Lcom/shabakaty/downloader/br0;

.field public static final enum H:Lcom/shabakaty/downloader/br0;

.field public static final synthetic I:[Lcom/shabakaty/downloader/br0;

.field public static final s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/br0;",
            ">;"
        }
    .end annotation
.end field

.field public static final t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/br0;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum u:Lcom/shabakaty/downloader/br0;

.field public static final enum v:Lcom/shabakaty/downloader/br0;

.field public static final enum w:Lcom/shabakaty/downloader/br0;

.field public static final enum x:Lcom/shabakaty/downloader/br0;

.field public static final enum y:Lcom/shabakaty/downloader/br0;

.field public static final enum z:Lcom/shabakaty/downloader/br0;


# instance fields
.field public final r:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/br0;

    const-string v1, "VISIBILITY"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/shabakaty/downloader/br0;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/shabakaty/downloader/br0;->u:Lcom/shabakaty/downloader/br0;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/br0;

    const-string v4, "MODALITY"

    invoke-direct {v1, v4, v3, v3}, Lcom/shabakaty/downloader/br0;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/shabakaty/downloader/br0;->v:Lcom/shabakaty/downloader/br0;

    .line 3
    new-instance v4, Lcom/shabakaty/downloader/br0;

    const-string v5, "OVERRIDE"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v3}, Lcom/shabakaty/downloader/br0;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lcom/shabakaty/downloader/br0;->w:Lcom/shabakaty/downloader/br0;

    .line 4
    new-instance v5, Lcom/shabakaty/downloader/br0;

    const-string v7, "ANNOTATIONS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2}, Lcom/shabakaty/downloader/br0;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcom/shabakaty/downloader/br0;->x:Lcom/shabakaty/downloader/br0;

    .line 5
    new-instance v7, Lcom/shabakaty/downloader/br0;

    const-string v9, "INNER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v3}, Lcom/shabakaty/downloader/br0;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lcom/shabakaty/downloader/br0;->y:Lcom/shabakaty/downloader/br0;

    .line 6
    new-instance v9, Lcom/shabakaty/downloader/br0;

    const-string v11, "MEMBER_KIND"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v3}, Lcom/shabakaty/downloader/br0;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, Lcom/shabakaty/downloader/br0;->z:Lcom/shabakaty/downloader/br0;

    .line 7
    new-instance v11, Lcom/shabakaty/downloader/br0;

    const-string v13, "DATA"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v3}, Lcom/shabakaty/downloader/br0;-><init>(Ljava/lang/String;IZ)V

    sput-object v11, Lcom/shabakaty/downloader/br0;->A:Lcom/shabakaty/downloader/br0;

    .line 8
    new-instance v13, Lcom/shabakaty/downloader/br0;

    const-string v15, "INLINE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v3}, Lcom/shabakaty/downloader/br0;-><init>(Ljava/lang/String;IZ)V

    sput-object v13, Lcom/shabakaty/downloader/br0;->B:Lcom/shabakaty/downloader/br0;

    .line 9
    new-instance v15, Lcom/shabakaty/downloader/br0;

    const-string v14, "EXPECT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v3}, Lcom/shabakaty/downloader/br0;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Lcom/shabakaty/downloader/br0;->C:Lcom/shabakaty/downloader/br0;

    .line 10
    new-instance v14, Lcom/shabakaty/downloader/br0;

    const-string v12, "ACTUAL"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v3}, Lcom/shabakaty/downloader/br0;-><init>(Ljava/lang/String;IZ)V

    sput-object v14, Lcom/shabakaty/downloader/br0;->D:Lcom/shabakaty/downloader/br0;

    .line 11
    new-instance v12, Lcom/shabakaty/downloader/br0;

    const-string v10, "CONST"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v3}, Lcom/shabakaty/downloader/br0;-><init>(Ljava/lang/String;IZ)V

    sput-object v12, Lcom/shabakaty/downloader/br0;->E:Lcom/shabakaty/downloader/br0;

    .line 12
    new-instance v10, Lcom/shabakaty/downloader/br0;

    const-string v8, "LATEINIT"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v3}, Lcom/shabakaty/downloader/br0;-><init>(Ljava/lang/String;IZ)V

    sput-object v10, Lcom/shabakaty/downloader/br0;->F:Lcom/shabakaty/downloader/br0;

    .line 13
    new-instance v8, Lcom/shabakaty/downloader/br0;

    const-string v6, "FUN"

    const/16 v2, 0xc

    invoke-direct {v8, v6, v2, v3}, Lcom/shabakaty/downloader/br0;-><init>(Ljava/lang/String;IZ)V

    sput-object v8, Lcom/shabakaty/downloader/br0;->G:Lcom/shabakaty/downloader/br0;

    .line 14
    new-instance v6, Lcom/shabakaty/downloader/br0;

    const-string v2, "VALUE"

    move-object/from16 v17, v8

    const/16 v8, 0xd

    invoke-direct {v6, v2, v8, v3}, Lcom/shabakaty/downloader/br0;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Lcom/shabakaty/downloader/br0;->H:Lcom/shabakaty/downloader/br0;

    const/16 v2, 0xe

    new-array v2, v2, [Lcom/shabakaty/downloader/br0;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    aput-object v1, v2, v3

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v17, v2, v0

    aput-object v6, v2, v8

    sput-object v2, Lcom/shabakaty/downloader/br0;->I:[Lcom/shabakaty/downloader/br0;

    .line 15
    invoke-static {}, Lcom/shabakaty/downloader/br0;->values()[Lcom/shabakaty/downloader/br0;

    move-result-object v0

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    array-length v2, v0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    .line 18
    iget-boolean v5, v4, Lcom/shabakaty/downloader/br0;->r:Z

    if-eqz v5, :cond_0

    .line 19
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/shabakaty/downloader/m50;->B0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/br0;->s:Ljava/util/Set;

    .line 20
    invoke-static {}, Lcom/shabakaty/downloader/br0;->values()[Lcom/shabakaty/downloader/br0;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/id;->e0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/br0;->t:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/shabakaty/downloader/br0;->r:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/br0;
    .locals 1

    const-class v0, Lcom/shabakaty/downloader/br0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/br0;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/br0;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/br0;->I:[Lcom/shabakaty/downloader/br0;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/br0;

    return-object v0
.end method
