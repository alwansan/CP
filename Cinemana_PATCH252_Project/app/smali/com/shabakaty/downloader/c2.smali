.class public final Lcom/shabakaty/downloader/c2;
.super Landroid/text/style/ClickableSpan;
.source "AccessibilityClickableSpanCompat.java"


# instance fields
.field public final r:I

.field public final s:Lcom/shabakaty/downloader/e2;

.field public final t:I


# direct methods
.method public constructor <init>(ILcom/shabakaty/downloader/e2;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/c2;->r:I

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/c2;->s:Lcom/shabakaty/downloader/e2;

    .line 4
    iput p3, p0, Lcom/shabakaty/downloader/c2;->t:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/c2;->r:I

    const-string v1, "ACCESSIBILITY_CLICKABLE_SPAN_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/c2;->s:Lcom/shabakaty/downloader/e2;

    iget v1, p0, Lcom/shabakaty/downloader/c2;->t:I

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/e2;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    return-void
.end method
