.class public Lcom/shabakaty/downloader/d8;
.super Ljava/lang/Object;
.source "AnimationManager.java"


# instance fields
.field public a:Lcom/shabakaty/downloader/c8;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/r02;Lcom/shabakaty/downloader/lz4$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/c8;

    invoke-direct {v0, p1, p2}, Lcom/shabakaty/downloader/c8;-><init>(Lcom/shabakaty/downloader/r02;Lcom/shabakaty/downloader/lz4$a;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/d8;->a:Lcom/shabakaty/downloader/c8;

    return-void
.end method
