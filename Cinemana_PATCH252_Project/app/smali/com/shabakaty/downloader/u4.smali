.class public final Lcom/shabakaty/downloader/u4;
.super Lcom/shabakaty/downloader/aj;
.source "AdvancedSearchFilterDialog.kt"

# interfaces
.implements Lcom/shabakaty/downloader/dz3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/aj<",
        "Lcom/shabakaty/downloader/us0;",
        "Lcom/shabakaty/downloader/dz3;",
        "Lcom/shabakaty/downloader/hz3;",
        ">;",
        "Lcom/shabakaty/downloader/dz3;"
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
        "Lcom/shabakaty/downloader/u4;",
        "Lcom/shabakaty/downloader/aj;",
        "Lcom/shabakaty/downloader/us0;",
        "Lcom/shabakaty/downloader/dz3;",
        "Lcom/shabakaty/downloader/hz3;",
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
.field public static final synthetic N:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d0051

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/aj;-><init>(I)V

    return-void
.end method


# virtual methods
.method public E0()V
    .locals 1

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public F1(I)V
    .locals 0

    const-string p1, "this"

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public T()V
    .locals 2

    const-string v0, "$this$findNavController"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Landroidx/navigation/fragment/NavHostFragment;->X1(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    const-string v1, "NavHostFragment.findNavController(this)"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Landroidx/navigation/NavController;->k()Z

    return-void
.end method

.method public T1()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/uj2;->c:Lcom/shabakaty/downloader/uj2$b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "resources"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/uj2$b;->b(Landroid/content/res/Resources;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocaleManager.getLocale(resources).language"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public d2()Lcom/shabakaty/downloader/vj;
    .locals 0

    return-object p0
.end method

.method public f(I)V
    .locals 0

    const-string p1, "this"

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public f1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/us0;

    iget-object v0, v0, Lcom/shabakaty/downloader/us0;->P:Landroid/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 4
    check-cast v0, Lcom/shabakaty/downloader/us0;

    iget-object v0, v0, Lcom/shabakaty/downloader/us0;->U:Landroid/widget/NumberPicker;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/hz3;

    .line 5
    iget-object v2, v2, Lcom/shabakaty/downloader/hz3;->s:Lcom/shabakaty/downloader/xv2;

    .line 6
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/shabakaty/downloader/id;->S([Ljava/lang/Object;)I

    move-result v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 8
    check-cast v0, Lcom/shabakaty/downloader/us0;

    iget-object v0, v0, Lcom/shabakaty/downloader/us0;->M:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerAdapter()Lcom/shabakaty/downloader/oe3;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/oe3;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 10
    check-cast v0, Lcom/shabakaty/downloader/us0;

    iget-object v0, v0, Lcom/shabakaty/downloader/us0;->M:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 11
    iget-object v0, v0, Lcom/skydoves/powerspinner/PowerSpinnerView;->v:Lcom/shabakaty/downloader/oe3;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/oe3;->c(I)V

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 13
    check-cast v0, Lcom/shabakaty/downloader/us0;

    iget-object v0, v0, Lcom/shabakaty/downloader/us0;->Q:Lcom/google/android/material/slider/Slider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/slider/Slider;->setValue(F)V

    .line 14
    iget-object v0, p0, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 15
    check-cast v0, Lcom/shabakaty/downloader/us0;

    iget-object v0, v0, Lcom/shabakaty/downloader/us0;->Z:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public g2()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/shabakaty/downloader/hz3;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/shabakaty/downloader/hz3;

    return-object v0
.end method

.method public l1(Ljava/lang/String;)V
    .locals 0

    const-string p1, "this"

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public o()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/hz3;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/hz3;->w:Lcom/shabakaty/downloader/mj;

    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tj;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 5
    check-cast v0, Ljava/util/List;

    :goto_0
    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/hz3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/hz3;->m()V

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/hz3;

    .line 8
    iget-object v0, v0, Lcom/shabakaty/downloader/hz3;->v:Lcom/shabakaty/downloader/xv2;

    .line 9
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v3

    if-ne v0, v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/hz3;

    const/4 v2, 0x3

    invoke-static {v0, v1, v1, v2}, Lcom/shabakaty/downloader/hz3;->o(Lcom/shabakaty/downloader/hz3;Ljava/lang/String;Ljava/lang/Integer;I)V

    :cond_4
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 7

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/hz3;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/hz3;->s:Lcom/shabakaty/downloader/xv2;

    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    invoke-static {v2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 5
    check-cast v2, Lcom/shabakaty/downloader/us0;

    iget-object v2, v2, Lcom/shabakaty/downloader/us0;->P:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    aget-object v0, v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/hz3;

    .line 6
    iget-object v2, v2, Lcom/shabakaty/downloader/hz3;->t:Lcom/shabakaty/downloader/xv2;

    .line 7
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/hz3;

    .line 9
    iget-object v0, v0, Lcom/shabakaty/downloader/hz3;->s:Lcom/shabakaty/downloader/xv2;

    .line 10
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    .line 11
    :cond_1
    iget-object v4, p0, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    invoke-static {v4}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 12
    check-cast v4, Lcom/shabakaty/downloader/us0;

    iget-object v4, v4, Lcom/shabakaty/downloader/us0;->U:Landroid/widget/NumberPicker;

    invoke-virtual {v4}, Landroid/widget/NumberPicker;->getValue()I

    move-result v4

    aget-object v0, v0, v4

    :goto_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/hz3;

    .line 13
    iget-object v4, v4, Lcom/shabakaty/downloader/hz3;->u:Lcom/shabakaty/downloader/xv2;

    .line 14
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    iget-object v0, p0, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 16
    check-cast v0, Lcom/shabakaty/downloader/us0;

    iget-object v0, v0, Lcom/shabakaty/downloader/us0;->M:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSelectedIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/hz3;

    .line 17
    iget-object v4, v4, Lcom/shabakaty/downloader/hz3;->n:Lcom/shabakaty/downloader/xv2;

    .line 18
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v0, v4, :cond_5

    .line 19
    iget-object v0, p0, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 20
    check-cast v0, Lcom/shabakaty/downloader/us0;

    iget-object v0, v0, Lcom/shabakaty/downloader/us0;->Q:Lcom/google/android/material/slider/Slider;

    invoke-virtual {v0}, Lcom/google/android/material/slider/Slider;->getValue()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/hz3;

    .line 21
    iget-object v4, v4, Lcom/shabakaty/downloader/hz3;->o:Lcom/shabakaty/downloader/xv2;

    .line 22
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v0, v4, :cond_5

    .line 23
    iget-object v0, p0, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 24
    check-cast v0, Lcom/shabakaty/downloader/us0;

    iget-object v0, v0, Lcom/shabakaty/downloader/us0;->Z:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/hz3;

    .line 25
    iget-object v4, v4, Lcom/shabakaty/downloader/hz3;->m:Lcom/shabakaty/downloader/xv2;

    .line 26
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_14

    .line 27
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/hz3;

    .line 28
    iget-object v0, v0, Lcom/shabakaty/downloader/hz3;->t:Lcom/shabakaty/downloader/xv2;

    .line 29
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/hz3;

    .line 30
    iget-object v4, v4, Lcom/shabakaty/downloader/hz3;->s:Lcom/shabakaty/downloader/xv2;

    .line 31
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    if-nez v4, :cond_6

    move-object v4, v1

    goto :goto_4

    .line 32
    :cond_6
    iget-object v5, p0, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    invoke-static {v5}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 33
    check-cast v5, Lcom/shabakaty/downloader/us0;

    iget-object v5, v5, Lcom/shabakaty/downloader/us0;->P:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getValue()I

    move-result v5

    aget-object v4, v4, v5

    .line 34
    :goto_4
    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/hz3;

    .line 36
    iget-object v0, v0, Lcom/shabakaty/downloader/hz3;->u:Lcom/shabakaty/downloader/xv2;

    .line 37
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/hz3;

    .line 38
    iget-object v4, v4, Lcom/shabakaty/downloader/hz3;->s:Lcom/shabakaty/downloader/xv2;

    .line 39
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    if-nez v4, :cond_7

    move-object v4, v1

    goto :goto_5

    .line 40
    :cond_7
    iget-object v5, p0, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    invoke-static {v5}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 41
    check-cast v5, Lcom/shabakaty/downloader/us0;

    iget-object v5, v5, Lcom/shabakaty/downloader/us0;->U:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getValue()I

    move-result v5

    aget-object v4, v4, v5

    .line 42
    :goto_5
    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/hz3;

    .line 44
    iget-object v0, v0, Lcom/shabakaty/downloader/hz3;->n:Lcom/shabakaty/downloader/xv2;

    .line 45
    iget-object v4, p0, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    invoke-static {v4}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 46
    check-cast v4, Lcom/shabakaty/downloader/us0;

    iget-object v4, v4, Lcom/shabakaty/downloader/us0;->M:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v4}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSelectedIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 47
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/hz3;

    .line 48
    iget-object v0, v0, Lcom/shabakaty/downloader/hz3;->o:Lcom/shabakaty/downloader/xv2;

    .line 49
    iget-object v4, p0, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    invoke-static {v4}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 50
    check-cast v4, Lcom/shabakaty/downloader/us0;

    iget-object v4, v4, Lcom/shabakaty/downloader/us0;->Q:Lcom/google/android/material/slider/Slider;

    invoke-virtual {v4}, Lcom/google/android/material/slider/Slider;->getValue()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/hz3;

    .line 52
    iget-object v0, v0, Lcom/shabakaty/downloader/hz3;->m:Lcom/shabakaty/downloader/xv2;

    .line 53
    iget-object v4, p0, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    invoke-static {v4}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 54
    check-cast v4, Lcom/shabakaty/downloader/us0;

    iget-object v4, v4, Lcom/shabakaty/downloader/us0;->Z:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 55
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/hz3;

    .line 56
    iget-object v0, v0, Lcom/shabakaty/downloader/hz3;->p:Lcom/shabakaty/downloader/xv2;

    .line 57
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/hz3;

    .line 58
    iget-object v4, v4, Lcom/shabakaty/downloader/hz3;->n:Lcom/shabakaty/downloader/xv2;

    .line 59
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_9

    :goto_6
    const/4 v4, 0x1

    goto :goto_7

    :cond_9
    const/4 v4, 0x0

    .line 60
    :goto_7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/hz3;

    .line 61
    iget-object v5, v5, Lcom/shabakaty/downloader/hz3;->t:Lcom/shabakaty/downloader/xv2;

    .line 62
    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "1900"

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/hz3;

    .line 63
    iget-object v5, v5, Lcom/shabakaty/downloader/hz3;->u:Lcom/shabakaty/downloader/xv2;

    .line 64
    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/hz3;

    .line 65
    iget v6, v6, Lcom/shabakaty/downloader/hz3;->l:I

    .line 66
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 67
    :cond_b
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/hz3;

    .line 68
    iget-object v5, v5, Lcom/shabakaty/downloader/hz3;->o:Lcom/shabakaty/downloader/xv2;

    .line 69
    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_c

    goto :goto_8

    :cond_c
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_d

    :goto_8
    add-int/lit8 v4, v4, 0x1

    .line 70
    :cond_d
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/hz3;

    .line 71
    iget-object v5, v5, Lcom/shabakaty/downloader/hz3;->m:Lcom/shabakaty/downloader/xv2;

    .line 72
    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_e

    goto :goto_a

    :cond_e
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_f

    const/4 v5, 0x1

    goto :goto_9

    :cond_f
    const/4 v5, 0x0

    :goto_9
    if-ne v5, v3, :cond_10

    const/4 v5, 0x1

    goto :goto_b

    :cond_10
    :goto_a
    const/4 v5, 0x0

    :goto_b
    if-eqz v5, :cond_13

    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/hz3;

    .line 73
    iget-object v5, v5, Lcom/shabakaty/downloader/hz3;->m:Lcom/shabakaty/downloader/xv2;

    .line 74
    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_11

    goto :goto_c

    :cond_11
    invoke-static {v5}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v3

    if-ne v5, v3, :cond_12

    const/4 v2, 0x1

    :cond_12
    :goto_c
    if-eqz v2, :cond_13

    add-int/lit8 v4, v4, 0x1

    .line 75
    :cond_13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/xv2;->setValue(Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/hz3;

    const/4 v2, 0x3

    invoke-static {v0, v1, v1, v2}, Lcom/shabakaty/downloader/hz3;->o(Lcom/shabakaty/downloader/hz3;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 77
    :cond_14
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/ct0;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/aj;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/view/View;

    .line 2
    iget-object p2, p0, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 3
    check-cast p2, Lcom/shabakaty/downloader/us0;

    iget-object p2, p2, Lcom/shabakaty/downloader/us0;->Z:Landroid/widget/EditText;

    const-string v0, "binding.textInputEditText"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-static {p1}, Lcom/shabakaty/downloader/s45;->b([Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/ct0;->C:Landroid/app/Dialog;

    .line 5
    instance-of p2, p1, Lcom/google/android/material/bottomsheet/a;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/google/android/material/bottomsheet/a;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 7
    check-cast p2, Lcom/shabakaty/downloader/us0;

    iget-object p2, p2, Lcom/shabakaty/downloader/us0;->S:Landroid/widget/LinearLayout;

    const-string v0, "binding.filterRootLinearLayout"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/s45;->e(Lcom/google/android/material/bottomsheet/a;Landroid/view/View;)Lcom/google/android/material/bottomsheet/a;

    .line 8
    :goto_1
    iget-object p1, p0, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 9
    check-cast p1, Lcom/shabakaty/downloader/us0;

    iget-object p1, p1, Lcom/shabakaty/downloader/us0;->Q:Lcom/google/android/material/slider/Slider;

    const-string p2, "binding.filterRatingSlider"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance p2, Lcom/shabakaty/downloader/cu;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/cu;-><init>(Lcom/shabakaty/downloader/u4;)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/slider/Slider;->setLabelFormatter(Lcom/shabakaty/downloader/ze2;)V

    .line 11
    iget-object p1, p0, Lcom/shabakaty/downloader/aj;->K:Landroidx/databinding/ViewDataBinding;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 12
    check-cast p1, Lcom/shabakaty/downloader/us0;

    iget-object p1, p1, Lcom/shabakaty/downloader/us0;->M:Lcom/skydoves/powerspinner/PowerSpinnerView;

    new-instance p2, Lcom/shabakaty/downloader/u4$a;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/u4$a;-><init>(Lcom/shabakaty/downloader/u4;)V

    invoke-virtual {p1, p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setOnSpinnerOutsideTouchListener(Lcom/shabakaty/downloader/hn1;)V

    return-void
.end method

.method public q(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/vj$a;->a(Lcom/shabakaty/downloader/vj;I)V

    return-void
.end method

.method public s0(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method
