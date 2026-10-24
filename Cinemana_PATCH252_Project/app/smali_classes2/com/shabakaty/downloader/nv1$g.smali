.class public final enum Lcom/shabakaty/downloader/nv1$g;
.super Lcom/shabakaty/downloader/nv1;
.source "HtmlTreeBuilderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/nv1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/shabakaty/downloader/nv1;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/nv1$k;)V

    return-void
.end method


# virtual methods
.method public j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/zn4;->a:Lcom/shabakaty/downloader/zn4$j;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    const-string v2, "html"

    const/4 v3, 0x1

    const-string v4, "select"

    const-string v5, "optgroup"

    const-string v6, "option"

    if-eq v0, v3, :cond_c

    const/4 v7, 0x2

    if-eq v0, v7, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    .line 2
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    return v1

    .line 3
    :cond_0
    invoke-static {p2, v2}, Lcom/shabakaty/downloader/lv1;->a(Lcom/shabakaty/downloader/mv1;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 4
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    goto/16 :goto_3

    .line 5
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/zn4$c;

    .line 6
    iget-object v0, p1, Lcom/shabakaty/downloader/zn4$c;->b:Ljava/lang/String;

    .line 7
    sget-object v2, Lcom/shabakaty/downloader/nv1;->N:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    return v1

    .line 10
    :cond_2
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/mv1;->w(Lcom/shabakaty/downloader/zn4$c;)V

    goto/16 :goto_3

    .line 11
    :cond_3
    check-cast p1, Lcom/shabakaty/downloader/zn4$d;

    .line 12
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/mv1;->x(Lcom/shabakaty/downloader/zn4$d;)V

    goto/16 :goto_3

    .line 13
    :cond_4
    check-cast p1, Lcom/shabakaty/downloader/zn4$g;

    .line 14
    iget-object p1, p1, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v7, 0x1

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    :goto_0
    const/4 v7, -0x1

    :cond_7
    :goto_1
    packed-switch v7, :pswitch_data_0

    .line 16
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    return v1

    .line 17
    :pswitch_0
    invoke-static {p2, v6}, Lcom/shabakaty/downloader/lv1;->a(Lcom/shabakaty/downloader/mv1;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p2}, Lcom/shabakaty/downloader/cr4;->a()Lcom/shabakaty/downloader/k21;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/mv1;->h(Lcom/shabakaty/downloader/k21;)Lcom/shabakaty/downloader/k21;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p2}, Lcom/shabakaty/downloader/cr4;->a()Lcom/shabakaty/downloader/k21;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/mv1;->h(Lcom/shabakaty/downloader/k21;)Lcom/shabakaty/downloader/k21;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/k21;->s()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 18
    invoke-virtual {p2, v6}, Lcom/shabakaty/downloader/cr4;->f(Ljava/lang/String;)Z

    .line 19
    :cond_8
    invoke-static {p2, v5}, Lcom/shabakaty/downloader/lv1;->a(Lcom/shabakaty/downloader/mv1;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 20
    invoke-virtual {p2}, Lcom/shabakaty/downloader/mv1;->H()Lcom/shabakaty/downloader/k21;

    goto :goto_3

    .line 21
    :cond_9
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    goto :goto_3

    .line 22
    :pswitch_1
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/mv1;->s(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 23
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    return v1

    .line 24
    :cond_a
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/mv1;->I(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p2}, Lcom/shabakaty/downloader/mv1;->O()V

    goto :goto_3

    .line 26
    :pswitch_2
    invoke-static {p2, v6}, Lcom/shabakaty/downloader/lv1;->a(Lcom/shabakaty/downloader/mv1;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 27
    invoke-virtual {p2}, Lcom/shabakaty/downloader/mv1;->H()Lcom/shabakaty/downloader/k21;

    goto :goto_3

    .line 28
    :cond_b
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    goto :goto_3

    .line 29
    :cond_c
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/zn4$h;

    .line 30
    iget-object v7, v0, Lcom/shabakaty/downloader/zn4$i;->c:Ljava/lang/String;

    .line 31
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 32
    sget-object p1, Lcom/shabakaty/downloader/nv1;->x:Lcom/shabakaty/downloader/nv1;

    invoke-virtual {p2, v0, p1}, Lcom/shabakaty/downloader/mv1;->J(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/nv1;)Z

    move-result p1

    return p1

    .line 33
    :cond_d
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 34
    invoke-static {p2, v6}, Lcom/shabakaty/downloader/lv1;->a(Lcom/shabakaty/downloader/mv1;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 35
    invoke-virtual {p2, v6}, Lcom/shabakaty/downloader/cr4;->f(Ljava/lang/String;)Z

    .line 36
    :cond_e
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/mv1;->v(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    goto :goto_3

    .line 37
    :cond_f
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 38
    invoke-static {p2, v6}, Lcom/shabakaty/downloader/lv1;->a(Lcom/shabakaty/downloader/mv1;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 39
    invoke-virtual {p2, v6}, Lcom/shabakaty/downloader/cr4;->f(Ljava/lang/String;)Z

    goto :goto_2

    .line 40
    :cond_10
    invoke-static {p2, v5}, Lcom/shabakaty/downloader/lv1;->a(Lcom/shabakaty/downloader/mv1;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 41
    invoke-virtual {p2, v5}, Lcom/shabakaty/downloader/cr4;->f(Ljava/lang/String;)Z

    .line 42
    :cond_11
    :goto_2
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/mv1;->v(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    :cond_12
    :goto_3
    return v3

    .line 43
    :cond_13
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 44
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    .line 45
    invoke-virtual {p2, v4}, Lcom/shabakaty/downloader/cr4;->f(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_14
    const-string v2, "input"

    const-string v3, "keygen"

    const-string v5, "textarea"

    .line 46
    filled-new-array {v2, v3, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/shabakaty/downloader/de4;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 47
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    .line 48
    invoke-virtual {p2, v4}, Lcom/shabakaty/downloader/mv1;->s(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_15

    return v1

    .line 49
    :cond_15
    invoke-virtual {p2, v4}, Lcom/shabakaty/downloader/cr4;->f(Ljava/lang/String;)Z

    .line 50
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/mv1;->e(Lcom/shabakaty/downloader/zn4;)Z

    move-result p1

    return p1

    :cond_16
    const-string v0, "script"

    .line 51
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 52
    sget-object v0, Lcom/shabakaty/downloader/nv1;->u:Lcom/shabakaty/downloader/nv1;

    invoke-virtual {p2, p1, v0}, Lcom/shabakaty/downloader/mv1;->J(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/nv1;)Z

    move-result p1

    return p1

    .line 53
    :cond_17
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    return v1

    .line 54
    :cond_18
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    return v1

    :sswitch_data_0
    .sparse-switch
        -0x3c35778b -> :sswitch_2
        -0x3600cb04 -> :sswitch_1
        -0x4d08054 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
