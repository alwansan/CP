.class public final Lcom/shabakaty/downloader/ys3$a;
.super Ljava/io/Reader;
.source "ResponseBody.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ys3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public r:Z

.field public s:Ljava/io/Reader;

.field public final t:Lcom/shabakaty/downloader/eo;

.field public final u:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/eo;Ljava/nio/charset/Charset;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ys3$a;->t:Lcom/shabakaty/downloader/eo;

    iput-object p2, p0, Lcom/shabakaty/downloader/ys3$a;->u:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ys3$a;->r:Z

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ys3$a;->s:Ljava/io/Reader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ys3$a;->t:Lcom/shabakaty/downloader/eo;

    invoke-interface {v0}, Lcom/shabakaty/downloader/r94;->close()V

    :goto_0
    return-void
.end method

.method public read([CII)I
    .locals 4

    const-string v0, "cbuf"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ys3$a;->r:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ys3$a;->s:Ljava/io/Reader;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/ys3$a;->t:Lcom/shabakaty/downloader/eo;

    invoke-interface {v1}, Lcom/shabakaty/downloader/eo;->y()Ljava/io/InputStream;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/ys3$a;->t:Lcom/shabakaty/downloader/eo;

    iget-object v3, p0, Lcom/shabakaty/downloader/ys3$a;->u:Ljava/nio/charset/Charset;

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/ry4;->s(Lcom/shabakaty/downloader/eo;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 5
    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 6
    iput-object v0, p0, Lcom/shabakaty/downloader/ys3$a;->s:Ljava/io/Reader;

    .line 7
    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result p1

    return p1

    .line 8
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
