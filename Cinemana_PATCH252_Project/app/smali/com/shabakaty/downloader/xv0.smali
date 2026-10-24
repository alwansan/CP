.class public abstract Lcom/shabakaty/downloader/xv0;
.super Landroidx/databinding/ViewDataBinding;
.source "DownloadButtonLayoutBinding.java"


# static fields
.field public static final synthetic P:I


# instance fields
.field public final M:Landroid/widget/ImageButton;

.field public final N:Landroid/widget/ProgressBar;

.field public O:Lcom/shabakaty/downloader/pw0;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageButton;Landroid/widget/ProgressBar;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lcom/shabakaty/downloader/xv0;->M:Landroid/widget/ImageButton;

    .line 3
    iput-object p5, p0, Lcom/shabakaty/downloader/xv0;->N:Landroid/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method public abstract G(Lcom/shabakaty/downloader/pw0;)V
.end method
