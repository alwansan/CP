.class public Lcom/shabakaty/downloader/on2;
.super Ljava/lang/Object;
.source "MaterialDatePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic r:Lcom/google/android/material/datepicker/e;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/on2;->r:Lcom/google/android/material/datepicker/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/on2;->r:Lcom/google/android/material/datepicker/e;

    .line 2
    iget-object v0, p1, Lcom/google/android/material/datepicker/e;->X:Landroid/widget/Button;

    .line 3
    iget-object p1, p1, Lcom/google/android/material/datepicker/e;->M:Lcom/shabakaty/downloader/fm0;

    .line 4
    invoke-interface {p1}, Lcom/shabakaty/downloader/fm0;->U0()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/on2;->r:Lcom/google/android/material/datepicker/e;

    .line 6
    iget-object p1, p1, Lcom/google/android/material/datepicker/e;->V:Lcom/google/android/material/internal/CheckableImageButton;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->toggle()V

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/on2;->r:Lcom/google/android/material/datepicker/e;

    .line 9
    iget-object v0, p1, Lcom/google/android/material/datepicker/e;->V:Lcom/google/android/material/internal/CheckableImageButton;

    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/e;->i2(Lcom/google/android/material/internal/CheckableImageButton;)V

    .line 11
    iget-object p1, p0, Lcom/shabakaty/downloader/on2;->r:Lcom/google/android/material/datepicker/e;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/e;->g2()V

    return-void
.end method
