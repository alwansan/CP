.class public final enum Lcom/shabakaty/downloader/rw6;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"

# interfaces
.implements Lcom/shabakaty/downloader/g26;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/rw6;",
        ">;",
        "Lcom/shabakaty/downloader/g26;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/shabakaty/downloader/rw6;

.field public static final enum B:Lcom/shabakaty/downloader/rw6;

.field public static final enum C:Lcom/shabakaty/downloader/rw6;

.field public static final enum D:Lcom/shabakaty/downloader/rw6;

.field public static final enum E:Lcom/shabakaty/downloader/rw6;

.field public static final synthetic F:[Lcom/shabakaty/downloader/rw6;

.field public static final enum s:Lcom/shabakaty/downloader/rw6;

.field public static final enum t:Lcom/shabakaty/downloader/rw6;

.field public static final enum u:Lcom/shabakaty/downloader/rw6;

.field public static final enum v:Lcom/shabakaty/downloader/rw6;

.field public static final enum w:Lcom/shabakaty/downloader/rw6;

.field public static final enum x:Lcom/shabakaty/downloader/rw6;

.field public static final enum y:Lcom/shabakaty/downloader/rw6;

.field public static final enum z:Lcom/shabakaty/downloader/rw6;


# instance fields
.field public final r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    new-instance v0, Lcom/shabakaty/downloader/rw6;

    const-string v1, "UNRECOGNIZED"

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2, v2}, Lcom/shabakaty/downloader/rw6;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/shabakaty/downloader/rw6;

    const-string v3, "CODE_128"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4, v4}, Lcom/shabakaty/downloader/rw6;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/shabakaty/downloader/rw6;->s:Lcom/shabakaty/downloader/rw6;

    new-instance v3, Lcom/shabakaty/downloader/rw6;

    const-string v5, "CODE_39"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6, v6}, Lcom/shabakaty/downloader/rw6;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/shabakaty/downloader/rw6;->t:Lcom/shabakaty/downloader/rw6;

    new-instance v5, Lcom/shabakaty/downloader/rw6;

    const-string v7, "CODE_93"

    const/4 v8, 0x3

    .line 4
    invoke-direct {v5, v7, v8, v8}, Lcom/shabakaty/downloader/rw6;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/shabakaty/downloader/rw6;->u:Lcom/shabakaty/downloader/rw6;

    new-instance v7, Lcom/shabakaty/downloader/rw6;

    const-string v9, "CODABAR"

    const/4 v10, 0x4

    .line 5
    invoke-direct {v7, v9, v10, v10}, Lcom/shabakaty/downloader/rw6;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/shabakaty/downloader/rw6;->v:Lcom/shabakaty/downloader/rw6;

    new-instance v9, Lcom/shabakaty/downloader/rw6;

    const-string v11, "DATA_MATRIX"

    const/4 v12, 0x5

    .line 6
    invoke-direct {v9, v11, v12, v12}, Lcom/shabakaty/downloader/rw6;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/shabakaty/downloader/rw6;->w:Lcom/shabakaty/downloader/rw6;

    new-instance v11, Lcom/shabakaty/downloader/rw6;

    const-string v13, "EAN_13"

    const/4 v14, 0x6

    .line 7
    invoke-direct {v11, v13, v14, v14}, Lcom/shabakaty/downloader/rw6;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/shabakaty/downloader/rw6;->x:Lcom/shabakaty/downloader/rw6;

    new-instance v13, Lcom/shabakaty/downloader/rw6;

    const-string v15, "EAN_8"

    const/4 v14, 0x7

    .line 8
    invoke-direct {v13, v15, v14, v14}, Lcom/shabakaty/downloader/rw6;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/shabakaty/downloader/rw6;->y:Lcom/shabakaty/downloader/rw6;

    new-instance v15, Lcom/shabakaty/downloader/rw6;

    const-string v14, "ITF"

    const/16 v12, 0x8

    .line 9
    invoke-direct {v15, v14, v12, v12}, Lcom/shabakaty/downloader/rw6;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/shabakaty/downloader/rw6;->z:Lcom/shabakaty/downloader/rw6;

    new-instance v14, Lcom/shabakaty/downloader/rw6;

    const-string v12, "QR_CODE"

    const/16 v10, 0x9

    .line 10
    invoke-direct {v14, v12, v10, v10}, Lcom/shabakaty/downloader/rw6;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/shabakaty/downloader/rw6;->A:Lcom/shabakaty/downloader/rw6;

    new-instance v12, Lcom/shabakaty/downloader/rw6;

    const-string v10, "UPC_A"

    const/16 v8, 0xa

    .line 11
    invoke-direct {v12, v10, v8, v8}, Lcom/shabakaty/downloader/rw6;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/shabakaty/downloader/rw6;->B:Lcom/shabakaty/downloader/rw6;

    new-instance v10, Lcom/shabakaty/downloader/rw6;

    const-string v8, "UPC_E"

    const/16 v6, 0xb

    .line 12
    invoke-direct {v10, v8, v6, v6}, Lcom/shabakaty/downloader/rw6;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/shabakaty/downloader/rw6;->C:Lcom/shabakaty/downloader/rw6;

    new-instance v8, Lcom/shabakaty/downloader/rw6;

    const-string v6, "PDF417"

    const/16 v4, 0xc

    .line 13
    invoke-direct {v8, v6, v4, v4}, Lcom/shabakaty/downloader/rw6;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/shabakaty/downloader/rw6;->D:Lcom/shabakaty/downloader/rw6;

    new-instance v6, Lcom/shabakaty/downloader/rw6;

    const-string v4, "AZTEC"

    const/16 v2, 0xd

    .line 14
    invoke-direct {v6, v4, v2, v2}, Lcom/shabakaty/downloader/rw6;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/shabakaty/downloader/rw6;->E:Lcom/shabakaty/downloader/rw6;

    new-instance v4, Lcom/shabakaty/downloader/rw6;

    const-string v2, "DATABAR"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    .line 15
    invoke-direct {v4, v2, v6, v6}, Lcom/shabakaty/downloader/rw6;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/shabakaty/downloader/rw6;

    const-string v6, "TEZ_CODE"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    move-object/from16 v18, v8

    const/16 v8, 0x10

    .line 16
    invoke-direct {v2, v6, v4, v8}, Lcom/shabakaty/downloader/rw6;-><init>(Ljava/lang/String;II)V

    new-array v6, v8, [Lcom/shabakaty/downloader/rw6;

    const/4 v8, 0x0

    aput-object v0, v6, v8

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v18, v6, v0

    const/16 v0, 0xd

    aput-object v16, v6, v0

    const/16 v0, 0xe

    aput-object v17, v6, v0

    aput-object v2, v6, v4

    sput-object v6, Lcom/shabakaty/downloader/rw6;->F:[Lcom/shabakaty/downloader/rw6;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/shabakaty/downloader/rw6;->r:I

    return-void
.end method

.method public static values()[Lcom/shabakaty/downloader/rw6;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/rw6;->F:[Lcom/shabakaty/downloader/rw6;

    .line 1
    invoke-virtual {v0}, [Lcom/shabakaty/downloader/rw6;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/rw6;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/rw6;->r:I

    return v0
.end method
