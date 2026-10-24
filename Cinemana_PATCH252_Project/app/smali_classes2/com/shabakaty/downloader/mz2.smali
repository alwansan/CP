.class public final enum Lcom/shabakaty/downloader/mz2;
.super Ljava/lang/Enum;
.source "LookupLocation.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ll2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/mz2;",
        ">;",
        "Lcom/shabakaty/downloader/ll2;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/shabakaty/downloader/mz2;

.field public static final enum B:Lcom/shabakaty/downloader/mz2;

.field public static final enum C:Lcom/shabakaty/downloader/mz2;

.field public static final enum D:Lcom/shabakaty/downloader/mz2;

.field public static final enum E:Lcom/shabakaty/downloader/mz2;

.field public static final enum F:Lcom/shabakaty/downloader/mz2;

.field public static final enum G:Lcom/shabakaty/downloader/mz2;

.field public static final enum H:Lcom/shabakaty/downloader/mz2;

.field public static final enum I:Lcom/shabakaty/downloader/mz2;

.field public static final enum J:Lcom/shabakaty/downloader/mz2;

.field public static final enum K:Lcom/shabakaty/downloader/mz2;

.field public static final enum L:Lcom/shabakaty/downloader/mz2;

.field public static final enum M:Lcom/shabakaty/downloader/mz2;

.field public static final enum N:Lcom/shabakaty/downloader/mz2;

.field public static final synthetic O:[Lcom/shabakaty/downloader/mz2;

.field public static final enum r:Lcom/shabakaty/downloader/mz2;

.field public static final enum s:Lcom/shabakaty/downloader/mz2;

.field public static final enum t:Lcom/shabakaty/downloader/mz2;

.field public static final enum u:Lcom/shabakaty/downloader/mz2;

.field public static final enum v:Lcom/shabakaty/downloader/mz2;

.field public static final enum w:Lcom/shabakaty/downloader/mz2;

.field public static final enum x:Lcom/shabakaty/downloader/mz2;

.field public static final enum y:Lcom/shabakaty/downloader/mz2;

.field public static final enum z:Lcom/shabakaty/downloader/mz2;


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/mz2;

    const-string v1, "FROM_IDE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/mz2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/mz2;->r:Lcom/shabakaty/downloader/mz2;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/mz2;

    const-string v3, "FROM_BACKEND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/shabakaty/downloader/mz2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/downloader/mz2;->s:Lcom/shabakaty/downloader/mz2;

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/mz2;

    const-string v5, "FROM_TEST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/shabakaty/downloader/mz2;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/shabakaty/downloader/mz2;->t:Lcom/shabakaty/downloader/mz2;

    .line 4
    new-instance v5, Lcom/shabakaty/downloader/mz2;

    const-string v7, "FROM_BUILTINS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/shabakaty/downloader/mz2;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/shabakaty/downloader/mz2;->u:Lcom/shabakaty/downloader/mz2;

    .line 5
    new-instance v7, Lcom/shabakaty/downloader/mz2;

    const-string v9, "WHEN_CHECK_DECLARATION_CONFLICTS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/shabakaty/downloader/mz2;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/shabakaty/downloader/mz2;->v:Lcom/shabakaty/downloader/mz2;

    .line 6
    new-instance v9, Lcom/shabakaty/downloader/mz2;

    const-string v11, "WHEN_CHECK_OVERRIDES"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/shabakaty/downloader/mz2;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/shabakaty/downloader/mz2;->w:Lcom/shabakaty/downloader/mz2;

    .line 7
    new-instance v11, Lcom/shabakaty/downloader/mz2;

    const-string v13, "FOR_SCRIPT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/shabakaty/downloader/mz2;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/shabakaty/downloader/mz2;->x:Lcom/shabakaty/downloader/mz2;

    .line 8
    new-instance v13, Lcom/shabakaty/downloader/mz2;

    const-string v15, "FROM_REFLECTION"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/shabakaty/downloader/mz2;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/shabakaty/downloader/mz2;->y:Lcom/shabakaty/downloader/mz2;

    .line 9
    new-instance v15, Lcom/shabakaty/downloader/mz2;

    const-string v14, "WHEN_RESOLVE_DECLARATION"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/shabakaty/downloader/mz2;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/shabakaty/downloader/mz2;->z:Lcom/shabakaty/downloader/mz2;

    .line 10
    new-instance v14, Lcom/shabakaty/downloader/mz2;

    const-string v12, "WHEN_GET_DECLARATION_SCOPE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/shabakaty/downloader/mz2;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/shabakaty/downloader/mz2;->A:Lcom/shabakaty/downloader/mz2;

    .line 11
    new-instance v12, Lcom/shabakaty/downloader/mz2;

    const-string v10, "WHEN_RESOLVING_DEFAULT_TYPE_ARGUMENTS"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/shabakaty/downloader/mz2;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/shabakaty/downloader/mz2;->B:Lcom/shabakaty/downloader/mz2;

    .line 12
    new-instance v10, Lcom/shabakaty/downloader/mz2;

    const-string v8, "FOR_ALREADY_TRACKED"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/shabakaty/downloader/mz2;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/shabakaty/downloader/mz2;->C:Lcom/shabakaty/downloader/mz2;

    .line 13
    new-instance v8, Lcom/shabakaty/downloader/mz2;

    const-string v6, "WHEN_GET_ALL_DESCRIPTORS"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/shabakaty/downloader/mz2;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/shabakaty/downloader/mz2;->D:Lcom/shabakaty/downloader/mz2;

    .line 14
    new-instance v6, Lcom/shabakaty/downloader/mz2;

    const-string v4, "WHEN_TYPING"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/shabakaty/downloader/mz2;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/shabakaty/downloader/mz2;->E:Lcom/shabakaty/downloader/mz2;

    .line 15
    new-instance v4, Lcom/shabakaty/downloader/mz2;

    const-string v2, "WHEN_GET_SUPER_MEMBERS"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/shabakaty/downloader/mz2;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/shabakaty/downloader/mz2;->F:Lcom/shabakaty/downloader/mz2;

    .line 16
    new-instance v2, Lcom/shabakaty/downloader/mz2;

    const-string v6, "FOR_NON_TRACKED_SCOPE"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/shabakaty/downloader/mz2;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/shabakaty/downloader/mz2;->G:Lcom/shabakaty/downloader/mz2;

    .line 17
    new-instance v6, Lcom/shabakaty/downloader/mz2;

    const-string v4, "FROM_SYNTHETIC_SCOPE"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/shabakaty/downloader/mz2;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/shabakaty/downloader/mz2;->H:Lcom/shabakaty/downloader/mz2;

    .line 18
    new-instance v4, Lcom/shabakaty/downloader/mz2;

    const-string v2, "FROM_DESERIALIZATION"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/shabakaty/downloader/mz2;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/shabakaty/downloader/mz2;->I:Lcom/shabakaty/downloader/mz2;

    .line 19
    new-instance v2, Lcom/shabakaty/downloader/mz2;

    const-string v6, "FROM_JAVA_LOADER"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/shabakaty/downloader/mz2;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/shabakaty/downloader/mz2;->J:Lcom/shabakaty/downloader/mz2;

    .line 20
    new-instance v6, Lcom/shabakaty/downloader/mz2;

    const-string v4, "WHEN_GET_LOCAL_VARIABLE"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/shabakaty/downloader/mz2;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/shabakaty/downloader/mz2;->K:Lcom/shabakaty/downloader/mz2;

    .line 21
    new-instance v4, Lcom/shabakaty/downloader/mz2;

    const-string v2, "WHEN_FIND_BY_FQNAME"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/shabakaty/downloader/mz2;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/shabakaty/downloader/mz2;->L:Lcom/shabakaty/downloader/mz2;

    .line 22
    new-instance v2, Lcom/shabakaty/downloader/mz2;

    const-string v6, "WHEN_GET_COMPANION_OBJECT"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/shabakaty/downloader/mz2;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/shabakaty/downloader/mz2;->M:Lcom/shabakaty/downloader/mz2;

    .line 23
    new-instance v6, Lcom/shabakaty/downloader/mz2;

    const-string v4, "FOR_DEFAULT_IMPORTS"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lcom/shabakaty/downloader/mz2;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/shabakaty/downloader/mz2;->N:Lcom/shabakaty/downloader/mz2;

    const/16 v2, 0x17

    new-array v2, v2, [Lcom/shabakaty/downloader/mz2;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

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

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v19, v2, v0

    const/16 v0, 0x11

    aput-object v20, v2, v0

    const/16 v0, 0x12

    aput-object v21, v2, v0

    const/16 v0, 0x13

    aput-object v22, v2, v0

    const/16 v0, 0x14

    aput-object v23, v2, v0

    const/16 v0, 0x15

    aput-object v24, v2, v0

    const/16 v0, 0x16

    aput-object v6, v2, v0

    sput-object v2, Lcom/shabakaty/downloader/mz2;->O:[Lcom/shabakaty/downloader/mz2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/mz2;
    .locals 1

    const-class v0, Lcom/shabakaty/downloader/mz2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/mz2;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/mz2;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/mz2;->O:[Lcom/shabakaty/downloader/mz2;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/mz2;

    return-object v0
.end method


# virtual methods
.method public h()Lcom/shabakaty/downloader/xj2;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
