.class public Lcom/shabakaty/downloader/j02;
.super Ljava/lang/RuntimeException;
.source "IncompleteHandshakeException.java"


# instance fields
.field public r:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/shabakaty/downloader/j02;->r:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/j02;->r:I

    return-void
.end method
