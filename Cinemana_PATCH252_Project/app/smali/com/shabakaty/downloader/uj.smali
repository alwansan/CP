.class public final enum Lcom/shabakaty/downloader/uj;
.super Ljava/lang/Enum;
.source "com.google.mlkit:common@@17.1.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/uj;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic r:[Lcom/shabakaty/downloader/uj;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/shabakaty/downloader/uj;

    const-string v1, "FACE_DETECTION"

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/uj;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/shabakaty/downloader/uj;

    const-string v3, "SMART_REPLY"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4}, Lcom/shabakaty/downloader/uj;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/shabakaty/downloader/uj;

    const-string v5, "TRANSLATE"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6}, Lcom/shabakaty/downloader/uj;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/shabakaty/downloader/uj;

    const-string v7, "ENTITY_EXTRACTION"

    const/4 v8, 0x3

    .line 4
    invoke-direct {v5, v7, v8}, Lcom/shabakaty/downloader/uj;-><init>(Ljava/lang/String;I)V

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/shabakaty/downloader/uj;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/shabakaty/downloader/uj;->r:[Lcom/shabakaty/downloader/uj;

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

.method public static values()[Lcom/shabakaty/downloader/uj;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    sget-object v0, Lcom/shabakaty/downloader/uj;->r:[Lcom/shabakaty/downloader/uj;

    .line 1
    invoke-virtual {v0}, [Lcom/shabakaty/downloader/uj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/uj;

    return-object v0
.end method
