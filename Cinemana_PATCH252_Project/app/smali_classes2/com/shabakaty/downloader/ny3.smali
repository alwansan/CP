.class public final enum Lcom/shabakaty/downloader/ny3;
.super Ljava/lang/Enum;
.source "LookupTracker.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/ny3;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum r:Lcom/shabakaty/downloader/ny3;

.field public static final enum s:Lcom/shabakaty/downloader/ny3;

.field public static final synthetic t:[Lcom/shabakaty/downloader/ny3;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ny3;

    const-string v1, "PACKAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/ny3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/ny3;->r:Lcom/shabakaty/downloader/ny3;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/ny3;

    const-string v3, "CLASSIFIER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/shabakaty/downloader/ny3;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/downloader/ny3;->s:Lcom/shabakaty/downloader/ny3;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/shabakaty/downloader/ny3;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/shabakaty/downloader/ny3;->t:[Lcom/shabakaty/downloader/ny3;

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

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/ny3;
    .locals 1

    const-class v0, Lcom/shabakaty/downloader/ny3;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/ny3;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/ny3;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/ny3;->t:[Lcom/shabakaty/downloader/ny3;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/ny3;

    return-object v0
.end method
