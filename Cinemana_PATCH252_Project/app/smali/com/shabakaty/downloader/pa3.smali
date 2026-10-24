.class public Lcom/shabakaty/downloader/pa3;
.super Ljava/io/IOException;
.source "ParserException.java"


# instance fields
.field public final r:Z

.field public final s:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iput-boolean p3, p0, Lcom/shabakaty/downloader/pa3;->r:Z

    .line 3
    iput p4, p0, Lcom/shabakaty/downloader/pa3;->s:I

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pa3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/shabakaty/downloader/pa3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pa3;

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/shabakaty/downloader/pa3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lcom/shabakaty/downloader/pa3;
    .locals 4

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pa3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/shabakaty/downloader/pa3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    return-object v0
.end method
