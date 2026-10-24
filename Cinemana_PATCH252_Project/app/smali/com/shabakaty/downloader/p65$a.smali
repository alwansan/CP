.class public Lcom/shabakaty/downloader/p65$a;
.super Ljava/lang/Object;
.source "WidgetGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/p65;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/p65;Lcom/shabakaty/downloader/ec0;Lcom/shabakaty/downloader/zh2;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p2, Lcom/shabakaty/downloader/ec0;->I:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {p3, p1}, Lcom/shabakaty/downloader/zh2;->o(Ljava/lang/Object;)I

    .line 4
    iget-object p1, p2, Lcom/shabakaty/downloader/ec0;->J:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {p3, p1}, Lcom/shabakaty/downloader/zh2;->o(Ljava/lang/Object;)I

    .line 5
    iget-object p1, p2, Lcom/shabakaty/downloader/ec0;->K:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {p3, p1}, Lcom/shabakaty/downloader/zh2;->o(Ljava/lang/Object;)I

    .line 6
    iget-object p1, p2, Lcom/shabakaty/downloader/ec0;->L:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {p3, p1}, Lcom/shabakaty/downloader/zh2;->o(Ljava/lang/Object;)I

    .line 7
    iget-object p1, p2, Lcom/shabakaty/downloader/ec0;->M:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {p3, p1}, Lcom/shabakaty/downloader/zh2;->o(Ljava/lang/Object;)I

    return-void
.end method
