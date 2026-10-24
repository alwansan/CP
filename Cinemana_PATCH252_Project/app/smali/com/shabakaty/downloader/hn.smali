.class public abstract Lcom/shabakaty/downloader/hn;
.super Landroidx/databinding/ViewDataBinding;
.source "BottomListSwitchBinding.java"


# instance fields
.field public M:Ljava/lang/Object;

.field public final N:Landroid/widget/TextView;

.field public O:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lcom/shabakaty/downloader/hn;->N:Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/switchmaterial/SwitchMaterial;Landroid/widget/TextView;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 4
    iput-object p4, p0, Lcom/shabakaty/downloader/hn;->M:Ljava/lang/Object;

    .line 5
    iput-object p5, p0, Lcom/shabakaty/downloader/hn;->N:Landroid/widget/TextView;

    return-void
.end method
