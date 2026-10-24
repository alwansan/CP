.class public Lcom/shabakaty/downloader/h22;
.super Ljava/lang/Object;
.source "InstrumentOkHttpEnqueueCallback.java"

# interfaces
.implements Lcom/shabakaty/downloader/wq;


# instance fields
.field public final a:Lcom/shabakaty/downloader/wq;

.field public final b:Lcom/shabakaty/downloader/py2;

.field public final c:Lcom/shabakaty/downloader/pn4;

.field public final d:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wq;Lcom/shabakaty/downloader/wq4;Lcom/shabakaty/downloader/pn4;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/h22;->a:Lcom/shabakaty/downloader/wq;

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/py2;

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/py2;-><init>(Lcom/shabakaty/downloader/wq4;)V

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/h22;->b:Lcom/shabakaty/downloader/py2;

    .line 5
    iput-wide p4, p0, Lcom/shabakaty/downloader/h22;->d:J

    .line 6
    iput-object p3, p0, Lcom/shabakaty/downloader/h22;->c:Lcom/shabakaty/downloader/pn4;

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/shabakaty/downloader/mq;Ljava/io/IOException;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/mq;->d()Lcom/shabakaty/downloader/vr3;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/vr3;->b:Lcom/shabakaty/downloader/qw1;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/h22;->b:Lcom/shabakaty/downloader/py2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/qw1;->k()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/py2;->l(Ljava/lang/String;)Lcom/shabakaty/downloader/py2;

    .line 4
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/downloader/vr3;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/h22;->b:Lcom/shabakaty/downloader/py2;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/py2;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/py2;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/h22;->b:Lcom/shabakaty/downloader/py2;

    iget-wide v1, p0, Lcom/shabakaty/downloader/h22;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/py2;->f(J)Lcom/shabakaty/downloader/py2;

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/h22;->b:Lcom/shabakaty/downloader/py2;

    iget-object v1, p0, Lcom/shabakaty/downloader/h22;->c:Lcom/shabakaty/downloader/pn4;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/pn4;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/py2;->j(J)Lcom/shabakaty/downloader/py2;

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/h22;->b:Lcom/shabakaty/downloader/py2;

    invoke-static {v0}, Lcom/shabakaty/downloader/qy2;->c(Lcom/shabakaty/downloader/py2;)V

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/h22;->a:Lcom/shabakaty/downloader/wq;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/wq;->onFailure(Lcom/shabakaty/downloader/mq;Ljava/io/IOException;)V

    return-void
.end method

.method public onResponse(Lcom/shabakaty/downloader/mq;Lcom/shabakaty/downloader/ws3;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/h22;->c:Lcom/shabakaty/downloader/pn4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/pn4;->a()J

    move-result-wide v5

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/h22;->b:Lcom/shabakaty/downloader/py2;

    iget-wide v3, p0, Lcom/shabakaty/downloader/h22;->d:J

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->a(Lcom/shabakaty/downloader/ws3;Lcom/shabakaty/downloader/py2;JJ)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/h22;->a:Lcom/shabakaty/downloader/wq;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/wq;->onResponse(Lcom/shabakaty/downloader/mq;Lcom/shabakaty/downloader/ws3;)V

    return-void
.end method
