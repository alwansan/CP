.class public Lcom/shabakaty/downloader/e01;
.super Ljava/lang/Object;
.source "DrawManager.java"


# instance fields
.field public a:Lcom/shabakaty/downloader/r02;

.field public b:Lcom/shabakaty/downloader/d01;

.field public c:Lcom/shabakaty/downloader/ho2;

.field public d:Lcom/shabakaty/downloader/yo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/r02;

    invoke-direct {v0}, Lcom/shabakaty/downloader/r02;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/e01;->a:Lcom/shabakaty/downloader/r02;

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/d01;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/d01;-><init>(Lcom/shabakaty/downloader/r02;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/e01;->b:Lcom/shabakaty/downloader/d01;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/ho2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ho2;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/e01;->c:Lcom/shabakaty/downloader/ho2;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/yo;

    iget-object v1, p0, Lcom/shabakaty/downloader/e01;->a:Lcom/shabakaty/downloader/r02;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/yo;-><init>(Lcom/shabakaty/downloader/r02;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/e01;->d:Lcom/shabakaty/downloader/yo;

    return-void
.end method
