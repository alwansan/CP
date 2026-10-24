.class public final enum Lcom/shabakaty/downloader/ad6;
.super Ljava/lang/Enum;
.source "com.google.mlkit:vision-common@@16.3.0"

# interfaces
.implements Lcom/shabakaty/downloader/eh5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/ad6;",
        ">;",
        "Lcom/shabakaty/downloader/eh5;"
    }
.end annotation


# static fields
.field public static final enum s:Lcom/shabakaty/downloader/ad6;

.field public static final enum t:Lcom/shabakaty/downloader/ad6;

.field public static final enum u:Lcom/shabakaty/downloader/ad6;

.field public static final enum v:Lcom/shabakaty/downloader/ad6;

.field public static final enum w:Lcom/shabakaty/downloader/ad6;

.field public static final synthetic x:[Lcom/shabakaty/downloader/ad6;


# instance fields
.field public final r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/shabakaty/downloader/ad6;

    const-string v1, "SOURCE_UNKNOWN"

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2, v2}, Lcom/shabakaty/downloader/ad6;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/shabakaty/downloader/ad6;

    const-string v3, "BITMAP"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4, v4}, Lcom/shabakaty/downloader/ad6;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/shabakaty/downloader/ad6;->s:Lcom/shabakaty/downloader/ad6;

    new-instance v3, Lcom/shabakaty/downloader/ad6;

    const-string v5, "BYTEARRAY"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6, v6}, Lcom/shabakaty/downloader/ad6;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/shabakaty/downloader/ad6;->t:Lcom/shabakaty/downloader/ad6;

    new-instance v5, Lcom/shabakaty/downloader/ad6;

    const-string v7, "BYTEBUFFER"

    const/4 v8, 0x3

    .line 4
    invoke-direct {v5, v7, v8, v8}, Lcom/shabakaty/downloader/ad6;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/shabakaty/downloader/ad6;->u:Lcom/shabakaty/downloader/ad6;

    new-instance v7, Lcom/shabakaty/downloader/ad6;

    const-string v9, "FILEPATH"

    const/4 v10, 0x4

    .line 5
    invoke-direct {v7, v9, v10, v10}, Lcom/shabakaty/downloader/ad6;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/shabakaty/downloader/ad6;->v:Lcom/shabakaty/downloader/ad6;

    new-instance v9, Lcom/shabakaty/downloader/ad6;

    const-string v11, "ANDROID_MEDIA_IMAGE"

    const/4 v12, 0x5

    .line 6
    invoke-direct {v9, v11, v12, v12}, Lcom/shabakaty/downloader/ad6;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/shabakaty/downloader/ad6;->w:Lcom/shabakaty/downloader/ad6;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/shabakaty/downloader/ad6;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/shabakaty/downloader/ad6;->x:[Lcom/shabakaty/downloader/ad6;

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

    iput p3, p0, Lcom/shabakaty/downloader/ad6;->r:I

    return-void
.end method

.method public static values()[Lcom/shabakaty/downloader/ad6;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/ad6;->x:[Lcom/shabakaty/downloader/ad6;

    .line 1
    invoke-virtual {v0}, [Lcom/shabakaty/downloader/ad6;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/ad6;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/ad6;->r:I

    return v0
.end method
