.class public abstract Lcom/shabakaty/downloader/kg3;
.super Landroidx/databinding/ViewDataBinding;
.source "ProfileItemLayoutBinding.java"


# instance fields
.field public final M:Landroid/widget/ImageView;

.field public final N:Landroid/widget/TextView;

.field public O:Lcom/shabakaty/downloader/rm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rm1<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field

.field public P:Ljava/lang/Boolean;

.field public Q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lcom/shabakaty/downloader/kg3;->M:Landroid/widget/ImageView;

    .line 3
    iput-object p5, p0, Lcom/shabakaty/downloader/kg3;->N:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public abstract G(Ljava/lang/String;)V
.end method

.method public abstract H(Lcom/shabakaty/downloader/rm1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/rm1<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract I(Ljava/lang/Boolean;)V
.end method
