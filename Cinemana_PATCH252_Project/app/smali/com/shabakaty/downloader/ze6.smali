.class public final Lcom/shabakaty/downloader/ze6;
.super Lcom/shabakaty/downloader/lu6;
.source "com.google.android.gms:play-services-measurement@@19.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/lu6<",
        "Lcom/shabakaty/downloader/ef6;",
        "Lcom/shabakaty/downloader/ze6;",
        ">;",
        "Lcom/shabakaty/downloader/r07;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/ef6;->t()Lcom/shabakaty/downloader/ef6;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/lu6;-><init>(Lcom/shabakaty/downloader/uu6;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/fl3;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/ef6;->t()Lcom/shabakaty/downloader/ef6;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/lu6;-><init>(Lcom/shabakaty/downloader/uu6;)V

    return-void
.end method


# virtual methods
.method public final m(Lcom/shabakaty/downloader/jf6;)Lcom/shabakaty/downloader/ze6;
    .locals 1

    iget-boolean v0, p0, Lcom/shabakaty/downloader/lu6;->t:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/lu6;->i()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shabakaty/downloader/lu6;->t:Z

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/ef6;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/ef6;->w(Lcom/shabakaty/downloader/ef6;Lcom/shabakaty/downloader/nf6;)V

    return-object p0
.end method

.method public final n()Lcom/shabakaty/downloader/nf6;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 1
    check-cast v0, Lcom/shabakaty/downloader/ef6;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ef6;->u()Lcom/shabakaty/downloader/nf6;

    move-result-object v0

    return-object v0
.end method
