.class public Lcom/shabakaty/downloader/f2$b;
.super Lcom/shabakaty/downloader/f2$a;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/f2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/f2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/f2$a;-><init>(Lcom/shabakaty/downloader/f2;)V

    return-void
.end method


# virtual methods
.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/f2$a;->a:Lcom/shabakaty/downloader/f2;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/f2;->b(I)Lcom/shabakaty/downloader/e2;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/downloader/e2;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p1
.end method
