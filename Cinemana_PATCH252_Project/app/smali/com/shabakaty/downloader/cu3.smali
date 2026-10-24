.class public final Lcom/shabakaty/downloader/cu3;
.super Lcom/shabakaty/downloader/ek;
.source "RootProfileFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/shabakaty/downloader/cu3;",
        "Lcom/shabakaty/downloader/ek;",
        "<init>",
        "()V",
        "app_productionBetaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/ek;-><init>()V

    return-void
.end method


# virtual methods
.method public X1()I
    .locals 1

    const v0, 0x7f0d007c

    return v0
.end method

.method public Y1()I
    .locals 1

    const v0, 0x7f0a0356

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "view"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/ek;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/ek;->w:Landroidx/navigation/fragment/NavHostFragment;

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroidx/navigation/fragment/NavHostFragment;->Y1()Landroidx/navigation/NavController;

    move-result-object p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "requireContext()"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<this>"

    .line 4
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v1, p1, Landroidx/navigation/NavController;->k:Landroidx/navigation/i;

    const-string v2, "navigatorProvider"

    .line 6
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v2, Lcom/shabakaty/downloader/ax2;

    const v3, 0x7f0a0356

    const/16 v4, 0x1005

    invoke-direct {v2, v1, v3, v4}, Lcom/shabakaty/downloader/ax2;-><init>(Landroidx/navigation/i;II)V

    .line 8
    const-class v1, Landroidx/navigation/a;

    const-class v3, Landroidx/navigation/fragment/a;

    iget-object v5, v2, Lcom/shabakaty/downloader/ax2;->h:Landroidx/navigation/i;

    .line 9
    invoke-virtual {v5, v3}, Landroidx/navigation/i;->c(Ljava/lang/Class;)Landroidx/navigation/h;

    move-result-object v5

    check-cast v5, Landroidx/navigation/fragment/a;

    .line 10
    const-class v6, Lcom/shabakaty/downloader/k13;

    invoke-static {v6}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v6

    .line 11
    new-instance v7, Lcom/shabakaty/downloader/dt0;

    const/16 v8, 0x1006

    invoke-direct {v7, v5, v8, v6}, Lcom/shabakaty/downloader/dt0;-><init>(Landroidx/navigation/fragment/a;ILcom/shabakaty/downloader/gc2;)V

    const v5, 0x7f1201dd

    .line 12
    invoke-virtual {p2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 13
    iput-object v5, v7, Lcom/shabakaty/downloader/zw2;->a:Ljava/lang/CharSequence;

    .line 14
    invoke-static {v7, v8}, Lcom/shabakaty/downloader/uo1;->i(Lcom/shabakaty/downloader/dt0;I)V

    const-string v5, "Notifications Fragment"

    .line 15
    invoke-static {v7, v5}, Lcom/shabakaty/downloader/uo1;->a(Lcom/shabakaty/downloader/zw2;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2, v7}, Lcom/shabakaty/downloader/ax2;->e(Lcom/shabakaty/downloader/zw2;)V

    .line 17
    iget-object v5, v2, Lcom/shabakaty/downloader/ax2;->h:Landroidx/navigation/i;

    .line 18
    invoke-virtual {v5, v3}, Landroidx/navigation/i;->c(Ljava/lang/Class;)Landroidx/navigation/h;

    move-result-object v5

    check-cast v5, Landroidx/navigation/fragment/a;

    .line 19
    const-class v6, Lcom/shabakaty/downloader/tf4;

    invoke-static {v6}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v6

    .line 20
    new-instance v7, Lcom/shabakaty/downloader/dt0;

    const/16 v8, 0x1007

    invoke-direct {v7, v5, v8, v6}, Lcom/shabakaty/downloader/dt0;-><init>(Landroidx/navigation/fragment/a;ILcom/shabakaty/downloader/gc2;)V

    const v5, 0x7f12026a

    .line 21
    invoke-virtual {p2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 22
    iput-object v5, v7, Lcom/shabakaty/downloader/zw2;->a:Ljava/lang/CharSequence;

    .line 23
    invoke-static {v7, v8}, Lcom/shabakaty/downloader/uo1;->i(Lcom/shabakaty/downloader/dt0;I)V

    const-string v5, "Subscriptions Fragment"

    .line 24
    invoke-static {v7, v5}, Lcom/shabakaty/downloader/uo1;->a(Lcom/shabakaty/downloader/zw2;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v2, v7}, Lcom/shabakaty/downloader/ax2;->e(Lcom/shabakaty/downloader/zw2;)V

    .line 26
    iget-object v5, v2, Lcom/shabakaty/downloader/ax2;->h:Landroidx/navigation/i;

    .line 27
    invoke-virtual {v5, v3}, Landroidx/navigation/i;->c(Ljava/lang/Class;)Landroidx/navigation/h;

    move-result-object v5

    check-cast v5, Landroidx/navigation/fragment/a;

    .line 28
    const-class v6, Lcom/shabakaty/downloader/e21;

    invoke-static {v6}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v6

    .line 29
    new-instance v7, Lcom/shabakaty/downloader/dt0;

    const/16 v8, 0x1008

    invoke-direct {v7, v5, v8, v6}, Lcom/shabakaty/downloader/dt0;-><init>(Landroidx/navigation/fragment/a;ILcom/shabakaty/downloader/gc2;)V

    const v5, 0x7f1200e2

    .line 30
    invoke-virtual {p2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 31
    iput-object v5, v7, Lcom/shabakaty/downloader/zw2;->a:Ljava/lang/CharSequence;

    const-string v5, "Edit Profile Fragment"

    .line 32
    invoke-static {v7, v5}, Lcom/shabakaty/downloader/uo1;->a(Lcom/shabakaty/downloader/zw2;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v2, v7}, Lcom/shabakaty/downloader/ax2;->e(Lcom/shabakaty/downloader/zw2;)V

    .line 34
    iget-object v5, v2, Lcom/shabakaty/downloader/ax2;->h:Landroidx/navigation/i;

    .line 35
    invoke-virtual {v5, v1}, Landroidx/navigation/i;->c(Ljava/lang/Class;)Landroidx/navigation/h;

    move-result-object v5

    check-cast v5, Landroidx/navigation/a;

    .line 36
    new-instance v6, Lcom/shabakaty/downloader/g3;

    const/16 v7, 0x100e

    invoke-direct {v6, v5, v7}, Lcom/shabakaty/downloader/g3;-><init>(Landroidx/navigation/a;I)V

    const v5, 0x7f120201

    .line 37
    invoke-virtual {p2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 38
    iput-object v5, v6, Lcom/shabakaty/downloader/zw2;->a:Ljava/lang/CharSequence;

    .line 39
    const-class v5, Lcom/shabakaty/cinemana/ui/qr_login/QrLoginActivity;

    invoke-static {v5}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v5

    .line 40
    iput-object v5, v6, Lcom/shabakaty/downloader/g3;->h:Lcom/shabakaty/downloader/gc2;

    const-string v5, "QR Login Activity"

    .line 41
    invoke-static {v6, v5}, Lcom/shabakaty/downloader/uo1;->a(Lcom/shabakaty/downloader/zw2;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v2, v6}, Lcom/shabakaty/downloader/ax2;->e(Lcom/shabakaty/downloader/zw2;)V

    .line 43
    invoke-static {v2, p2}, Lcom/shabakaty/downloader/uo1;->c(Lcom/shabakaty/downloader/ax2;Landroid/content/Context;)V

    .line 44
    invoke-static {v2}, Lcom/shabakaty/downloader/uo1;->b(Lcom/shabakaty/downloader/ax2;)V

    .line 45
    iget-object v5, v2, Lcom/shabakaty/downloader/ax2;->h:Landroidx/navigation/i;

    .line 46
    invoke-virtual {v5, v3}, Landroidx/navigation/i;->c(Ljava/lang/Class;)Landroidx/navigation/h;

    move-result-object v5

    check-cast v5, Landroidx/navigation/fragment/a;

    .line 47
    const-class v6, Lcom/shabakaty/downloader/qt0;

    invoke-static {v6}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v6

    .line 48
    new-instance v7, Lcom/shabakaty/downloader/dt0;

    const/16 v8, 0x100b

    invoke-direct {v7, v5, v8, v6}, Lcom/shabakaty/downloader/dt0;-><init>(Landroidx/navigation/fragment/a;ILcom/shabakaty/downloader/gc2;)V

    const v5, 0x7f1200d5

    .line 49
    invoke-virtual {p2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 50
    iput-object v5, v7, Lcom/shabakaty/downloader/zw2;->a:Ljava/lang/CharSequence;

    const-string v5, "Discover More Fragment"

    .line 51
    invoke-static {v7, v5}, Lcom/shabakaty/downloader/uo1;->a(Lcom/shabakaty/downloader/zw2;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v2, v7}, Lcom/shabakaty/downloader/ax2;->e(Lcom/shabakaty/downloader/zw2;)V

    .line 53
    iget-object v5, v2, Lcom/shabakaty/downloader/ax2;->h:Landroidx/navigation/i;

    .line 54
    invoke-virtual {v5, v3}, Landroidx/navigation/i;->c(Ljava/lang/Class;)Landroidx/navigation/h;

    move-result-object v5

    check-cast v5, Landroidx/navigation/fragment/a;

    .line 55
    const-class v6, Lcom/shabakaty/downloader/vx4;

    invoke-static {v6}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v6

    .line 56
    new-instance v7, Lcom/shabakaty/downloader/dt0;

    const/16 v8, 0x100c

    invoke-direct {v7, v5, v8, v6}, Lcom/shabakaty/downloader/dt0;-><init>(Landroidx/navigation/fragment/a;ILcom/shabakaty/downloader/gc2;)V

    .line 57
    sget-object v5, Lcom/shabakaty/downloader/ch3;->r:Lcom/shabakaty/downloader/ch3;

    const-string v6, "USER_LIST_KIND"

    invoke-virtual {v7, v6, v5}, Lcom/shabakaty/downloader/zw2;->b(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    const-string v5, "User List Details Fragment"

    .line 58
    invoke-static {v7, v5}, Lcom/shabakaty/downloader/uo1;->a(Lcom/shabakaty/downloader/zw2;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v2, v7}, Lcom/shabakaty/downloader/ax2;->e(Lcom/shabakaty/downloader/zw2;)V

    .line 60
    iget-object v5, v2, Lcom/shabakaty/downloader/ax2;->h:Landroidx/navigation/i;

    .line 61
    invoke-virtual {v5, v3}, Landroidx/navigation/i;->c(Ljava/lang/Class;)Landroidx/navigation/h;

    move-result-object v5

    check-cast v5, Landroidx/navigation/fragment/a;

    .line 62
    const-class v6, Lcom/shabakaty/downloader/jg3;

    invoke-static {v6}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v6

    .line 63
    new-instance v7, Lcom/shabakaty/downloader/dt0;

    invoke-direct {v7, v5, v4, v6}, Lcom/shabakaty/downloader/dt0;-><init>(Landroidx/navigation/fragment/a;ILcom/shabakaty/downloader/gc2;)V

    const v5, 0x7f120024

    .line 64
    invoke-virtual {p2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 65
    iput-object v5, v7, Lcom/shabakaty/downloader/zw2;->a:Ljava/lang/CharSequence;

    .line 66
    sget-object v5, Lcom/shabakaty/downloader/tg3;->r:Lcom/shabakaty/downloader/tg3;

    const/16 v6, 0x1069

    invoke-virtual {v7, v6, v5}, Lcom/shabakaty/downloader/zw2;->a(ILcom/shabakaty/downloader/tm1;)V

    .line 67
    sget-object v5, Lcom/shabakaty/downloader/xg3;->r:Lcom/shabakaty/downloader/xg3;

    const/16 v6, 0x106a

    invoke-virtual {v7, v6, v5}, Lcom/shabakaty/downloader/zw2;->a(ILcom/shabakaty/downloader/tm1;)V

    .line 68
    sget-object v5, Lcom/shabakaty/downloader/pg3;->r:Lcom/shabakaty/downloader/pg3;

    const/16 v6, 0x106b

    invoke-virtual {v7, v6, v5}, Lcom/shabakaty/downloader/zw2;->a(ILcom/shabakaty/downloader/tm1;)V

    .line 69
    sget-object v5, Lcom/shabakaty/downloader/rg3;->r:Lcom/shabakaty/downloader/rg3;

    const/16 v6, 0x106c

    invoke-virtual {v7, v6, v5}, Lcom/shabakaty/downloader/zw2;->a(ILcom/shabakaty/downloader/tm1;)V

    .line 70
    sget-object v5, Lcom/shabakaty/downloader/bh3;->r:Lcom/shabakaty/downloader/bh3;

    const/16 v6, 0x1070

    invoke-virtual {v7, v6, v5}, Lcom/shabakaty/downloader/zw2;->a(ILcom/shabakaty/downloader/tm1;)V

    .line 71
    invoke-static {v7, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    new-instance v5, Lcom/shabakaty/downloader/dp1;

    invoke-direct {v5, v4}, Lcom/shabakaty/downloader/dp1;-><init>(I)V

    const/16 v4, 0x1c21

    invoke-virtual {v7, v4, v5}, Lcom/shabakaty/downloader/zw2;->a(ILcom/shabakaty/downloader/tm1;)V

    .line 73
    sget-object v4, Lcom/shabakaty/downloader/ng3;->r:Lcom/shabakaty/downloader/ng3;

    const/16 v5, 0x106e

    invoke-virtual {v7, v5, v4}, Lcom/shabakaty/downloader/zw2;->a(ILcom/shabakaty/downloader/tm1;)V

    .line 74
    sget-object v4, Lcom/shabakaty/downloader/vg3;->r:Lcom/shabakaty/downloader/vg3;

    const/16 v5, 0x1071

    invoke-virtual {v7, v5, v4}, Lcom/shabakaty/downloader/zw2;->a(ILcom/shabakaty/downloader/tm1;)V

    .line 75
    invoke-static {v7, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/shabakaty/downloader/bp1;->r:Lcom/shabakaty/downloader/bp1;

    const/16 v4, 0x1c22

    invoke-virtual {v7, v4, v0}, Lcom/shabakaty/downloader/zw2;->a(ILcom/shabakaty/downloader/tm1;)V

    const-string v0, "Profile Fragment"

    .line 77
    invoke-static {v7, v0}, Lcom/shabakaty/downloader/uo1;->a(Lcom/shabakaty/downloader/zw2;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v2, v7}, Lcom/shabakaty/downloader/ax2;->e(Lcom/shabakaty/downloader/zw2;)V

    .line 79
    iget-object v0, v2, Lcom/shabakaty/downloader/ax2;->h:Landroidx/navigation/i;

    .line 80
    invoke-virtual {v0, v1}, Landroidx/navigation/i;->c(Ljava/lang/Class;)Landroidx/navigation/h;

    move-result-object v0

    check-cast v0, Landroidx/navigation/a;

    .line 81
    new-instance v1, Lcom/shabakaty/downloader/g3;

    const/16 v4, 0x1009

    invoke-direct {v1, v0, v4}, Lcom/shabakaty/downloader/g3;-><init>(Landroidx/navigation/a;I)V

    const v0, 0x7f120168

    .line 82
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    iput-object v0, v1, Lcom/shabakaty/downloader/zw2;->a:Ljava/lang/CharSequence;

    .line 84
    const-class v0, Lcom/shabakaty/cinemana/ui/login/LoginActivity;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v0

    .line 85
    iput-object v0, v1, Lcom/shabakaty/downloader/g3;->h:Lcom/shabakaty/downloader/gc2;

    const-string v0, "Login Activity"

    .line 86
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/uo1;->a(Lcom/shabakaty/downloader/zw2;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/ax2;->e(Lcom/shabakaty/downloader/zw2;)V

    .line 88
    iget-object v0, v2, Lcom/shabakaty/downloader/ax2;->h:Landroidx/navigation/i;

    .line 89
    invoke-virtual {v0, v3}, Landroidx/navigation/i;->c(Ljava/lang/Class;)Landroidx/navigation/h;

    move-result-object v0

    check-cast v0, Landroidx/navigation/fragment/a;

    .line 90
    const-class v1, Lcom/shabakaty/downloader/dy4;

    invoke-static {v1}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v1

    .line 91
    new-instance v3, Lcom/shabakaty/downloader/dt0;

    const/16 v4, 0x100d

    invoke-direct {v3, v0, v4, v1}, Lcom/shabakaty/downloader/dt0;-><init>(Landroidx/navigation/fragment/a;ILcom/shabakaty/downloader/gc2;)V

    const v0, 0x7f1202c6

    .line 92
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    iput-object v0, v3, Lcom/shabakaty/downloader/zw2;->a:Ljava/lang/CharSequence;

    .line 94
    sget-object v0, Lcom/shabakaty/downloader/zg3;->r:Lcom/shabakaty/downloader/zg3;

    const/16 v1, 0x106f

    invoke-virtual {v3, v1, v0}, Lcom/shabakaty/downloader/zw2;->a(ILcom/shabakaty/downloader/tm1;)V

    const-string v0, "User Lists Fragment"

    .line 95
    invoke-static {v3, v0}, Lcom/shabakaty/downloader/uo1;->a(Lcom/shabakaty/downloader/zw2;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/ax2;->e(Lcom/shabakaty/downloader/zw2;)V

    .line 97
    invoke-static {v2, p2}, Lcom/shabakaty/downloader/uo1;->j(Lcom/shabakaty/downloader/ax2;Landroid/content/Context;)V

    .line 98
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ax2;->d()Landroidx/navigation/d;

    move-result-object p2

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p1, p2, v0}, Landroidx/navigation/NavController;->p(Landroidx/navigation/d;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method
