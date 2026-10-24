.class public Lcom/shabakaty/downloader/ei1;
.super Lcom/shabakaty/downloader/on4;
.source "ForwardingTimeout.kt"


# instance fields
.field public e:Lcom/shabakaty/downloader/on4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/on4;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/on4;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ei1;->e:Lcom/shabakaty/downloader/on4;

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/on4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ei1;->e:Lcom/shabakaty/downloader/on4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/on4;->a()Lcom/shabakaty/downloader/on4;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/shabakaty/downloader/on4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ei1;->e:Lcom/shabakaty/downloader/on4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/on4;->b()Lcom/shabakaty/downloader/on4;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ei1;->e:Lcom/shabakaty/downloader/on4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/on4;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public d(J)Lcom/shabakaty/downloader/on4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ei1;->e:Lcom/shabakaty/downloader/on4;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/on4;->d(J)Lcom/shabakaty/downloader/on4;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ei1;->e:Lcom/shabakaty/downloader/on4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/on4;->e()Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ei1;->e:Lcom/shabakaty/downloader/on4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/on4;->f()V

    return-void
.end method

.method public g(JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/on4;
    .locals 1

    const-string v0, "unit"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ei1;->e:Lcom/shabakaty/downloader/on4;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shabakaty/downloader/on4;->g(JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/on4;

    move-result-object p1

    return-object p1
.end method
