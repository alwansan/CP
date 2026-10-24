.class public final enum Lcom/shabakaty/downloader/bh6$b;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/shabakaty/downloader/hw5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/bh6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/bh6$b;",
        ">;",
        "Lcom/shabakaty/downloader/hw5;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/shabakaty/downloader/bh6$b;

.field public static final enum B:Lcom/shabakaty/downloader/bh6$b;

.field public static final enum C:Lcom/shabakaty/downloader/bh6$b;

.field public static final enum D:Lcom/shabakaty/downloader/bh6$b;

.field public static final enum E:Lcom/shabakaty/downloader/bh6$b;

.field public static final enum F:Lcom/shabakaty/downloader/bh6$b;

.field public static final enum G:Lcom/shabakaty/downloader/bh6$b;

.field public static final enum H:Lcom/shabakaty/downloader/bh6$b;

.field public static final enum I:Lcom/shabakaty/downloader/bh6$b;

.field public static final enum J:Lcom/shabakaty/downloader/bh6$b;

.field public static final enum K:Lcom/shabakaty/downloader/bh6$b;

.field public static final enum L:Lcom/shabakaty/downloader/bh6$b;

.field public static final enum M:Lcom/shabakaty/downloader/bh6$b;

.field public static final N:Lcom/shabakaty/downloader/nw5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/nw5<",
            "Lcom/shabakaty/downloader/bh6$b;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic O:[Lcom/shabakaty/downloader/bh6$b;

.field public static final enum s:Lcom/shabakaty/downloader/bh6$b;

.field public static final enum t:Lcom/shabakaty/downloader/bh6$b;

.field public static final enum u:Lcom/shabakaty/downloader/bh6$b;

.field public static final enum v:Lcom/shabakaty/downloader/bh6$b;

.field public static final enum w:Lcom/shabakaty/downloader/bh6$b;

.field public static final enum x:Lcom/shabakaty/downloader/bh6$b;

.field public static final enum y:Lcom/shabakaty/downloader/bh6$b;

.field public static final enum z:Lcom/shabakaty/downloader/bh6$b;


# instance fields
.field public final r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 24

    new-instance v0, Lcom/shabakaty/downloader/bh6$b;

    const-string v1, "UNKNOWN_MOBILE_SUBTYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/shabakaty/downloader/bh6$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/shabakaty/downloader/bh6$b;->s:Lcom/shabakaty/downloader/bh6$b;

    new-instance v1, Lcom/shabakaty/downloader/bh6$b;

    const-string v3, "GPRS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/shabakaty/downloader/bh6$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/shabakaty/downloader/bh6$b;->t:Lcom/shabakaty/downloader/bh6$b;

    new-instance v3, Lcom/shabakaty/downloader/bh6$b;

    const-string v5, "EDGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/shabakaty/downloader/bh6$b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/shabakaty/downloader/bh6$b;->u:Lcom/shabakaty/downloader/bh6$b;

    new-instance v5, Lcom/shabakaty/downloader/bh6$b;

    const-string v7, "UMTS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/shabakaty/downloader/bh6$b;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/shabakaty/downloader/bh6$b;->v:Lcom/shabakaty/downloader/bh6$b;

    new-instance v7, Lcom/shabakaty/downloader/bh6$b;

    const-string v9, "CDMA"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/shabakaty/downloader/bh6$b;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/shabakaty/downloader/bh6$b;->w:Lcom/shabakaty/downloader/bh6$b;

    new-instance v9, Lcom/shabakaty/downloader/bh6$b;

    const-string v11, "EVDO_0"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/shabakaty/downloader/bh6$b;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/shabakaty/downloader/bh6$b;->x:Lcom/shabakaty/downloader/bh6$b;

    new-instance v11, Lcom/shabakaty/downloader/bh6$b;

    const-string v13, "EVDO_A"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/shabakaty/downloader/bh6$b;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/shabakaty/downloader/bh6$b;->y:Lcom/shabakaty/downloader/bh6$b;

    new-instance v13, Lcom/shabakaty/downloader/bh6$b;

    const-string v15, "RTT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/shabakaty/downloader/bh6$b;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/shabakaty/downloader/bh6$b;->z:Lcom/shabakaty/downloader/bh6$b;

    new-instance v15, Lcom/shabakaty/downloader/bh6$b;

    const-string v14, "HSDPA"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/shabakaty/downloader/bh6$b;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/shabakaty/downloader/bh6$b;->A:Lcom/shabakaty/downloader/bh6$b;

    new-instance v14, Lcom/shabakaty/downloader/bh6$b;

    const-string v12, "HSUPA"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/shabakaty/downloader/bh6$b;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/shabakaty/downloader/bh6$b;->B:Lcom/shabakaty/downloader/bh6$b;

    new-instance v12, Lcom/shabakaty/downloader/bh6$b;

    const-string v10, "HSPA"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/shabakaty/downloader/bh6$b;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/shabakaty/downloader/bh6$b;->C:Lcom/shabakaty/downloader/bh6$b;

    new-instance v10, Lcom/shabakaty/downloader/bh6$b;

    const-string v8, "IDEN"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/shabakaty/downloader/bh6$b;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/shabakaty/downloader/bh6$b;->D:Lcom/shabakaty/downloader/bh6$b;

    new-instance v8, Lcom/shabakaty/downloader/bh6$b;

    const-string v6, "EVDO_B"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/shabakaty/downloader/bh6$b;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/shabakaty/downloader/bh6$b;->E:Lcom/shabakaty/downloader/bh6$b;

    new-instance v6, Lcom/shabakaty/downloader/bh6$b;

    const-string v4, "LTE"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lcom/shabakaty/downloader/bh6$b;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/shabakaty/downloader/bh6$b;->F:Lcom/shabakaty/downloader/bh6$b;

    new-instance v4, Lcom/shabakaty/downloader/bh6$b;

    const-string v2, "EHRPD"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lcom/shabakaty/downloader/bh6$b;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/shabakaty/downloader/bh6$b;->G:Lcom/shabakaty/downloader/bh6$b;

    new-instance v2, Lcom/shabakaty/downloader/bh6$b;

    const-string v6, "HSPAP"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lcom/shabakaty/downloader/bh6$b;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/shabakaty/downloader/bh6$b;->H:Lcom/shabakaty/downloader/bh6$b;

    new-instance v6, Lcom/shabakaty/downloader/bh6$b;

    const-string v4, "GSM"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Lcom/shabakaty/downloader/bh6$b;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/shabakaty/downloader/bh6$b;->I:Lcom/shabakaty/downloader/bh6$b;

    new-instance v4, Lcom/shabakaty/downloader/bh6$b;

    const-string v2, "TD_SCDMA"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6, v6}, Lcom/shabakaty/downloader/bh6$b;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/shabakaty/downloader/bh6$b;->J:Lcom/shabakaty/downloader/bh6$b;

    new-instance v2, Lcom/shabakaty/downloader/bh6$b;

    const-string v6, "IWLAN"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4, v4}, Lcom/shabakaty/downloader/bh6$b;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/shabakaty/downloader/bh6$b;->K:Lcom/shabakaty/downloader/bh6$b;

    new-instance v6, Lcom/shabakaty/downloader/bh6$b;

    const-string v4, "LTE_CA"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2, v2}, Lcom/shabakaty/downloader/bh6$b;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/shabakaty/downloader/bh6$b;->L:Lcom/shabakaty/downloader/bh6$b;

    new-instance v4, Lcom/shabakaty/downloader/bh6$b;

    const-string v2, "COMBINED"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    move-object/from16 v23, v8

    const/16 v8, 0x64

    invoke-direct {v4, v2, v6, v8}, Lcom/shabakaty/downloader/bh6$b;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/shabakaty/downloader/bh6$b;->M:Lcom/shabakaty/downloader/bh6$b;

    const/16 v2, 0x15

    new-array v2, v2, [Lcom/shabakaty/downloader/bh6$b;

    const/4 v8, 0x0

    aput-object v0, v2, v8

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

    aput-object v23, v2, v0

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

    aput-object v4, v2, v6

    sput-object v2, Lcom/shabakaty/downloader/bh6$b;->O:[Lcom/shabakaty/downloader/bh6$b;

    new-instance v0, Lcom/shabakaty/downloader/ui6;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ui6;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/bh6$b;->N:Lcom/shabakaty/downloader/nw5;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/shabakaty/downloader/bh6$b;->r:I

    return-void
.end method

.method public static values()[Lcom/shabakaty/downloader/bh6$b;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/bh6$b;->O:[Lcom/shabakaty/downloader/bh6$b;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/bh6$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/bh6$b;

    return-object v0
.end method


# virtual methods
.method public final c()I
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/bh6$b;->r:I

    return v0
.end method
