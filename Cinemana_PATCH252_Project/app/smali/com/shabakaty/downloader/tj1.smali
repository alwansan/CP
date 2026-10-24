.class public abstract Lcom/shabakaty/downloader/tj1;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentInternalSeasonBinding.java"


# instance fields
.field public final M:Lcom/google/android/material/button/MaterialButton;

.field public final N:Landroidx/recyclerview/widget/RecyclerView;

.field public O:Ljava/util/List;

.field public P:Ljava/lang/Boolean;

.field public Q:Lcom/shabakaty/downloader/rz3;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/button/MaterialButton;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lcom/shabakaty/downloader/tj1;->M:Lcom/google/android/material/button/MaterialButton;

    .line 3
    iput-object p5, p0, Lcom/shabakaty/downloader/tj1;->N:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public abstract G(Ljava/util/List;)V
.end method

.method public abstract H(Lcom/shabakaty/downloader/rz3;)V
.end method

.method public abstract I(Ljava/lang/Boolean;)V
.end method
