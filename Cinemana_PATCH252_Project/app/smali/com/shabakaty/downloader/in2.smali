.class public Lcom/shabakaty/downloader/in2;
.super Landroidx/recyclerview/widget/RecyclerView$r;
.source "MaterialCalendar.java"


# instance fields
.field public final synthetic a:Lcom/google/android/material/datepicker/h;

.field public final synthetic b:Lcom/google/android/material/button/MaterialButton;

.field public final synthetic c:Lcom/google/android/material/datepicker/c;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/c;Lcom/google/android/material/datepicker/h;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/in2;->c:Lcom/google/android/material/datepicker/c;

    iput-object p2, p0, Lcom/shabakaty/downloader/in2;->a:Lcom/google/android/material/datepicker/h;

    iput-object p3, p0, Lcom/shabakaty/downloader/in2;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/shabakaty/downloader/in2;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    if-gez p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/in2;->c:Lcom/google/android/material/datepicker/c;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/c;->Y1()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->j1()I

    move-result p1

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/in2;->c:Lcom/google/android/material/datepicker/c;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/c;->Y1()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->l1()I

    move-result p1

    .line 3
    :goto_0
    iget-object p2, p0, Lcom/shabakaty/downloader/in2;->c:Lcom/google/android/material/datepicker/c;

    iget-object p3, p0, Lcom/shabakaty/downloader/in2;->a:Lcom/google/android/material/datepicker/h;

    invoke-virtual {p3, p1}, Lcom/google/android/material/datepicker/h;->f(I)Lcom/shabakaty/downloader/tu2;

    move-result-object p3

    .line 4
    iput-object p3, p2, Lcom/google/android/material/datepicker/c;->v:Lcom/shabakaty/downloader/tu2;

    .line 5
    iget-object p2, p0, Lcom/shabakaty/downloader/in2;->b:Lcom/google/android/material/button/MaterialButton;

    iget-object p3, p0, Lcom/shabakaty/downloader/in2;->a:Lcom/google/android/material/datepicker/h;

    .line 6
    iget-object v0, p3, Lcom/google/android/material/datepicker/h;->b:Lcom/google/android/material/datepicker/a;

    .line 7
    iget-object v0, v0, Lcom/google/android/material/datepicker/a;->r:Lcom/shabakaty/downloader/tu2;

    .line 8
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/tu2;->E(I)Lcom/shabakaty/downloader/tu2;

    move-result-object p1

    .line 9
    iget-object p3, p3, Lcom/google/android/material/datepicker/h;->a:Landroid/content/Context;

    invoke-virtual {p1, p3}, Lcom/shabakaty/downloader/tu2;->D(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
