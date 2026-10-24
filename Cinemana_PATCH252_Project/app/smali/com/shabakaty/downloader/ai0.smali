.class public final synthetic Lcom/shabakaty/downloader/ai0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;I)V
    .locals 0

    iput p2, p0, Lcom/shabakaty/downloader/ai0;->r:I

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ai0;->s:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    iget p1, p0, Lcom/shabakaty/downloader/ai0;->r:I

    const/4 v0, 0x0

    const/16 v1, 0x2710

    const/4 v2, 0x0

    const-string v3, "this$0"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iget-object p1, p0, Lcom/shabakaty/downloader/ai0;->s:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

    sget v0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->E:I

    .line 1
    invoke-static {p1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->A:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->qualities:Ljava/util/List;

    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Lcom/shabakaty/cinemana/domain/models/local/Quality;

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 7
    iget-object v5, v1, Lcom/shabakaty/cinemana/domain/models/local/Quality;->resolution:Ljava/lang/String;

    const-string v3, "text"

    .line 8
    invoke-static {v5, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v6, Lcom/shabakaty/downloader/fi0;

    invoke-direct {v6, p1, v1}, Lcom/shabakaty/downloader/fi0;-><init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;Lcom/shabakaty/cinemana/domain/models/local/Quality;)V

    .line 10
    new-instance v1, Lcom/shabakaty/downloader/pl4;

    const-string v7, ""

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/shabakaty/downloader/pl4;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/shabakaty/downloader/rm1;Ljava/lang/String;Z)V

    .line 11
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 12
    sget-object v2, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    .line 13
    :cond_3
    new-instance v0, Lcom/shabakaty/downloader/on;

    invoke-direct {v0}, Lcom/shabakaty/downloader/on;-><init>()V

    const v1, 0x7f120089

    .line 14
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "getString(R.string.choose_quality)"

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ji1;->getSupportFragmentManager()Landroidx/fragment/app/q;

    move-result-object p1

    const-string v3, "supportFragmentManager"

    invoke-static {p1, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object v1, v0, Lcom/shabakaty/downloader/on;->O:Ljava/lang/String;

    .line 17
    invoke-static {v2}, Lcom/shabakaty/downloader/m50;->z0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 18
    iput-object v1, v0, Lcom/shabakaty/downloader/on;->N:Ljava/util/List;

    const-string v1, "listBottomSheet"

    .line 19
    invoke-virtual {v0, p1, v1}, Lcom/shabakaty/downloader/on;->c2(Landroidx/fragment/app/q;Ljava/lang/String;)V

    return-void

    .line 20
    :pswitch_1
    iget-object p1, p0, Lcom/shabakaty/downloader/ai0;->s:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

    sget v0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->E:I

    .line 21
    invoke-static {p1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->z:Ljava/lang/String;

    const-string v1, "yes"

    .line 23
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "no"

    if-eqz v2, :cond_4

    iput-object v3, p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->z:Ljava/lang/String;

    goto :goto_2

    .line 24
    :cond_4
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-object v1, p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->z:Ljava/lang/String;

    .line 25
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->k0()V

    return-void

    .line 26
    :pswitch_2
    iget-object p1, p0, Lcom/shabakaty/downloader/ai0;->s:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

    sget v1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->E:I

    .line 27
    invoke-static {p1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v1, Ljava/lang/Thread;

    .line 29
    new-instance v2, Lcom/shabakaty/downloader/bi0;

    invoke-direct {v2, p1, v0}, Lcom/shabakaty/downloader/bi0;-><init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;I)V

    .line 30
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 31
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    .line 32
    :pswitch_3
    iget-object p1, p0, Lcom/shabakaty/downloader/ai0;->s:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

    sget v1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->E:I

    .line 33
    invoke-static {p1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-boolean v1, p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->D:Z

    if-eqz v1, :cond_7

    .line 35
    iput-boolean v0, p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->D:Z

    .line 36
    iget-object v1, p1, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 37
    check-cast v1, Lcom/shabakaty/downloader/u2;

    iget-object v1, v1, Lcom/shabakaty/downloader/u2;->Q:Landroid/widget/ImageView;

    const v3, 0x7f0802cc

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 38
    iget-object p1, p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->C:Lcom/connectsdk/service/DLNAService;

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p1, v0, v2}, Lcom/connectsdk/service/DLNAService;->setMute(ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    goto :goto_3

    :cond_7
    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->D:Z

    .line 40
    iget-object v1, p1, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 41
    check-cast v1, Lcom/shabakaty/downloader/u2;

    iget-object v1, v1, Lcom/shabakaty/downloader/u2;->Q:Landroid/widget/ImageView;

    const v3, 0x7f080257

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 42
    iget-object p1, p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->C:Lcom/connectsdk/service/DLNAService;

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {p1, v0, v2}, Lcom/connectsdk/service/DLNAService;->setMute(ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    :goto_3
    return-void

    .line 43
    :pswitch_4
    iget-object p1, p0, Lcom/shabakaty/downloader/ai0;->s:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

    sget v0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->E:I

    .line 44
    invoke-static {p1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->B:Lcom/connectsdk/service/capability/MediaControl;

    if-nez v0, :cond_9

    goto :goto_4

    .line 46
    :cond_9
    iget-wide v3, p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->y:J

    int-to-long v5, v1

    sub-long/2addr v3, v5

    .line 47
    invoke-interface {v0, v3, v4, v2}, Lcom/connectsdk/service/capability/MediaControl;->seek(JLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    :goto_4
    return-void

    .line 48
    :pswitch_5
    iget-object p1, p0, Lcom/shabakaty/downloader/ai0;->s:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

    sget v0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->E:I

    .line 49
    invoke-static {p1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->B:Lcom/connectsdk/service/capability/MediaControl;

    if-nez v0, :cond_a

    goto :goto_5

    .line 51
    :cond_a
    iget-wide v3, p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->y:J

    int-to-long v5, v1

    add-long/2addr v3, v5

    .line 52
    invoke-interface {v0, v3, v4, v2}, Lcom/connectsdk/service/capability/MediaControl;->seek(JLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    :goto_5
    return-void

    .line 53
    :goto_6
    iget-object p1, p0, Lcom/shabakaty/downloader/ai0;->s:Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

    sget v0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->E:I

    .line 54
    invoke-static {p1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
