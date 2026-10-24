.class public final enum Lcom/shabakaty/downloader/oe2;
.super Ljava/lang/Enum;
.source "KotlinRetention.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/oe2;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum r:Lcom/shabakaty/downloader/oe2;

.field public static final enum s:Lcom/shabakaty/downloader/oe2;

.field public static final enum t:Lcom/shabakaty/downloader/oe2;

.field public static final synthetic u:[Lcom/shabakaty/downloader/oe2;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/oe2;

    const-string v1, "RUNTIME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/oe2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/oe2;->r:Lcom/shabakaty/downloader/oe2;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/oe2;

    const-string v1, "BINARY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/oe2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/oe2;->s:Lcom/shabakaty/downloader/oe2;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/oe2;

    const-string v1, "SOURCE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/oe2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/oe2;->t:Lcom/shabakaty/downloader/oe2;

    invoke-static {}, Lcom/shabakaty/downloader/oe2;->f()[Lcom/shabakaty/downloader/oe2;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/oe2;->u:[Lcom/shabakaty/downloader/oe2;

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

.method public static final synthetic f()[Lcom/shabakaty/downloader/oe2;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/shabakaty/downloader/oe2;

    sget-object v1, Lcom/shabakaty/downloader/oe2;->r:Lcom/shabakaty/downloader/oe2;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/shabakaty/downloader/oe2;->s:Lcom/shabakaty/downloader/oe2;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/shabakaty/downloader/oe2;->t:Lcom/shabakaty/downloader/oe2;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/oe2;
    .locals 1

    const-class v0, Lcom/shabakaty/downloader/oe2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/oe2;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/oe2;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/oe2;->u:[Lcom/shabakaty/downloader/oe2;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/oe2;

    return-object v0
.end method
