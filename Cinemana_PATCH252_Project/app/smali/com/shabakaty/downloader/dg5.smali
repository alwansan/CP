.class public final Lcom/shabakaty/downloader/dg5;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/oz4;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lcom/shabakaty/downloader/ma1;

.field public final d:Lcom/shabakaty/downloader/re5;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/re5;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shabakaty/downloader/dg5;->a:Z

    iput-boolean v0, p0, Lcom/shabakaty/downloader/dg5;->b:Z

    iput-object p1, p0, Lcom/shabakaty/downloader/dg5;->d:Lcom/shabakaty/downloader/re5;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/String;)Lcom/shabakaty/downloader/oz4;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/dg5;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/dg5;->a:Z

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/dg5;->d:Lcom/shabakaty/downloader/re5;

    iget-object v1, p0, Lcom/shabakaty/downloader/dg5;->c:Lcom/shabakaty/downloader/ma1;

    iget-boolean v2, p0, Lcom/shabakaty/downloader/dg5;->b:Z

    .line 4
    invoke-virtual {v0, v1, p1, v2}, Lcom/shabakaty/downloader/re5;->e(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;Z)Lcom/shabakaty/downloader/m43;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/p31;

    const-string v0, "Cannot encode a second value in the ValueEncoderContext"

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/p31;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Z)Lcom/shabakaty/downloader/oz4;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/dg5;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/dg5;->a:Z

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/dg5;->d:Lcom/shabakaty/downloader/re5;

    iget-object v1, p0, Lcom/shabakaty/downloader/dg5;->c:Lcom/shabakaty/downloader/ma1;

    iget-boolean v2, p0, Lcom/shabakaty/downloader/dg5;->b:Z

    .line 4
    invoke-virtual {v0, v1, p1, v2}, Lcom/shabakaty/downloader/re5;->f(Lcom/shabakaty/downloader/ma1;IZ)Lcom/shabakaty/downloader/re5;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/p31;

    const-string v0, "Cannot encode a second value in the ValueEncoderContext"

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/p31;-><init>(Ljava/lang/String;)V

    throw p1
.end method
