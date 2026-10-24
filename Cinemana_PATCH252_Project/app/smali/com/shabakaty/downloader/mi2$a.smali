.class public Lcom/shabakaty/downloader/mi2$a;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/mi2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/mi2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/mi2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/mi2$a;->r:Lcom/shabakaty/downloader/mi2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mi2$a;->r:Lcom/shabakaty/downloader/mi2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/mi2;->t:Lcom/shabakaty/downloader/c11;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/c11;->setListSelectionHidden(Z)V

    .line 4
    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    :cond_0
    return-void
.end method
