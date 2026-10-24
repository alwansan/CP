.class public Lcom/shabakaty/downloader/gs1;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "HandlerXML.java"


# instance fields
.field public a:Lcom/shabakaty/downloader/rw4;

.field public b:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/gs1;->a:Lcom/shabakaty/downloader/rw4;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/gs1;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/gs1;->a:Lcom/shabakaty/downloader/rw4;

    if-eqz p1, :cond_4

    const-string p1, "latestVersion"

    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/gs1;->a:Lcom/shabakaty/downloader/rw4;

    iget-object p2, p0, Lcom/shabakaty/downloader/gs1;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 5
    iput-object p2, p1, Lcom/shabakaty/downloader/rw4;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "latestVersionCode"

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/gs1;->a:Lcom/shabakaty/downloader/rw4;

    iget-object p2, p0, Lcom/shabakaty/downloader/gs1;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    .line 8
    iput-object p2, p1, Lcom/shabakaty/downloader/rw4;->b:Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    const-string p1, "releaseNotes"

    .line 9
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/gs1;->a:Lcom/shabakaty/downloader/rw4;

    iget-object p2, p0, Lcom/shabakaty/downloader/gs1;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 11
    iput-object p2, p1, Lcom/shabakaty/downloader/rw4;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p1, "url"

    .line 12
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    :try_start_0
    iget-object p1, p0, Lcom/shabakaty/downloader/gs1;->a:Lcom/shabakaty/downloader/rw4;

    new-instance p2, Ljava/net/URL;

    iget-object p3, p0, Lcom/shabakaty/downloader/gs1;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 14
    iput-object p2, p1, Lcom/shabakaty/downloader/rw4;->d:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 16
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/gs1;->b:Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_4
    return-void
.end method

.method public startDocument()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/gs1;->b:Ljava/lang/StringBuilder;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    const-string p1, "update"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/rw4;

    invoke-direct {p1}, Lcom/shabakaty/downloader/rw4;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/gs1;->a:Lcom/shabakaty/downloader/rw4;

    :cond_0
    return-void
.end method
