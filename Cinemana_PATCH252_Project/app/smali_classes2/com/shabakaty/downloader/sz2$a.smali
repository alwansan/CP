.class public Lcom/shabakaty/downloader/sz2$a;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Lcom/shabakaty/downloader/uz2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/sz2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/Appendable;

.field public b:Lcom/shabakaty/downloader/wu0$a;


# direct methods
.method public constructor <init>(Ljava/lang/Appendable;Lcom/shabakaty/downloader/wu0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/sz2$a;->a:Ljava/lang/Appendable;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/sz2$a;->b:Lcom/shabakaty/downloader/wu0$a;

    .line 4
    invoke-virtual {p2}, Lcom/shabakaty/downloader/wu0$a;->b()Ljava/nio/charset/CharsetEncoder;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/sz2;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/sz2;->s()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/sz2$a;->a:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/shabakaty/downloader/sz2$a;->b:Lcom/shabakaty/downloader/wu0$a;

    invoke-virtual {p1, v0, p2, v1}, Lcom/shabakaty/downloader/sz2;->v(Ljava/lang/Appendable;ILcom/shabakaty/downloader/wu0$a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Lcom/shabakaty/downloader/rz2;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/rz2;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    :goto_0
    return-void
.end method

.method public b(Lcom/shabakaty/downloader/sz2;I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/sz2$a;->a:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/shabakaty/downloader/sz2$a;->b:Lcom/shabakaty/downloader/wu0$a;

    invoke-virtual {p1, v0, p2, v1}, Lcom/shabakaty/downloader/sz2;->u(Ljava/lang/Appendable;ILcom/shabakaty/downloader/wu0$a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Lcom/shabakaty/downloader/rz2;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/rz2;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
