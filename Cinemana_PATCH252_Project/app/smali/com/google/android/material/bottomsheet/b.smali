.class public Lcom/google/android/material/bottomsheet/b;
.super Lcom/shabakaty/downloader/ga;
.source "BottomSheetDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomsheet/b$b;
    }
.end annotation


# instance fields
.field public H:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/ga;-><init>()V

    return-void
.end method


# virtual methods
.method public X1()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ct0;->C:Landroid/app/Dialog;

    .line 2
    instance-of v1, v0, Lcom/google/android/material/bottomsheet/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 3
    check-cast v0, Lcom/google/android/material/bottomsheet/a;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    .line 5
    iget-boolean v3, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C:Z

    if-eqz v3, :cond_3

    .line 6
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/a;->getDismissWithAnimation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/b;->H:Z

    .line 8
    iget v0, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:I

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-ne v0, v3, :cond_0

    .line 9
    invoke-virtual {p0, v2, v2}, Lcom/shabakaty/downloader/ct0;->Y1(ZZ)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ct0;->C:Landroid/app/Dialog;

    .line 11
    instance-of v5, v0, Lcom/google/android/material/bottomsheet/a;

    if-eqz v5, :cond_1

    .line 12
    check-cast v0, Lcom/google/android/material/bottomsheet/a;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/a;->removeDefaultCallback()V

    .line 13
    :cond_1
    new-instance v0, Lcom/google/android/material/bottomsheet/b$b;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Lcom/google/android/material/bottomsheet/b$b;-><init>(Lcom/google/android/material/bottomsheet/b;Lcom/google/android/material/bottomsheet/b$a;)V

    .line 14
    iget-object v5, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 15
    iget-object v5, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_2
    invoke-virtual {v1, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m(I)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_4

    .line 17
    invoke-virtual {p0, v2, v2}, Lcom/shabakaty/downloader/ct0;->Y1(ZZ)V

    :cond_4
    return-void
.end method

.method public Z1(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 1
    new-instance p1, Lcom/google/android/material/bottomsheet/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/ct0;->w:I

    .line 3
    invoke-direct {p1, v0, v1}, Lcom/google/android/material/bottomsheet/a;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method
