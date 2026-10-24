.class public Lcom/google/android/material/datepicker/c$b;
.super Lcom/shabakaty/downloader/d2;
.source "MaterialCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/c;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/d2;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;Lcom/shabakaty/downloader/e2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d2;->a:Landroid/view/View$AccessibilityDelegate;

    .line 2
    iget-object v1, p2, Lcom/shabakaty/downloader/e2;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/e2;->i(Ljava/lang/Object;)V

    return-void
.end method
