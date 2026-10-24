.class public final Lcom/shabakaty/downloader/f41$b;
.super Lcom/shabakaty/downloader/f41;
.source "EpomAd.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/f41;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final w:Lcom/shabakaty/downloader/f41$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/f41$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/f41$b;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/f41$b;->w:Lcom/shabakaty/downloader/f41$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/f41;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/f41$d;I)V

    return-void
.end method
