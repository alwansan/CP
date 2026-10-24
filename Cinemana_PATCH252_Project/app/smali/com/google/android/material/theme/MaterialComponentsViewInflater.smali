.class public Lcom/google/android/material/theme/MaterialComponentsViewInflater;
.super Lcom/shabakaty/downloader/bb;
.source "MaterialComponentsViewInflater.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/bb;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/shabakaty/downloader/s9;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/en2;

    invoke-direct {v0, p1, p2}, Lcom/shabakaty/downloader/en2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public b(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/shabakaty/downloader/u9;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/material/button/MaterialButton;

    invoke-direct {v0, p1, p2}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public c(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/shabakaty/downloader/w9;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/nn2;

    invoke-direct {v0, p1, p2}, Lcom/shabakaty/downloader/nn2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public d(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/shabakaty/downloader/oa;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/qn2;

    invoke-direct {v0, p1, p2}, Lcom/shabakaty/downloader/qn2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public e(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/material/textview/MaterialTextView;

    invoke-direct {v0, p1, p2}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method
