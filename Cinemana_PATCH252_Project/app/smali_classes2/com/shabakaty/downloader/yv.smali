.class public final enum Lcom/shabakaty/downloader/yv;
.super Ljava/lang/Enum;
.source "TypeSystemContext.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/yv;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum r:Lcom/shabakaty/downloader/yv;

.field public static final enum s:Lcom/shabakaty/downloader/yv;

.field public static final enum t:Lcom/shabakaty/downloader/yv;

.field public static final synthetic u:[Lcom/shabakaty/downloader/yv;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/yv;

    const-string v1, "FOR_SUBTYPING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/yv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/yv;->r:Lcom/shabakaty/downloader/yv;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/yv;

    const-string v3, "FOR_INCORPORATION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/shabakaty/downloader/yv;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/downloader/yv;->s:Lcom/shabakaty/downloader/yv;

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/yv;

    const-string v5, "FROM_EXPRESSION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/shabakaty/downloader/yv;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/shabakaty/downloader/yv;->t:Lcom/shabakaty/downloader/yv;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/shabakaty/downloader/yv;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/shabakaty/downloader/yv;->u:[Lcom/shabakaty/downloader/yv;

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

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/yv;
    .locals 1

    const-class v0, Lcom/shabakaty/downloader/yv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/yv;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/yv;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/yv;->u:[Lcom/shabakaty/downloader/yv;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/yv;

    return-object v0
.end method
