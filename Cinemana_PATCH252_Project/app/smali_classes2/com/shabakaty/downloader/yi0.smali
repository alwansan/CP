.class public abstract Lcom/shabakaty/downloader/yi0;
.super Ljava/util/TimerTask;
.source "DNSTask.java"


# instance fields
.field public final r:Lcom/shabakaty/downloader/d92;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/d92;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/pi0;Lcom/shabakaty/downloader/mi0;Lcom/shabakaty/downloader/ri0;)Lcom/shabakaty/downloader/pi0;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lcom/shabakaty/downloader/pi0;->j(Lcom/shabakaty/downloader/mi0;Lcom/shabakaty/downloader/ri0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    iget v0, p1, Lcom/shabakaty/downloader/oi0;->c:I

    .line 3
    iget-boolean v1, p1, Lcom/shabakaty/downloader/oi0;->b:Z

    .line 4
    iget v2, p1, Lcom/shabakaty/downloader/pi0;->i:I

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/oi0;->b()I

    move-result v3

    or-int/lit16 v4, v0, 0x200

    .line 6
    iput v4, p1, Lcom/shabakaty/downloader/oi0;->c:I

    .line 7
    iput v3, p1, Lcom/shabakaty/downloader/oi0;->a:I

    .line 8
    iget-object v3, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    invoke-virtual {v3, p1}, Lcom/shabakaty/downloader/d92;->v0(Lcom/shabakaty/downloader/pi0;)V

    .line 9
    new-instance p1, Lcom/shabakaty/downloader/pi0;

    invoke-direct {p1, v0, v1, v2}, Lcom/shabakaty/downloader/pi0;-><init>(IZI)V

    .line 10
    invoke-virtual {p1, p2, p3}, Lcom/shabakaty/downloader/pi0;->j(Lcom/shabakaty/downloader/mi0;Lcom/shabakaty/downloader/ri0;)V

    :goto_0
    return-object p1
.end method

.method public b(Lcom/shabakaty/downloader/pi0;Lcom/shabakaty/downloader/ri0;J)Lcom/shabakaty/downloader/pi0;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p1, p2, p3, p4}, Lcom/shabakaty/downloader/pi0;->k(Lcom/shabakaty/downloader/ri0;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    iget v0, p1, Lcom/shabakaty/downloader/oi0;->c:I

    .line 3
    iget-boolean v1, p1, Lcom/shabakaty/downloader/oi0;->b:Z

    .line 4
    iget v2, p1, Lcom/shabakaty/downloader/pi0;->i:I

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/oi0;->b()I

    move-result v3

    or-int/lit16 v4, v0, 0x200

    .line 6
    iput v4, p1, Lcom/shabakaty/downloader/oi0;->c:I

    .line 7
    iput v3, p1, Lcom/shabakaty/downloader/oi0;->a:I

    .line 8
    iget-object v3, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    invoke-virtual {v3, p1}, Lcom/shabakaty/downloader/d92;->v0(Lcom/shabakaty/downloader/pi0;)V

    .line 9
    new-instance p1, Lcom/shabakaty/downloader/pi0;

    invoke-direct {p1, v0, v1, v2}, Lcom/shabakaty/downloader/pi0;-><init>(IZI)V

    .line 10
    invoke-virtual {p1, p2, p3, p4}, Lcom/shabakaty/downloader/pi0;->k(Lcom/shabakaty/downloader/ri0;J)V

    :goto_0
    return-object p1
.end method

.method public c(Lcom/shabakaty/downloader/pi0;Lcom/shabakaty/downloader/ri0;)Lcom/shabakaty/downloader/pi0;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/pi0;->l(Lcom/shabakaty/downloader/ri0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    iget v0, p1, Lcom/shabakaty/downloader/oi0;->c:I

    .line 3
    iget-boolean v1, p1, Lcom/shabakaty/downloader/oi0;->b:Z

    .line 4
    iget v2, p1, Lcom/shabakaty/downloader/pi0;->i:I

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/oi0;->b()I

    move-result v3

    or-int/lit16 v4, v0, 0x200

    .line 6
    iput v4, p1, Lcom/shabakaty/downloader/oi0;->c:I

    .line 7
    iput v3, p1, Lcom/shabakaty/downloader/oi0;->a:I

    .line 8
    iget-object v3, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    invoke-virtual {v3, p1}, Lcom/shabakaty/downloader/d92;->v0(Lcom/shabakaty/downloader/pi0;)V

    .line 9
    new-instance p1, Lcom/shabakaty/downloader/pi0;

    invoke-direct {p1, v0, v1, v2}, Lcom/shabakaty/downloader/pi0;-><init>(IZI)V

    .line 10
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/pi0;->l(Lcom/shabakaty/downloader/ri0;)V

    :goto_0
    return-object p1
.end method

.method public d(Lcom/shabakaty/downloader/pi0;Lcom/shabakaty/downloader/qi0;)Lcom/shabakaty/downloader/pi0;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/pi0;->m(Lcom/shabakaty/downloader/qi0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    iget v0, p1, Lcom/shabakaty/downloader/oi0;->c:I

    .line 3
    iget-boolean v1, p1, Lcom/shabakaty/downloader/oi0;->b:Z

    .line 4
    iget v2, p1, Lcom/shabakaty/downloader/pi0;->i:I

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/oi0;->b()I

    move-result v3

    or-int/lit16 v4, v0, 0x200

    .line 6
    iput v4, p1, Lcom/shabakaty/downloader/oi0;->c:I

    .line 7
    iput v3, p1, Lcom/shabakaty/downloader/oi0;->a:I

    .line 8
    iget-object v3, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    invoke-virtual {v3, p1}, Lcom/shabakaty/downloader/d92;->v0(Lcom/shabakaty/downloader/pi0;)V

    .line 9
    new-instance p1, Lcom/shabakaty/downloader/pi0;

    invoke-direct {p1, v0, v1, v2}, Lcom/shabakaty/downloader/pi0;-><init>(IZI)V

    .line 10
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/pi0;->m(Lcom/shabakaty/downloader/qi0;)V

    :goto_0
    return-object p1
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yi0;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
