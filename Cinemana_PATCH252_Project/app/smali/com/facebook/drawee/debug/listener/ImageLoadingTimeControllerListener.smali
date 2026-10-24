.class public Lcom/facebook/drawee/debug/listener/ImageLoadingTimeControllerListener;
.super Lcom/facebook/drawee/controller/BaseControllerListener;
.source "ImageLoadingTimeControllerListener.java"


# instance fields
.field public b:J

.field public c:Lcom/facebook/drawee/debug/listener/ImageLoadingTimeListener;


# direct methods
.method public constructor <init>(Lcom/facebook/drawee/debug/listener/ImageLoadingTimeListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/facebook/drawee/controller/BaseControllerListener;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/facebook/drawee/debug/listener/ImageLoadingTimeControllerListener;->b:J

    .line 3
    iput-object p1, p0, Lcom/facebook/drawee/debug/listener/ImageLoadingTimeControllerListener;->c:Lcom/facebook/drawee/debug/listener/ImageLoadingTimeListener;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 2
    iget-object p3, p0, Lcom/facebook/drawee/debug/listener/ImageLoadingTimeControllerListener;->c:Lcom/facebook/drawee/debug/listener/ImageLoadingTimeListener;

    if-eqz p3, :cond_0

    .line 3
    iget-wide v0, p0, Lcom/facebook/drawee/debug/listener/ImageLoadingTimeControllerListener;->b:J

    sub-long/2addr p1, v0

    check-cast p3, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;

    .line 4
    iput-wide p1, p3, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->J:J

    .line 5
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/facebook/drawee/debug/listener/ImageLoadingTimeControllerListener;->b:J

    return-void
.end method
