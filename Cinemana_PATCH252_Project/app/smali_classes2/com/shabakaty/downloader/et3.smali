.class public Lcom/shabakaty/downloader/et3;
.super Ljava/lang/Object;
.source "Result.java"

# interfaces
.implements Lcom/shabakaty/downloader/z41;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lcom/shabakaty/downloader/xs3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xs3<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xs3;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/shabakaty/downloader/et3;->a:Lcom/shabakaty/downloader/xs3;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/xs3;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/et3;->a:Lcom/shabakaty/downloader/xs3;

    .line 5
    iput-object p2, p0, Lcom/shabakaty/downloader/et3;->b:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/et3;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/et3;->a:Lcom/shabakaty/downloader/xs3;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/xs3;->c:Lcom/shabakaty/downloader/ys3;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ys3;->d()Lcom/shabakaty/downloader/fr2;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/fr2;->a:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/et3;->b:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/et3;->a:Lcom/shabakaty/downloader/xs3;

    if-eqz v1, :cond_2

    .line 5
    iget-object v1, v1, Lcom/shabakaty/downloader/xs3;->a:Lcom/shabakaty/downloader/ws3;

    .line 6
    iget-object v1, v1, Lcom/shabakaty/downloader/ws3;->u:Ljava/lang/String;

    .line 7
    invoke-static {v1}, Lcom/shabakaty/downloader/fe4;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/et3;->a:Lcom/shabakaty/downloader/xs3;

    .line 9
    iget-object v1, v1, Lcom/shabakaty/downloader/xs3;->a:Lcom/shabakaty/downloader/ws3;

    .line 10
    iget-object v1, v1, Lcom/shabakaty/downloader/ws3;->u:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/et3;->a:Lcom/shabakaty/downloader/xs3;

    .line 13
    iget-object v1, v1, Lcom/shabakaty/downloader/xs3;->a:Lcom/shabakaty/downloader/ws3;

    .line 14
    iget v1, v1, Lcom/shabakaty/downloader/ws3;->v:I

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/et3;->b:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/et3;->a:Lcom/shabakaty/downloader/xs3;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/xs3;->c:Lcom/shabakaty/downloader/ys3;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ys3;->b()[B

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 4
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "UTF-8 must be supported"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_1
    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/et3;->b:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/et3;->a:Lcom/shabakaty/downloader/xs3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/xs3;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/et3;->a:Lcom/shabakaty/downloader/xs3;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/xs3;->a:Lcom/shabakaty/downloader/ws3;

    .line 3
    iget v0, v0, Lcom/shabakaty/downloader/ws3;->v:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/et3;->a:Lcom/shabakaty/downloader/xs3;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/xs3;->a:Lcom/shabakaty/downloader/ws3;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/ws3;->s:Lcom/shabakaty/downloader/vr3;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/vr3;->b:Lcom/shabakaty/downloader/qw1;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/downloader/qw1;->j:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, ""

    :goto_1
    return-object v0
.end method
