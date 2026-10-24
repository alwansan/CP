.class public Lcom/shabakaty/downloader/h92;
.super Lcom/shabakaty/downloader/l92;
.source "JobSupport.kt"

# interfaces
.implements Lcom/shabakaty/downloader/x70;


# instance fields
.field public final s:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/e92;)V
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/l92;-><init>(Z)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/l92;->W(Lcom/shabakaty/downloader/e92;)V

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/l92;->S()Lcom/shabakaty/downloader/qz;

    move-result-object p1

    instance-of v1, p1, Lcom/shabakaty/downloader/rz;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object p1, v2

    :cond_0
    check-cast p1, Lcom/shabakaty/downloader/rz;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/shabakaty/downloader/k92;->x()Lcom/shabakaty/downloader/l92;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/l92;->P()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/l92;->S()Lcom/shabakaty/downloader/qz;

    move-result-object p1

    instance-of v3, p1, Lcom/shabakaty/downloader/rz;

    if-nez v3, :cond_2

    move-object p1, v2

    :cond_2
    check-cast p1, Lcom/shabakaty/downloader/rz;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/shabakaty/downloader/k92;->x()Lcom/shabakaty/downloader/l92;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 6
    :goto_1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/h92;->s:Z

    return-void
.end method


# virtual methods
.method public P()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/h92;->s:Z

    return v0
.end method

.method public Q()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
