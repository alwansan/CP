.class public final enum Lcom/shabakaty/downloader/yr$e;
.super Ljava/lang/Enum;
.source "Camera2CameraImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/yr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/yr$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum r:Lcom/shabakaty/downloader/yr$e;

.field public static final enum s:Lcom/shabakaty/downloader/yr$e;

.field public static final enum t:Lcom/shabakaty/downloader/yr$e;

.field public static final enum u:Lcom/shabakaty/downloader/yr$e;

.field public static final enum v:Lcom/shabakaty/downloader/yr$e;

.field public static final enum w:Lcom/shabakaty/downloader/yr$e;

.field public static final enum x:Lcom/shabakaty/downloader/yr$e;

.field public static final enum y:Lcom/shabakaty/downloader/yr$e;

.field public static final synthetic z:[Lcom/shabakaty/downloader/yr$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/yr$e;

    const-string v1, "INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/yr$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/yr$e;->r:Lcom/shabakaty/downloader/yr$e;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/yr$e;

    const-string v3, "PENDING_OPEN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/shabakaty/downloader/yr$e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/downloader/yr$e;->s:Lcom/shabakaty/downloader/yr$e;

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/yr$e;

    const-string v5, "OPENING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/shabakaty/downloader/yr$e;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/shabakaty/downloader/yr$e;->t:Lcom/shabakaty/downloader/yr$e;

    .line 4
    new-instance v5, Lcom/shabakaty/downloader/yr$e;

    const-string v7, "OPENED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/shabakaty/downloader/yr$e;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/shabakaty/downloader/yr$e;->u:Lcom/shabakaty/downloader/yr$e;

    .line 5
    new-instance v7, Lcom/shabakaty/downloader/yr$e;

    const-string v9, "CLOSING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/shabakaty/downloader/yr$e;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/shabakaty/downloader/yr$e;->v:Lcom/shabakaty/downloader/yr$e;

    .line 6
    new-instance v9, Lcom/shabakaty/downloader/yr$e;

    const-string v11, "REOPENING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/shabakaty/downloader/yr$e;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/shabakaty/downloader/yr$e;->w:Lcom/shabakaty/downloader/yr$e;

    .line 7
    new-instance v11, Lcom/shabakaty/downloader/yr$e;

    const-string v13, "RELEASING"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/shabakaty/downloader/yr$e;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/shabakaty/downloader/yr$e;->x:Lcom/shabakaty/downloader/yr$e;

    .line 8
    new-instance v13, Lcom/shabakaty/downloader/yr$e;

    const-string v15, "RELEASED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/shabakaty/downloader/yr$e;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/shabakaty/downloader/yr$e;->y:Lcom/shabakaty/downloader/yr$e;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/shabakaty/downloader/yr$e;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 9
    sput-object v15, Lcom/shabakaty/downloader/yr$e;->z:[Lcom/shabakaty/downloader/yr$e;

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

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/yr$e;
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/yr$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/yr$e;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/yr$e;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/yr$e;->z:[Lcom/shabakaty/downloader/yr$e;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/yr$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/yr$e;

    return-object v0
.end method
