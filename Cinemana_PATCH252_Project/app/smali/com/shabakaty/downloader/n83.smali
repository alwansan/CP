.class public final enum Lcom/shabakaty/downloader/n83;
.super Ljava/lang/Enum;
.source "Orientation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/n83;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum r:Lcom/shabakaty/downloader/n83;

.field public static final enum s:Lcom/shabakaty/downloader/n83;

.field public static final synthetic t:[Lcom/shabakaty/downloader/n83;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/n83;

    const-string v1, "HORIZONTAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/n83;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/n83;->r:Lcom/shabakaty/downloader/n83;

    new-instance v1, Lcom/shabakaty/downloader/n83;

    const-string v3, "VERTICAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/shabakaty/downloader/n83;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/downloader/n83;->s:Lcom/shabakaty/downloader/n83;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/shabakaty/downloader/n83;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/shabakaty/downloader/n83;->t:[Lcom/shabakaty/downloader/n83;

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

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/n83;
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/n83;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/n83;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/n83;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/n83;->t:[Lcom/shabakaty/downloader/n83;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/n83;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/n83;

    return-object v0
.end method
