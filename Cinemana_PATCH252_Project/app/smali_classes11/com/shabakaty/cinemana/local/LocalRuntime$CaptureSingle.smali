.class final Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle;
.super Lcom/shabakaty/downloader/f74;
.source "LocalRuntime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/local/LocalRuntime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CaptureSingle"
.end annotation


# instance fields
.field final id:Ljava/lang/String;

.field final upstream:Lcom/shabakaty/downloader/f74;


# direct methods
.method constructor <init>(Lcom/shabakaty/downloader/f74;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/shabakaty/downloader/f74;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle;->upstream:Lcom/shabakaty/downloader/f74;

    iput-object p2, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public l(Lcom/shabakaty/downloader/y74;)V
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle;->upstream:Lcom/shabakaty/downloader/f74;

    new-instance v1, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1;-><init>(Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle;Lcom/shabakaty/downloader/y74;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/f74;->a(Lcom/shabakaty/downloader/y74;)V

    return-void
.end method
