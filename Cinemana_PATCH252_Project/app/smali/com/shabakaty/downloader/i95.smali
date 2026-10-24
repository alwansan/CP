.class public Lcom/shabakaty/downloader/i95;
.super Ljava/lang/Object;
.source "YearGridAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/j95;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/j95;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/i95;->s:Lcom/shabakaty/downloader/j95;

    iput p2, p0, Lcom/shabakaty/downloader/i95;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/shabakaty/downloader/i95;->r:I

    iget-object v0, p0, Lcom/shabakaty/downloader/i95;->s:Lcom/shabakaty/downloader/j95;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/j95;->a:Lcom/google/android/material/datepicker/c;

    .line 3
    iget-object v0, v0, Lcom/google/android/material/datepicker/c;->v:Lcom/shabakaty/downloader/tu2;

    .line 4
    iget v0, v0, Lcom/shabakaty/downloader/tu2;->s:I

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/tu2;->j(II)Lcom/shabakaty/downloader/tu2;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/i95;->s:Lcom/shabakaty/downloader/j95;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/j95;->a:Lcom/google/android/material/datepicker/c;

    .line 7
    iget-object v0, v0, Lcom/google/android/material/datepicker/c;->u:Lcom/google/android/material/datepicker/a;

    .line 8
    iget-object v1, v0, Lcom/google/android/material/datepicker/a;->r:Lcom/shabakaty/downloader/tu2;

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/tu2;->f(Lcom/shabakaty/downloader/tu2;)I

    move-result v1

    if-gez v1, :cond_0

    .line 9
    iget-object p1, v0, Lcom/google/android/material/datepicker/a;->r:Lcom/shabakaty/downloader/tu2;

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/google/android/material/datepicker/a;->s:Lcom/shabakaty/downloader/tu2;

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/tu2;->f(Lcom/shabakaty/downloader/tu2;)I

    move-result v1

    if-lez v1, :cond_1

    .line 11
    iget-object p1, v0, Lcom/google/android/material/datepicker/a;->s:Lcom/shabakaty/downloader/tu2;

    .line 12
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/i95;->s:Lcom/shabakaty/downloader/j95;

    .line 13
    iget-object v0, v0, Lcom/shabakaty/downloader/j95;->a:Lcom/google/android/material/datepicker/c;

    .line 14
    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/c;->a2(Lcom/shabakaty/downloader/tu2;)V

    .line 15
    iget-object p1, p0, Lcom/shabakaty/downloader/i95;->s:Lcom/shabakaty/downloader/j95;

    .line 16
    iget-object p1, p1, Lcom/shabakaty/downloader/j95;->a:Lcom/google/android/material/datepicker/c;

    const/4 v0, 0x1

    .line 17
    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/c;->b2(I)V

    return-void
.end method
