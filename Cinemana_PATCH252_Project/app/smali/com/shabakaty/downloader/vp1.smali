.class public final Lcom/shabakaty/downloader/vp1;
.super Ljava/lang/Object;
.source "GestureDetectorCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/vp1$b;,
        Lcom/shabakaty/downloader/vp1$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/vp1$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/vp1$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/shabakaty/downloader/vp1$b;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/vp1;->a:Lcom/shabakaty/downloader/vp1$a;

    return-void
.end method
