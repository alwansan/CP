.class public final enum Lcom/shabakaty/downloader/xc4;
.super Ljava/lang/Enum;
.source "Status.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/xc4;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/shabakaty/downloader/xc4;

.field public static final synthetic B:[Lcom/shabakaty/downloader/xc4;

.field public static final enum s:Lcom/shabakaty/downloader/xc4;

.field public static final enum t:Lcom/shabakaty/downloader/xc4;

.field public static final enum u:Lcom/shabakaty/downloader/xc4;

.field public static final enum v:Lcom/shabakaty/downloader/xc4;

.field public static final enum w:Lcom/shabakaty/downloader/xc4;

.field public static final enum x:Lcom/shabakaty/downloader/xc4;

.field public static final enum y:Lcom/shabakaty/downloader/xc4;

.field public static final enum z:Lcom/shabakaty/downloader/xc4;


# instance fields
.field public final r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/xc4;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/shabakaty/downloader/xc4;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/shabakaty/downloader/xc4;->s:Lcom/shabakaty/downloader/xc4;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/xc4;

    const-string v4, "STARTED"

    const/4 v5, 0x6

    invoke-direct {v1, v4, v3, v5}, Lcom/shabakaty/downloader/xc4;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/shabakaty/downloader/xc4;->t:Lcom/shabakaty/downloader/xc4;

    .line 3
    new-instance v4, Lcom/shabakaty/downloader/xc4;

    const-string v6, "PROGRESS"

    const/4 v7, 0x2

    const/4 v8, 0x3

    invoke-direct {v4, v6, v7, v8}, Lcom/shabakaty/downloader/xc4;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/shabakaty/downloader/xc4;->u:Lcom/shabakaty/downloader/xc4;

    .line 4
    new-instance v6, Lcom/shabakaty/downloader/xc4;

    const-string v9, "RETRY"

    const/4 v10, 0x5

    invoke-direct {v6, v9, v8, v10}, Lcom/shabakaty/downloader/xc4;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/shabakaty/downloader/xc4;->v:Lcom/shabakaty/downloader/xc4;

    .line 5
    new-instance v9, Lcom/shabakaty/downloader/xc4;

    const-string v11, "ERROR"

    const/4 v12, 0x4

    const/4 v13, -0x1

    invoke-direct {v9, v11, v12, v13}, Lcom/shabakaty/downloader/xc4;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/shabakaty/downloader/xc4;->w:Lcom/shabakaty/downloader/xc4;

    .line 6
    new-instance v11, Lcom/shabakaty/downloader/xc4;

    const-string v13, "PAUSED"

    const/4 v14, -0x2

    invoke-direct {v11, v13, v10, v14}, Lcom/shabakaty/downloader/xc4;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/shabakaty/downloader/xc4;->x:Lcom/shabakaty/downloader/xc4;

    .line 7
    new-instance v13, Lcom/shabakaty/downloader/xc4;

    const-string v14, "COMPLETED"

    const/4 v15, -0x3

    invoke-direct {v13, v14, v5, v15}, Lcom/shabakaty/downloader/xc4;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/shabakaty/downloader/xc4;->y:Lcom/shabakaty/downloader/xc4;

    .line 8
    new-instance v14, Lcom/shabakaty/downloader/xc4;

    const-string v15, "WARN"

    const/4 v5, 0x7

    const/4 v10, -0x4

    invoke-direct {v14, v15, v5, v10}, Lcom/shabakaty/downloader/xc4;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/shabakaty/downloader/xc4;->z:Lcom/shabakaty/downloader/xc4;

    .line 9
    new-instance v10, Lcom/shabakaty/downloader/xc4;

    const-string v15, "UNKNOWN"

    const/16 v5, 0x8

    const/4 v12, -0x5

    invoke-direct {v10, v15, v5, v12}, Lcom/shabakaty/downloader/xc4;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/shabakaty/downloader/xc4;->A:Lcom/shabakaty/downloader/xc4;

    const/16 v12, 0x9

    new-array v12, v12, [Lcom/shabakaty/downloader/xc4;

    aput-object v0, v12, v2

    aput-object v1, v12, v3

    aput-object v4, v12, v7

    aput-object v6, v12, v8

    const/4 v0, 0x4

    aput-object v9, v12, v0

    const/4 v0, 0x5

    aput-object v11, v12, v0

    const/4 v0, 0x6

    aput-object v13, v12, v0

    const/4 v0, 0x7

    aput-object v14, v12, v0

    aput-object v10, v12, v5

    sput-object v12, Lcom/shabakaty/downloader/xc4;->B:[Lcom/shabakaty/downloader/xc4;

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

    iput p3, p0, Lcom/shabakaty/downloader/xc4;->r:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/xc4;
    .locals 1

    const-class v0, Lcom/shabakaty/downloader/xc4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/xc4;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/xc4;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/xc4;->B:[Lcom/shabakaty/downloader/xc4;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/xc4;

    return-object v0
.end method
