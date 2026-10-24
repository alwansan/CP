.class public final enum Lcom/shabakaty/downloader/nq6;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"

# interfaces
.implements Lcom/shabakaty/downloader/g26;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/nq6;",
        ">;",
        "Lcom/shabakaty/downloader/g26;"
    }
.end annotation


# static fields
.field public static final enum s:Lcom/shabakaty/downloader/nq6;

.field public static final enum t:Lcom/shabakaty/downloader/nq6;

.field public static final enum u:Lcom/shabakaty/downloader/nq6;

.field public static final enum v:Lcom/shabakaty/downloader/nq6;

.field public static final enum w:Lcom/shabakaty/downloader/nq6;

.field public static final enum x:Lcom/shabakaty/downloader/nq6;

.field public static final synthetic y:[Lcom/shabakaty/downloader/nq6;


# instance fields
.field public final r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/shabakaty/downloader/nq6;

    const-string v1, "UNKNOWN_FORMAT"

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2, v2}, Lcom/shabakaty/downloader/nq6;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/shabakaty/downloader/nq6;->s:Lcom/shabakaty/downloader/nq6;

    new-instance v1, Lcom/shabakaty/downloader/nq6;

    const-string v3, "NV16"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4, v4}, Lcom/shabakaty/downloader/nq6;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/shabakaty/downloader/nq6;->t:Lcom/shabakaty/downloader/nq6;

    new-instance v3, Lcom/shabakaty/downloader/nq6;

    const-string v5, "NV21"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6, v6}, Lcom/shabakaty/downloader/nq6;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/shabakaty/downloader/nq6;->u:Lcom/shabakaty/downloader/nq6;

    new-instance v5, Lcom/shabakaty/downloader/nq6;

    const-string v7, "YV12"

    const/4 v8, 0x3

    .line 4
    invoke-direct {v5, v7, v8, v8}, Lcom/shabakaty/downloader/nq6;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/shabakaty/downloader/nq6;->v:Lcom/shabakaty/downloader/nq6;

    new-instance v7, Lcom/shabakaty/downloader/nq6;

    const-string v9, "YUV_420_888"

    const/4 v10, 0x4

    const/4 v11, 0x7

    .line 5
    invoke-direct {v7, v9, v10, v11}, Lcom/shabakaty/downloader/nq6;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/shabakaty/downloader/nq6;->w:Lcom/shabakaty/downloader/nq6;

    new-instance v9, Lcom/shabakaty/downloader/nq6;

    const-string v12, "JPEG"

    const/4 v13, 0x5

    const/16 v14, 0x8

    .line 6
    invoke-direct {v9, v12, v13, v14}, Lcom/shabakaty/downloader/nq6;-><init>(Ljava/lang/String;II)V

    new-instance v12, Lcom/shabakaty/downloader/nq6;

    const-string v15, "BITMAP"

    const/4 v8, 0x6

    .line 7
    invoke-direct {v12, v15, v8, v10}, Lcom/shabakaty/downloader/nq6;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/shabakaty/downloader/nq6;->x:Lcom/shabakaty/downloader/nq6;

    new-instance v15, Lcom/shabakaty/downloader/nq6;

    const-string v10, "CM_SAMPLE_BUFFER_REF"

    .line 8
    invoke-direct {v15, v10, v11, v13}, Lcom/shabakaty/downloader/nq6;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/shabakaty/downloader/nq6;

    const-string v11, "UI_IMAGE"

    .line 9
    invoke-direct {v10, v11, v14, v8}, Lcom/shabakaty/downloader/nq6;-><init>(Ljava/lang/String;II)V

    const/16 v11, 0x9

    new-array v11, v11, [Lcom/shabakaty/downloader/nq6;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    const/4 v0, 0x3

    aput-object v5, v11, v0

    const/4 v0, 0x4

    aput-object v7, v11, v0

    aput-object v9, v11, v13

    aput-object v12, v11, v8

    const/4 v0, 0x7

    aput-object v15, v11, v0

    aput-object v10, v11, v14

    sput-object v11, Lcom/shabakaty/downloader/nq6;->y:[Lcom/shabakaty/downloader/nq6;

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

    iput p3, p0, Lcom/shabakaty/downloader/nq6;->r:I

    return-void
.end method

.method public static values()[Lcom/shabakaty/downloader/nq6;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/nq6;->y:[Lcom/shabakaty/downloader/nq6;

    .line 1
    invoke-virtual {v0}, [Lcom/shabakaty/downloader/nq6;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/nq6;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/nq6;->r:I

    return v0
.end method
