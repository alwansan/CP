.class public final enum Lcom/shabakaty/downloader/du4;
.super Ljava/lang/Enum;
.source "TypeUsage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/du4;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum r:Lcom/shabakaty/downloader/du4;

.field public static final enum s:Lcom/shabakaty/downloader/du4;

.field public static final synthetic t:[Lcom/shabakaty/downloader/du4;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/du4;

    const-string v1, "SUPERTYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/du4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/du4;->r:Lcom/shabakaty/downloader/du4;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/du4;

    const-string v3, "COMMON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/shabakaty/downloader/du4;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/downloader/du4;->s:Lcom/shabakaty/downloader/du4;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/shabakaty/downloader/du4;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/shabakaty/downloader/du4;->t:[Lcom/shabakaty/downloader/du4;

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

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/du4;
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/du4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/du4;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/du4;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/du4;->t:[Lcom/shabakaty/downloader/du4;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/du4;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/du4;

    return-object v0
.end method
