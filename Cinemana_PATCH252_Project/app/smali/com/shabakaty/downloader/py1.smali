.class public final Lcom/shabakaty/downloader/py1;
.super Lcom/shabakaty/downloader/cs;
.source "ImageCaptureOptionUnpacker.java"


# static fields
.field public static final b:Lcom/shabakaty/downloader/py1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/py1;

    new-instance v1, Lcom/shabakaty/downloader/qy1;

    invoke-direct {v1}, Lcom/shabakaty/downloader/qy1;-><init>()V

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/py1;-><init>(Lcom/shabakaty/downloader/qy1;)V

    sput-object v0, Lcom/shabakaty/downloader/py1;->b:Lcom/shabakaty/downloader/py1;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/qy1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/cs;-><init>()V

    return-void
.end method
