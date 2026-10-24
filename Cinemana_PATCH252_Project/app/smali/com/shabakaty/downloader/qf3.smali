.class public Lcom/shabakaty/downloader/qf3;
.super Lcom/shabakaty/downloader/ct2;
.source "PreviewViewMeteringPointFactory.java"


# instance fields
.field public final a:Landroidx/camera/view/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(Landroidx/camera/view/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/ct2;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/qf3;->a:Landroidx/camera/view/b;

    return-void
.end method
