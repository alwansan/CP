.class public Lcom/shabakaty/downloader/hn2;
.super Lcom/shabakaty/downloader/d2;
.source "MaterialCalendar.java"


# instance fields
.field public final synthetic d:Lcom/google/android/material/datepicker/c;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/hn2;->d:Lcom/google/android/material/datepicker/c;

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

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/hn2;->d:Lcom/google/android/material/datepicker/c;

    .line 5
    iget-object p1, p1, Lcom/google/android/material/datepicker/c;->B:Landroid/view/View;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/shabakaty/downloader/hn2;->d:Lcom/google/android/material/datepicker/c;

    const v0, 0x7f1201cd

    .line 7
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/hn2;->d:Lcom/google/android/material/datepicker/c;

    const v0, 0x7f1201cb

    .line 8
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 9
    :goto_0
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/e2;->k(Ljava/lang/CharSequence;)V

    return-void
.end method
