.class public final synthetic Lcom/shabakaty/downloader/y35;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/material/tabs/c$b;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Landroidx/viewpager2/widget/ViewPager2;

.field public final synthetic t:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroidx/viewpager2/widget/ViewPager2;Ljava/util/List;I)V
    .locals 0

    iput p3, p0, Lcom/shabakaty/downloader/y35;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/y35;->s:Landroidx/viewpager2/widget/ViewPager2;

    iput-object p2, p0, Lcom/shabakaty/downloader/y35;->t:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/material/tabs/TabLayout$f;I)V
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/y35;->r:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/y35;->s:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v2, p0, Lcom/shabakaty/downloader/y35;->t:Ljava/util/List;

    const-string v3, "$this_setSearchTabs"

    .line 1
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$tabTitles"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lcom/shabakaty/downloader/nl6;->z(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout$f;->b(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$f;

    return-void

    .line 4
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/y35;->s:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v2, p0, Lcom/shabakaty/downloader/y35;->t:Ljava/util/List;

    const-string v3, "$this_setCategoryTabs"

    .line 5
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$tabs"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v1}, Lcom/shabakaty/downloader/nl6;->z(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout$f;->b(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$f;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
