.class public Landroidx/databinding/ViewDataBinding$g;
.super Landroidx/databinding/d$a;
.source "ViewDataBinding.java"

# interfaces
.implements Lcom/shabakaty/downloader/h53;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/databinding/d$a;",
        "Lcom/shabakaty/downloader/h53<",
        "Landroidx/databinding/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/r55;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/r55<",
            "Landroidx/databinding/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ViewDataBinding;",
            "I",
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroidx/databinding/ViewDataBinding;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/databinding/d$a;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/r55;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/shabakaty/downloader/r55;-><init>(Landroidx/databinding/ViewDataBinding;ILcom/shabakaty/downloader/h53;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$g;->a:Lcom/shabakaty/downloader/r55;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/rh2;)V
    .locals 0

    return-void
.end method

.method public addListener(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/databinding/d;

    .line 2
    invoke-interface {p1, p0}, Landroidx/databinding/d;->a(Landroidx/databinding/d$a;)V

    return-void
.end method

.method public b(Landroidx/databinding/d;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$g;->a:Lcom/shabakaty/downloader/r55;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/r55;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding$g;->a:Lcom/shabakaty/downloader/r55;

    .line 3
    iget-object v2, v1, Lcom/shabakaty/downloader/r55;->c:Ljava/lang/Object;

    .line 4
    check-cast v2, Landroidx/databinding/d;

    if-eq v2, p1, :cond_1

    return-void

    .line 5
    :cond_1
    iget v1, v1, Lcom/shabakaty/downloader/r55;->b:I

    invoke-virtual {v0, v1, p1, p2}, Landroidx/databinding/ViewDataBinding;->m(ILjava/lang/Object;I)V

    return-void
.end method

.method public removeListener(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/databinding/d;

    .line 2
    invoke-interface {p1, p0}, Landroidx/databinding/d;->e(Landroidx/databinding/d$a;)V

    return-void
.end method
