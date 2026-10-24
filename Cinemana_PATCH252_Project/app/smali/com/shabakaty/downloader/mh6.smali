.class public final Lcom/shabakaty/downloader/mh6;
.super Lcom/shabakaty/downloader/lu6;
.source "com.google.android.gms:play-services-measurement@@19.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/lu6<",
        "Lcom/shabakaty/downloader/th6;",
        "Lcom/shabakaty/downloader/mh6;",
        ">;",
        "Lcom/shabakaty/downloader/r07;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/th6;->w()Lcom/shabakaty/downloader/th6;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/lu6;-><init>(Lcom/shabakaty/downloader/uu6;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/fl3;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/th6;->w()Lcom/shabakaty/downloader/th6;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/lu6;-><init>(Lcom/shabakaty/downloader/uu6;)V

    return-void
.end method


# virtual methods
.method public final m(J)Lcom/shabakaty/downloader/mh6;
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
    check-cast v0, Lcom/shabakaty/downloader/th6;

    invoke-static {v0, p1, p2}, Lcom/shabakaty/downloader/th6;->D(Lcom/shabakaty/downloader/th6;J)V

    return-object p0
.end method

.method public final n(Ljava/lang/String;)Lcom/shabakaty/downloader/mh6;
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
    check-cast v0, Lcom/shabakaty/downloader/th6;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/th6;->A(Lcom/shabakaty/downloader/th6;Ljava/lang/String;)V

    return-object p0
.end method

.method public final o(J)Lcom/shabakaty/downloader/mh6;
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
    check-cast v0, Lcom/shabakaty/downloader/th6;

    invoke-static {v0, p1, p2}, Lcom/shabakaty/downloader/th6;->z(Lcom/shabakaty/downloader/th6;J)V

    return-object p0
.end method
