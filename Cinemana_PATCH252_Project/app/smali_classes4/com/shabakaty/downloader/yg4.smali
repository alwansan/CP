.class public final Lcom/shabakaty/downloader/yg4;
.super Lcom/shabakaty/downloader/af2;
.source "SubtitlesSettingsFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Ljava/lang/String;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/vg4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vg4;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/yg4;->r:Lcom/shabakaty/downloader/vg4;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    check-cast p1, Ljava/lang/String;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/yg4;->r:Lcom/shabakaty/downloader/vg4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ih4;

    iget-object v2, p0, Lcom/shabakaty/downloader/yg4;->r:Lcom/shabakaty/downloader/vg4;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/downloader/FontImportStore;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/FontImportStore;->f(Ljava/lang/String;)Lcom/shabakaty/downloader/gg4;

    move-result-object v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/gg4;->c:Lcom/shabakaty/downloader/gg4;

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/gg4$b;->e:Lcom/shabakaty/downloader/gg4$b;

    .line 5
    iget-object v2, v1, Lcom/shabakaty/downloader/gg4;->a:Ljava/lang/String;

    .line 6
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_0

    .line 7
    :cond_1
    sget-object v1, Lcom/shabakaty/downloader/gg4$a;->e:Lcom/shabakaty/downloader/gg4$a;

    .line 8
    iget-object v2, v1, Lcom/shabakaty/downloader/gg4;->a:Ljava/lang/String;

    .line 9
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_0

    .line 10
    :cond_2
    sget-object v1, Lcom/shabakaty/downloader/gg4$k;->e:Lcom/shabakaty/downloader/gg4$k;

    .line 11
    iget-object v2, v1, Lcom/shabakaty/downloader/gg4;->a:Ljava/lang/String;

    .line 12
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_0

    .line 13
    :cond_3
    sget-object v1, Lcom/shabakaty/downloader/gg4$p;->e:Lcom/shabakaty/downloader/gg4$p;

    .line 14
    iget-object v2, v1, Lcom/shabakaty/downloader/gg4;->a:Ljava/lang/String;

    .line 15
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_0

    .line 16
    :cond_4
    sget-object v1, Lcom/shabakaty/downloader/gg4$h;->e:Lcom/shabakaty/downloader/gg4$h;

    .line 17
    iget-object v2, v1, Lcom/shabakaty/downloader/gg4;->a:Ljava/lang/String;

    .line 18
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_0

    .line 19
    :cond_5
    sget-object v1, Lcom/shabakaty/downloader/gg4$s;->e:Lcom/shabakaty/downloader/gg4$s;

    .line 20
    iget-object v2, v1, Lcom/shabakaty/downloader/gg4;->a:Ljava/lang/String;

    .line 21
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto/16 :goto_0

    .line 22
    :cond_6
    sget-object v1, Lcom/shabakaty/downloader/gg4$m;->e:Lcom/shabakaty/downloader/gg4$m;

    .line 23
    iget-object v2, v1, Lcom/shabakaty/downloader/gg4;->a:Ljava/lang/String;

    .line 24
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto/16 :goto_0

    .line 25
    :cond_7
    sget-object v1, Lcom/shabakaty/downloader/gg4$d;->e:Lcom/shabakaty/downloader/gg4$d;

    .line 26
    iget-object v2, v1, Lcom/shabakaty/downloader/gg4;->a:Ljava/lang/String;

    .line 27
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_0

    .line 28
    :cond_8
    sget-object v1, Lcom/shabakaty/downloader/gg4$e;->e:Lcom/shabakaty/downloader/gg4$e;

    .line 29
    iget-object v2, v1, Lcom/shabakaty/downloader/gg4;->a:Ljava/lang/String;

    .line 30
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_0

    .line 31
    :cond_9
    sget-object v1, Lcom/shabakaty/downloader/gg4$g;->e:Lcom/shabakaty/downloader/gg4$g;

    .line 32
    iget-object v2, v1, Lcom/shabakaty/downloader/gg4;->a:Ljava/lang/String;

    .line 33
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_0

    .line 34
    :cond_a
    sget-object v1, Lcom/shabakaty/downloader/gg4$i;->e:Lcom/shabakaty/downloader/gg4$i;

    .line 35
    iget-object v2, v1, Lcom/shabakaty/downloader/gg4;->a:Ljava/lang/String;

    .line 36
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_0

    .line 37
    :cond_b
    sget-object v1, Lcom/shabakaty/downloader/gg4$j;->e:Lcom/shabakaty/downloader/gg4$j;

    .line 38
    iget-object v2, v1, Lcom/shabakaty/downloader/gg4;->a:Ljava/lang/String;

    .line 39
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_0

    .line 40
    :cond_c
    sget-object v1, Lcom/shabakaty/downloader/gg4$l;->e:Lcom/shabakaty/downloader/gg4$l;

    .line 41
    iget-object v2, v1, Lcom/shabakaty/downloader/gg4;->a:Ljava/lang/String;

    .line 42
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_0

    .line 43
    :cond_d
    sget-object v1, Lcom/shabakaty/downloader/gg4$n;->e:Lcom/shabakaty/downloader/gg4$n;

    .line 44
    iget-object v2, v1, Lcom/shabakaty/downloader/gg4;->a:Ljava/lang/String;

    .line 45
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_0

    .line 46
    :cond_e
    sget-object v1, Lcom/shabakaty/downloader/gg4$o;->e:Lcom/shabakaty/downloader/gg4$o;

    .line 47
    iget-object v2, v1, Lcom/shabakaty/downloader/gg4;->a:Ljava/lang/String;

    .line 48
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_0

    .line 49
    :cond_f
    sget-object v1, Lcom/shabakaty/downloader/gg4$q;->e:Lcom/shabakaty/downloader/gg4$q;

    .line 50
    iget-object v2, v1, Lcom/shabakaty/downloader/gg4;->a:Ljava/lang/String;

    .line 51
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_0

    .line 52
    :cond_10
    sget-object v1, Lcom/shabakaty/downloader/gg4$r;->e:Lcom/shabakaty/downloader/gg4$r;

    .line 53
    iget-object v2, v1, Lcom/shabakaty/downloader/gg4;->a:Ljava/lang/String;

    .line 54
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_0

    .line 55
    :cond_11
    sget-object v1, Lcom/shabakaty/downloader/gg4$c;->e:Lcom/shabakaty/downloader/gg4$c;

    .line 56
    :goto_0
    new-instance p1, Lcom/shabakaty/downloader/gh4;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/shabakaty/downloader/gh4;-><init>(Lcom/shabakaty/downloader/ih4;Lcom/shabakaty/downloader/gg4;Lcom/shabakaty/downloader/ud0;)V

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/xk;->i(Lcom/shabakaty/downloader/hn1;)Lcom/shabakaty/downloader/e92;

    .line 57
    iget-object p1, p0, Lcom/shabakaty/downloader/yg4;->r:Lcom/shabakaty/downloader/vg4;

    invoke-static {p1}, Lcom/shabakaty/downloader/cl3;->e(Lcom/shabakaty/downloader/rh2;)Lcom/shabakaty/downloader/ih2;

    move-result-object v3

    .line 58
    sget-object v4, Lcom/shabakaty/downloader/wl2;->a:Lcom/shabakaty/downloader/vl2;

    .line 59
    new-instance v6, Lcom/shabakaty/downloader/xg4;

    iget-object p1, p0, Lcom/shabakaty/downloader/yg4;->r:Lcom/shabakaty/downloader/vg4;

    invoke-direct {v6, p1, v2}, Lcom/shabakaty/downloader/xg4;-><init>(Lcom/shabakaty/downloader/vg4;Lcom/shabakaty/downloader/ud0;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    .line 60
    iget-object p1, p0, Lcom/shabakaty/downloader/yg4;->r:Lcom/shabakaty/downloader/vg4;

    invoke-static {p1}, Lcom/shabakaty/downloader/vg4;->i2(Lcom/shabakaty/downloader/vg4;)V

    .line 61
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
