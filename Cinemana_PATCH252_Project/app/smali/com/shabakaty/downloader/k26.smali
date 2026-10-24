.class public final enum Lcom/shabakaty/downloader/k26;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/k26;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum r:Lcom/shabakaty/downloader/k26;

.field public static final synthetic s:[Lcom/shabakaty/downloader/k26;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/shabakaty/downloader/k26;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/k26;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/k26;->r:Lcom/shabakaty/downloader/k26;

    new-instance v1, Lcom/shabakaty/downloader/k26;

    const-string v3, "SIGNED"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4}, Lcom/shabakaty/downloader/k26;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/shabakaty/downloader/k26;

    const-string v5, "FIXED"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6}, Lcom/shabakaty/downloader/k26;-><init>(Ljava/lang/String;I)V

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/shabakaty/downloader/k26;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/shabakaty/downloader/k26;->s:[Lcom/shabakaty/downloader/k26;

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

.method public static values()[Lcom/shabakaty/downloader/k26;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/k26;->s:[Lcom/shabakaty/downloader/k26;

    .line 1
    invoke-virtual {v0}, [Lcom/shabakaty/downloader/k26;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/k26;

    return-object v0
.end method
