.class public final Lcom/shabakaty/downloader/pd6;
.super Lcom/shabakaty/downloader/lu6;
.source "com.google.android.gms:play-services-measurement@@19.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/lu6<",
        "Lcom/shabakaty/downloader/ud6;",
        "Lcom/shabakaty/downloader/pd6;",
        ">;",
        "Lcom/shabakaty/downloader/r07;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/ud6;->x()Lcom/shabakaty/downloader/ud6;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/lu6;-><init>(Lcom/shabakaty/downloader/uu6;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/fl3;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/ud6;->x()Lcom/shabakaty/downloader/ud6;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/lu6;-><init>(Lcom/shabakaty/downloader/uu6;)V

    return-void
.end method


# virtual methods
.method public final m()I
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 1
    check-cast v0, Lcom/shabakaty/downloader/ud6;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ud6;->t()I

    move-result v0

    return v0
.end method

.method public final n()J
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 1
    check-cast v0, Lcom/shabakaty/downloader/ud6;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ud6;->u()J

    move-result-wide v0

    return-wide v0
.end method

.method public final o()J
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 1
    check-cast v0, Lcom/shabakaty/downloader/ud6;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ud6;->v()J

    move-result-wide v0

    return-wide v0
.end method

.method public final q(Lcom/shabakaty/downloader/je6;)Lcom/shabakaty/downloader/pd6;
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
    check-cast v0, Lcom/shabakaty/downloader/ud6;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ne6;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/ud6;->C(Lcom/shabakaty/downloader/ud6;Lcom/shabakaty/downloader/ne6;)V

    return-object p0
.end method

.method public final r(I)Lcom/shabakaty/downloader/pd6;
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
    check-cast v0, Lcom/shabakaty/downloader/ud6;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/ud6;->F(Lcom/shabakaty/downloader/ud6;I)V

    return-object p0
.end method

.method public final s(Ljava/lang/String;)Lcom/shabakaty/downloader/pd6;
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
    check-cast v0, Lcom/shabakaty/downloader/ud6;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/ud6;->G(Lcom/shabakaty/downloader/ud6;Ljava/lang/String;)V

    return-object p0
.end method

.method public final t(ILcom/shabakaty/downloader/ne6;)Lcom/shabakaty/downloader/pd6;
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
    check-cast v0, Lcom/shabakaty/downloader/ud6;

    invoke-static {v0, p1, p2}, Lcom/shabakaty/downloader/ud6;->B(Lcom/shabakaty/downloader/ud6;ILcom/shabakaty/downloader/ne6;)V

    return-object p0
.end method

.method public final u(I)Lcom/shabakaty/downloader/ne6;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 1
    check-cast v0, Lcom/shabakaty/downloader/ud6;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ud6;->y(I)Lcom/shabakaty/downloader/ne6;

    move-result-object p1

    return-object p1
.end method

.method public final v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 1
    check-cast v0, Lcom/shabakaty/downloader/ud6;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ud6;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ne6;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 1
    check-cast v0, Lcom/shabakaty/downloader/ud6;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ud6;->A()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
