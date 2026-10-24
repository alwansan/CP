.class public Lcom/shabakaty/downloader/kn2;
.super Ljava/lang/Object;
.source "MaterialCalendar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic r:Lcom/google/android/material/datepicker/h;

.field public final synthetic s:Lcom/google/android/material/datepicker/c;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/c;Lcom/google/android/material/datepicker/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/kn2;->s:Lcom/google/android/material/datepicker/c;

    iput-object p2, p0, Lcom/shabakaty/downloader/kn2;->r:Lcom/google/android/material/datepicker/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/kn2;->s:Lcom/google/android/material/datepicker/c;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/c;->Y1()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->j1()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/kn2;->s:Lcom/google/android/material/datepicker/c;

    .line 3
    iget-object v0, v0, Lcom/google/android/material/datepicker/c;->z:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/kn2;->s:Lcom/google/android/material/datepicker/c;

    iget-object v1, p0, Lcom/shabakaty/downloader/kn2;->r:Lcom/google/android/material/datepicker/h;

    invoke-virtual {v1, p1}, Lcom/google/android/material/datepicker/h;->f(I)Lcom/shabakaty/downloader/tu2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/c;->a2(Lcom/shabakaty/downloader/tu2;)V

    :cond_0
    return-void
.end method
