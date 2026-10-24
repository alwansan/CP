.class public final enum Lcom/shabakaty/downloader/co;
.super Ljava/lang/Enum;
.source "BufferOverflow.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/co;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum r:Lcom/shabakaty/downloader/co;

.field public static final enum s:Lcom/shabakaty/downloader/co;

.field public static final synthetic t:[Lcom/shabakaty/downloader/co;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/shabakaty/downloader/co;

    new-instance v1, Lcom/shabakaty/downloader/co;

    const-string v2, "SUSPEND"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/downloader/co;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/downloader/co;->r:Lcom/shabakaty/downloader/co;

    aput-object v1, v0, v3

    new-instance v1, Lcom/shabakaty/downloader/co;

    const-string v2, "DROP_OLDEST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/downloader/co;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/downloader/co;->s:Lcom/shabakaty/downloader/co;

    aput-object v1, v0, v3

    new-instance v1, Lcom/shabakaty/downloader/co;

    const-string v2, "DROP_LATEST"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/downloader/co;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    sput-object v0, Lcom/shabakaty/downloader/co;->t:[Lcom/shabakaty/downloader/co;

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

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/co;
    .locals 1

    const-class v0, Lcom/shabakaty/downloader/co;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/co;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/co;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/co;->t:[Lcom/shabakaty/downloader/co;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/co;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/co;

    return-object v0
.end method
