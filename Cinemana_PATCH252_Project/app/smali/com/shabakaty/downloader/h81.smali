.class public final Lcom/shabakaty/downloader/h81;
.super Ljava/lang/Object;
.source "ExpandableWidgetHelper.java"


# instance fields
.field public final a:Landroid/view/View;

.field public b:Z

.field public c:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/g81;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/h81;->b:Z

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/h81;->c:I

    .line 4
    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/shabakaty/downloader/h81;->a:Landroid/view/View;

    return-void
.end method
