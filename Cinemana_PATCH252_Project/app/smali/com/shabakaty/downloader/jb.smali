.class public final Lcom/shabakaty/downloader/jb;
.super Lcom/shabakaty/downloader/hj;
.source "AppSettingsFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/nb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/hj<",
        "Lcom/shabakaty/downloader/ki1;",
        "Lcom/shabakaty/downloader/nb;",
        "Lcom/shabakaty/downloader/rb;",
        ">;",
        "Lcom/shabakaty/downloader/nb;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/shabakaty/downloader/jb;",
        "Lcom/shabakaty/downloader/hj;",
        "Lcom/shabakaty/downloader/ki1;",
        "Lcom/shabakaty/downloader/nb;",
        "Lcom/shabakaty/downloader/rb;",
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


# static fields
.field public static final synthetic x:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d0067

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/hj;-><init>(I)V

    return-void
.end method


# virtual methods
.method public Z()V
    .locals 12

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Ui8;->seekValues()[Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-static {v0}, Lcom/shabakaty/downloader/iq6;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/rb;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/rb;->l()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/shabakaty/downloader/jb$a;

    invoke-direct {v4, p0}, Lcom/shabakaty/downloader/jb$a;-><init>(Lcom/shabakaty/downloader/jb;)V

    const/4 v6, 0x0

    .line 3
    new-instance v7, Lcom/shabakaty/downloader/bn2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/shabakaty/downloader/bn2;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 6
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array v2, v3, [Ljava/lang/String;

    .line 7
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const-string v8, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v2, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, [Ljava/lang/CharSequence;

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    add-int/lit8 v10, v9, 0x1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 9
    invoke-static {v11, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_2

    :cond_1
    move v9, v10

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    .line 10
    :goto_2
    new-instance v1, Lcom/shabakaty/downloader/ib;

    invoke-direct {v1, v4, v0, v3}, Lcom/shabakaty/downloader/ib;-><init>(Lcom/shabakaty/downloader/hn1;Ljava/util/List;I)V

    .line 11
    iget-object v0, v7, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v2, v0, Landroidx/appcompat/app/AlertController$b;->p:[Ljava/lang/CharSequence;

    .line 12
    iput-object v1, v0, Landroidx/appcompat/app/AlertController$b;->r:Landroid/content/DialogInterface$OnClickListener;

    .line 13
    iput v9, v0, Landroidx/appcompat/app/AlertController$b;->v:I

    .line 14
    iput-boolean v5, v0, Landroidx/appcompat/app/AlertController$b;->u:Z

    .line 15
    invoke-static {v7, v6, v5}, Lcom/shabakaty/downloader/s45;->h(Lcom/shabakaty/downloader/bn2;Lcom/shabakaty/downloader/rm1;I)Lcom/shabakaty/downloader/bn2;

    invoke-virtual {v7}, Landroidx/appcompat/app/b$a;->j()Landroidx/appcompat/app/b;

    return-void
.end method

.method public Z1()Lcom/shabakaty/downloader/vj;
    .locals 0

    return-object p0
.end method

.method public d2()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/shabakaty/downloader/rb;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/shabakaty/downloader/rb;

    return-object v0
.end method

.method public j()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/bn2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/bn2;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120290

    .line 2
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/bn2;->q(Ljava/lang/CharSequence;)Lcom/shabakaty/downloader/bn2;

    move-result-object v0

    const v1, 0x7f1202a6

    .line 3
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/ig3;->t:Lcom/shabakaty/downloader/ig3;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/bn2;->m(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/shabakaty/downloader/bn2;

    const v1, 0x7f1202bc

    .line 4
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/shabakaty/downloader/ph0;

    invoke-direct {v2, p0}, Lcom/shabakaty/downloader/ph0;-><init>(Lcom/shabakaty/downloader/jb;)V

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/bn2;->o(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/shabakaty/downloader/bn2;

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/app/b$a;->j()Landroidx/appcompat/app/b;

    return-void
.end method

.method public o()V
    .locals 1

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public q(I)V
    .locals 1

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/vj$a;->a(Lcom/shabakaty/downloader/vj;I)V

    return-void
.end method

.method public w0()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/shabakaty/downloader/x93;

    const/16 v1, 0x17d7

    .line 1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2
    new-instance v2, Lcom/shabakaty/downloader/x93;

    const-string v3, "destination_id"

    invoke-direct {v2, v3, v1}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/ml3;->a([Lcom/shabakaty/downloader/x93;)Landroid/os/Bundle;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lcom/shabakaty/downloader/ji1;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    :goto_0
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "saved_state"

    .line 5
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lcom/shabakaty/downloader/ji1;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 7
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lcom/shabakaty/downloader/ji1;

    move-result-object v0

    const v2, 0x10a0001

    const/high16 v3, 0x10a0000

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 8
    :goto_2
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lcom/shabakaty/downloader/ji1;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_3
    return-void
.end method
