.class public abstract Lcom/shabakaty/downloader/g52;
.super Landroidx/databinding/ViewDataBinding;
.source "ItemMoreAppsBinding.java"


# instance fields
.field public final M:Landroid/widget/TextView;

.field public final N:Lcom/facebook/drawee/view/SimpleDraweeView;

.field public final O:Landroid/widget/TextView;

.field public final P:Lcom/google/android/material/button/MaterialButton;

.field public Q:Ljava/lang/Boolean;

.field public R:Lcom/shabakaty/downloader/rm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rm1<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field

.field public S:Ljava/lang/String;

.field public T:Ljava/lang/String;

.field public U:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lcom/shabakaty/downloader/g52;->M:Landroid/widget/TextView;

    .line 3
    iput-object p5, p0, Lcom/shabakaty/downloader/g52;->N:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 4
    iput-object p6, p0, Lcom/shabakaty/downloader/g52;->O:Landroid/widget/TextView;

    .line 5
    iput-object p7, p0, Lcom/shabakaty/downloader/g52;->P:Lcom/google/android/material/button/MaterialButton;

    return-void
.end method


# virtual methods
.method public abstract G(Ljava/lang/String;)V
.end method

.method public abstract H(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract I(Ljava/lang/Boolean;)V
.end method

.method public abstract J(Lcom/shabakaty/downloader/rm1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/rm1<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract L(Ljava/lang/String;)V
.end method
