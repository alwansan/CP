.class public final Lcom/shabakaty/downloader/x60;
.super Lcom/shabakaty/downloader/ct0;
.source "CommentsRulesFragment.kt"


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
        "Lcom/shabakaty/downloader/x60;",
        "Lcom/shabakaty/downloader/ct0;",
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
.field public static final synthetic I:I


# instance fields
.field public H:Lcom/shabakaty/downloader/ui1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/ct0;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d006d

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p3, p2, v0}, Lcom/shabakaty/downloader/hl0;->b(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ui1;

    iput-object p1, p0, Lcom/shabakaty/downloader/x60;->H:Lcom/shabakaty/downloader/ui1;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p1, Landroidx/databinding/ViewDataBinding;->v:Landroid/view/View;

    :goto_0
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    move-object p1, p2

    goto :goto_0

    :cond_0
    const-string v0, "COMMENTS_RULES_ARG"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/CommentsRules;

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/x60;->H:Lcom/shabakaty/downloader/ui1;

    if-nez v0, :cond_1

    move-object v0, p2

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/shabakaty/downloader/ui1;->N:Landroid/widget/TextView;

    :goto_1
    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    if-nez p1, :cond_3

    move-object v1, p2

    goto :goto_2

    .line 4
    :cond_3
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/local/CommentsRules;->commentRulesHead:Ljava/lang/String;

    .line 5
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :goto_3
    iget-object v0, p0, Lcom/shabakaty/downloader/x60;->H:Lcom/shabakaty/downloader/ui1;

    if-nez v0, :cond_4

    move-object v0, p2

    goto :goto_4

    :cond_4
    iget-object v0, v0, Lcom/shabakaty/downloader/ui1;->O:Landroid/widget/ListView;

    :goto_4
    if-nez v0, :cond_5

    goto :goto_6

    :cond_5
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090003

    if-nez p1, :cond_6

    goto :goto_5

    .line 8
    :cond_6
    iget-object p2, p1, Lcom/shabakaty/cinemana/domain/models/local/CommentsRules;->commentRules:Ljava/util/List;

    :goto_5
    if-nez p2, :cond_7

    .line 9
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    :cond_7
    invoke-direct {v1, v2, v3, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 11
    :goto_6
    iget-object p1, p0, Lcom/shabakaty/downloader/x60;->H:Lcom/shabakaty/downloader/ui1;

    if-nez p1, :cond_8

    goto :goto_7

    :cond_8
    iget-object p1, p1, Lcom/shabakaty/downloader/ui1;->M:Lcom/google/android/material/button/MaterialButton;

    if-nez p1, :cond_9

    goto :goto_7

    :cond_9
    new-instance p2, Lcom/shabakaty/downloader/ck;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/ck;-><init>(Lcom/shabakaty/downloader/x60;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_7
    return-void
.end method
