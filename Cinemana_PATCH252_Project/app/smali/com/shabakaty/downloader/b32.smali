.class public final synthetic Lcom/shabakaty/downloader/b32;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/r53;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/shabakaty/downloader/c32;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/c32;I)V
    .locals 1

    iput p2, p0, Lcom/shabakaty/downloader/b32;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/b32;->b:Lcom/shabakaty/downloader/c32;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 7

    iget v0, p0, Lcom/shabakaty/downloader/b32;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    const-string v3, ""

    const-string v4, "this$0"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/b32;->b:Lcom/shabakaty/downloader/c32;

    check-cast p1, Lcom/shabakaty/downloader/tj;

    sget v5, Lcom/shabakaty/downloader/c32;->B:I

    .line 1
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/c32;->h2()Lcom/shabakaty/downloader/d41;

    move-result-object p1

    invoke-virtual {v0}, Lcom/shabakaty/downloader/hj;->a2()Lcom/shabakaty/downloader/xk;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/u15;

    .line 4
    iget-object v4, v4, Lcom/shabakaty/downloader/u15;->t:Lcom/shabakaty/downloader/mj;

    .line 5
    invoke-virtual {v4}, Lcom/shabakaty/downloader/mj;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez v4, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v4, v4, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v4

    .line 7
    :goto_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iput-object v3, p1, Lcom/shabakaty/downloader/d41;->e:Ljava/lang/String;

    .line 9
    invoke-virtual {v0}, Lcom/shabakaty/downloader/c32;->j2()V

    .line 10
    iget-object p1, v0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 11
    check-cast p1, Lcom/shabakaty/downloader/tj1;

    .line 12
    iget-object v3, v0, Lcom/shabakaty/downloader/c32;->z:Ljava/util/List;

    .line 13
    invoke-virtual {p1, v3}, Lcom/shabakaty/downloader/tj1;->G(Ljava/util/List;)V

    .line 14
    iget-object p1, v0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 15
    check-cast p1, Lcom/shabakaty/downloader/tj1;

    iget-object v3, v0, Lcom/shabakaty/downloader/c32;->x:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/tj1;->I(Ljava/lang/Boolean;)V

    .line 16
    invoke-virtual {v0}, Lcom/shabakaty/downloader/c32;->h2()Lcom/shabakaty/downloader/d41;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    :cond_3
    return-void

    .line 18
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/b32;->b:Lcom/shabakaty/downloader/c32;

    check-cast p1, Lcom/shabakaty/downloader/tj;

    sget v1, Lcom/shabakaty/downloader/c32;->B:I

    .line 19
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Lcom/shabakaty/downloader/c32;->h2()Lcom/shabakaty/downloader/d41;

    move-result-object v1

    .line 21
    iget-object p1, p1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 22
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez p1, :cond_4

    goto :goto_2

    .line 23
    :cond_4
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    move-object v3, p1

    .line 24
    :goto_2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iput-object v3, v1, Lcom/shabakaty/downloader/d41;->e:Ljava/lang/String;

    .line 26
    invoke-virtual {v0}, Lcom/shabakaty/downloader/c32;->j2()V

    .line 27
    iget-object p1, v0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 28
    check-cast p1, Lcom/shabakaty/downloader/tj1;

    .line 29
    iget-object v1, v0, Lcom/shabakaty/downloader/c32;->z:Ljava/util/List;

    .line 30
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/tj1;->G(Ljava/util/List;)V

    .line 31
    invoke-virtual {v0}, Lcom/shabakaty/downloader/c32;->h2()Lcom/shabakaty/downloader/d41;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    return-void

    .line 32
    :goto_3
    iget-object v0, p0, Lcom/shabakaty/downloader/b32;->b:Lcom/shabakaty/downloader/c32;

    check-cast p1, Lcom/shabakaty/downloader/jt3;

    sget v3, Lcom/shabakaty/downloader/c32;->B:I

    .line 33
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    instance-of v4, v3, Lcom/shabakaty/downloader/d15;

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    check-cast v3, Lcom/shabakaty/downloader/d15;

    goto :goto_4

    :cond_6
    move-object v3, v5

    :goto_4
    if-nez p1, :cond_7

    move-object v4, v5

    goto :goto_5

    .line 35
    :cond_7
    iget v4, p1, Lcom/shabakaty/downloader/jt3;->r:I

    .line 36
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_5
    if-nez v4, :cond_8

    goto :goto_6

    .line 37
    :cond_8
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v1, :cond_9

    .line 38
    iget-object p1, p1, Lcom/shabakaty/downloader/jt3;->s:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 39
    invoke-virtual {v0, p1, v5}, Lcom/shabakaty/downloader/c32;->a(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroid/view/View;)V

    goto :goto_8

    :cond_9
    :goto_6
    const/4 v0, 0x2

    if-nez v4, :cond_a

    goto :goto_7

    .line 40
    :cond_a
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_c

    if-nez v3, :cond_b

    goto :goto_8

    .line 41
    :cond_b
    iget-object p1, p1, Lcom/shabakaty/downloader/jt3;->s:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 42
    invoke-virtual {v3, p1}, Lcom/shabakaty/downloader/d15;->l2(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V

    goto :goto_8

    :cond_c
    :goto_7
    if-nez v4, :cond_d

    goto :goto_8

    .line 43
    :cond_d
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_f

    if-nez v3, :cond_e

    goto :goto_8

    .line 44
    :cond_e
    iget-object p1, p1, Lcom/shabakaty/downloader/jt3;->s:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 45
    invoke-virtual {v3, p1, v5}, Lcom/shabakaty/downloader/d15;->n2(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/views/DownloadButton;)V

    :cond_f
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
