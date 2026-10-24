.class public final synthetic Lcom/shabakaty/downloader/ig4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Ljava/lang/Object;

.field public final synthetic t:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/ui/home_fragment/GroupsView;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/ig4;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ig4;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/ig4;->t:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/jg4;Lcom/shabakaty/downloader/gg4;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/ig4;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ig4;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/ig4;->t:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/mm0;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/shabakaty/downloader/ig4;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ig4;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/ig4;->t:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/u60;Lcom/shabakaty/cinemana/domain/models/local/Comment;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/ig4;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ig4;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/ig4;->t:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    iget v0, p0, Lcom/shabakaty/downloader/ig4;->r:I

    const-string v1, "this$0"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object p1, p0, Lcom/shabakaty/downloader/ig4;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/u60;

    iget-object v0, p0, Lcom/shabakaty/downloader/ig4;->t:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/cinemana/domain/models/local/Comment;

    sget v2, Lcom/shabakaty/downloader/u60;->S:I

    .line 1
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$comment"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p1, Lcom/shabakaty/downloader/u60;->O:Lcom/shabakaty/downloader/ys0;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/shabakaty/downloader/ys0;->M:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 3
    :cond_2
    iget-object v3, v0, Lcom/shabakaty/cinemana/domain/models/local/Comment;->text:Ljava/lang/String;

    .line 4
    invoke-static {v3, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    .line 5
    iput-object v1, v0, Lcom/shabakaty/cinemana/domain/models/local/Comment;->text:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/g70;

    .line 7
    iget-object v3, v1, Lcom/shabakaty/downloader/g70;->h:Lcom/shabakaty/downloader/ox4;

    .line 8
    iget-object v4, v0, Lcom/shabakaty/cinemana/domain/models/local/Comment;->videoNb:Ljava/lang/String;

    .line 9
    iget-object v5, v0, Lcom/shabakaty/cinemana/domain/models/local/Comment;->commentNb:Ljava/lang/String;

    .line 10
    iget-object v6, v0, Lcom/shabakaty/cinemana/domain/models/local/Comment;->text:Ljava/lang/String;

    .line 11
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "videoNb"

    .line 12
    invoke-static {v4, v7}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "commentNb"

    invoke-static {v5, v7}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "newComment"

    invoke-static {v6, v7}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v7, v3, Lcom/shabakaty/downloader/ox4;->a:Lcom/shabakaty/downloader/k9;

    iget-object v8, v3, Lcom/shabakaty/downloader/ox4;->b:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v8}, Lcom/shabakaty/usermanagement/UserManagement;->getUserId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v4, v5, v6}, Lcom/shabakaty/downloader/k9;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object v4

    .line 14
    iget-object v5, v3, Lcom/shabakaty/downloader/ox4;->e:Lcom/shabakaty/downloader/qm2;

    new-instance v6, Lcom/shabakaty/downloader/hx;

    const/16 v7, 0x15

    invoke-direct {v6, v5, v7}, Lcom/shabakaty/downloader/hx;-><init>(Lcom/shabakaty/downloader/qm2;I)V

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v5, Lcom/shabakaty/downloader/v74;

    invoke-direct {v5, v4, v6}, Lcom/shabakaty/downloader/v74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/in1;)V

    .line 16
    invoke-virtual {v3, v5}, Lcom/shabakaty/downloader/ox4;->h(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object v3

    .line 17
    new-instance v4, Lcom/shabakaty/downloader/e70;

    invoke-direct {v4, v1, v0}, Lcom/shabakaty/downloader/e70;-><init>(Lcom/shabakaty/downloader/g70;Lcom/shabakaty/cinemana/domain/models/local/Comment;)V

    sget-object v0, Lcom/shabakaty/downloader/f70;->r:Lcom/shabakaty/downloader/f70;

    invoke-virtual {v1, v3, v4, v0}, Lcom/shabakaty/downloader/xk;->b(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/mu0;

    const v0, 0x7f120082

    .line 18
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/u60;->q(I)V

    goto :goto_1

    :cond_4
    const v0, 0x7f1201d5

    .line 19
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/u60;->q(I)V

    .line 20
    :goto_1
    iget-object p1, p1, Lcom/shabakaty/downloader/u60;->Q:Landroidx/appcompat/app/b;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/shabakaty/downloader/fa;->dismiss()V

    :goto_2
    return-void

    :cond_5
    const-string p1, "updateCommentDialog"

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v2

    :cond_6
    const-string p1, "updateCommentDialogView"

    .line 21
    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v2

    .line 22
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/ig4;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/cinemana/ui/home_fragment/GroupsView;

    iget-object v1, p0, Lcom/shabakaty/downloader/ig4;->t:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/shabakaty/cinemana/ui/home_fragment/GroupsView;->t(Lcom/shabakaty/cinemana/ui/home_fragment/GroupsView;Landroid/content/Context;Landroid/view/View;)V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/shabakaty/downloader/ig4;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/jg4;

    iget-object v0, p0, Lcom/shabakaty/downloader/ig4;->t:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/gg4;

    .line 23
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$fontItem"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object p1, p1, Lcom/shabakaty/downloader/jg4;->a:Lcom/shabakaty/downloader/tm1;

    .line 25
    iget-object v0, v0, Lcom/shabakaty/downloader/gg4;->a:Ljava/lang/String;

    .line 26
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 27
    :goto_3
    iget-object p1, p0, Lcom/shabakaty/downloader/ig4;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/mm0;

    iget-object v0, p0, Lcom/shabakaty/downloader/ig4;->t:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    sget-object v1, Lcom/shabakaty/downloader/st2;->a:Ljava/util/HashMap;

    const-string v1, "$onClick"

    .line 28
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$this_debounceOnClick"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    check-cast p1, Lcom/shabakaty/downloader/lm0;

    .line 30
    iget-object v1, p1, Lcom/shabakaty/downloader/lm0;->a:Lcom/shabakaty/downloader/lm0$a;

    iget p1, p1, Lcom/shabakaty/downloader/lm0;->b:I

    invoke-interface {v1, p1, v0}, Lcom/shabakaty/downloader/lm0$a;->d(ILandroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
