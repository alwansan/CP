.class final Lcom/shabakaty/cinemana/local/LocalRuntime$CategorySingle;
.super Lcom/shabakaty/downloader/f74;
.source "LocalRuntime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/local/LocalRuntime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CategorySingle"
.end annotation


# instance fields
.field final source:Lcom/shabakaty/downloader/f74;


# direct methods
.method constructor <init>(Lcom/shabakaty/downloader/f74;)V
    .locals 0

    invoke-direct {p0}, Lcom/shabakaty/downloader/f74;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$CategorySingle;->source:Lcom/shabakaty/downloader/f74;

    return-void
.end method


# virtual methods
.method public l(Lcom/shabakaty/downloader/y74;)V
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$CategorySingle;->source:Lcom/shabakaty/downloader/f74;

    new-instance v1, Lcom/shabakaty/cinemana/local/LocalRuntime$CategorySingle$1;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/cinemana/local/LocalRuntime$CategorySingle$1;-><init>(Lcom/shabakaty/cinemana/local/LocalRuntime$CategorySingle;Lcom/shabakaty/downloader/y74;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/f74;->a(Lcom/shabakaty/downloader/y74;)V

    return-void
.end method
