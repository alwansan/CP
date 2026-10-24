.class public final Lcom/shabakaty/downloader/lu3;
.super Ljava/lang/RuntimeException;
.source "RouteException.kt"


# instance fields
.field public r:Ljava/io/IOException;

.field public final s:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/lu3;->s:Ljava/io/IOException;

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/lu3;->r:Ljava/io/IOException;

    return-void
.end method
