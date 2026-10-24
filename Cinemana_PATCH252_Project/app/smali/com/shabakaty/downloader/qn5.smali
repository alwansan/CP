.class public final Lcom/shabakaty/downloader/qn5;
.super Lcom/shabakaty/downloader/wk5;
.source "com.google.android.gms:play-services-measurement@@19.0.1"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/wk5;-><init>()V

    iget-object v0, p0, Lcom/shabakaty/downloader/wk5;->a:Ljava/util/List;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/op5;->t:Lcom/shabakaty/downloader/op5;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/shabakaty/downloader/wk5;->a:Ljava/util/List;

    sget-object v1, Lcom/shabakaty/downloader/op5;->k0:Lcom/shabakaty/downloader/op5;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/shabakaty/downloader/wk5;->a:Ljava/util/List;

    sget-object v1, Lcom/shabakaty/downloader/op5;->n0:Lcom/shabakaty/downloader/op5;

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/shabakaty/downloader/np4;Ljava/util/List;)Lcom/shabakaty/downloader/gj5;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/np4;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/gj5;",
            ">;)",
            "Lcom/shabakaty/downloader/gj5;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/op5;->s:Lcom/shabakaty/downloader/op5;

    invoke-static {p1}, Lcom/shabakaty/downloader/kl3;->q(Ljava/lang/String;)Lcom/shabakaty/downloader/op5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/16 v4, 0x2f

    if-eq v0, v4, :cond_2

    const/16 v4, 0x32

    if-ne v0, v4, :cond_1

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/op5;->n0:Lcom/shabakaty/downloader/op5;

    const-string p1, "OR"

    .line 3
    invoke-static {p1, v1, p3}, Lcom/shabakaty/downloader/kl3;->t(Ljava/lang/String;ILjava/util/List;)V

    .line 4
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Lcom/shabakaty/downloader/gj5;->i()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 6
    :cond_0
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/wk5;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/gj5;

    const/4 p1, 0x0

    throw p1

    .line 8
    :cond_2
    sget-object p1, Lcom/shabakaty/downloader/op5;->k0:Lcom/shabakaty/downloader/op5;

    const-string p1, "NOT"

    .line 9
    invoke-static {p1, v3, p3}, Lcom/shabakaty/downloader/kl3;->t(Ljava/lang/String;ILjava/util/List;)V

    .line 10
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    .line 11
    new-instance p2, Lcom/shabakaty/downloader/eg5;

    invoke-interface {p1}, Lcom/shabakaty/downloader/gj5;->i()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/eg5;-><init>(Ljava/lang/Boolean;)V

    return-object p2

    .line 12
    :cond_3
    sget-object p1, Lcom/shabakaty/downloader/op5;->t:Lcom/shabakaty/downloader/op5;

    const-string p1, "AND"

    .line 13
    invoke-static {p1, v1, p3}, Lcom/shabakaty/downloader/kl3;->t(Ljava/lang/String;ILjava/util/List;)V

    .line 14
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/shabakaty/downloader/gj5;->i()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    return-object p1

    .line 16
    :cond_4
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    return-object p1
.end method
