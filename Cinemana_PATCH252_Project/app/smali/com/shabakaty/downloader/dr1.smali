.class public abstract Lcom/shabakaty/downloader/dr1;
.super Landroidx/databinding/ViewDataBinding;
.source "GroupsViewBinding.java"


# instance fields
.field public final M:Landroid/widget/TextView;

.field public final N:Landroidx/recyclerview/widget/RecyclerView;

.field public final O:Lcom/google/android/material/button/MaterialButton;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lcom/shabakaty/downloader/dr1;->M:Landroid/widget/TextView;

    .line 3
    iput-object p5, p0, Lcom/shabakaty/downloader/dr1;->N:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    iput-object p6, p0, Lcom/shabakaty/downloader/dr1;->O:Lcom/google/android/material/button/MaterialButton;

    return-void
.end method
