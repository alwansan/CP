.class public Lcom/shabakaty/downloader/xc3;
.super Ljava/lang/Exception;
.source "PlaybackException.java"


# instance fields
.field public final r:I

.field public final s:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ex4;->v:Lcom/shabakaty/downloader/ex4;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iput p3, p0, Lcom/shabakaty/downloader/xc3;->r:I

    .line 3
    iput-wide p4, p0, Lcom/shabakaty/downloader/xc3;->s:J

    return-void
.end method
