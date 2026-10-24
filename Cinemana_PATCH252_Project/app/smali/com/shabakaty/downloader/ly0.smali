.class public final Lcom/shabakaty/downloader/ly0;
.super Ljava/lang/Throwable;
.source "DownloadNotCancelled.kt"


# static fields
.field public static final r:Lcom/shabakaty/downloader/ly0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/ly0;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ly0;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ly0;->r:Lcom/shabakaty/downloader/ly0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "Something happened when trying to delete the downloaded file or pause the ongoing download"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-void
.end method
