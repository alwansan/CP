.class public final Lcom/shabakaty/downloader/rp0$a;
.super Ljava/lang/Object;
.source "SpecialTypes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/rp0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nn0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/qw4;Z)Lcom/shabakaty/downloader/rp0;
    .locals 10

    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v1, p1, Lcom/shabakaty/downloader/rp0;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/shabakaty/downloader/rp0;

    goto/16 :goto_5

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v1

    instance-of v1, v1, Lcom/shabakaty/downloader/iz2;

    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v1

    invoke-interface {v1}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v1

    instance-of v1, v1, Lcom/shabakaty/downloader/kt4;

    if-nez v1, :cond_2

    .line 4
    instance-of v1, p1, Lcom/shabakaty/downloader/xy2;

    if-nez v1, :cond_2

    .line 5
    instance-of v1, p1, Lcom/shabakaty/downloader/ve4;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_3

    goto :goto_4

    .line 6
    :cond_3
    instance-of v1, p1, Lcom/shabakaty/downloader/ve4;

    if-eqz v1, :cond_4

    invoke-static {p1}, Lcom/shabakaty/downloader/eu4;->h(Lcom/shabakaty/downloader/qe2;)Z

    move-result v3

    goto :goto_4

    .line 7
    :cond_4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v1

    invoke-interface {v1}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v1

    instance-of v4, v1, Lcom/shabakaty/downloader/lt4;

    if-eqz v4, :cond_5

    check-cast v1, Lcom/shabakaty/downloader/lt4;

    goto :goto_2

    :cond_5
    move-object v1, v2

    :goto_2
    if-nez v1, :cond_6

    goto :goto_3

    .line 8
    :cond_6
    iget-boolean v1, v1, Lcom/shabakaty/downloader/lt4;->D:Z

    if-nez v1, :cond_7

    const/4 v3, 0x1

    :cond_7
    :goto_3
    if-eqz v3, :cond_8

    const/4 v3, 0x1

    goto :goto_4

    :cond_8
    if-eqz p2, :cond_9

    .line 9
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v1

    invoke-interface {v1}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v1

    instance-of v1, v1, Lcom/shabakaty/downloader/kt4;

    if-eqz v1, :cond_9

    .line 10
    invoke-static {p1}, Lcom/shabakaty/downloader/eu4;->h(Lcom/shabakaty/downloader/qe2;)Z

    move-result v3

    goto :goto_4

    .line 11
    :cond_9
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v6, Lcom/shabakaty/downloader/q64;->a:Lcom/shabakaty/downloader/q64;

    const-string v0, "this"

    .line 13
    invoke-static {v6, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x18

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 14
    invoke-static/range {v4 .. v9}, Lcom/shabakaty/downloader/z02;->d(ZZLcom/shabakaty/downloader/e30;Lcom/shabakaty/downloader/ue2;Lcom/shabakaty/downloader/ve2;I)Lcom/shabakaty/downloader/qs4;

    move-result-object v0

    .line 15
    invoke-static {p1}, Lcom/shabakaty/downloader/rm3;->l(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/b74;

    move-result-object v1

    sget-object v3, Lcom/shabakaty/downloader/qs4$a$b;->a:Lcom/shabakaty/downloader/qs4$a$b;

    invoke-static {v0, v1, v3}, Lcom/shabakaty/downloader/o0;->a(Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/d74;Lcom/shabakaty/downloader/qs4$a;)Z

    move-result v0

    xor-int/lit8 v3, v0, 0x1

    :goto_4
    if-eqz v3, :cond_b

    .line 16
    instance-of v0, p1, Lcom/shabakaty/downloader/fe1;

    if-eqz v0, :cond_a

    .line 17
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/fe1;

    .line 18
    iget-object v1, v0, Lcom/shabakaty/downloader/fe1;->s:Lcom/shabakaty/downloader/b74;

    .line 19
    invoke-virtual {v1}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v1

    .line 20
    iget-object v0, v0, Lcom/shabakaty/downloader/fe1;->t:Lcom/shabakaty/downloader/b74;

    .line 21
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    :cond_a
    new-instance v0, Lcom/shabakaty/downloader/rp0;

    invoke-static {p1}, Lcom/shabakaty/downloader/rm3;->l(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    invoke-direct {v0, p1, p2, v2}, Lcom/shabakaty/downloader/rp0;-><init>(Lcom/shabakaty/downloader/b74;ZLcom/shabakaty/downloader/nn0;)V

    move-object v2, v0

    :cond_b
    :goto_5
    return-object v2
.end method
