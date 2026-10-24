.class public final enum Lcom/shabakaty/downloader/e8;
.super Ljava/lang/Enum;
.source "AnimationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/e8;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/shabakaty/downloader/e8;

.field public static final synthetic B:[Lcom/shabakaty/downloader/e8;

.field public static final enum r:Lcom/shabakaty/downloader/e8;

.field public static final enum s:Lcom/shabakaty/downloader/e8;

.field public static final enum t:Lcom/shabakaty/downloader/e8;

.field public static final enum u:Lcom/shabakaty/downloader/e8;

.field public static final enum v:Lcom/shabakaty/downloader/e8;

.field public static final enum w:Lcom/shabakaty/downloader/e8;

.field public static final enum x:Lcom/shabakaty/downloader/e8;

.field public static final enum y:Lcom/shabakaty/downloader/e8;

.field public static final enum z:Lcom/shabakaty/downloader/e8;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/e8;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/e8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/e8;->r:Lcom/shabakaty/downloader/e8;

    new-instance v1, Lcom/shabakaty/downloader/e8;

    const-string v3, "COLOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/shabakaty/downloader/e8;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/downloader/e8;->s:Lcom/shabakaty/downloader/e8;

    new-instance v3, Lcom/shabakaty/downloader/e8;

    const-string v5, "SCALE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/shabakaty/downloader/e8;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/shabakaty/downloader/e8;->t:Lcom/shabakaty/downloader/e8;

    new-instance v5, Lcom/shabakaty/downloader/e8;

    const-string v7, "WORM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/shabakaty/downloader/e8;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/shabakaty/downloader/e8;->u:Lcom/shabakaty/downloader/e8;

    new-instance v7, Lcom/shabakaty/downloader/e8;

    const-string v9, "SLIDE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/shabakaty/downloader/e8;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/shabakaty/downloader/e8;->v:Lcom/shabakaty/downloader/e8;

    new-instance v9, Lcom/shabakaty/downloader/e8;

    const-string v11, "FILL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/shabakaty/downloader/e8;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/shabakaty/downloader/e8;->w:Lcom/shabakaty/downloader/e8;

    new-instance v11, Lcom/shabakaty/downloader/e8;

    const-string v13, "THIN_WORM"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/shabakaty/downloader/e8;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/shabakaty/downloader/e8;->x:Lcom/shabakaty/downloader/e8;

    new-instance v13, Lcom/shabakaty/downloader/e8;

    const-string v15, "DROP"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/shabakaty/downloader/e8;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/shabakaty/downloader/e8;->y:Lcom/shabakaty/downloader/e8;

    new-instance v15, Lcom/shabakaty/downloader/e8;

    const-string v14, "SWAP"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/shabakaty/downloader/e8;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/shabakaty/downloader/e8;->z:Lcom/shabakaty/downloader/e8;

    new-instance v14, Lcom/shabakaty/downloader/e8;

    const-string v12, "SCALE_DOWN"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/shabakaty/downloader/e8;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/shabakaty/downloader/e8;->A:Lcom/shabakaty/downloader/e8;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/shabakaty/downloader/e8;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Lcom/shabakaty/downloader/e8;->B:[Lcom/shabakaty/downloader/e8;

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

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/e8;
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/e8;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/e8;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/e8;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/e8;->B:[Lcom/shabakaty/downloader/e8;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/e8;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/e8;

    return-object v0
.end method
