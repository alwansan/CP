.class public final enum Lcom/shabakaty/downloader/u41;
.super Ljava/lang/Enum;
.source "ErrorCorrectionLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/u41;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum s:Lcom/shabakaty/downloader/u41;

.field public static final synthetic t:[Lcom/shabakaty/downloader/u41;


# instance fields
.field public final r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/u41;

    const-string v1, "L"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/shabakaty/downloader/u41;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/shabakaty/downloader/u41;->s:Lcom/shabakaty/downloader/u41;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/u41;

    const-string v4, "M"

    invoke-direct {v1, v4, v3, v2}, Lcom/shabakaty/downloader/u41;-><init>(Ljava/lang/String;II)V

    .line 3
    new-instance v4, Lcom/shabakaty/downloader/u41;

    const-string v5, "Q"

    const/4 v6, 0x2

    const/4 v7, 0x3

    invoke-direct {v4, v5, v6, v7}, Lcom/shabakaty/downloader/u41;-><init>(Ljava/lang/String;II)V

    .line 4
    new-instance v5, Lcom/shabakaty/downloader/u41;

    const-string v8, "H"

    invoke-direct {v5, v8, v7, v6}, Lcom/shabakaty/downloader/u41;-><init>(Ljava/lang/String;II)V

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/shabakaty/downloader/u41;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v6

    aput-object v5, v8, v7

    .line 5
    sput-object v8, Lcom/shabakaty/downloader/u41;->t:[Lcom/shabakaty/downloader/u41;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/shabakaty/downloader/u41;->r:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/u41;
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/u41;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/u41;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/u41;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/u41;->t:[Lcom/shabakaty/downloader/u41;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/u41;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/u41;

    return-object v0
.end method
