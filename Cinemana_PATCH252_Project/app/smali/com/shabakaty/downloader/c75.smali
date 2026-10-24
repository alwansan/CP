.class public enum Lcom/shabakaty/downloader/c75;
.super Ljava/lang/Enum;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/c75;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/shabakaty/downloader/c75;

.field public static final enum B:Lcom/shabakaty/downloader/c75;

.field public static final enum C:Lcom/shabakaty/downloader/c75;

.field public static final enum D:Lcom/shabakaty/downloader/c75;

.field public static final enum E:Lcom/shabakaty/downloader/c75;

.field public static final enum F:Lcom/shabakaty/downloader/c75;

.field public static final enum G:Lcom/shabakaty/downloader/c75;

.field public static final enum H:Lcom/shabakaty/downloader/c75;

.field public static final enum I:Lcom/shabakaty/downloader/c75;

.field public static final enum J:Lcom/shabakaty/downloader/c75;

.field public static final enum K:Lcom/shabakaty/downloader/c75;

.field public static final synthetic L:[Lcom/shabakaty/downloader/c75;

.field public static final enum t:Lcom/shabakaty/downloader/c75;

.field public static final enum u:Lcom/shabakaty/downloader/c75;

.field public static final enum v:Lcom/shabakaty/downloader/c75;

.field public static final enum w:Lcom/shabakaty/downloader/c75;

.field public static final enum x:Lcom/shabakaty/downloader/c75;

.field public static final enum y:Lcom/shabakaty/downloader/c75;

.field public static final enum z:Lcom/shabakaty/downloader/c75;


# instance fields
.field public final r:Lcom/shabakaty/downloader/e75;

.field public final s:I


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/c75;

    sget-object v1, Lcom/shabakaty/downloader/e75;->v:Lcom/shabakaty/downloader/e75;

    const-string v2, "DOUBLE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/shabakaty/downloader/c75;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/e75;I)V

    sput-object v0, Lcom/shabakaty/downloader/c75;->t:Lcom/shabakaty/downloader/c75;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/c75;

    sget-object v2, Lcom/shabakaty/downloader/e75;->u:Lcom/shabakaty/downloader/e75;

    const-string v5, "FLOAT"

    const/4 v6, 0x5

    invoke-direct {v1, v5, v4, v2, v6}, Lcom/shabakaty/downloader/c75;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/e75;I)V

    sput-object v1, Lcom/shabakaty/downloader/c75;->u:Lcom/shabakaty/downloader/c75;

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/c75;

    sget-object v5, Lcom/shabakaty/downloader/e75;->t:Lcom/shabakaty/downloader/e75;

    const-string v7, "INT64"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v5, v3}, Lcom/shabakaty/downloader/c75;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/e75;I)V

    sput-object v2, Lcom/shabakaty/downloader/c75;->v:Lcom/shabakaty/downloader/c75;

    .line 4
    new-instance v7, Lcom/shabakaty/downloader/c75;

    const-string v9, "UINT64"

    const/4 v10, 0x3

    invoke-direct {v7, v9, v10, v5, v3}, Lcom/shabakaty/downloader/c75;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/e75;I)V

    sput-object v7, Lcom/shabakaty/downloader/c75;->w:Lcom/shabakaty/downloader/c75;

    .line 5
    new-instance v9, Lcom/shabakaty/downloader/c75;

    sget-object v11, Lcom/shabakaty/downloader/e75;->s:Lcom/shabakaty/downloader/e75;

    const-string v12, "INT32"

    const/4 v13, 0x4

    invoke-direct {v9, v12, v13, v11, v3}, Lcom/shabakaty/downloader/c75;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/e75;I)V

    sput-object v9, Lcom/shabakaty/downloader/c75;->x:Lcom/shabakaty/downloader/c75;

    .line 6
    new-instance v12, Lcom/shabakaty/downloader/c75;

    const-string v14, "FIXED64"

    invoke-direct {v12, v14, v6, v5, v4}, Lcom/shabakaty/downloader/c75;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/e75;I)V

    sput-object v12, Lcom/shabakaty/downloader/c75;->y:Lcom/shabakaty/downloader/c75;

    .line 7
    new-instance v14, Lcom/shabakaty/downloader/c75;

    const-string v15, "FIXED32"

    const/4 v13, 0x6

    invoke-direct {v14, v15, v13, v11, v6}, Lcom/shabakaty/downloader/c75;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/e75;I)V

    sput-object v14, Lcom/shabakaty/downloader/c75;->z:Lcom/shabakaty/downloader/c75;

    .line 8
    new-instance v15, Lcom/shabakaty/downloader/c75;

    sget-object v13, Lcom/shabakaty/downloader/e75;->w:Lcom/shabakaty/downloader/e75;

    const-string v4, "BOOL"

    const/4 v6, 0x7

    invoke-direct {v15, v4, v6, v13, v3}, Lcom/shabakaty/downloader/c75;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/e75;I)V

    sput-object v15, Lcom/shabakaty/downloader/c75;->A:Lcom/shabakaty/downloader/c75;

    .line 9
    new-instance v4, Lcom/shabakaty/downloader/c75$a;

    sget-object v13, Lcom/shabakaty/downloader/e75;->x:Lcom/shabakaty/downloader/e75;

    const-string v6, "STRING"

    const/16 v3, 0x8

    invoke-direct {v4, v6, v3, v13, v8}, Lcom/shabakaty/downloader/c75$a;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/e75;I)V

    sput-object v4, Lcom/shabakaty/downloader/c75;->B:Lcom/shabakaty/downloader/c75;

    .line 10
    new-instance v6, Lcom/shabakaty/downloader/c75$b;

    sget-object v13, Lcom/shabakaty/downloader/e75;->A:Lcom/shabakaty/downloader/e75;

    const-string v3, "GROUP"

    const/16 v8, 0x9

    invoke-direct {v6, v3, v8, v13, v10}, Lcom/shabakaty/downloader/c75$b;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/e75;I)V

    sput-object v6, Lcom/shabakaty/downloader/c75;->C:Lcom/shabakaty/downloader/c75;

    .line 11
    new-instance v3, Lcom/shabakaty/downloader/c75$c;

    const-string v8, "MESSAGE"

    const/16 v10, 0xa

    move-object/from16 v16, v6

    const/4 v6, 0x2

    invoke-direct {v3, v8, v10, v13, v6}, Lcom/shabakaty/downloader/c75$c;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/e75;I)V

    sput-object v3, Lcom/shabakaty/downloader/c75;->D:Lcom/shabakaty/downloader/c75;

    .line 12
    new-instance v8, Lcom/shabakaty/downloader/c75$d;

    sget-object v13, Lcom/shabakaty/downloader/e75;->y:Lcom/shabakaty/downloader/e75;

    const-string v10, "BYTES"

    move-object/from16 v17, v3

    const/16 v3, 0xb

    invoke-direct {v8, v10, v3, v13, v6}, Lcom/shabakaty/downloader/c75$d;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/e75;I)V

    sput-object v8, Lcom/shabakaty/downloader/c75;->E:Lcom/shabakaty/downloader/c75;

    .line 13
    new-instance v6, Lcom/shabakaty/downloader/c75;

    const-string v10, "UINT32"

    const/16 v13, 0xc

    const/4 v3, 0x0

    invoke-direct {v6, v10, v13, v11, v3}, Lcom/shabakaty/downloader/c75;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/e75;I)V

    sput-object v6, Lcom/shabakaty/downloader/c75;->F:Lcom/shabakaty/downloader/c75;

    .line 14
    new-instance v10, Lcom/shabakaty/downloader/c75;

    sget-object v13, Lcom/shabakaty/downloader/e75;->z:Lcom/shabakaty/downloader/e75;

    move-object/from16 v18, v6

    const-string v6, "ENUM"

    move-object/from16 v19, v8

    const/16 v8, 0xd

    invoke-direct {v10, v6, v8, v13, v3}, Lcom/shabakaty/downloader/c75;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/e75;I)V

    sput-object v10, Lcom/shabakaty/downloader/c75;->G:Lcom/shabakaty/downloader/c75;

    .line 15
    new-instance v3, Lcom/shabakaty/downloader/c75;

    const-string v6, "SFIXED32"

    const/16 v13, 0xe

    const/4 v8, 0x5

    invoke-direct {v3, v6, v13, v11, v8}, Lcom/shabakaty/downloader/c75;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/e75;I)V

    sput-object v3, Lcom/shabakaty/downloader/c75;->H:Lcom/shabakaty/downloader/c75;

    .line 16
    new-instance v6, Lcom/shabakaty/downloader/c75;

    const-string v8, "SFIXED64"

    const/16 v13, 0xf

    move-object/from16 v20, v3

    const/4 v3, 0x1

    invoke-direct {v6, v8, v13, v5, v3}, Lcom/shabakaty/downloader/c75;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/e75;I)V

    sput-object v6, Lcom/shabakaty/downloader/c75;->I:Lcom/shabakaty/downloader/c75;

    .line 17
    new-instance v3, Lcom/shabakaty/downloader/c75;

    const-string v8, "SINT32"

    const/16 v13, 0x10

    move-object/from16 v21, v6

    const/4 v6, 0x0

    invoke-direct {v3, v8, v13, v11, v6}, Lcom/shabakaty/downloader/c75;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/e75;I)V

    sput-object v3, Lcom/shabakaty/downloader/c75;->J:Lcom/shabakaty/downloader/c75;

    .line 18
    new-instance v8, Lcom/shabakaty/downloader/c75;

    const-string v11, "SINT64"

    const/16 v13, 0x11

    invoke-direct {v8, v11, v13, v5, v6}, Lcom/shabakaty/downloader/c75;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/e75;I)V

    sput-object v8, Lcom/shabakaty/downloader/c75;->K:Lcom/shabakaty/downloader/c75;

    const/16 v5, 0x12

    new-array v5, v5, [Lcom/shabakaty/downloader/c75;

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v7, v5, v0

    const/4 v0, 0x4

    aput-object v9, v5, v0

    const/4 v0, 0x5

    aput-object v12, v5, v0

    const/4 v0, 0x6

    aput-object v14, v5, v0

    const/4 v0, 0x7

    aput-object v15, v5, v0

    const/16 v0, 0x8

    aput-object v4, v5, v0

    const/16 v0, 0x9

    aput-object v16, v5, v0

    const/16 v0, 0xa

    aput-object v17, v5, v0

    const/16 v0, 0xb

    aput-object v19, v5, v0

    const/16 v0, 0xc

    aput-object v18, v5, v0

    const/16 v0, 0xd

    aput-object v10, v5, v0

    const/16 v0, 0xe

    aput-object v20, v5, v0

    const/16 v0, 0xf

    aput-object v21, v5, v0

    const/16 v0, 0x10

    aput-object v3, v5, v0

    aput-object v8, v5, v13

    .line 19
    sput-object v5, Lcom/shabakaty/downloader/c75;->L:[Lcom/shabakaty/downloader/c75;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/shabakaty/downloader/e75;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/e75;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/shabakaty/downloader/c75;->r:Lcom/shabakaty/downloader/e75;

    .line 3
    iput p4, p0, Lcom/shabakaty/downloader/c75;->s:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/shabakaty/downloader/e75;ILcom/shabakaty/downloader/a75;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    iput-object p3, p0, Lcom/shabakaty/downloader/c75;->r:Lcom/shabakaty/downloader/e75;

    .line 6
    iput p4, p0, Lcom/shabakaty/downloader/c75;->s:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/c75;
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/c75;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/c75;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/c75;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/c75;->L:[Lcom/shabakaty/downloader/c75;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/c75;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/c75;

    return-object v0
.end method
