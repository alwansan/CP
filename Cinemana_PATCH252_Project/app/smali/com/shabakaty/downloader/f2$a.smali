.class public Lcom/shabakaty/downloader/f2$a;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/f2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/f2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/f2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/f2$a;->a:Lcom/shabakaty/downloader/f2;

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/f2$a;->a:Lcom/shabakaty/downloader/f2;

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/f2;->a(I)Lcom/shabakaty/downloader/e2;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/downloader/e2;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p1
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/f2$a;->a:Lcom/shabakaty/downloader/f2;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/f2$a;->a:Lcom/shabakaty/downloader/f2;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shabakaty/downloader/f2;->c(IILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
