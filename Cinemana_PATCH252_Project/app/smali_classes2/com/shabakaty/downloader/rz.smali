.class public final Lcom/shabakaty/downloader/rz;
.super Lcom/shabakaty/downloader/g92;
.source "JobSupport.kt"

# interfaces
.implements Lcom/shabakaty/downloader/qz;


# instance fields
.field public final v:Lcom/shabakaty/downloader/tz;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/tz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/g92;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/rz;->v:Lcom/shabakaty/downloader/tz;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/rz;->w(Ljava/lang/Throwable;)V

    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public n(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k92;->x()Lcom/shabakaty/downloader/l92;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/l92;->I(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public w(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/rz;->v:Lcom/shabakaty/downloader/tz;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/k92;->x()Lcom/shabakaty/downloader/l92;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/tz;->k(Lcom/shabakaty/downloader/ga3;)V

    return-void
.end method
