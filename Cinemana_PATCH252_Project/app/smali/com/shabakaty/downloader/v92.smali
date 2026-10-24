.class public Lcom/shabakaty/downloader/v92;
.super Ljava/lang/Object;
.source "JsonDataEncoderBuilder.java"

# interfaces
.implements Lcom/shabakaty/downloader/ml0;


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/w92;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/w92;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/v92;->a:Lcom/shabakaty/downloader/w92;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/v92;->b(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/shabakaty/downloader/oa2;

    iget-object v0, p0, Lcom/shabakaty/downloader/v92;->a:Lcom/shabakaty/downloader/w92;

    .line 2
    iget-object v2, v0, Lcom/shabakaty/downloader/w92;->a:Ljava/util/Map;

    .line 3
    iget-object v3, v0, Lcom/shabakaty/downloader/w92;->b:Ljava/util/Map;

    .line 4
    iget-object v4, v0, Lcom/shabakaty/downloader/w92;->c:Lcom/shabakaty/downloader/l43;

    .line 5
    iget-boolean v5, v0, Lcom/shabakaty/downloader/w92;->d:Z

    move-object v0, v6

    move-object v1, p2

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/oa2;-><init>(Ljava/io/Writer;Ljava/util/Map;Ljava/util/Map;Lcom/shabakaty/downloader/l43;Z)V

    const/4 p2, 0x0

    .line 7
    invoke-virtual {v6, p1, p2}, Lcom/shabakaty/downloader/oa2;->g(Ljava/lang/Object;Z)Lcom/shabakaty/downloader/oa2;

    .line 8
    invoke-virtual {v6}, Lcom/shabakaty/downloader/oa2;->i()V

    .line 9
    iget-object p1, v6, Lcom/shabakaty/downloader/oa2;->b:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->flush()V

    return-void
.end method
