.class public final Lcom/shabakaty/downloader/s62;
.super Ljava/lang/Object;
.source "JavaClassDataFinder.kt"

# interfaces
.implements Lcom/shabakaty/downloader/o20;


# instance fields
.field public final a:Lcom/shabakaty/downloader/ae2;

.field public final b:Lcom/shabakaty/downloader/bs0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ae2;Lcom/shabakaty/downloader/bs0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/s62;->a:Lcom/shabakaty/downloader/ae2;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/s62;->b:Lcom/shabakaty/downloader/bs0;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/n20;
    .locals 2

    const-string v0, "classId"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s62;->a:Lcom/shabakaty/downloader/ae2;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/he0;->g(Lcom/shabakaty/downloader/ae2;Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/he2;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/he2;->f()Lcom/shabakaty/downloader/v20;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/s62;->b:Lcom/shabakaty/downloader/bs0;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/bs0;->f(Lcom/shabakaty/downloader/he2;)Lcom/shabakaty/downloader/n20;

    move-result-object p1

    return-object p1
.end method
