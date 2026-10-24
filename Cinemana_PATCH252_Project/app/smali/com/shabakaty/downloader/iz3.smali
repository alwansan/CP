.class public final synthetic Lcom/shabakaty/downloader/iz3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/r53;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/hz3;Lcom/shabakaty/downloader/gr2;I)V
    .locals 0

    iput p3, p0, Lcom/shabakaty/downloader/iz3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/iz3;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/iz3;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/x60;Lcom/shabakaty/downloader/u60;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/iz3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/iz3;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/iz3;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lcom/shabakaty/downloader/iz3;->a:I

    const/4 v1, 0x0

    const-string v2, "$this_apply"

    const/4 v3, 0x1

    const-string v4, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/iz3;->b:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/hz3;

    iget-object v5, p0, Lcom/shabakaty/downloader/iz3;->c:Ljava/lang/Object;

    check-cast v5, Lcom/shabakaty/downloader/gr2;

    check-cast p1, Lcom/shabakaty/downloader/tj;

    .line 1
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, v0, Lcom/shabakaty/downloader/hz3;->x:Lcom/shabakaty/downloader/mj;

    .line 3
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/hz3;->l(Lcom/shabakaty/downloader/hz3;Lcom/shabakaty/downloader/mj;)I

    move-result p1

    .line 4
    iget-object v2, v0, Lcom/shabakaty/downloader/hz3;->y:Lcom/shabakaty/downloader/mj;

    .line 5
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/hz3;->l(Lcom/shabakaty/downloader/hz3;Lcom/shabakaty/downloader/mj;)I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 v1, 0x1

    .line 6
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    return-void

    .line 7
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/iz3;->b:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/hz3;

    iget-object v5, p0, Lcom/shabakaty/downloader/iz3;->c:Ljava/lang/Object;

    check-cast v5, Lcom/shabakaty/downloader/gr2;

    check-cast p1, Lcom/shabakaty/downloader/tj;

    .line 8
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object p1, v0, Lcom/shabakaty/downloader/hz3;->x:Lcom/shabakaty/downloader/mj;

    .line 10
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/hz3;->l(Lcom/shabakaty/downloader/hz3;Lcom/shabakaty/downloader/mj;)I

    move-result p1

    .line 11
    iget-object v2, v0, Lcom/shabakaty/downloader/hz3;->y:Lcom/shabakaty/downloader/mj;

    .line 12
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/hz3;->l(Lcom/shabakaty/downloader/hz3;Lcom/shabakaty/downloader/mj;)I

    move-result v0

    if-le p1, v0, :cond_1

    const/4 v1, 0x1

    .line 13
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    return-void

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/iz3;->b:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/x60;

    iget-object v2, p0, Lcom/shabakaty/downloader/iz3;->c:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/u60;

    check-cast p1, Lcom/shabakaty/downloader/tj;

    const-string v5, "$rulesDialog"

    .line 15
    invoke-static {v0, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v4, p1, Lcom/shabakaty/downloader/tj;->a:Lcom/shabakaty/downloader/tj$a;

    .line 17
    sget-object v5, Lcom/shabakaty/downloader/tj$a;->r:Lcom/shabakaty/downloader/tj$a;

    if-ne v4, v5, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_2

    new-array v3, v3, [Lcom/shabakaty/downloader/x93;

    .line 18
    iget-object p1, p1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 19
    new-instance v4, Lcom/shabakaty/downloader/x93;

    const-string v5, "COMMENTS_RULES_ARG"

    invoke-direct {v4, v5, p1}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v3, v1

    .line 20
    invoke-static {v3}, Lcom/shabakaty/downloader/ml3;->a([Lcom/shabakaty/downloader/x93;)Landroid/os/Bundle;

    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/q;

    move-result-object p1

    const-string v1, "CommentsRulesFragment"

    invoke-virtual {v0, p1, v1}, Lcom/shabakaty/downloader/ct0;->c2(Landroidx/fragment/app/q;Ljava/lang/String;)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
