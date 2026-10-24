.class public final Lcom/shabakaty/downloader/qv1$c$a;
.super Lcom/shabakaty/downloader/qv1$c;
.source "Http2Connection.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/qv1$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/qv1$c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/shabakaty/downloader/zv1;)V
    .locals 2

    const-string v0, "stream"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/s41;->w:Lcom/shabakaty/downloader/s41;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/zv1;->c(Lcom/shabakaty/downloader/s41;Ljava/io/IOException;)V

    return-void
.end method
