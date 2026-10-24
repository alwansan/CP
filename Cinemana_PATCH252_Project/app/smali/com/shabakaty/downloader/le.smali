.class public final synthetic Lcom/shabakaty/downloader/le;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Ljava/lang/Object;

.field public final synthetic t:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/tabs/TabLayout;I)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/le;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/le;->s:Ljava/lang/Object;

    iput p2, p0, Lcom/shabakaty/downloader/le;->t:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/f91;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/le;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/le;->s:Ljava/lang/Object;

    iput p2, p0, Lcom/shabakaty/downloader/le;->t:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/ne$a;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/le;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/le;->s:Ljava/lang/Object;

    iput p2, p0, Lcom/shabakaty/downloader/le;->t:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/shabakaty/downloader/le;->r:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/le;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/f91;

    iget v3, p0, Lcom/shabakaty/downloader/le;->t:I

    sget v4, Lcom/shabakaty/downloader/f91;->P:I

    const-string v4, "this$0"

    .line 1
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, v0}, Lcom/shabakaty/downloader/aj;->e2(Landroidx/fragment/app/Fragment;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 4
    check-cast v0, Lcom/shabakaty/downloader/kj1;

    iget-object v0, v0, Lcom/shabakaty/downloader/kj1;->O:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->t0(I)V

    :cond_1
    return-void

    .line 5
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/le;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ne$a;

    iget v3, p0, Lcom/shabakaty/downloader/le;->t:I

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/ne$a;->b:Lcom/shabakaty/downloader/ne;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, -0x3

    const/4 v5, -0x2

    if-eq v3, v4, :cond_4

    if-eq v3, v5, :cond_4

    const/4 v2, -0x1

    if-eq v3, v2, :cond_3

    if-eq v3, v1, :cond_2

    const/16 v0, 0x26

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unknown focus change type: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioFocusManager"

    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 10
    :cond_2
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ne;->d(I)V

    .line 11
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ne;->b(I)V

    goto :goto_3

    .line 12
    :cond_3
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/ne;->b(I)V

    .line 13
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ne;->a()V

    goto :goto_3

    :cond_4
    if-eq v3, v5, :cond_7

    .line 14
    iget-object v3, v0, Lcom/shabakaty/downloader/ne;->d:Lcom/shabakaty/downloader/ie;

    if-eqz v3, :cond_5

    iget v3, v3, Lcom/shabakaty/downloader/ie;->a:I

    if-ne v3, v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x3

    .line 15
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ne;->d(I)V

    goto :goto_3

    .line 16
    :cond_7
    :goto_2
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/ne;->b(I)V

    const/4 v1, 0x2

    .line 17
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ne;->d(I)V

    :goto_3
    return-void

    .line 18
    :goto_4
    iget-object v0, p0, Lcom/shabakaty/downloader/le;->s:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iget v2, p0, Lcom/shabakaty/downloader/le;->t:I

    sub-int/2addr v2, v1

    .line 19
    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->g(I)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v3

    if-nez v3, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$f;->a()V

    :goto_5
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v0, v2, v3, v1, v1}, Lcom/google/android/material/tabs/TabLayout;->k(IFZZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
