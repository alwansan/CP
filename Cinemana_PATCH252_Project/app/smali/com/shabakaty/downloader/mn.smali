.class public Lcom/shabakaty/downloader/mn;
.super Ljava/lang/Object;
.source "BottomSheetBehavior.java"

# interfaces
.implements Lcom/shabakaty/downloader/h45$b;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/mn;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iput-boolean p2, p0, Lcom/shabakaty/downloader/mn;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/shabakaty/downloader/x65;Lcom/shabakaty/downloader/h45$c;)Lcom/shabakaty/downloader/x65;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mn;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/x65;->e()I

    move-result v1

    .line 2
    iput v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:I

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/h45;->f(Landroid/view/View;)Z

    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 7
    iget-object v4, p0, Lcom/shabakaty/downloader/mn;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 8
    iget-boolean v5, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:Z

    if-eqz v5, :cond_0

    .line 9
    invoke-virtual {p2}, Lcom/shabakaty/downloader/x65;->b()I

    move-result v1

    .line 10
    iput v1, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:I

    .line 11
    iget v1, p3, Lcom/shabakaty/downloader/h45$c;->d:I

    iget-object v4, p0, Lcom/shabakaty/downloader/mn;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 12
    iget v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:I

    add-int/2addr v1, v4

    .line 13
    :cond_0
    iget-object v4, p0, Lcom/shabakaty/downloader/mn;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 14
    iget-boolean v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:Z

    if-eqz v4, :cond_2

    if-eqz v0, :cond_1

    .line 15
    iget v2, p3, Lcom/shabakaty/downloader/h45$c;->c:I

    goto :goto_0

    :cond_1
    iget v2, p3, Lcom/shabakaty/downloader/h45$c;->a:I

    .line 16
    :goto_0
    invoke-virtual {p2}, Lcom/shabakaty/downloader/x65;->c()I

    move-result v4

    add-int/2addr v2, v4

    .line 17
    :cond_2
    iget-object v4, p0, Lcom/shabakaty/downloader/mn;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 18
    iget-boolean v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->o:Z

    if-eqz v4, :cond_4

    if-eqz v0, :cond_3

    .line 19
    iget p3, p3, Lcom/shabakaty/downloader/h45$c;->a:I

    goto :goto_1

    :cond_3
    iget p3, p3, Lcom/shabakaty/downloader/h45$c;->c:I

    .line 20
    :goto_1
    invoke-virtual {p2}, Lcom/shabakaty/downloader/x65;->d()I

    move-result v0

    add-int v3, v0, p3

    .line 21
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p1, v2, p3, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 22
    iget-boolean p1, p0, Lcom/shabakaty/downloader/mn;->a:Z

    if-eqz p1, :cond_5

    .line 23
    iget-object p1, p0, Lcom/shabakaty/downloader/mn;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 24
    iget-object p3, p2, Lcom/shabakaty/downloader/x65;->a:Lcom/shabakaty/downloader/x65$k;

    invoke-virtual {p3}, Lcom/shabakaty/downloader/x65$k;->f()Lcom/shabakaty/downloader/r12;

    move-result-object p3

    .line 25
    iget p3, p3, Lcom/shabakaty/downloader/r12;->d:I

    .line 26
    iput p3, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:I

    .line 27
    :cond_5
    iget-object p1, p0, Lcom/shabakaty/downloader/mn;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 28
    iget-boolean p3, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:Z

    if-nez p3, :cond_6

    .line 29
    iget-boolean p3, p0, Lcom/shabakaty/downloader/mn;->a:Z

    if-eqz p3, :cond_7

    :cond_6
    const/4 p3, 0x0

    .line 30
    invoke-virtual {p1, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v(Z)V

    :cond_7
    return-object p2
.end method
