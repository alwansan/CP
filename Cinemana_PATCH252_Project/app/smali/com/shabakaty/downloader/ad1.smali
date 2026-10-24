.class public final Lcom/shabakaty/downloader/ad1;
.super Ljava/lang/Object;
.source "FirebasePerformanceInitializer.java"

# interfaces
.implements Lcom/shabakaty/downloader/sb$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/zc1;->f:Lcom/shabakaty/downloader/i7;

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/ec1;->b()Lcom/shabakaty/downloader/ec1;

    move-result-object v0

    const-class v1, Lcom/shabakaty/downloader/zc1;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ec1;->a()V

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/ec1;->d:Lcom/shabakaty/downloader/z80;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/s;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Lcom/shabakaty/downloader/zc1;

    return-void
.end method
