.class public Lcom/shabakaty/downloader/g22;
.super Ljava/lang/Object;
.source "InstrumentApacheHttpResponseHandler.java"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lorg/apache/http/client/ResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final b:Lcom/shabakaty/downloader/pn4;

.field public final c:Lcom/shabakaty/downloader/py2;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/ResponseHandler;Lcom/shabakaty/downloader/pn4;Lcom/shabakaty/downloader/py2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lcom/shabakaty/downloader/pn4;",
            "Lcom/shabakaty/downloader/py2;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/g22;->a:Lorg/apache/http/client/ResponseHandler;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/g22;->b:Lcom/shabakaty/downloader/pn4;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/g22;->c:Lcom/shabakaty/downloader/py2;

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/g22;->c:Lcom/shabakaty/downloader/py2;

    iget-object v1, p0, Lcom/shabakaty/downloader/g22;->b:Lcom/shabakaty/downloader/pn4;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/pn4;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/py2;->j(J)Lcom/shabakaty/downloader/py2;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/g22;->c:Lcom/shabakaty/downloader/py2;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/py2;->d(I)Lcom/shabakaty/downloader/py2;

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/qy2;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/g22;->c:Lcom/shabakaty/downloader/py2;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/py2;->i(J)Lcom/shabakaty/downloader/py2;

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/shabakaty/downloader/qy2;->b(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/g22;->c:Lcom/shabakaty/downloader/py2;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/py2;->g(Ljava/lang/String;)Lcom/shabakaty/downloader/py2;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/g22;->c:Lcom/shabakaty/downloader/py2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/py2;->b()Lcom/shabakaty/downloader/oy2;

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/g22;->a:Lorg/apache/http/client/ResponseHandler;

    invoke-interface {v0, p1}, Lorg/apache/http/client/ResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
