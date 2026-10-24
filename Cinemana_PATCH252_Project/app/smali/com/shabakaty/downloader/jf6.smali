.class public final Lcom/shabakaty/downloader/jf6;
.super Lcom/shabakaty/downloader/lu6;
.source "com.google.android.gms:play-services-measurement@@19.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/lu6<",
        "Lcom/shabakaty/downloader/nf6;",
        "Lcom/shabakaty/downloader/jf6;",
        ">;",
        "Lcom/shabakaty/downloader/r07;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/nf6;->A1()Lcom/shabakaty/downloader/nf6;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/lu6;-><init>(Lcom/shabakaty/downloader/uu6;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/fl3;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/nf6;->A1()Lcom/shabakaty/downloader/nf6;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/lu6;-><init>(Lcom/shabakaty/downloader/uu6;)V

    return-void
.end method


# virtual methods
.method public final A(J)Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1, p2}, Lcom/shabakaty/downloader/nf6;->C0(Lcom/shabakaty/downloader/nf6;J)V

    return-object p0
.end method

.method public final A0(Ljava/lang/String;)Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/nf6;->M(Lcom/shabakaty/downloader/nf6;Ljava/lang/String;)V

    return-object p0
.end method

.method public final B(ILcom/shabakaty/downloader/pd6;)Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    .line 3
    invoke-virtual {p2}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/ud6;

    .line 4
    invoke-static {v0, p1, p2}, Lcom/shabakaty/downloader/nf6;->L(Lcom/shabakaty/downloader/nf6;ILcom/shabakaty/downloader/ud6;)V

    return-object p0
.end method

.method public final B0(J)Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1, p2}, Lcom/shabakaty/downloader/nf6;->I(Lcom/shabakaty/downloader/nf6;J)V

    return-object p0
.end method

.method public final C(Ljava/lang/String;)Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/nf6;->g0(Lcom/shabakaty/downloader/nf6;Ljava/lang/String;)V

    return-object p0
.end method

.method public final D(Ljava/lang/String;)Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/nf6;->s0(Lcom/shabakaty/downloader/nf6;Ljava/lang/String;)V

    return-object p0
.end method

.method public final E(Ljava/lang/String;)Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/nf6;->c0(Lcom/shabakaty/downloader/nf6;Ljava/lang/String;)V

    return-object p0
.end method

.method public final F(J)Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1, p2}, Lcom/shabakaty/downloader/nf6;->P0(Lcom/shabakaty/downloader/nf6;J)V

    return-object p0
.end method

.method public final G(Ljava/lang/String;)Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/nf6;->a0(Lcom/shabakaty/downloader/nf6;Ljava/lang/String;)V

    return-object p0
.end method

.method public final H(Z)Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/nf6;->U(Lcom/shabakaty/downloader/nf6;Z)V

    return-object p0
.end method

.method public final I(Ljava/lang/String;)Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/nf6;->I0(Lcom/shabakaty/downloader/nf6;Ljava/lang/String;)V

    return-object p0
.end method

.method public final J()Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0}, Lcom/shabakaty/downloader/nf6;->H0(Lcom/shabakaty/downloader/nf6;)V

    return-object p0
.end method

.method public final K(J)Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1, p2}, Lcom/shabakaty/downloader/nf6;->F0(Lcom/shabakaty/downloader/nf6;J)V

    return-object p0
.end method

.method public final L(J)Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1, p2}, Lcom/shabakaty/downloader/nf6;->D0(Lcom/shabakaty/downloader/nf6;J)V

    return-object p0
.end method

.method public final M()I
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 1
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/nf6;->i1()I

    move-result v0

    return v0
.end method

.method public final N()Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0}, Lcom/shabakaty/downloader/nf6;->i0(Lcom/shabakaty/downloader/nf6;)V

    return-object p0
.end method

.method public final O(Ljava/lang/String;)Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/nf6;->S(Lcom/shabakaty/downloader/nf6;Ljava/lang/String;)V

    return-object p0
.end method

.method public final P(I)Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/nf6;->K(Lcom/shabakaty/downloader/nf6;I)V

    return-object p0
.end method

.method public final Q(Z)Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/nf6;->d0(Lcom/shabakaty/downloader/nf6;Z)V

    return-object p0
.end method

.method public final R(J)Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1, p2}, Lcom/shabakaty/downloader/nf6;->B0(Lcom/shabakaty/downloader/nf6;J)V

    return-object p0
.end method

.method public final S(I)Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/nf6;->L0(Lcom/shabakaty/downloader/nf6;I)V

    return-object p0
.end method

.method public final T(J)Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1, p2}, Lcom/shabakaty/downloader/nf6;->A0(Lcom/shabakaty/downloader/nf6;J)V

    return-object p0
.end method

.method public final U(ILcom/shabakaty/downloader/th6;)Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1, p2}, Lcom/shabakaty/downloader/nf6;->x0(Lcom/shabakaty/downloader/nf6;ILcom/shabakaty/downloader/th6;)V

    return-object p0
.end method

.method public final V(Ljava/lang/String;)Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/nf6;->K0(Lcom/shabakaty/downloader/nf6;Ljava/lang/String;)V

    return-object p0
.end method

.method public final W(I)Lcom/shabakaty/downloader/th6;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 1
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/nf6;->B1(I)Lcom/shabakaty/downloader/th6;

    move-result-object p1

    return-object p1
.end method

.method public final X()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 1
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/nf6;->D1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 1
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/nf6;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 1
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/nf6;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ud6;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 1
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/nf6;->G()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/th6;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 1
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/nf6;->H()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final d0()I
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 1
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/nf6;->m1()I

    move-result v0

    return v0
.end method

.method public final e0()J
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 1
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/nf6;->r1()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f0()J
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 1
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/nf6;->v1()J

    move-result-wide v0

    return-wide v0
.end method

.method public final g0(I)Lcom/shabakaty/downloader/ud6;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 1
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/nf6;->y1(I)Lcom/shabakaty/downloader/ud6;

    move-result-object p1

    return-object p1
.end method

.method public final h0(Ljava/lang/Iterable;)Lcom/shabakaty/downloader/jf6;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/shabakaty/downloader/yc6;",
            ">;)",
            "Lcom/shabakaty/downloader/jf6;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/shabakaty/downloader/lu6;->t:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/lu6;->i()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shabakaty/downloader/lu6;->t:Z

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/nf6;->e0(Lcom/shabakaty/downloader/nf6;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final i0(Ljava/lang/Iterable;)Lcom/shabakaty/downloader/jf6;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/shabakaty/downloader/ud6;",
            ">;)",
            "Lcom/shabakaty/downloader/jf6;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/shabakaty/downloader/lu6;->t:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/lu6;->i()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shabakaty/downloader/lu6;->t:Z

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/nf6;->u0(Lcom/shabakaty/downloader/nf6;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final j0(Ljava/lang/Iterable;)Lcom/shabakaty/downloader/jf6;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/shabakaty/downloader/jf6;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/shabakaty/downloader/lu6;->t:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/lu6;->i()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shabakaty/downloader/lu6;->t:Z

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/nf6;->N(Lcom/shabakaty/downloader/nf6;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final k0(Lcom/shabakaty/downloader/pd6;)Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ud6;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/nf6;->O(Lcom/shabakaty/downloader/nf6;Lcom/shabakaty/downloader/ud6;)V

    return-object p0
.end method

.method public final m(Ljava/lang/String;)Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/nf6;->N0(Lcom/shabakaty/downloader/nf6;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m0(Lcom/shabakaty/downloader/mh6;)Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/th6;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/nf6;->y0(Lcom/shabakaty/downloader/nf6;Lcom/shabakaty/downloader/th6;)V

    return-object p0
.end method

.method public final n(Ljava/lang/String;)Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/nf6;->W(Lcom/shabakaty/downloader/nf6;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n0(Lcom/shabakaty/downloader/th6;)Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/nf6;->y0(Lcom/shabakaty/downloader/nf6;Lcom/shabakaty/downloader/th6;)V

    return-object p0
.end method

.method public final o(Ljava/lang/String;)Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/nf6;->M0(Lcom/shabakaty/downloader/nf6;Ljava/lang/String;)V

    return-object p0
.end method

.method public final o0()Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0}, Lcom/shabakaty/downloader/nf6;->X(Lcom/shabakaty/downloader/nf6;)V

    return-object p0
.end method

.method public final p0()Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0}, Lcom/shabakaty/downloader/nf6;->f0(Lcom/shabakaty/downloader/nf6;)V

    return-object p0
.end method

.method public final q(Ljava/lang/String;)Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/nf6;->O0(Lcom/shabakaty/downloader/nf6;Ljava/lang/String;)V

    return-object p0
.end method

.method public final q0()Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0}, Lcom/shabakaty/downloader/nf6;->J(Lcom/shabakaty/downloader/nf6;)V

    return-object p0
.end method

.method public final r(I)Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/nf6;->h0(Lcom/shabakaty/downloader/nf6;I)V

    return-object p0
.end method

.method public final r0()Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0}, Lcom/shabakaty/downloader/nf6;->v0(Lcom/shabakaty/downloader/nf6;)V

    return-object p0
.end method

.method public final s(I)Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/nf6;->Z(Lcom/shabakaty/downloader/nf6;I)V

    return-object p0
.end method

.method public final s0()Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0}, Lcom/shabakaty/downloader/nf6;->b0(Lcom/shabakaty/downloader/nf6;)V

    return-object p0
.end method

.method public final t(J)Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1, p2}, Lcom/shabakaty/downloader/nf6;->Q(Lcom/shabakaty/downloader/nf6;J)V

    return-object p0
.end method

.method public final t0()Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0}, Lcom/shabakaty/downloader/nf6;->V(Lcom/shabakaty/downloader/nf6;)V

    return-object p0
.end method

.method public final u(J)Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1, p2}, Lcom/shabakaty/downloader/nf6;->k0(Lcom/shabakaty/downloader/nf6;J)V

    return-object p0
.end method

.method public final u0()Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0}, Lcom/shabakaty/downloader/nf6;->G0(Lcom/shabakaty/downloader/nf6;)V

    return-object p0
.end method

.method public final v(Ljava/lang/String;)Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/nf6;->t0(Lcom/shabakaty/downloader/nf6;Ljava/lang/String;)V

    return-object p0
.end method

.method public final v0()Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0}, Lcom/shabakaty/downloader/nf6;->E0(Lcom/shabakaty/downloader/nf6;)V

    return-object p0
.end method

.method public final w(J)Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1, p2}, Lcom/shabakaty/downloader/nf6;->Y(Lcom/shabakaty/downloader/nf6;J)V

    return-object p0
.end method

.method public final w0()Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0}, Lcom/shabakaty/downloader/nf6;->T(Lcom/shabakaty/downloader/nf6;)V

    return-object p0
.end method

.method public final x(Ljava/lang/String;)Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/nf6;->J0(Lcom/shabakaty/downloader/nf6;Ljava/lang/String;)V

    return-object p0
.end method

.method public final x0()Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0}, Lcom/shabakaty/downloader/nf6;->j0(Lcom/shabakaty/downloader/nf6;)V

    return-object p0
.end method

.method public final y()Lcom/shabakaty/downloader/jf6;
    .locals 1

    iget-boolean v0, p0, Lcom/shabakaty/downloader/lu6;->t:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/lu6;->i()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shabakaty/downloader/lu6;->t:Z

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    sget v0, Lcom/shabakaty/downloader/nf6;->zza:I

    const/4 v0, 0x0

    .line 4
    throw v0
.end method

.method public final y0(I)Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/nf6;->w0(Lcom/shabakaty/downloader/nf6;I)V

    return-object p0
.end method

.method public final z(J)Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1, p2}, Lcom/shabakaty/downloader/nf6;->P(Lcom/shabakaty/downloader/nf6;J)V

    return-object p0
.end method

.method public final z0(I)Lcom/shabakaty/downloader/jf6;
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
    check-cast v0, Lcom/shabakaty/downloader/nf6;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/nf6;->z0(Lcom/shabakaty/downloader/nf6;I)V

    return-object p0
.end method
