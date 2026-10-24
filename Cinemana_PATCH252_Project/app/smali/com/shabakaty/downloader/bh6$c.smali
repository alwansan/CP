.class public final enum Lcom/shabakaty/downloader/bh6$c;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/shabakaty/downloader/hw5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/bh6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/bh6$c;",
        ">;",
        "Lcom/shabakaty/downloader/hw5;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/shabakaty/downloader/bh6$c;

.field public static final enum B:Lcom/shabakaty/downloader/bh6$c;

.field public static final enum C:Lcom/shabakaty/downloader/bh6$c;

.field public static final enum D:Lcom/shabakaty/downloader/bh6$c;

.field public static final enum E:Lcom/shabakaty/downloader/bh6$c;

.field public static final enum F:Lcom/shabakaty/downloader/bh6$c;

.field public static final enum G:Lcom/shabakaty/downloader/bh6$c;

.field public static final enum H:Lcom/shabakaty/downloader/bh6$c;

.field public static final enum I:Lcom/shabakaty/downloader/bh6$c;

.field public static final enum J:Lcom/shabakaty/downloader/bh6$c;

.field public static final enum K:Lcom/shabakaty/downloader/bh6$c;

.field public static final L:Lcom/shabakaty/downloader/nw5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/nw5<",
            "Lcom/shabakaty/downloader/bh6$c;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic M:[Lcom/shabakaty/downloader/bh6$c;

.field public static final enum s:Lcom/shabakaty/downloader/bh6$c;

.field public static final enum t:Lcom/shabakaty/downloader/bh6$c;

.field public static final enum u:Lcom/shabakaty/downloader/bh6$c;

.field public static final enum v:Lcom/shabakaty/downloader/bh6$c;

.field public static final enum w:Lcom/shabakaty/downloader/bh6$c;

.field public static final enum x:Lcom/shabakaty/downloader/bh6$c;

.field public static final enum y:Lcom/shabakaty/downloader/bh6$c;

.field public static final enum z:Lcom/shabakaty/downloader/bh6$c;


# instance fields
.field public final r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 23

    new-instance v0, Lcom/shabakaty/downloader/bh6$c;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/shabakaty/downloader/bh6$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/shabakaty/downloader/bh6$c;->s:Lcom/shabakaty/downloader/bh6$c;

    new-instance v1, Lcom/shabakaty/downloader/bh6$c;

    const-string v3, "MOBILE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/shabakaty/downloader/bh6$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/shabakaty/downloader/bh6$c;->t:Lcom/shabakaty/downloader/bh6$c;

    new-instance v3, Lcom/shabakaty/downloader/bh6$c;

    const-string v5, "WIFI"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/shabakaty/downloader/bh6$c;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/shabakaty/downloader/bh6$c;->u:Lcom/shabakaty/downloader/bh6$c;

    new-instance v5, Lcom/shabakaty/downloader/bh6$c;

    const-string v7, "MOBILE_MMS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/shabakaty/downloader/bh6$c;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/shabakaty/downloader/bh6$c;->v:Lcom/shabakaty/downloader/bh6$c;

    new-instance v7, Lcom/shabakaty/downloader/bh6$c;

    const-string v9, "MOBILE_SUPL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lcom/shabakaty/downloader/bh6$c;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/shabakaty/downloader/bh6$c;->w:Lcom/shabakaty/downloader/bh6$c;

    new-instance v9, Lcom/shabakaty/downloader/bh6$c;

    const-string v11, "MOBILE_DUN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lcom/shabakaty/downloader/bh6$c;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/shabakaty/downloader/bh6$c;->x:Lcom/shabakaty/downloader/bh6$c;

    new-instance v11, Lcom/shabakaty/downloader/bh6$c;

    const-string v13, "MOBILE_HIPRI"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v12}, Lcom/shabakaty/downloader/bh6$c;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/shabakaty/downloader/bh6$c;->y:Lcom/shabakaty/downloader/bh6$c;

    new-instance v13, Lcom/shabakaty/downloader/bh6$c;

    const-string v15, "WIMAX"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14}, Lcom/shabakaty/downloader/bh6$c;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/shabakaty/downloader/bh6$c;->z:Lcom/shabakaty/downloader/bh6$c;

    new-instance v15, Lcom/shabakaty/downloader/bh6$c;

    const-string v14, "BLUETOOTH"

    const/16 v10, 0x8

    invoke-direct {v15, v14, v10, v12}, Lcom/shabakaty/downloader/bh6$c;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/shabakaty/downloader/bh6$c;->A:Lcom/shabakaty/downloader/bh6$c;

    new-instance v14, Lcom/shabakaty/downloader/bh6$c;

    const-string v12, "DUMMY"

    const/16 v8, 0x9

    invoke-direct {v14, v12, v8, v10}, Lcom/shabakaty/downloader/bh6$c;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/shabakaty/downloader/bh6$c;->B:Lcom/shabakaty/downloader/bh6$c;

    new-instance v12, Lcom/shabakaty/downloader/bh6$c;

    const-string v10, "ETHERNET"

    const/16 v6, 0xa

    invoke-direct {v12, v10, v6, v8}, Lcom/shabakaty/downloader/bh6$c;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/shabakaty/downloader/bh6$c;->C:Lcom/shabakaty/downloader/bh6$c;

    new-instance v10, Lcom/shabakaty/downloader/bh6$c;

    const-string v8, "MOBILE_FOTA"

    const/16 v4, 0xb

    invoke-direct {v10, v8, v4, v6}, Lcom/shabakaty/downloader/bh6$c;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/shabakaty/downloader/bh6$c;->D:Lcom/shabakaty/downloader/bh6$c;

    new-instance v8, Lcom/shabakaty/downloader/bh6$c;

    const-string v6, "MOBILE_IMS"

    const/16 v2, 0xc

    invoke-direct {v8, v6, v2, v4}, Lcom/shabakaty/downloader/bh6$c;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/shabakaty/downloader/bh6$c;->E:Lcom/shabakaty/downloader/bh6$c;

    new-instance v6, Lcom/shabakaty/downloader/bh6$c;

    const-string v4, "MOBILE_CBS"

    move-object/from16 v17, v8

    const/16 v8, 0xd

    invoke-direct {v6, v4, v8, v2}, Lcom/shabakaty/downloader/bh6$c;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/shabakaty/downloader/bh6$c;->F:Lcom/shabakaty/downloader/bh6$c;

    new-instance v4, Lcom/shabakaty/downloader/bh6$c;

    const-string v2, "WIFI_P2P"

    move-object/from16 v18, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v8}, Lcom/shabakaty/downloader/bh6$c;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/shabakaty/downloader/bh6$c;->G:Lcom/shabakaty/downloader/bh6$c;

    new-instance v2, Lcom/shabakaty/downloader/bh6$c;

    const-string v8, "MOBILE_IA"

    move-object/from16 v19, v4

    const/16 v4, 0xf

    invoke-direct {v2, v8, v4, v6}, Lcom/shabakaty/downloader/bh6$c;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/shabakaty/downloader/bh6$c;->H:Lcom/shabakaty/downloader/bh6$c;

    new-instance v8, Lcom/shabakaty/downloader/bh6$c;

    const-string v6, "MOBILE_EMERGENCY"

    move-object/from16 v20, v2

    const/16 v2, 0x10

    invoke-direct {v8, v6, v2, v4}, Lcom/shabakaty/downloader/bh6$c;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/shabakaty/downloader/bh6$c;->I:Lcom/shabakaty/downloader/bh6$c;

    new-instance v6, Lcom/shabakaty/downloader/bh6$c;

    const-string v4, "PROXY"

    move-object/from16 v21, v8

    const/16 v8, 0x11

    invoke-direct {v6, v4, v8, v2}, Lcom/shabakaty/downloader/bh6$c;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/shabakaty/downloader/bh6$c;->J:Lcom/shabakaty/downloader/bh6$c;

    new-instance v4, Lcom/shabakaty/downloader/bh6$c;

    const-string v2, "VPN"

    move-object/from16 v22, v6

    const/16 v6, 0x12

    invoke-direct {v4, v2, v6, v8}, Lcom/shabakaty/downloader/bh6$c;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/shabakaty/downloader/bh6$c;->K:Lcom/shabakaty/downloader/bh6$c;

    const/16 v2, 0x13

    new-array v2, v2, [Lcom/shabakaty/downloader/bh6$c;

    const/16 v16, 0x0

    aput-object v0, v2, v16

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

    aput-object v17, v2, v0

    const/16 v0, 0xd

    aput-object v18, v2, v0

    const/16 v0, 0xe

    aput-object v19, v2, v0

    const/16 v0, 0xf

    aput-object v20, v2, v0

    const/16 v0, 0x10

    aput-object v21, v2, v0

    aput-object v22, v2, v8

    aput-object v4, v2, v6

    sput-object v2, Lcom/shabakaty/downloader/bh6$c;->M:[Lcom/shabakaty/downloader/bh6$c;

    new-instance v0, Lcom/shabakaty/downloader/zi6;

    invoke-direct {v0}, Lcom/shabakaty/downloader/zi6;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/bh6$c;->L:Lcom/shabakaty/downloader/nw5;

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

    iput p3, p0, Lcom/shabakaty/downloader/bh6$c;->r:I

    return-void
.end method

.method public static values()[Lcom/shabakaty/downloader/bh6$c;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/bh6$c;->M:[Lcom/shabakaty/downloader/bh6$c;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/bh6$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/bh6$c;

    return-object v0
.end method


# virtual methods
.method public final c()I
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/bh6$c;->r:I

    return v0
.end method
