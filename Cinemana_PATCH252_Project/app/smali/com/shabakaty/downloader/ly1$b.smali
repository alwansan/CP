.class public Lcom/shabakaty/downloader/ly1$b;
.super Lcom/shabakaty/downloader/zh1;
.source "ImageAnalysisNonBlockingAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ly1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final t:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/shabakaty/downloader/ly1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fz1;Lcom/shabakaty/downloader/ly1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/zh1;-><init>(Lcom/shabakaty/downloader/fz1;)V

    .line 2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/ly1$b;->t:Ljava/lang/ref/WeakReference;

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/my1;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/my1;-><init>(Lcom/shabakaty/downloader/ly1$b;)V

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/zh1;->a(Lcom/shabakaty/downloader/zh1$a;)V

    return-void
.end method
