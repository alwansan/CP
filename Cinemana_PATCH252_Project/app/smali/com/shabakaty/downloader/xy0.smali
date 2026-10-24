.class public final Lcom/shabakaty/downloader/xy0;
.super Ljava/lang/Throwable;
.source "DownloaderNotInitialized.kt"


# static fields
.field public static final r:Lcom/shabakaty/downloader/xy0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/xy0;

    invoke-direct {v0}, Lcom/shabakaty/downloader/xy0;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/xy0;->r:Lcom/shabakaty/downloader/xy0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "You need to initialize shabakaty downloader with ShabakatyDownloaderBuilder.init(context)"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-void
.end method
