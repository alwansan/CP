.class Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$2;
.super Ljava/lang/Object;
.source "BatchDownload.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;


# direct methods
.method constructor <init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$2;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 158
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$2;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    iget-object p1, p1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->rail:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$Rail;->invalidate()V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$2;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->prioritize()V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 158
    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$2;->this$0:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->prioritize()V

    :cond_0
    return-void
.end method
