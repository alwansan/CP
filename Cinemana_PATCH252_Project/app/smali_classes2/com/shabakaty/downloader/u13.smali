.class public final enum Lcom/shabakaty/downloader/u13;
.super Ljava/lang/Enum;
.source "typeQualifiers.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/u13;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum r:Lcom/shabakaty/downloader/u13;

.field public static final enum s:Lcom/shabakaty/downloader/u13;

.field public static final enum t:Lcom/shabakaty/downloader/u13;

.field public static final synthetic u:[Lcom/shabakaty/downloader/u13;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/u13;

    const-string v1, "FORCE_FLEXIBILITY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/u13;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/u13;->r:Lcom/shabakaty/downloader/u13;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/u13;

    const-string v3, "NULLABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/shabakaty/downloader/u13;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/downloader/u13;->s:Lcom/shabakaty/downloader/u13;

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/u13;

    const-string v5, "NOT_NULL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/shabakaty/downloader/u13;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/shabakaty/downloader/u13;->t:Lcom/shabakaty/downloader/u13;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/shabakaty/downloader/u13;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/shabakaty/downloader/u13;->u:[Lcom/shabakaty/downloader/u13;

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

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/u13;
    .locals 1

    const-class v0, Lcom/shabakaty/downloader/u13;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/u13;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/u13;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/u13;->u:[Lcom/shabakaty/downloader/u13;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/u13;

    return-object v0
.end method
